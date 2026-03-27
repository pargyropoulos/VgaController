/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

#ifndef VIDEO_TERMINAL_H
#define	VIDEO_TERMINAL_H
    #include <stdbool.h>
    #include <stdint.h>
    #define ROWS 40
    #define COLUMNS 45
    #define ADDITIONAL_PLOT_ROWS 20
    #define TOTAL_ROWS 60
    
    typedef union{
        uint8_t color;
        struct {
            uint8_t foreground : 4;
            uint8_t background : 4;
        };
    } color_t;
    
    typedef struct {
        uint8_t x;
        uint8_t y;
        union {
            uint8_t color;
            struct {
                uint8_t foreColor : 4;
                uint8_t backColor : 4;
            };
        };
        bool blink;
//        bool echo;
        uint8_t active_char;
        uint8_t shape;
    } cursor_t;
    
    
bool VIDEO_TERMINAL_LocateXY(uint8_t x,uint8_t y);
void VideoTerminal_ClearScreen(void);
void VideoTerminal_ClearBuffer(void);
void VideoTerminal_Initialize(void);
void VideoTerminal_SetBlink (bool blink);
bool VideoTerminal_SetBackGroundColor (uint8_t color);
bool VideoTerminal_SetForeGroundColor (uint8_t color);
void VideoTerminal_SetColor (color_t color);
void VideoTerminal_ClearLine(void);
void VideoTerminal_CrLf(void);
void VideoTerminal_Print(const char * ptr);
void VideoTerminal_ScrollUp(void);
bool VideoTerminal_ScrollBox(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t direction);
bool VideoTerminal_DrawBox(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t style);
bool VideoTerminal_DrawWindow(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t style);
void VideoTerminal_DrawChar(uint8_t x, uint8_t y, char chr);
bool VideoTerminal_DrawSeparator(uint8_t x1, uint8_t y, uint8_t x2, uint8_t style);
bool VideoTerminal_FillRegion(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t chr);
void VideoTerminal_DrawColor(uint8_t back_color,uint8_t fore_color);
bool VideoTerminal_SetPixel(int16_t x, int16_t y, uint8_t color);
bool VideoTerminal_DrawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint8_t color);
bool VideoTerminal_DrawCircle( int16_t centerX, int16_t centerY, int16_t radius, uint8_t color);    
void VideoTerminal_GFX_SetColor(uint8_t back_color,uint8_t fore_color, uint16_t x, uint16_t y);
void VideoTerminal_GFX_PaintColor(uint8_t back_color,uint8_t fore_color);
    
typedef volatile struct{
    char character;
    uint8_t color_attribute;
} cell_t;

extern cell_t videoBuffer[ROWS+ADDITIONAL_PLOT_ROWS][COLUMNS];
extern cell_t (*videoPtr[ROWS])[COLUMNS];

void VideoTerminal_FlashCursor(void);

#endif

