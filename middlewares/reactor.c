#include "reactor.h"
#include <stddef.h>
#include <string.h>
#include <assert.h>

__near volatile uint8_t g_event_flags = 0;

static const event_handler_t* handlers_array[HANDLERS_COUNT];

void REACTOR_Init(void){
    //nullify all array entries
    memset(&handlers_array, 0, sizeof(handlers_array));
}

void REACTOR_Register_event_handler(const event_handler_t *handler) {
    for (uint8_t i=0;i<HANDLERS_COUNT;i++){
        if (handlers_array[i]==NULL) {
            handlers_array[i]=handler;
            return;
        }
    }
}

void REACTOR_Unregister_event_handler(const event_handler_t *handler) {
    for (uint8_t i=0;i<HANDLERS_COUNT;i++){
        if (handlers_array[i]==handler) {
            handlers_array[i]=NULL;
            return;
        }
    }
}


void REACTOR_Loop(void) {
    while (1) {
        __conditional_software_breakpoint(g_event_flags!=0);
        if (!g_event_flags) continue;
        
        event_t event_flags_snapshot = g_event_flags;
        g_event_flags &= ~event_flags_snapshot; //clear the flags
        for (uint8_t i = 0; i < HANDLERS_COUNT; ++i) {
            const event_handler_t *handler_ptr = handlers_array[i];
            if (handler_ptr!=NULL && handler_ptr->event & event_flags_snapshot){
                if (handler_ptr->handle) handler_ptr->handle();

            }
        }
    }
}