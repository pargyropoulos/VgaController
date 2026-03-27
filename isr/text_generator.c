//Pixels: 360 × 480
//Rows: 40
//Columns: 45
//Colors: 16

#define TEXT_GENERATOR_INITIALIZE\
    asm("MOVF (_active_glyph_ptr+2),W,C");\
    asm("MOVWF TBLPTRU,C");\
    asm("MOVF (_active_glyph_ptr+1),W,C");\
    asm("ADDWF (_glyphLine),W,C");\
    asm("MOVWF TBLPTRH,C");\
    asm("LFSR 0, SPI1TXB");\
    asm("MOVF (_rowPtr+1),W,C");\
    asm("MOVWF FSR1H,C");\
    asm("MOVF (_rowPtr),W,C");\
    asm("MOVWF FSR1L,C");

#define TEXT_GENERATOR_PRELOAD_SPITXB\
    asm("MOVLW 0x48");/*Waste few cycles for SP and BP*/\
    asm("CPFSGT TMR1L,C");\
    asm("BRA $-2");\
    asm("BRA $+2");\
    asm("MOVLW 0x00");\
    asm("MOVWF INDF0,C");\
    asm("MOVWF LATD,C");

#define TEXT_GENERATOR_PRINT_CHAR\
    asm("MOVF POSTINC1,W,C");\
    asm("MOVWF TBLPTRL,C");\
    asm("TBLRD*");\
    asm("MOVF TABLAT, W,C");\
    asm("MOVWF INDF0,C");\
    asm("MOVF POSTINC1,W,C");\
    asm("MOVWF LATD,C")


#define TEXT_GENERATOR_PRINT_FIVE_CHARS\
    TEXT_GENERATOR_PRINT_CHAR;\
    TEXT_GENERATOR_PRINT_CHAR;\
    TEXT_GENERATOR_PRINT_CHAR;\
    TEXT_GENERATOR_PRINT_CHAR;\
    TEXT_GENERATOR_PRINT_CHAR


#define TEXT_GENERATOR_PRINT_TEN_CHARS\
    TEXT_GENERATOR_PRINT_FIVE_CHARS;\
    TEXT_GENERATOR_PRINT_FIVE_CHARS         


#define TEXT_GENERATOR_SET_GLYPHLINE_COUNTER\
    asm("INCF _glyphLine,C");\
    asm("MOVLW 0x0C");\
    asm("XORWF _glyphLine,W,C");\
    asm("BNZ $+2");\
    asm("BNZ $+6");/*go to the end*/\
    asm("CLRF _glyphLine,C");\
    asm("INCF _row, C");

// Count for 480 active lines and then change vPosition to STATE_VIDEO_FRONT_PORCH
// if (counter!=0) counter-- else video_state = 0;}
#define TEXT_GENERATOR_SET_ROW_COUNTER\
    asm("DECF _counter, F, C");\
    asm("MOVLW 0x00");\
    asm("SUBWFB _counter+1, F, C");\
    asm("MOVF _counter, W, C");\
    asm("IORWF _counter+1, W, C");\
    asm("BZ $+4");\
    asm("BNZ $+4");\
    asm("CLRF _video_state, C");


//rowPtr = (unsigned char*) videoPtr[row];
#define TEXT_GENERATOR_GET_ROW_PTR\
    asm("MOVF _row, W, C"); /* W = row */\
    asm("ADDWF _row, W, C"); /* W = row + row = row × 2 */\
    asm("ADDLW low(_videoPtr)"); /* Add base address of videoPtr[]*/\
    asm("MOVWF FSR1L, C");\
    asm("CLRF FSR1H, C"); /* Assuming videoPtr[] is in low memory*/\
    asm("MOVLW 0x03");\
    asm("MOVWF FSR1H,C");/* at BANK 3*/\
    asm("MOVF POSTINC1, W, C");/*MOVF INDF1 TO W AND POST INCREMENT IT*/\
    asm("MOVWF _rowPtr, C");\
    asm("MOVF INDF1, W, C");\
    asm("MOVWF _rowPtr+1, C");
        
    
#define TEXT_GENERATOR_UPDATE_SCREEN\
    TEXT_GENERATOR_GET_ROW_PTR;\
    TEXT_GENERATOR_SET_ROW_COUNTER;\
    TEXT_GENERATOR_INITIALIZE;\
    TEXT_GENERATOR_SET_GLYPHLINE_COUNTER;\
    TEXT_GENERATOR_PRELOAD_SPITXB;/*Preload TX1REG with Zero to SYNC SPI output with the COLOR OUTPUT*/\
    TEXT_GENERATOR_PRINT_TEN_CHARS;\
    TEXT_GENERATOR_PRINT_TEN_CHARS;\
    TEXT_GENERATOR_PRINT_TEN_CHARS;\
    TEXT_GENERATOR_PRINT_TEN_CHARS;\
    TEXT_GENERATOR_PRINT_FIVE_CHARS;

        
void TEXT_GeneratePixels(void){
    asm("CLRF CCPR3H");
    asm("CLRF CCPR3L");
    asm("INCF CCPR3L");        
    TEXT_GENERATOR_UPDATE_SCREEN;    
}
