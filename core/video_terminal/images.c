#include "images.h"
#include "image_1.h"
#include "image_2.h"
#include "image_3.h"
#include "image_4.h"
#include "mcc.h"
#include "stdint.h"
#include "video_terminal.h"

asm("PSECT images,class=CODE");
uintptr_t image_ptr;
void IMAGES_loadImage(const unsigned char* image_data, const unsigned char* image_palette);
void IMAGE_Inititalize (void);

void IMAGE_Inititalize (void){
    IMAGES_loadImage(IMAGE4_data,IMAGE4_palette);
}

static uint8_t swapBits(uint8_t n, uint8_t i, uint8_t j) {
    // Extract the i-th and j-th bits
    uint8_t bit_i = (n >> i) & 1;
    uint8_t bit_j = (n >> j) & 1;

    // If they are different, toggle both
    if (bit_i != bit_j) {
        n ^= (1U << i); // Toggle i-th bit
        n ^= (1U << j); // Toggle j-th bit
    }

    return n;
}

void IMAGES_loadImage(const unsigned char* image_data, const unsigned char* image_palette){
    image_ptr=(uintptr_t)image_data;
    uint8_t *colorPtr=(uint8_t*)&videoBuffer[0][0];
    uintptr_t palette_ptr=(uintptr_t)image_palette;
    
    
    //45x60
    for (uint16_t i=0;i<45*60;i++){
//        while (!gMONITOR_RETRACE);
        uint8_t val = FLASH_ReadByte(palette_ptr++);
        val=swapBits(val,2,0);
        val=swapBits(val,6,4);
        *colorPtr = val;        
        colorPtr++;
    }        
}

