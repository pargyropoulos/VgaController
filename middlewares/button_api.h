/* 
 * File:   button_api.h
 * Author: Panagiotis Argyropoulos  <pargyropoulos@gmail.com>
 * email: pargyropoulos@gmail.com
 */

#ifndef BUTTON_API_H
#define	BUTTON_API_H

#define DEBOUNCE_TICKS 10     // number of consecutive stable reads required to accept the new pin state
#define LONG_PRESS_TICKS 60*3 // number of consecutive cycles required to trigger a long press event
#define BOUNCING_LIMIT 4      // number of unstable reads before re-initializing the debounce counter
#define BUTTONS_COUNT 2

//opaque type to prevent ABI leak
typedef struct button_t button_t;

button_t* BUTTON_Add(volatile uint8_t *read_port, uint8_t pin_mask, bool pulled_up);
void BUTTON_Update(button_t *btn);
bool BUTTON_wasPressed(const button_t *btn);
bool BUTTON_wasReleased(const button_t *btn);
bool BUTTON_wasLongPressed(const button_t *btn);
void BUTTON_ClearEvents(button_t *btn);


#endif	/* BUTTON_API_H */

