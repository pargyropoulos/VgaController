//Pixels: 360 × 480
//Color Attributes: 45 × 60
//Colors: 16

#define IMAGE_GENERATOR_INITIALIZE\
    asm("MOVF (_active_image_ptr+2),W,C");\
    asm("MOVWF TBLPTRU,C");\
    asm("MOVF (_active_image_ptr+1),W,C");\
    asm("MOVWF TBLPTRH,C");\
    asm("MOVF (_active_image_ptr),W,C");\
    asm("MOVWF TBLPTRL,C");\
    asm("LFSR 0, SPI1TXB");\
    asm("MOVLW 0x2D");\
    asm("ADDWF _active_image_ptr, F, C");\
    asm("MOVLW 0x00");\
    asm("ADDWFC _active_image_ptr+1, F, C");\
    asm("MOVLW 0x00");\
    asm("ADDWFC _active_image_ptr+2, F, C");

#define IMAGE_GENERATOR_PRELOAD_SPITXB\
    asm("MOVLW 0x48");/*Waste few cycles for SP and BP*/\
    asm("CPFSGT TMR1L,C");\
    asm("BRA $-2");\
    asm("BRA $+2");\
    asm("MOVLW 0x00");\
    asm("MOVWF INDF0,C");\
    asm("MOVWF LATD,C");


#define IMAGE_GENERATOR_PRINT_CHAR\
    asm("TBLRD*+");\
    asm("MOVF TABLAT, W,C");\
    asm("MOVWF INDF0,C");\
    asm("NOP");\
    asm("NOP");\
    asm("MOVF POSTINC1,W,C");\
    asm("MOVWF LATD,C");

#define IMAGE_GENERATOR_PRINT_FIVE_CHARS\
    IMAGE_GENERATOR_PRINT_CHAR;\
    IMAGE_GENERATOR_PRINT_CHAR;\
    IMAGE_GENERATOR_PRINT_CHAR;\
    IMAGE_GENERATOR_PRINT_CHAR;\
    IMAGE_GENERATOR_PRINT_CHAR


#define IMAGE_GENERATOR_PRINT_TEN_CHARS\
    IMAGE_GENERATOR_PRINT_FIVE_CHARS;\
    IMAGE_GENERATOR_PRINT_FIVE_CHARS         


#define IMAGE_GENERATOR_PRINT_STOP\
    asm("MOVLW 0x00");\
    asm("MOVWF INDF0");\
    asm("MOVWF LATD,C");
    

#define IMAGE_GENERATOR_SET_GLYPHLINE_COUNTER\
    asm("INCF _glyphLine,C");\
    asm("MOVLW 0x08");\
    asm("XORWF _glyphLine,W,C");\
    asm("BNZ $+2");\
    asm("BNZ $+6");\
    asm("CLRF _glyphLine,C");\
    asm("INCF _row, C");
  

// Count for 480 active lines and then change vPosition to STATE_VIDEO_FRONT_PORCH
// if (counter!=0) counter-- else video_state = 0;}
#define IMAGE_GENERATOR_SET_ROW_COUNTER\
    asm("DECF _counter, F, C");\
    asm("MOVLW 0x00");\
    asm("SUBWFB _counter+1, F, C");\
    asm("MOVF _counter, W, C");\
    asm("IORWF _counter+1, W, C");\
    asm("BZ $+4");\
    asm("BNZ $+4");\
    asm("CLRF _video_state, C");\

#define IMAGE_GENERATOR_GET_VIDEO_PTR\
    asm("MOVF _row, W, C");/* W = row*/\
    asm("MULLW 45"); /*W * 45 => result in PRODL:PRODH*/\
    asm("MOVLW low(_videoBuffer)");/* Add result to base address of videoBuffer */\
    asm("ADDWF PRODL, W, C");\
    asm("MOVWF FSR1L, C");\
    asm("MOVLW high(_videoBuffer)");\
    asm("ADDWFC PRODH, W, C");\
    asm("MOVWF FSR1H, C");

        
#define IMAGE_GENERATOR_UPDATE_SCREEN\
    IMAGE_GENERATOR_SET_ROW_COUNTER;/* IMAGE_GENERATOR_SET_TMP_PTR_COUNTER;*/\
    IMAGE_GENERATOR_INITIALIZE;\
    IMAGE_GENERATOR_GET_VIDEO_PTR;\
    IMAGE_GENERATOR_SET_GLYPHLINE_COUNTER;\
    IMAGE_GENERATOR_PRELOAD_SPITXB;\
    IMAGE_GENERATOR_PRINT_TEN_CHARS;\
    IMAGE_GENERATOR_PRINT_TEN_CHARS;\
    IMAGE_GENERATOR_PRINT_TEN_CHARS;\
    IMAGE_GENERATOR_PRINT_TEN_CHARS;\
    IMAGE_GENERATOR_PRINT_FIVE_CHARS;
         

//asm("GLOBAL _image_generator");  // Use underscore prefix for C function name
void IMAGE_GeneratePixels(void){
    asm("CLRF CCPR3H");
    asm("CLRF CCPR3L");
    asm("INCF CCPR3L");        
    IMAGE_GENERATOR_UPDATE_SCREEN;  
}
