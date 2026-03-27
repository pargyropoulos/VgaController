//Pixels: 360 × 480
//Fore/back color Depth: 1 bit
//Colors: 16

#define PLOT_GENERATOR_INITIALIZE\
    asm("LFSR 2,_cursor+2");/*get the cursor color and store it in INDF2*/\
    asm("MOVF INDF2, W, C");\
    asm("LFSR 0, SPI1TXB");/* FRS0 points to SPITXB register*/

#define PLOT_GENERATOR_PRELOAD_SPITXB\
    asm("MOVLW 0x48");/*Waste few cycles for SP and BP. SP + BP = 82 = 0x52*/\
    asm("CPFSGT TMR1L,C");\
    asm("BRA $-2");\
    asm("BRA $+2");\
    asm("MOVLW 0x00");\
    asm("MOVWF INDF0,C");\
    asm("MOVWF LATD,C");

#define PLOT_GENERATOR_PRINT_CHAR\
    asm("MOVF POSTINC1,W,C");\
    asm("NOP");\
    asm("NOP");\
    asm("NOP");\
    asm("NOP");\
    asm("MOVWF INDF0,C");\
    asm("MOVF INDF2,W,C");\
    asm("MOVWF LATD,C")

#define PLOT_GENERATOR_PRINT_FIVE_CHARS\
    PLOT_GENERATOR_PRINT_CHAR;\
    PLOT_GENERATOR_PRINT_CHAR;\
    PLOT_GENERATOR_PRINT_CHAR;\
    PLOT_GENERATOR_PRINT_CHAR;\
    PLOT_GENERATOR_PRINT_CHAR


#define PLOT_GENERATOR_PRINT_TEN_CHARS\
    PLOT_GENERATOR_PRINT_FIVE_CHARS;\
    PLOT_GENERATOR_PRINT_FIVE_CHARS         
   

// Each line is repeated 4 times to get 120 x 4 = 480
// Row is increased once per 4 active lines
#define PLOT_GENERATOR_SET_GLYPHLINE_COUNTER\
    asm("INCF _glyphLine,C");\
    asm("MOVLW 0x04");\
    asm("XORWF _glyphLine,W,C");\
    asm("BNZ $+2");/* if not Zero waste 2 CYs*/\
    asm("BNZ $+6");/* if not Zero waste 2 CYs*/\
    asm("CLRF _glyphLine,C");/* if Zero, clear glyphline, increase row and match exactly 4 CYs*/\
    asm("INCF _row, C");
  

// Count for 480 active lines and then change vPosition to STATE_VIDEO_FRONT_PORCH
// if (counter!=0) counter-- else video_state = 0;}
#define PLOT_GENERATOR_SET_ROW_COUNTER\
    asm("DECF _counter, F, C");\
    asm("MOVLW 0x00");\
    asm("SUBWFB _counter+1, F, C");/*Subtract with carry */\
    asm("MOVF _counter, W, C");\
    asm("IORWF _counter+1, W, C");\
    asm("BZ $+4");\
    asm("BNZ $+4");\
    asm("CLRF _video_state, C");\

// FSR1 should point to the correct line of the Video Buffer array
#define PLOT_GENERATOR_GET_VIDEO_PTR\
    asm("MOVF _row, W, C");/* W = row*/\
    asm("MULLW 45"); /*W * 45 => result in PRODL:PRODH*/\
    asm("MOVLW low(_videoBuffer)");/* Add result to base address of videoBuffer */\
    asm("ADDWF PRODL, W, C");\
    asm("MOVWF FSR1L, C");\
    asm("MOVLW high(_videoBuffer)");\
    asm("ADDWFC PRODH, W, C");\
    asm("MOVWF FSR1H, C");
        
#define PLOT_GENERATOR_UPDATE_SCREEN\
    PLOT_GENERATOR_SET_ROW_COUNTER;\
    PLOT_GENERATOR_INITIALIZE;\
    PLOT_GENERATOR_GET_VIDEO_PTR;\
    PLOT_GENERATOR_SET_GLYPHLINE_COUNTER;\
    PLOT_GENERATOR_PRELOAD_SPITXB;\
    PLOT_GENERATOR_PRINT_TEN_CHARS;\
    PLOT_GENERATOR_PRINT_TEN_CHARS;\
    PLOT_GENERATOR_PRINT_TEN_CHARS;\
    PLOT_GENERATOR_PRINT_TEN_CHARS;\
    PLOT_GENERATOR_PRINT_FIVE_CHARS;

//asm("GLOBAL _plot_generator");  // Use underscore prefix for C function name
void PLOT_GeneratePixels(void){
    asm("CLRF CCPR3H");
    asm("CLRF CCPR3L");
    asm("INCF CCPR3L");        
    PLOT_GENERATOR_UPDATE_SCREEN;  
}
