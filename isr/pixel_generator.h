/* 
 * File:   pixel_generator.h
 * Author: Panagiotis Argyropoulos
 * email: pargyropoulos@gmail.com
 * Created on 26 Αυγούστου 2025, 12:46 πμ
 */

#ifndef PIXEL_GENERATOR_H
#define	PIXEL_GENERATOR_H

void PIXEL_GENERATOR_Initialize(void);
void PIXEL_GENERATOR_SetMode(uint8_t mode);

//extern void (*const screen_mode_handlers[])(void);

typedef void (*const video_mode_handler)(void);
video_mode_handler PIXEL_GENERATOR_GetActiveVideoHandler(void);

#endif	/* PIXEL_GENERATOR_H */

