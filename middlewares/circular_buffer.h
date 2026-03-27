/* 
 * File:   CircularBufferv2.h
 * Author: Panagiotis Argyropoulos - pargyropoulos@gmail.com
 *
 * Created on 30 Ιουνίου 2025, 3:38 μ.μ.
 */

#ifndef CIRCULAR_BUFFER_H
#define CIRCULAR_BUFFER_H
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#define CRITICAL_POINT 256

typedef enum {
    BUFFER_EMPTY = 0, 
    BUFFER_OK = 1,        
    BUFFER_FULL,
    BUFFER_CRITICAL,
    BUFFER_INVALID,
    BUFFER_OTHER
} buffer_status_t;

typedef struct{
    void *array_ptr;
//    uint8_t *array_ptr;
    size_t array_size;  // Logical size not physical e.g. size x item_size
    uint8_t item_size;  // Size of each item in bytes    
    size_t write_index;
    size_t read_index;
} circular_buffer_t;

extern buffer_status_t CircularBuffer_Init(circular_buffer_t * cb_ptr,void *array_ptr, size_t array_size, uint8_t item_size);
extern buffer_status_t CircularBuffer_Read(circular_buffer_t *cb_ptr, void *item_ptr);
extern buffer_status_t CircularBuffer_Write(circular_buffer_t *cb_ptr, const void *item_ptr);
extern bool CircularBuffer_isCritical(const circular_buffer_t *cb_ptr);


#endif /* CIRCULARBUFFER */

