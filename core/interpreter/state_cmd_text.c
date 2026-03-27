#include "state_params.h"
#include "state_idle.h"
#include "video_terminal.h"
#include "state.h"
#include <ctype.h>
#include "middleware.h"
#include "terminal_message.h"
#include "glyphs.h"
#include "images.h"
#include "isr.h"

//wrapper functions for the function pointer
static void CmdSetForeGroundColor(const void *var,uint8_t count);
static void CmdSetBackGroundColor(const void *var,uint8_t count);
static void CmdSetCursorXY(const void *var,uint8_t count);
static void CmdDrawBox(const void *var,uint8_t count);
static void CmdDrawWindow(const void *var,uint8_t count);
static void CmdScrollBoxRegionUp(const void *var,uint8_t count);
static void CmdDrawWindowSeparator(const void *var,uint8_t count);
static void CmdFillRegion(const void *var,uint8_t count);
static void CmdChangeMode(const void *var,uint8_t count);
static void CmdBlinkCursor(const void *var,uint8_t count);
static void CmdDrawColor(const void *var,uint8_t count);


static void ProcessInput(const state_t **currentState, const char* chr){
    switch (*chr){
        //ESC f <c> Foreground color
        case 'f':              
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetForeGroundColor;
            
            break;
        //ESC b <c> Background color
        case 'b':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetBackGroundColor;
            break;
        //ESC b <bool> Set Cursor Blink ON/Off
        case 'x':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdBlinkCursor;
            break;
            
        //ESC Y <y> <x>	Set cursor position
        case 'Y':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetCursorXY;
            break;            
        //ESC E	Clear screen
        case 'E':
            VideoTerminal_ClearScreen();
            TERMINAL_MESSAGE_Send(MESSAGE_ACK);
            *currentState=&StateIdleText;
            
            break;            
        //ESC S	Scroll Up by one line
        case 'S':
            VideoTerminal_ScrollUp();
            TERMINAL_MESSAGE_Send(MESSAGE_ACK);
            *currentState=&StateIdleText;
            
            break;                    
        //ESC s	Scroll Up a boxed region
        case 's':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdScrollBoxRegionUp;
            break;                                
        //ESC n	Send CL RF
        case 'n':
            VideoTerminal_CrLf();
            TERMINAL_MESSAGE_Send(MESSAGE_ACK);
            *currentState=&StateIdleText;
            break;                                
        //ESC O	Cursor On
        case 'O':
//            setBlinkOn();
            *currentState=&StateIdleText;
            break;  
        //ESC F	Cursor Off
        case 'F':
//            setBlinkOff();
            *currentState=&StateIdleText;
            break;              
        //ESC d	draw box
        case 'd':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdDrawBox;;                       
            break;         
        //ESC w	draw window
        case 'w':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdDrawWindow;                       
            break;    
        //ESC W	draw window separator
        case 'W':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdDrawWindowSeparator;                       
            break;    
        //ESC e	fill region with character
        case 'e':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdFillRegion;                       
            break;    
        case 'm':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdChangeMode;                       
            break;  
        case 'p':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdDrawColor;                       
            break;                                 
        default:
            *currentState=&StateIdleText;
            TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    }
}
const state_t StateCmdText = {
    .processInput=&ProcessInput
};


static void CmdSetBackGroundColor(const void *var,uint8_t count){
    (void)count;
    uint8_t color=(uint8_t)*((const uint16_t*)var);
    
    if (!VideoTerminal_SetBackGroundColor(color)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }       
}

static void CmdSetForeGroundColor(const void *var,uint8_t count){
    uint8_t color=(uint8_t)*((const uint16_t*)var);
    (void) count;
    
    if (!VideoTerminal_SetForeGroundColor(color)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }           
}

static void CmdSetCursorXY(const void *var,uint8_t count){
    (void)count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t x = (uint8_t)*ptr++;
    uint8_t y = (uint8_t)*ptr;
    if (!VIDEO_TERMINAL_LocateXY(x, y)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }        
}

static void CmdDrawBox(const void *var,uint8_t count){
    (void)count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t x1 = (uint8_t)*ptr++;
    uint8_t y1 = (uint8_t)*ptr++;
    uint8_t x2 = (uint8_t)*ptr++;
    uint8_t y2 = (uint8_t)*ptr++;
    uint8_t style=(uint8_t)*ptr;
    if (!VideoTerminal_DrawBox(x1,y1,x2,y2,style)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }

};

static void CmdDrawWindow(const void *var,uint8_t count){
    (void)count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t x1 = (uint8_t)*ptr++;
    uint8_t y1 = (uint8_t)*ptr++;
    uint8_t x2 = (uint8_t)*ptr++;
    uint8_t y2 = (uint8_t)*ptr++;
    uint8_t style = (uint8_t)*ptr;
    
    if (!VideoTerminal_DrawWindow(x1,y1,x2,y2,style)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }    
    
    VIDEO_TERMINAL_LocateXY(x1+2,y1+1);
};

static void CmdDrawWindowSeparator(const void *var,uint8_t count){
    (void)count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t x1 = (uint8_t)*ptr++;
    uint8_t y  = (uint8_t)*ptr++;
    uint8_t x2 = (uint8_t)*ptr++;
    uint8_t style = (uint8_t)*ptr;
    
    
    if (!VideoTerminal_DrawSeparator(x1,y,x2,style)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }    
}

static void CmdScrollBoxRegionUp(const void *var,uint8_t count){
    (void)count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t x1 = (uint8_t)*ptr++;
    uint8_t y1 = (uint8_t)*ptr++;
    uint8_t x2 = (uint8_t)*ptr++;
    uint8_t y2 = (uint8_t)*ptr++;
    uint8_t direction = (uint8_t)*ptr;
    
    if (!VideoTerminal_ScrollBox(x1,y1,x2,y2,direction)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }
    
}

static void CmdFillRegion(const void *var,uint8_t count){
    (void)count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t x1 = (uint8_t)*ptr++;
    uint8_t y1 = (uint8_t)*ptr++;
    uint8_t x2 = (uint8_t)*ptr++;
    uint8_t y2 = (uint8_t)*ptr++;
    uint8_t chr = (uint8_t)*ptr;
    
    if (!VideoTerminal_FillRegion(x1,y1,x2,y2,chr)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }    
}

static void CmdChangeMode(const void *var,uint8_t count) {
    (void) count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t mode = (uint8_t)*ptr;
     if(mode==1) {
        PIXEL_GENERATOR_SetMode(1);
        IMAGE_Inititalize();
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
        *(StateParams.nextState)=&StateIdleGfx;
        

    }else if(mode==2) {
        VideoTerminal_ClearBuffer();
        *(StateParams.nextState)=&StateIdlePlot;
        PIXEL_GENERATOR_SetMode(2);
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }else{
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    }
}

static void CmdDrawColor(const void *var,uint8_t count){
    (void) count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t bc = (uint8_t)*ptr++;
    uint8_t fc = (uint8_t)*ptr;    
    VideoTerminal_DrawColor(bc,fc);
}

static void CmdBlinkCursor(const void *var,uint8_t count){
    (void) count;
    const uint16_t *ptr = (const uint16_t*)var;
    bool blink = (bool)*ptr;
    VideoTerminal_SetBlink(blink);
}
