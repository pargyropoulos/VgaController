/* 
 * File: state.h
 * Author: Panagiotis Argyropoulos 
 * email: pargyropoulos@gmail.com
 * Revision history: 
 */

#ifndef STATE_H
#define	STATE_H

#include <stdint.h>

/**
 * Generic State Interface
 **/
typedef struct State {
    void (*processInput)(const struct State **currentState, const char* chr);
}state_t;

/**
 * Parametric State interface
 * It extends the Generic State Interface
 */
typedef struct {
    state_t base_state;
    void (**callBack)(const void* args, const uint8_t count);
    const state_t **nextState;
} parametric_state_t;


#endif 	/* STATE_H */

