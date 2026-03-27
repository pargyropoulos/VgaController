#include <xc.h>
#include <stdint.h>
#include "isr.h"
#include "pixel_generator.h"
#include "middleware.h"

#define VSYNC_PULSE 2
#define VBACK_PORCH 33
#define VISIBLE_AREA 480
#define VFRONT_PORCH 10

#define SAVE_CONTEXT(ctx)\
    asm("MOVF TBLPTRU,W,C");\
    asm("MOVWF _" #ctx "+0,C");\
    asm("MOVF TBLPTRH,W,C");\
    asm("MOVWF _" #ctx "+1,C");\
    asm("MOVF TBLPTRL,W,C");\
    asm("MOVWF _" #ctx "+2,C");\
    asm("MOVF TABLAT,W,C");\
    asm("MOVWF _" #ctx "+3,C");

#define RESTORE_CONTEXT(ctx)\
    asm("MOVF _" #ctx "+0,W,C");\
    asm("MOVWF TBLPTRU,C");\
    asm("MOVF _" #ctx "+1,W,C");\
    asm("MOVWF TBLPTRH,C");\
    asm("MOVF _" #ctx "+2,W,C");\
    asm("MOVWF TBLPTRL,C");\
    asm("MOVF _" #ctx "+3,W,C");\
    asm("MOVWF TABLAT,C");

#define HARD_CALL_PTR(callback_ptr)\
    asm("RCALL $+4");\
    asm("BRA $+18");\
    asm("PUSH");\
    asm("MOVF _"#callback_ptr", W,C");\
    asm("MOVWF TOSL,C");\
    asm("MOVF _"#callback_ptr"+1, W,C");\
    asm("MOVWF TOSH,C");\
    asm("MOVF _"#callback_ptr"+2, W,C");\
    asm("MOVWF TOSU,C");\
    asm("RETURN 0");

#define SOFT_CALL(function_name)\
    asm("CALL _"#function_name" ");

#define CLEAR_TIMER3()\
    asm("CLRF TMR3H,C");\
    asm("CLRF TMR3L,C");

typedef enum {
    VIDEO_STATE_NON_VISIBLE_AREA    =  (1 << 0), //default state, don't change
    VIDEO_STATE_VISIBLE_AREA        =  (1 << 1)        
} VIDEO_STATE;

__at(0x23) static void (*volatile pixel_generator_callback)(void);
__at(0x16) volatile VIDEO_STATE video_state;
__at(0x12) static volatile uint8_t context[4];

static void RaisePendingEvents(void);
static void Handler_FrontPorch(void);
static void Handler_VSync(void);
static void Handler_BackPorch(void);
static void RunVSignalGeneratorFSM(void);


extern button_t *button_obj;
//extern button_t *button2_ptr;

//Triggerd by CCP3 int. No other INT should be active
__near uint8_t STACK[3];
void __interrupt() InterruptManager(void){    
    CLEAR_TIMER3();

    if (video_state & VIDEO_STATE_VISIBLE_AREA){
        CLC2POLbits.G4POL=1 ; // Invert CLC2 G4 polarity to activate "visible video" CLC output                  
        SAVE_CONTEXT(context);
        HARD_CALL_PTR(pixel_generator_callback);
        RESTORE_CONTEXT(context);        
        PIR9bits.CCP3IF = 0;
        asm("RETFIE 1");      
        
    } else{
        STACK[0]=TOSL;
        STACK[1]=TOSH;
        STACK[2]=TOSU;        
        SAVE_CONTEXT(context);
        SOFT_CALL(RunVSignalGeneratorFSM);
        RESTORE_CONTEXT(context);
        PIR9bits.CCP3IF = 0;
        asm("RETFIE 1");    
    }
}

static void Handler_FrontPorch(void){
    CLC2POLbits.G4POL=0; // Clear CLC2 G4 polarity to deactivate "visible video" CLC output         
    CCP3CONbits.MODE0=1; // Set MODE0 bit to clear output on next compare match (VSYNC is Active Low)
    CCPR3 = VFRONT_PORCH;
}

static void Handler_VSync(void){
    CCP3CONbits.MODE0=0; // Clear MODE0 bit to set output on next compare match (VSYNC is Inactive High)
    CCPR3 = VSYNC_PULSE;
}

static void Handler_BackPorch(void){
    CCPR3 = VBACK_PORCH;
}

//vertical signal generation callback table
static void (*const vertical_signal_handlers[])(void)={
    &Handler_FrontPorch,
    &Handler_VSync,
    &Handler_BackPorch
};

void RunVSignalGeneratorFSM(void){
    static uint8_t state=0;
    (*vertical_signal_handlers[state])();

    if (++state>2){
        pixel_generator_callback=PIXEL_GENERATOR_GetActiveVideoHandler();
        video_state=VIDEO_STATE_VISIBLE_AREA;
        PIXEL_GENERATOR_Initialize();
        RaisePendingEvents();
        state=0;
    }
}

void ISR_Initialize(void){
    video_state=0;
    pixel_generator_callback=PIXEL_GENERATOR_GetActiveVideoHandler();
    
    
    //This line is actually never executed but forces the compiler to generate code for the methods it references but are never called through C code, thus been discarded by compiler's optimization methods
    if (false) {
        (*pixel_generator_callback)();  //dummy call
    }
}

//Poll Peripherals and trigger events based on their status
static void RaisePendingEvents(void){
    
    static size_t DMA2DPTR_old=0;
    if (DMA2DPTR_old!=DMA2DPTR){
        DMA2DPTR_old=DMA2DPTR;
        RAISE_EVENT(EVENT_DMA2);
    }
    
    
    if (PIR2bits.DMA1SCNTIF){
        PIR2bits.DMA1SCNTIF=0;
        RAISE_EVENT(EVENT_DMA1);
    }

    
    if (U1ERRIRbits.RXFOIF){
        U1ERRIRbits.RXFOIF = 0;  // Clear RX FIFO overflow interrupt flag
        RAISE_EVENT(EVENT_UART_OVRN_ERROR);
    }
       
    BUTTON_Update(button_obj);
    if (BUTTON_wasLongPressed(button_obj)){
        RAISE_EVENT(EVENT_BUTTON);
        BUTTON_ClearEvents(button_obj);
    }
    
}
