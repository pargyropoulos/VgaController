/* 
 * File:   reactor.h
 * Author: Panagiotis Argyropoulos - pargyropoulos@gmail.com
 *
 * Created on 17 Ιουλίου 2025, 5:23 μ.μ.
 */

#ifndef REACTOR_H
#define REACTOR_H
#define HANDLERS_COUNT 8
#include <stdint.h>
#include <stdbool.h>

// Event IDs are bit masked to allow setting and clearing in one instruction (BCF,BSF), thus ensuring atomic access and thread safety
typedef enum {
    EVENT_BUTTON                = 1 << 0,
    EVENT_DMA1                  = 1 << 1,
    EVENT_DMA2                  = 1 << 2,
    EVENT_INPUT_BUFFER_READY    = 1 << 3,
    EVENT_UART_OVRN_ERROR       = 1 << 4  
} event_t;

typedef struct {
    void (*handle)(void);
    event_t event;
}event_handler_t;


// API
void REACTOR_Register_event_handler(const event_handler_t *handler);
void REACTOR_Unregister_event_handler(const event_handler_t *handler);
extern __near volatile uint8_t g_event_flags;
#define RAISE_EVENT(event_id)   do {g_event_flags |= (event_t)event_id;} while (0)
#define CLEAR_EVENT(event_id)   do {g_event_flags &= ~(1 << event_id);} while (0)
#define testbit(var, bit) ((var) & (1 <<(bit)))
#define setbit(var, bit) ((var) |= (1 << (bit)))
#define clrbit(var, bit) ((var) &= ~(1 << (bit)))
void REACTOR_Loop(void);
void REACTOR_Init(void);

#endif /* REACTOR_H */

