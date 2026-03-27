#include "state_cmd_plot.h"
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
static void CmdPaintPicture(const void *var,uint8_t count);
static void CmdSetColor(const void *var,uint8_t count);
static void CmdLoadImage(const void *var,uint8_t count);

static void ProcessInput(const state_t **currentState, const char* chr){
    //in putty, ESC character is sent with ctrl+[
    
    switch (*chr){
        //ESC f <color> Foreground color
        case 'f':        
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetForeGroundColor;
            *(StateParams.nextState)=&StateIdleGfx;
            break;
        //ESC b <color> Background color
        case 'b':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetBackGroundColor;
            *(StateParams.nextState)=&StateIdleGfx;
            break;     
        //ESC m	<mode> Change Video Mode
        case 'm':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdChangeMode;                       
            *(StateParams.nextState)=&StateIdleGfx;
            break;              
        //ESC l	<picture> Load Picture
        case 'l':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdLoadImage;                       
            *(StateParams.nextState)=&StateIdleGfx;
            break;
        //ESC s	<back color> <fore color>,<x>,<y> Set color at x,y cell
        case 's':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdSetColor;
            *(StateParams.nextState)=&StateIdleGfx;
            break;               
        //ESC p	<back color> <fore color> Change back color and fore color of the whole screen
        case 'p':
            *currentState=(state_t*)&StateParams;
            *(StateParams.callBack)=&CmdPaintPicture;                       
            *(StateParams.nextState)=&StateIdleGfx;
            break;               
            
        default:
            *currentState=&StateIdleGfx;
            *(StateParams.nextState)=&StateIdleGfx;
            TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    }
}
const state_t StateCmdGfx = {
    .processInput=&ProcessInput
};


static void CmdLoadImage(const void *var,uint8_t count){
    (void)count;
    uint8_t image=(uint8_t)*((const uint8_t*)var);
    if (image>3) {
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    }else {
        switch (image){
            case 0:
                IMAGES_loadImage(IMAGE1_data,IMAGE1_palette);
                break;
            case 1:
                IMAGES_loadImage(IMAGE2_data,IMAGE2_palette);
                break;
            case 2:
                IMAGES_loadImage(IMAGE3_data,IMAGE3_palette);
                break;
            default:
                IMAGES_loadImage(IMAGE4_data,IMAGE4_palette);
                break;
        }
        
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

static void CmdSetBackGroundColor(const void *var,uint8_t count){
    (void)count;
    uint8_t color=(uint8_t)*((const uint8_t*)var);
    
    if (!VideoTerminal_SetBackGroundColor(color)){
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
        PIXEL_GENERATOR_SetMode(0);
        *(StateParams.nextState)=&StateIdleText;
    }else if(mode==2) {
        VideoTerminal_ClearBuffer();
        *(StateParams.nextState)=&StateIdlePlot;
        PIXEL_GENERATOR_SetMode(2);
        TERMINAL_MESSAGE_Send(MESSAGE_ACK);
    }else{
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
    }
}

static void CmdPaintPicture(const void *var,uint8_t count){
    (void) count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t bc = (uint8_t)*ptr++;
    uint8_t fc = (uint8_t)*ptr;    
    VideoTerminal_GFX_PaintColor(bc,fc);
}

static void CmdSetColor(const void *var,uint8_t count){
    (void) count;
    const uint16_t *ptr = (const uint16_t*)var;
    uint8_t bc = (uint8_t)*ptr++;
    uint8_t fc = (uint8_t)*ptr++;    
    uint16_t x = (uint16_t)*ptr++;    
    uint16_t y = (uint16_t)*ptr;    
    VideoTerminal_GFX_SetColor(bc,fc,x,y);
}

//void VideoTerminal_GFX_SetColor(uint8_t back_color,uint8_t fore_color, uint16_t x, uint16_t y) {