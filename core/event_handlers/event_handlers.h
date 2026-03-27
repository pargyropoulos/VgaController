/* 
 * File:   event_handlers.h
 * Author: Panagiotis Argyropoulos  <pargyropoulos@gmail.com>
 * email: pargyropoulos@gmail.com
 * Created on July 20, 2025, 5:10 AM
 */

#ifndef EVENT_HANDLERS_H
#define	EVENT_HANDLERS_H
#include "middleware.h"

extern const event_handler_t EventHandlerUpdateInputBuffer;
extern const event_handler_t EventHandlerInitiateDMATrasnfer;
extern const event_handler_t EventHandlerProcessInput;
extern const event_handler_t EventHandlerUartOverrun;
extern const event_handler_t EventHandlerButton;

#endif	/* EVENT_HANDLERS_H */

