#include "video_terminal.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include "isr.h"
#include <stddef.h>
#include <string.h>

// Extended ASCII Thick box characters 
#define THICK_HORIZ  205 // ═
#define THICK_VERT   186 // ║
#define THICK_TL     201 // ╔
#define THICK_TR     187 // ╗
#define THICK_BL     200 // ╚
#define THICK_BR     188 // ╝
#define THICK_ML     199 // ╟
#define THICK_MR     182 // ╢

// Extended ASCII Thin box characters 
#define THIN_HORIZ  196 // ─
#define THIN_VERT   179 // │
#define THIN_TL     218 // ┌
#define THIN_TR     191 // ┐
#define THIN_BL     192 // └
#define THIN_BR     217 // ┘
#define THIN_ML     195 // ├
#define THIN_MR     180 // ┤

#define SCROLL_UP     0
#define SCROLL_DOWN   1
#define SCROLL_LEFT   2
#define SCROLL_RIGHT  3


//volatile screen_Mode_t gScreen_Mode;


cell_t videoBuffer[ROWS+ADDITIONAL_PLOT_ROWS][COLUMNS];
cell_t (*videoPtr[ROWS])[COLUMNS] __at(0x300);

static volatile cursor_t cursor={.x=0, .y=0, .color=0x0f, .blink=true, .active_char=' ', .shape='_'};
static uint8_t active_mode;

void VideoTerminal_SetMode(uint8_t mode){
    active_mode=mode;
}

uint8_t VideoTerminal_GetMode(void){
    return 0;
}

void VideoTerminal_Initialize(void){
    
    for (int row=0;row<ROWS;row++){
        videoPtr[row]=&videoBuffer[row];  
    }
    VideoTerminal_SetBackGroundColor(9);
    VideoTerminal_FillRegion(0,0,COLUMNS-1,ROWS-1,215);
    
    uint8_t *ptr=(uint8_t*)&videoBuffer[40][0];
    for (uint16_t i = 0; i < 90*20; i++) {
        *ptr++ = 0x55;
    }
}

/**
 * Emulate CLS
 */
void VideoTerminal_ClearScreen(void){
    cell_t *cell_ptr;
    bool blink=cursor.blink;
    if (blink) VideoTerminal_SetBlink(false);
        
    for (uint8_t row=0;row<ROWS;row++){
        cell_ptr=(cell_t*)videoPtr[row];
        for (uint8_t col=0;col<COLUMNS;col++){
            cell_ptr->character = ' ';  // first byte
            cell_ptr->color_attribute= cursor.color; // second byte, maybe a color?
            cell_ptr++;
        }
    }
    cursor.x=0;
    cursor.y=0;
    cursor.active_char=' ';
    if (blink) VideoTerminal_SetBlink(true);
}

/**
 * Clear Video Buffer Array
 */
void VideoTerminal_ClearBuffer(void){
    memset((uint8_t*)videoBuffer,0x00,sizeof(videoBuffer));
}

/**
 * Locate Cursor on Screen
 * @param x
 * @param y
 * @return 
 */
bool VIDEO_TERMINAL_LocateXY(uint8_t x,uint8_t y){
    if (x >= COLUMNS || y >= ROWS) {
        return false;
    }
    
    //restore old character
    cell_t *cell_ptr=(cell_t*)videoPtr[cursor.y];
    cell_ptr+=cursor.x;
    cell_ptr->character=cursor.active_char;
    
    cursor.x= x<=COLUMNS ? x : 0;
    cursor.y= y>=ROWS ? 0 : y;
    cell_ptr=(cell_t*)videoPtr[cursor.y]+ cursor.x;
    cursor.active_char=cell_ptr->character;
    
    //print cursor
    if (cursor.blink) cell_ptr->character=cursor.shape;
    
    return true;
}

void VideoTerminal_FlashCursor(void){
    if (!cursor.blink) return;
    static uint8_t toggle=0;
    if (!toggle){
        cursor.shape=cursor.active_char;
    } else {
        cursor.shape='_';
    }
    cell_t *cell_ptr=(cell_t*)videoPtr[cursor.y] + cursor.x;
    //print cursor
    cell_ptr->character=cursor.shape;
        
    toggle^=1;
}

/**
 * Show/Hide blinking cursor
 * @param blink
 */
