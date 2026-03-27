/* 
 * File:   terminal_message.h
 * Author: Panagiotis Argyropoulos 
 * email: pargyropoulos@gmail.com
 * Revision history: 
 */

#ifndef TERMINAL_MESSAGE_H
#define	TERMINAL_MESSAGE_H

extern const char *MESSAGE_ACK;
extern const char *MESSAGE_WAIT;
extern const char *MESSAGE_ERROR;
extern const char *MESSAGE_OVF;
void TERMINAL_MESSAGE_Send(const char* txt);
#endif	/* TERMINAL_MESSAGE_H */

