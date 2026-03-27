#include <stdint.h>
#include "image_generator.h"
#include "text_generator.h"
#include "plot_generator.h"
#include "core.h"
#define VISIBLE_AREA 480
__at(0x20) static volatile uintptr_t active_image_ptr;
__at(0x1D) static volatile uintptr_t active_glyph_ptr;//24 bit
__at(0x1B) static volatile uint8_t *rowPtr;// 16 bit
__at(0x1A) static volatile uint8_t glyphLine;
__at(0x18) static volatile uint16_t counter;
__at(0x17) static volatile uint8_t row;



typedef void (*const video_mode_handler)(void);

static volatile uint8_t active_mode=0;

video_mode_handler screen_mode_handlers[]={
    &TEXT_GeneratePixels,
    &IMAGE_GeneratePixels,
    &PLOT_GeneratePixels
};

video_mode_handler PIXEL_GENERATOR_GetActiveVideoHandler(void){
    return screen_mode_handlers[active_mode];
}

void PIXEL_GENERATOR_Initialize(void){
    counter =  VISIBLE_AREA;                    // Counts down to zero
    active_image_ptr = (uintptr_t)image_ptr;    // ptr to active image pixel table
    active_glyph_ptr = (uintptr_t)GLYPH_GetCurrentFont();
    rowPtr = (uint8_t*) videoPtr[0];
    row = 0;
    glyphLine=0;        
    
    static uint8_t cnt=0;
    if (!active_mode){
        //triggers every 30 frames thus 500 ms
        if (cnt++ == 30){
            VideoTerminal_FlashCursor();
            cnt=0;
        }
    }        
}

void PIXEL_GENERATOR_SetMode(uint8_t mode){
    active_mode=mode;
}