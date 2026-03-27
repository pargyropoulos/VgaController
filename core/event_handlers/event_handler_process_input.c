#include "event_handlers.h"
#include "core.h"
#include "middleware.h"

#define MAX_STREAM_TO_CONSUME 45
extern circular_buffer_t input_buffer;    

static void Handler(void){
    uint8_t chr[2]={0};
    uint8_t cnt = 0;
    buffer_status_t status = BUFFER_OK;

//    while (status!=BUFFER_EMPTY && cnt<MAX_STREAM_TO_CONSUME){
    while (cnt<MAX_STREAM_TO_CONSUME){
//        chr[1]='\0';
        status=CircularBuffer_Read(&input_buffer,&chr[0]);
        if (status!=BUFFER_EMPTY) {
            INTERPRETER_ProcessInput((char*)chr);
            cnt++;
        }else break;      
    }    
    
    //if there are more data in the input buffer, raise again the event
    if (status!=BUFFER_EMPTY) {
        RAISE_EVENT(EVENT_INPUT_BUFFER_READY);
    }
}

const event_handler_t EventHandlerProcessInput = {
    .handle=Handler,
    .event=EVENT_INPUT_BUFFER_READY
};