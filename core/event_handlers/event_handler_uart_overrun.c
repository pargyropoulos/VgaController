#include "event_handlers.h"
#include "core.h"
#include "middleware.h"

static void Handler(void){
    TERMINAL_MESSAGE_Send(MESSAGE_OVF);
}

const event_handler_t EventHandlerUartOverrun = {
    .handle=&Handler,
    .event=EVENT_UART_OVRN_ERROR
};
