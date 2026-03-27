/* 
 * File: glyphs.h
 * Author: Panagiotis Argyropoulos 
 * email: pargyropoulos@gmail.com
 * Revision history: 
 */


#ifndef GLYPHS_H
#define	GLYPHS_H

#include <stdbool.h>
#include <stdint.h>

void GLYPH_Inititalize (void);
//void GLYPH_SetFont(uint8_t font);

typedef const unsigned char* font_ptr;
font_ptr GLYPH_GetCurrentFont(void);
    
#endif

