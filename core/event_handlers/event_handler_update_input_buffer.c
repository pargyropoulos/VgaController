#include "event_handlers.h"
#include "core.h"
#include "middleware.h"

extern circular_buffer_t input_buffer;    

static void Handler(void){
    circular_buffer_t *cb_ptr=&input_buffer;
    cb_ptr->write_index = DMA_GetDestPtr(dma2_obj) - (size_t)(cb_ptr->array_ptr);    
    RAISE_EVENT(EVENT_INPUT_BUFFER_READY);
    
    if (CircularBuffer_isCritical(&input_buffer)){
        TERMINAL_MESSAGE_Send(MESSAGE_WAIT);
        //raise a new event
        RAISE_EVENT(EVENT_DMA1);
    };    
}

const event_handler_t EventHandlerUpdateInputBuffer = {
    .handle=&Handler,
    .event=EVENT_DMA2
};