void VideoTerminal_SetBlink (bool blink){
    
    if (!blink){
        uint8_t (*ptr)[2]=(uint8_t (*)[2])videoPtr[cursor.y] + cursor.x;
        (*ptr)[0]=cursor.active_char;
        cursor.shape=cursor.active_char;
    }
    
    cursor.blink=blink;
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
/**
 * Set both Backround and Foreground color at once
 * @param color
 */
void VideoTerminal_SetColor (color_t color){
    cursor.color=color.color;
}

/**
 * Set Foreground Color
 * @param color
 * @return 
 */
bool VideoTerminal_SetForeGroundColor (uint8_t color){
    if (color > 15) return false;
    
    color=swapBits(color,2,0);
    
    cursor.foreColor=color;
    return true;
}

/**
 * Set Background Color
 * @param color
 * @return 
 */
bool VideoTerminal_SetBackGroundColor (uint8_t color){
    if (color > 15) return false;
    
    color=swapBits(color,2,0);    
    
    cursor.backColor=color;
    return true;
}

/**
 * Clear Current Line
 */
void VideoTerminal_ClearLine(void){
    cell_t* cell_ptr=(cell_t *)videoPtr[cursor.y];
    for (uint8_t col=0;col<COLUMNS;col++){
        cell_ptr->character=' ';
        cell_ptr++;
    }
}

/**
 * Emulate Carriage Return and Line Feed
 */
void VideoTerminal_CrLf(void){
    cell_t* cell_ptr=(cell_t *)videoPtr[cursor.y]+cursor.x;
    
    for (uint8_t col=cursor.x;col<COLUMNS;col++){
        cell_ptr->character = ' ';
        cell_ptr->color_attribute = cursor.color; //color
        cell_ptr++;
    }
    cursor.x=0;
    if (cursor.y<ROWS-1){
        cursor.y++;
    }else {
        VideoTerminal_ScrollUp();
    }
    
    cursor.active_char= ' ';
    //print cursor
    if (cursor.blink) cell_ptr->character=cursor.shape;
}

//#define SET_BACK_COLOR(c, bc) (c = (c & 0x0F) | ((bc & 0x0F) << 4))
/**
 * Print a character
 * @param ptr
 */
void VideoTerminal_Print (const char * ptr){
    
    while (*ptr) {
        cell_t* cell_ptr=&(*videoPtr[cursor.y])[cursor.x];
        cell_ptr->character = *ptr; 
        cell_ptr->color_attribute = cursor.color;
        ptr++;
        
        cursor.x++;        
        if (cursor.x==COLUMNS){
            cursor.x=0;
            cursor.y++;
            if (cursor.y == ROWS) {
                cursor.y=ROWS-1;
                VideoTerminal_ScrollUp();
            }
        }
    }
    
    //print cursor
    cell_t* cell_ptr=(cell_t *)videoPtr[cursor.y]+cursor.x;
    cursor.active_char=cell_ptr->character;
    if (cursor.blink) cell_ptr->character=cursor.shape;
    
}

/**
 * Scroll Up by one line
 */
void VideoTerminal_ScrollUp(void) {
    bool blink=cursor.blink;
    if (blink) VideoTerminal_SetBlink(false);
    
    cell_t (*tmp_ptr)[COLUMNS]= videoPtr[0]; // Reuse the cleared top line as the bottom line

    // Shift all lines up
    for (uint8_t row = 0; row < ROWS - 1; row++) {
        videoPtr[row] = videoPtr[row + 1];
    }

    // Assign the old top line to the bottom
    videoPtr[ROWS - 1] = tmp_ptr;
    
    // Clear last line
    cell_t *cell_ptr = (cell_t*)tmp_ptr;
    
    for (uint8_t col = 0; col < COLUMNS; col++) {
        cell_ptr->character = ' ';            // Character
        cell_ptr->color_attribute = cursor.color;   // Attribute
        cell_ptr++;
    }    

    

    cell_ptr=&(*videoPtr[cursor.y])[cursor.x];
    cursor.active_char=cell_ptr->character;
    
    if (blink) VideoTerminal_SetBlink(true);
    
}

/**
 * Scrolls a boxed region on 4 directions
 * @param x1 
 * @param y1 
 * @param x2
 * @param y2
 * @param direction 0:SCROLL_UP, 1: SCROLL_DOWN, 2: SCROLL_LEFT, 3:SCROLL_RIGHT
 */
bool VideoTerminal_ScrollBox(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint8_t direction) {
    if (x1 > x2 || y1 > y2 || x2 >= COLUMNS || y2 >= ROWS) {
        return false;
    }

    bool blink=cursor.blink;
    if (blink) VideoTerminal_SetBlink(false);
    
    switch (direction) {
        case SCROLL_UP:
            for (uint8_t y = y1; y < y2; y++) {
                cell_t *dest_ptr = (cell_t*)videoPtr[y] + x1;
                cell_t *src_ptr  = (cell_t*)videoPtr[y+1] + x1;
                
                for (uint8_t x = x1; x <= x2; x++) {
                    dest_ptr->character = src_ptr->character;
                    dest_ptr->color_attribute = src_ptr->color_attribute;
                    dest_ptr++;
                    src_ptr++;
                }
            }
            
            cell_t *bottom_ptr = (cell_t*)videoPtr[y2]+x1;
            for (uint8_t x = x1; x <= x2; x++) {
                bottom_ptr->character = ' ';
                bottom_ptr->color_attribute = cursor.color;
                bottom_ptr++;
            }
            break;

        case SCROLL_DOWN:
            for (int y = y2; y > y1; y--) {
                cell_t *dest_ptr = (cell_t*)videoPtr[y] + x1;
                cell_t *src_ptr  = (cell_t*)videoPtr[y-1] + x1;                
                for (uint8_t x = x1; x <= x2; x++) {
                    dest_ptr->character = src_ptr->character;
                    dest_ptr->color_attribute = src_ptr->color_attribute;
                    dest_ptr++;
                    src_ptr++;
                }
            }
            
            cell_t *top_ptr = (cell_t*)videoPtr[y1]+x1;
            for (uint8_t x = x1; x <= x2; x++) {
                top_ptr->character=' ';
                top_ptr->color_attribute=cursor.color;
                top_ptr++;
            }
            break;

        case SCROLL_LEFT:
            for (uint8_t y = y1; y <= y2; y++) {
                cell_t (*cell_ptr)[COLUMNS] = videoPtr[y];
                for (uint8_t x = x1; x < x2; x++) {
                    (*cell_ptr)[x].character=(*cell_ptr)[x+1].character;
                    (*cell_ptr)[x].color_attribute=(*cell_ptr)[x+1].color_attribute;
                }
                    (*cell_ptr)[x2].character=' ';
                    (*cell_ptr)[x2].color_attribute=cursor.color;
            }
            break;

        case SCROLL_RIGHT:
            for (uint8_t y = y1; y <= y2; y++) {
                cell_t (*cell_ptr)[COLUMNS] = videoPtr[y];
                for (int x = x2; x > x1; x--) {
                    (*cell_ptr)[x].character=(*cell_ptr)[x-1].character;
                    (*cell_ptr)[x].color_attribute=(*cell_ptr)[x-1].color_attribute;
                }
                (*cell_ptr)[x1].character=' ';
                (*cell_ptr)[x1].color_attribute=cursor.color;
            }
            break;
    }
    cell_t *cell_ptr=&(*videoPtr[cursor.y])[cursor.x];
    cursor.active_char=cell_ptr->character;
    
    if (blink) VideoTerminal_SetBlink(true);
        
    return true;
}


bool VideoTerminal_DrawBox(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t style){
    if (x1 >= x2 || y1 >= y2 || x2 >= COLUMNS || y2 >= ROWS)
        return false;  // Basic bounds check

    // Draw top and bottom edges
    for (uint8_t x = x1 + 1; x < x2; x++) {
        if (!style){
            VideoTerminal_DrawChar(x, y1, THICK_HORIZ);  // top
            VideoTerminal_DrawChar(x, y2, THICK_HORIZ);  // bottom
        }else {
            VideoTerminal_DrawChar(x, y1, THIN_HORIZ);  // top
            VideoTerminal_DrawChar(x, y2, THIN_HORIZ);  // bottom            
        }
    }

    // Fill interior (skip border lines)
    for (uint8_t y = y1 + 1; y < y2; y++) {
        for (uint8_t x = x1 + 1; x < x2; x++) {
            VideoTerminal_DrawChar(x, y, ' ');
        }
    }

    // Draw left and right edges
    for (uint8_t y = y1 + 1; y < y2; y++) {
        if (!style){
            VideoTerminal_DrawChar(x1, y, THICK_VERT);  // left
            VideoTerminal_DrawChar(x2, y, THICK_VERT);  // right
        }else {
            VideoTerminal_DrawChar(x1, y, THIN_VERT);  // left
            VideoTerminal_DrawChar(x2, y, THIN_VERT);  // right
        }
    }

    // Draw corners
    if (!style){
        VideoTerminal_DrawChar(x1, y1, THICK_TL);
        VideoTerminal_DrawChar(x2, y1, THICK_TR);
        VideoTerminal_DrawChar(x1, y2, THICK_BL);
        VideoTerminal_DrawChar(x2, y2, THICK_BR);
    }else {
        VideoTerminal_DrawChar(x1, y1, THIN_TL);
        VideoTerminal_DrawChar(x2, y1, THIN_TR);
        VideoTerminal_DrawChar(x1, y2, THIN_BL);
        VideoTerminal_DrawChar(x2, y2, THIN_BR);        
    }
    return true;
}

void VideoTerminal_DrawChar(uint8_t x, uint8_t y, char chr) {
    // Safety check: make sure coordinates are within bounds
    if (x >= COLUMNS || y >= ROWS) return;

    

    // Get pointer to the character cell at (x, y)
    cell_t *cell_ptr = (cell_t*)videoPtr[y]+x;

    // Assign character and color
    cell_ptr->character = chr;
    cell_ptr->color_attribute = cursor.color;
}

bool VideoTerminal_DrawWindow(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t style){
    // Basic bounds check
    if (x1 >= x2 || y1 >= y2 || x2 >= COLUMNS || y2 >= ROWS){
        return false;  
    }
    VideoTerminal_DrawBox(x1, y1, x2, y2,style);
    VideoTerminal_DrawSeparator(x1, y1+2, x2,style);
    return true;  
}

/**
 * Draw a line separator on boxes and windows
 * @param x1
 * @param y1
 * @param x2
 * @param y2
 * @param style 0: Thin Borders, 1: Thick Borders
 */
bool VideoTerminal_DrawSeparator(uint8_t x1, uint8_t y, uint8_t x2,uint8_t style){
    // Basic bounds check
    if (x1 >= x2 || x2 >= COLUMNS || y >= ROWS){
        return false;  
    }
    if (!style){
        VideoTerminal_DrawChar(x1,y,THICK_ML);
        VideoTerminal_DrawChar(x2,y,THICK_MR);
    }else{
        VideoTerminal_DrawChar(x1,y,THIN_ML);
        VideoTerminal_DrawChar(x2,y,THIN_MR);        
    }
    for (uint8_t x=x1+1;x<x2;x++){
        VideoTerminal_DrawChar(x,y,THIN_HORIZ);
    }
    return true;  
}

bool VideoTerminal_FillRegion(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t chr){
    if (x1 >= x2 || y1 >= y2 || x2 >= COLUMNS || y2 >= ROWS)
        return false;  // Basic bounds check
   
    // Fill interior with selected char
    for (uint8_t y = y1; y <= y2; y++) {
        for (uint8_t x = x1; x <= x2; x++) {
            VideoTerminal_DrawChar(x, y, chr);
        }
    }
    return true;
}

void VideoTerminal_DrawColor(uint8_t back_color,uint8_t fore_color) {  
    for (uint8_t row=0;row<ROWS;row++){
        cell_t *ptr = (cell_t*) videoPtr[row];
        for (uint8_t col=0;col<COLUMNS;col++){
            ptr->color_attribute=(uint8_t) (back_color<<4 |fore_color);
            ptr++;
        }
    }
}


bool VideoTerminal_SetPixel(int16_t x, int16_t y, uint8_t color) {
    if (x<0 || y<0) return false;
    
    int16_t x_offset = x >> 3; // x_offset= x/8
//    uint8_t pixel_mask = (uint8_t) (1 <<  (7 - x % 8));
//    uint8_t pixel_mask = (uint8_t)(1 << (7 - (x & 0x07))); //faster than modulo 8
    uint8_t pixel_mask = (uint8_t)(0x80 >> (x & 0x07));
    
    uint8_t (*gfx_ptr)[120][COLUMNS] = (uint8_t(*)[120][45])&videoBuffer;
    
    if (color){
        (*gfx_ptr)[y][x_offset] |= pixel_mask;
    }else {
        (*gfx_ptr)[y][x_offset] &= ~pixel_mask;
    }
    return true;
}

//Bresenham's Line algorithm
bool VideoTerminal_DrawLine(int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint8_t color) {
    if (x1 >= COLUMNS*8 || y1 >= ROWS *3 || x2 >= COLUMNS*8 || y2 >= ROWS *3){
        return false;          
    }
    
    int16_t dx = x2 - x1 >= 0 ? x2 - x1: x1 - x2; //abs(x1 - x0)
    int16_t dy = y2 - y1 >= 0 ? y2 - y1: y1 - y2; //abs(y1 - y0)
    int8_t sx = (x1 < x2) ? 1 : -1;
    int8_t sy = (y1 < y2) ? 1 : -1;
    int16_t err = dx - dy;

    
    while (true) {
        VideoTerminal_SetPixel(x1, y1, color);

        if (x1 == x2 && y1 == y2) break;

        int e2 = 2 * err;
        if (e2 > -dy) { err -= dy; x1 += sx; }
        if (e2 < dx)  { err += dx; y1 += sy; }
    }
    return true;
}


//a : Horizontal radius (half-width of the ellipse)    
//b : Vertical radius (half-height of the ellipse)
/**
 * DrawEllipse
 * @param centerX
 * @param centerY
 * @param radiusX: X plane radius
 * @param radiusY: Y plane radius
 * @param color: 0-> Background color, 1->Foreground Color
 */
void VideoTerminal_DrawEllipse(int16_t centerX, int16_t centerY, int16_t radiusX, int16_t radiusY, uint8_t color) {
    int x = 0;
    int y = radiusY;

    long a2 = (long)radiusX * radiusX;
    long b2 = (long)radiusY * radiusY;
    long fa2 = 4 * a2;
    long fb2 = 4 * b2;

    // Region 1
    long sigma = 2 * b2 + a2 * (1 - 2 * radiusY);
    while (b2 * x <= a2 * y) {
        VideoTerminal_SetPixel(centerX + x, centerY + y, color);
        VideoTerminal_SetPixel(centerX - x, centerY + y, color);
        VideoTerminal_SetPixel(centerX + x, centerY - y, color);
        VideoTerminal_SetPixel(centerX - x, centerY - y, color);

        if (sigma >= 0) {
            sigma += fa2 * (1 - y);
            y--;
        }
        sigma += b2 * ((4 * x) + 6);
        x++;
    }

    // Region 2
    x = radiusX;
    y = 0;
    sigma = 2 * a2 + b2 * (1 - 2 * radiusX);
    while (a2 * y <= b2 * x) {
        VideoTerminal_SetPixel(centerX + x, centerY + y, color);
        VideoTerminal_SetPixel(centerX - x, centerY + y, color);
        VideoTerminal_SetPixel(centerX + x, centerY - y, color);
        VideoTerminal_SetPixel(centerX - x, centerY - y, color);

        if (sigma >= 0) {
            sigma += fb2 * (1 - x);
            x--;
        }
        sigma += a2 * ((4 * y) + 6);
        y++;
    }
}

/**
 * Draw Circle
 * @param centerX
 * @param centerY
 * @param radius
 * @param color: 0-> Background color, 1->Foreground Color
 * @return 
 */

bool VideoTerminal_DrawCircle( int16_t centerX, int16_t centerY, int16_t radius, uint8_t color) {  
    VideoTerminal_DrawEllipse(centerX, centerY, radius*2, radius, color);
    return true;
}

//GFX
void VideoTerminal_GFX_SetColor(uint8_t back_color,uint8_t fore_color, uint16_t x, uint16_t y) {
    uint8_t offset_y=(uint8_t) (y>>3);
    uint8_t offset_x=(uint8_t) (x>>3);
    uint8_t (*ptr)[45] = (uint8_t(*)[45]) &videoBuffer[0][0];
    ptr[offset_y][offset_x]=(uint8_t) (back_color<<4 |fore_color);
}


void VideoTerminal_GFX_PaintColor(uint8_t back_color,uint8_t fore_color) {  
    uint8_t (*array_ptr)[60][45] =(uint8_t (*)[60][45]) &videoBuffer;
    
    uint8_t *ptr=&(*array_ptr)[0][0];
    for (uint16_t cnt=COLUMNS * TOTAL_ROWS;cnt>0; cnt--){
        *ptr++=(uint8_t) (back_color<<4 |fore_color);
    } 
}