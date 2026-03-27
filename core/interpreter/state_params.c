#include <ctype.h>
#include "state_params.h"
#include "state_idle.h"
#include "state.h"
#include "terminal_message.h"
#include "stddef.h"
#include "string.h"


#define MAX_NO_OF_ARGUMENTS 8
#define PARAMETER_DELIMETER ','
#define PARAMETER_END1 0x0d
#define PARAMETER_END2 ';'
static void (*dynamicCallback)(const void*, uint8_t)=NULL;
static const state_t *next_state=&StateIdleText;
static void ProcessInput(const state_t **currentState, const char* chr);

const parametric_state_t StateParams={
    .base_state.processInput=&ProcessInput,
    .callBack=&dynamicCallback,
    .nextState=&next_state
};

static void ProcessInput(const state_t **currentState, const char* chr){
    static uint16_t stack[MAX_NO_OF_ARGUMENTS];
    static uint8_t paramsCounter=0;
    static uint8_t digitsCounter=0;
    static uint16_t num=0;
    
    //check if incoming character is digit and convert it to number
    if (isdigit(*chr)){
        num=num*10;
        num+=(uint8_t)*chr-'0';
        digitsCounter++;
        return;
        
    }else if(*chr==PARAMETER_DELIMETER) {
        digitsCounter=0;
        stack[paramsCounter]=num;
        paramsCounter++;
        num=0;
        return;
        
    }else if(*chr==PARAMETER_END1 || *chr==PARAMETER_END2){
        digitsCounter=0;
        stack[paramsCounter]=num;
        paramsCounter++;
        num=0;
        

        stack[paramsCounter]=num;

        if (dynamicCallback) dynamicCallback(stack,paramsCounter);
        dynamicCallback=NULL;
        *currentState=next_state;
        memset(stack,0,sizeof(stack));        
        paramsCounter=0;

    }else {
        TERMINAL_MESSAGE_Send(MESSAGE_ERROR);
        *currentState=next_state;
        memset(stack,0,sizeof(stack));
        
    }   
}

