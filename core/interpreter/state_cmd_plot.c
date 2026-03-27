#include "state_params.h"
#include "state_idle.h"
#include "video_terminal.h"
#include "terminal_message.h"
#include "glyphs.h"
#include "images.h"
#include "isr.h"

//wrapper functions for the function pointer
static void CmdSetForeGroundColor(const void *var,uint8_t count);
static void CmdSetBackGroundColor(const void *var,uint8_t count);
static void CmdChangeMode(const void *var,uint8_t count);
static void CmdDrawLine(const void *var,uint8_t count);
static void CmdDrawCircle(const void *var,uint8_t count);

static void ProcessInput(const state_t **currentState, const char* chr){
    //in putty, ESC character is sent with ctrl+[
    
    switch (*chr){
        //ESC f <color> Foreground color
        case 'f':              
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetForeGroundColor;
            *(StateParams.nextState)=&StateIdlePlot;
            break;
        //ESC b <color> Background color
        case 'b':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetBackGroundColor;
            break;     
        //ESC E	Clear video buffer
        case 'E':
            VideoTerminal_ClearBuffer();
            TERMINAL_MESSAGE_Send(MESSAGE_ACK);
            *currentState=&StateIdlePlot;            
            break;
        //ESC m	<mode> Change Video Mode
        case 'm':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdChangeMode;                       
            break;              
        //ESC l	<x1,y1,x2,y2,color> Draw line
        case 'l':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdDrawLine;                       
            break;                  
        //ESC c	<x1,y1,radius,color> Draw Circle
        case 'c':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdDrawCircle;                       
            break;                  
            
        default:
            *currentState=&StateIdlePlot;
            TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    }
}
const state_t StateCmdPlot = {
    .processInput=&ProcessInput
};


static void CmdSetBackGroundColor(const void *var,uint8_t count){
    (void)count;
    uint8_t color=(uint8_t)*((const uint8_t*)var);
    
    if (!VideoTerminal_SetBackGroundColor(color)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }       
}

static void CmdSetForeGroundColor(const void *var,uint8_t count){
    (void) count;
    uint8_t color=(uint8_t)*((const uint8_t*)var);
    
    if (!VideoTerminal_SetForeGroundColor(color)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }           
}

static void CmdChangeMode(const void *var,uint8_t count) {
    (void) count;
    const uint8_t *ptr = (const uint8_t*)var;
    uint8_t mode = *ptr;
    if (mode==0){
        VideoTerminal_ClearBuffer();
        VideoTerminal_SetBackGroundColor(9);
        VideoTerminal_SetForeGroundColor(15);
        VideoTerminal_ClearScreen();
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
        *(StateParams.nextState)=&StateIdleText;
        PIXEL_GENERATOR_SetMode(0);
    }else if(mode==1) {
        IMAGE_Inititalize();
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
        *(StateParams.nextState)=&StateIdleGfx;
        PIXEL_GENERATOR_SetMode(1);
    }else{
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    }
}


static void CmdDrawLine(const void *var,uint8_t count){
    (void)count;
    const int16_t *ptr = var;
    int16_t x1 = *ptr++;
    int16_t y1 = *ptr++;
    int16_t x2 = *ptr++;
    int16_t y2 = *ptr;
    
//    Test Sequence
//        VideoTerminal_DrawLine (0,0,359,0,1);
//        VideoTerminal_DrawLine (0,0,0,119,1);
//        VideoTerminal_DrawLine (0,119,359,119,1);
//        VideoTerminal_DrawLine (359,119,359,0,1);
//        
//        VideoTerminal_DrawLine (0,0,0,0,119);
//        VideoTerminal_DrawLine (0,0,359,119,1);
//        VideoTerminal_DrawLine (0,119,359,0,1);
//        VideoTerminal_DrawCircle (180,59,59,1);
//        VideoTerminal_DrawCircle (180,59,20,1);    
        
//        const state_t *next_state=&StatePlotIdle;
//        Interpreter.currentState=next_state;
        
    if (!VideoTerminal_DrawLine(x1,y1,x2,y2,1)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }    
}

static void CmdDrawCircle(const void *var,uint8_t count){
    if (count!=4) {
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
        return;
    }
    const int16_t *ptr = var;
    int16_t x = *ptr++;
    int16_t y = *ptr++;
    int16_t radius = *ptr++;
    uint8_t color = (uint8_t)*ptr;
   
        
    if (!VideoTerminal_DrawCircle (x,y,radius,color)){
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    } else{
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }    
}
