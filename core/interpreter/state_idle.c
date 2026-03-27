#include "state.h"
#include "video_terminal.h"
#include "terminal_message.h"
#include "state_cmd_text.h"
#include "state_cmd_plot.h"
#include "state_cmd_gfx.h"
#include <stddef.h>

//function prototypes
static void StateTextProcessInput(const state_t **currentState, const char* chr);
static void StatePlotProcessInput(const state_t **currentState, const char* chr);
static void StateGfxProcessInput(const state_t **currentState, const char* chr);

const state_t StateIdleText = {
    .processInput=&StateTextProcessInput
};

const state_t StateIdlePlot = {
    .processInput=&StatePlotProcessInput
};

const state_t StateIdleGfx = {
    .processInput=&StateGfxProcessInput
};

static void StateTextProcessInput(const state_t **currentState, const char* chr){
    //in putty, ESC character is sent with ctrl+[
    if (*chr==0x1b){
        *currentState=&StateCmdText; 
    }else if (*chr >31){
            VideoTerminal_Print(chr);        
    }
//     else if (*chr==0x0d){
//        VideoTerminal.crlf();
//    }
}

static void StateGfxProcessInput(const state_t **currentState, const char* chr){
    if (*chr==0x1b){
        *currentState=&StateCmdGfx; 
    }
}

static void StatePlotProcessInput(const state_t **currentState, const char* chr){
    if (*chr==0x1b){
        *currentState=&StateCmdPlot; 
    }
}
