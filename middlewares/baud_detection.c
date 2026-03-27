#include <xc.h>
#include <stdint.h>
//Not fully tested... 
void BAUD_DETECTION_init(void){
    char discard;
    uint8_t sync_count=0;
    // BRGS high speed; MODE Asynchronous 8-bit mode; RXEN enabled; TXEN enabled; ABDEN disabled; 
    U1CON0 = 0xB0;
    // RXBIMD Set RXBKIF on rising RX input; BRKOVR disabled; WUE disabled; SENDB disabled; ON enabled; 
    U1CON1 = 0x80;    
    U1CON0bits.U1RXEN=1;
    U1CON0bits.U1TXEN=1;
    
   
    while(!PIR3bits.U1RXIF); // waiting for USART incoming byte
 
    discard = U1RXB;// must read RCREG to clear RCIF
    
    U1CON0bits.ABDEN = 1;
    
    // now, to ensure that the autobaud didn't sync on the wrong thing verify that "U's" are being received correctly
    // look for 2 more  "U "s after initial autobaud  "U "
    while (sync_count<2){

        while(!PIR3bits.U1RXIF){};
        if(U1RXB != 'U'){
            U1CON0bits.ABDEN = 1;
        }else {
            sync_count++;
        } 
    }
    U1CON0bits.ABDEN=0;
    U1UIRbits.ABDIF = 0;
    
 }
