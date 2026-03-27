#include "circular_buffer.h"
#define NDEBUG
#include <assert.h>
#include <string.h>
#include <stdio.h>



buffer_status_t CircularBuffer_Init(circular_buffer_t * cb_ptr,void *array_ptr, size_t array_size, uint8_t item_size) {
    if (cb_ptr == NULL || array_ptr == NULL || array_size == 0 || item_size == 0 ) {
        return BUFFER_INVALID;
    }
    cb_ptr->array_ptr=array_ptr;
    cb_ptr->array_size=array_size;
    cb_ptr->item_size=item_size;
    cb_ptr->read_index = 0;
    cb_ptr->write_index = 0;
    return BUFFER_OK;
}

bool CircularBuffer_isCritical(const circular_buffer_t *cb_ptr) {
    if (cb_ptr == NULL) return false;
    size_t unread_count;
    
    if (cb_ptr->write_index >= cb_ptr->read_index) {
        unread_count = cb_ptr->write_index - cb_ptr->read_index;
    } else {
        unread_count = cb_ptr->array_size - cb_ptr->read_index + cb_ptr->write_index;
    }
    size_t free_space = cb_ptr->array_size - unread_count;
    return free_space <= CRITICAL_POINT;
}


static inline bool CircularBuffer_isEmpty(const circular_buffer_t *cb_ptr) {
    __conditional_software_breakpoint(cb_ptr != NULL);
    assert(cb_ptr != NULL);

//    if (cb_ptr == NULL) return false;
    
    return cb_ptr->read_index == cb_ptr->write_index;
}

bool CircularBuffer_isFull(const circular_buffer_t *cb_ptr) {
    __conditional_software_breakpoint(cb_ptr != NULL);
//    if (cb_ptr == NULL) return false;
    
//    return ((cb_ptr->write_index + 1) % cb_ptr->array_size) == cb_ptr->read_index;
    size_t next_index = cb_ptr->write_index + 1;
    if (next_index >= cb_ptr->array_size) {
        next_index = 0;
    }
    return next_index == cb_ptr->read_index;    
}
//#define FAST_CIRCULAR_BUFFER_IS_EMPTY(cb_ptr) \
//    ((cb_ptr) != NULL && (cb_ptr)->read_index == (cb_ptr)->write_index)



buffer_status_t CircularBuffer_Write(circular_buffer_t *cb_ptr, const void *item_ptr) {
    buffer_status_t status;
    if (cb_ptr == NULL || item_ptr == NULL) {
        return BUFFER_INVALID;
    }
    
    // Check if buffer is full before attempting write
    if (CircularBuffer_isFull(cb_ptr)) {
        return BUFFER_FULL;
    }

    
//    memcpy((char*) cb_ptr->array_ptr+ cb_ptr->write_index * cb_ptr->item_size, item_ptr, cb_ptr->item_size);
    *((char*)cb_ptr->array_ptr+ cb_ptr->write_index * cb_ptr->item_size)= *(char*)item_ptr;
    
        
//    cb_ptr->write_index = (cb_ptr->write_index + 1) % cb_ptr->array_size;
    cb_ptr->write_index++;
    if (cb_ptr->write_index == cb_ptr->array_size) {
        cb_ptr->write_index = 0;
    }    
    
    return BUFFER_OK;
}


buffer_status_t CircularBuffer_Read(circular_buffer_t *cb_ptr, void *item_ptr) {
    if (cb_ptr == NULL || item_ptr == NULL) {
        return BUFFER_INVALID;
    }
    
    // Check if buffer is empty before attempting read
    if (CircularBuffer_isEmpty(cb_ptr)){
        return BUFFER_EMPTY;
    }


//    memcpy(item_ptr, cb_ptr->array_ptr+cb_ptr->read_index * cb_ptr->item_size, cb_ptr->item_size);
    *(uint8_t*)item_ptr= *((uint8_t*)cb_ptr->array_ptr+cb_ptr->read_index);
    
//    cb_ptr->read_index = (cb_ptr->read_index + 1) % cb_ptr->array_size;    
    cb_ptr->read_index++;
    if (cb_ptr->read_index == cb_ptr->array_size) {
        cb_ptr->read_index = 0;
    }    

        
    return BUFFER_OK;
}
