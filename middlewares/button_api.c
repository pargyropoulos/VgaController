#include <stdint.h>
#include <stdbool.h>
#include "button_api.h"
#include <stdio.h>

#define BUTTON_IS_PRESSED(flags) ((flags)->stable_state != (flags)->pulled_up)

typedef struct{
        bool pulled_up          :1;     // true = active-low, false = active-high        
        bool stable_state       :1;     // last stable state (pressed or not)
        bool raw_state          :1;     // last sampled state
        bool pressed_event      :1;         
        bool released_event     :1;    
        bool long_press_event   :1;   
        uint8_t reserved        :2;
}flags_t;


struct button_t {    
    volatile uint8_t *read_port;
    uint8_t pin_mask;
    uint8_t debounce_counter;   // debounce counter
    uint8_t long_press_counter;
    flags_t flags;
};

button_t button_pool[BUTTONS_COUNT]= {0};

static bool Debounce(button_t *btn);

button_t* BUTTON_Add(volatile uint8_t *read_port, uint8_t pin_mask, bool pulled_up){

    button_t *btn=NULL;
    
    for (uint8_t i=0;i<BUTTONS_COUNT;i++){
        if( button_pool[i].read_port==0){
            btn=&button_pool[i];
            
            btn->read_port=read_port;
            btn->pin_mask=pin_mask;
            btn->debounce_counter=DEBOUNCE_TICKS;
            btn->long_press_counter=LONG_PRESS_TICKS;
            
            flags_t *flags=&btn->flags;

            flags->pressed_event=false;
            flags->long_press_event=false;
            
            if (pulled_up){
                flags->pulled_up=true;
                flags->raw_state=true;
                flags->stable_state=true;
            }else {
                flags->pulled_up=false;
                flags->raw_state=false;
                flags->stable_state=false;                
            }
            break;
        }
    }
    return btn;
}


//this should be at drivers layer
static bool GPIO_ReadPin(const volatile uint8_t* port, const uint8_t pin_mask){
//    if ((*port & pin_mask) !=0){
//        return true;
//    }else {
//        return false;
//    }    
    return ((*port & pin_mask) !=0) ? true : false;    
}


void BUTTON_Update(button_t *btn){   
    flags_t *flags=&btn->flags;

    if (Debounce(btn)){
        btn->long_press_counter = LONG_PRESS_TICKS;
         
        if (BUTTON_IS_PRESSED(flags)){
            flags->pressed_event = true;                       
        }else {
            flags->released_event = true;
        }
    }
    
    if (BUTTON_IS_PRESSED(flags)) {
        if (btn->long_press_counter > 0) btn->long_press_counter--;
        if (btn->long_press_counter == 1) {            
            btn->long_press_counter--; //lock counter to zero to block re-triggering
            flags->long_press_event = true;
        }
    }
}


bool BUTTON_wasPressed(const button_t *btn){;
    return btn->flags.pressed_event;
}

bool BUTTON_wasLongPressed(const button_t *btn){;
    return btn->flags.long_press_event;
}

bool BUTTON_wasReleased(const button_t *btn){
    return btn->flags.released_event;
}

void BUTTON_ClearEvents(button_t *btn){
    btn->flags.released_event=false;
    btn->flags.pressed_event=false;
    btn->flags.long_press_event=false;
}

static bool Debounce(button_t *btn) {
    flags_t *flags=&btn->flags;
    
    flags->raw_state = GPIO_ReadPin(btn->read_port,btn->pin_mask);
            
    if (flags->raw_state != flags->stable_state) {    
        
        if (--(btn->debounce_counter) == 0) {
            btn->debounce_counter=DEBOUNCE_TICKS;
            flags->stable_state = flags->raw_state;
            return true;
        }
            
    } else {
        
        if (++(btn->debounce_counter)>=BOUNCING_LIMIT) {
            btn->debounce_counter = DEBOUNCE_TICKS;
        }
        
    }
    return false;
}