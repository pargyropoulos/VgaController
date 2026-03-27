#include "mcc_generated_files/mcc.h"
#include <string.h>
#include "core.h"
#include "middleware.h"
#include "isr.h"
#include <stdio.h>

void Buffers_Initialize(void);
void APP_Initialize(void);
void Buffers_Initialize(void);
void Buttons_Initialize(void);
void Reactor_Initialize(void);

circular_buffer_t input_buffer;    
circular_buffer_t output_buffer;

button_t *button_obj;

#define INPUT_BUFFER_SIZE   256*6
#define OUTPUT_BUFFER_SIZE  256*1

//Compile with flag /DUART_SPEED=28800 or /DUART_SPEED=57600
void main(void){ 
    NVMCON1bits.REG0=0;
    NVMCON1bits.REG1=1;
    
    SYSTEM_Initialize();
//    BAUD_DETECTION_init();
    
    APP_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    REACTOR_Loop();
}


void APP_Initialize(void){
    ISR_Initialize();
    Buffers_Initialize();
    VideoTerminal_Initialize();
    GLYPH_Inititalize();
    Buttons_Initialize();
    Reactor_Initialize();

    const char* info_ptr=   "\r\nHello world!\r\n"
                            "8 Bit VGA Controller\r\n"
                            "built around a PIC 18F47K42!\r\n";                                      
    while (*info_ptr){
        CircularBuffer_Write(&output_buffer, info_ptr);
        info_ptr++;
    }  
    RAISE_EVENT(EVENT_INPUT_BUFFER_READY);

}

void Reactor_Initialize(void){
    REACTOR_Init();
    REACTOR_Register_event_handler(&EventHandlerUpdateInputBuffer);
    REACTOR_Register_event_handler(&EventHandlerInitiateDMATrasnfer);
    REACTOR_Register_event_handler(&EventHandlerProcessInput);
    REACTOR_Register_event_handler(&EventHandlerUartOverrun);
    REACTOR_Register_event_handler(&EventHandlerButton);    
}

void Buffers_Initialize(void){
    
    //create input buffer
    static uint8_t input_array[INPUT_BUFFER_SIZE];   
    CircularBuffer_Init(&input_buffer,input_array,sizeof(input_array),sizeof(int8_t));
    DMA2_DisableDMA();  // Disable before reconfiguration
    DMA2_SetDestinationAddress((uint16_t)(&input_array));
    DMA2_SetDestinationSize(sizeof(input_array));
    DMA2_EnableDMA();   // Re-enable   
    
    //create output buffer    
    static uint8_t output_array[OUTPUT_BUFFER_SIZE];   
    CircularBuffer_Init(&output_buffer,(uint8_t*) output_array,sizeof(output_array),sizeof(int8_t));      
    DMA1_DisableDMA();
    DMA1_SetSourceAddress((uint24_t)&output_array);
    DMA1_SetSourceSize(sizeof(output_array));
    DMA1_StartTransferWithTrigger();
    DMA1_EnableDMA(); 
}

void Buttons_Initialize(void){ 
    button_obj=BUTTON_Add(&PORTB, _PORTB_RB4_MASK, true);
}
/**
 End of File
*/
