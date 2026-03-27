/* 
 * File:   image.h
 * Author: Panagiotis Argyropoulos  <pargyropoulos@gmail.com>
 * email: pargyropoulos@gmail.com
 * Created on 15 Ιουλίου 2025, 11:25 μμ
 */

#ifndef IMAGE_H
#define	IMAGE_H

#include <stdbool.h>
#include <stdint.h>
#include "image_1.h"
#include "image_2.h"
#include "image_3.h"
#include "image_4.h"

extern uintptr_t image_ptr;
//extern volatile unsigned char *videoImagePtr[60];
void IMAGE_Inititalize (void);
void IMAGES_loadImage(const unsigned char* image_data, const unsigned char* image_palette);
#endif	/* IMAGE_H */

