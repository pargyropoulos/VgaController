#include <stdint.h>
#include "middleware.h"
#include "core.h"


#define TERMINAL_MESSAGE_ACK    "ACK\n"
#define TERMINAL_MESSAGE_WAIT   "WT!\n"
#define TERMINAL_MESSAGE_ERR    "ERR\n"
#define TERMINAL_MESSAGE_OVF    "OVF\n"

const char *MESSAGE_ACK=TERMINAL_MESSAGE_ACK;
const char *MESSAGE_WAIT=TERMINAL_MESSAGE_WAIT;
const char *MESSAGE_ERROR=TERMINAL_MESSAGE_ERR;
const char *MESSAGE_OVF=TERMINAL_MESSAGE_OVF;

extern circular_buffer_t output_buffer;

void TERMINAL_MESSAGE_Send(const char* txt){
    while (*txt){
        CircularBuffer_Write(&output_buffer,(char*)txt++);
    }    
//    event_flags|=EVENT_DMA1;
    RAISE_EVENT (EVENT_DMA1);
}