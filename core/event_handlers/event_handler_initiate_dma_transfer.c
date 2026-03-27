#include "event_handlers.h"
#include "core.h"
#include "middleware.h"

extern circular_buffer_t output_buffer;

static void Handler(void){
    circular_buffer_t* cb_ptr=&output_buffer;
    uint16_t chunk_length;
    uint8_t* source_ptr;
    
    if (cb_ptr == NULL || cb_ptr->array_ptr == NULL || cb_ptr->array_size == 0) return;

    // Check if buffer is empty
    if (cb_ptr->read_index == cb_ptr->write_index) return;

    //set source address pointer
    source_ptr = (uint8_t*)cb_ptr->array_ptr + cb_ptr->read_index * cb_ptr->item_size;
    
    if (cb_ptr->write_index > cb_ptr->read_index) {
        // Linear chunk, no wrap
        chunk_length = cb_ptr->write_index - cb_ptr->read_index;
        
    } else {
        // Wrap-around: send till the end of the buffer and re-trigger event for the second chunk
        chunk_length = cb_ptr->array_size - cb_ptr->read_index;
        //re-trigger event to yield and send the second chunk
        RAISE_EVENT(EVENT_DMA1);
    }

    //Initiate a DMA transaction or yield if the DMA is not ready to perform the transaction
    if (!DMA_InitiateTransaction(dma1_obj, (uint24_t)source_ptr, chunk_length)){
        //re-trigger event to yield, if transfer could not be initiated
        RAISE_EVENT(EVENT_DMA1);
        return;
    }else{
        // Update read_index
        cb_ptr->read_index += chunk_length;
        if (cb_ptr->read_index >= cb_ptr->array_size) {
            cb_ptr->read_index = 0;
        }
    }
}

const event_handler_t EventHandlerInitiateDMATrasnfer = {
    .handle=Handler,
    .event=EVENT_DMA1
};

