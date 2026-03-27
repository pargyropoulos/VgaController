/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18F47K42
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above
        MPLAB 	          :  MPLAB X 6.00	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set RA0 procedures
#define RA0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define RA0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define RA0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define RA0_GetValue()              PORTAbits.RA0
#define RA0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define RA0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define RA0_SetPullup()             do { WPUAbits.WPUA0 = 1; } while(0)
#define RA0_ResetPullup()           do { WPUAbits.WPUA0 = 0; } while(0)
#define RA0_SetAnalogMode()         do { ANSELAbits.ANSELA0 = 1; } while(0)
#define RA0_SetDigitalMode()        do { ANSELAbits.ANSELA0 = 0; } while(0)

// get/set MUX_OE_ACTIVE_VIDEO aliases
#define MUX_OE_ACTIVE_VIDEO_TRIS                 TRISAbits.TRISA1
#define MUX_OE_ACTIVE_VIDEO_LAT                  LATAbits.LATA1
#define MUX_OE_ACTIVE_VIDEO_PORT                 PORTAbits.RA1
#define MUX_OE_ACTIVE_VIDEO_WPU                  WPUAbits.WPUA1
#define MUX_OE_ACTIVE_VIDEO_OD                   ODCONAbits.ODCA1
#define MUX_OE_ACTIVE_VIDEO_ANS                  ANSELAbits.ANSELA1
#define MUX_OE_ACTIVE_VIDEO_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define MUX_OE_ACTIVE_VIDEO_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define MUX_OE_ACTIVE_VIDEO_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define MUX_OE_ACTIVE_VIDEO_GetValue()           PORTAbits.RA1
#define MUX_OE_ACTIVE_VIDEO_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define MUX_OE_ACTIVE_VIDEO_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define MUX_OE_ACTIVE_VIDEO_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define MUX_OE_ACTIVE_VIDEO_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define MUX_OE_ACTIVE_VIDEO_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define MUX_OE_ACTIVE_VIDEO_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define MUX_OE_ACTIVE_VIDEO_SetAnalogMode()      do { ANSELAbits.ANSELA1 = 1; } while(0)
#define MUX_OE_ACTIVE_VIDEO_SetDigitalMode()     do { ANSELAbits.ANSELA1 = 0; } while(0)

// get/set IO_RA2 aliases
#define IO_RA2_TRIS                 TRISAbits.TRISA2
#define IO_RA2_LAT                  LATAbits.LATA2
#define IO_RA2_PORT                 PORTAbits.RA2
#define IO_RA2_WPU                  WPUAbits.WPUA2
#define IO_RA2_OD                   ODCONAbits.ODCA2
#define IO_RA2_ANS                  ANSELAbits.ANSELA2
#define IO_RA2_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define IO_RA2_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define IO_RA2_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define IO_RA2_GetValue()           PORTAbits.RA2
#define IO_RA2_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define IO_RA2_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define IO_RA2_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define IO_RA2_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define IO_RA2_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define IO_RA2_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define IO_RA2_SetAnalogMode()      do { ANSELAbits.ANSELA2 = 1; } while(0)
#define IO_RA2_SetDigitalMode()     do { ANSELAbits.ANSELA2 = 0; } while(0)

// get/set RA3 procedures
#define RA3_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define RA3_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define RA3_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define RA3_GetValue()              PORTAbits.RA3
#define RA3_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define RA3_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define RA3_SetPullup()             do { WPUAbits.WPUA3 = 1; } while(0)
#define RA3_ResetPullup()           do { WPUAbits.WPUA3 = 0; } while(0)
#define RA3_SetAnalogMode()         do { ANSELAbits.ANSELA3 = 1; } while(0)
#define RA3_SetDigitalMode()        do { ANSELAbits.ANSELA3 = 0; } while(0)

// get/set HSYNC aliases
#define HSYNC_TRIS                 TRISAbits.TRISA4
#define HSYNC_LAT                  LATAbits.LATA4
#define HSYNC_PORT                 PORTAbits.RA4
#define HSYNC_WPU                  WPUAbits.WPUA4
#define HSYNC_OD                   ODCONAbits.ODCA4
#define HSYNC_ANS                  ANSELAbits.ANSELA4
#define HSYNC_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define HSYNC_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define HSYNC_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define HSYNC_GetValue()           PORTAbits.RA4
#define HSYNC_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define HSYNC_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define HSYNC_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define HSYNC_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define HSYNC_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define HSYNC_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define HSYNC_SetAnalogMode()      do { ANSELAbits.ANSELA4 = 1; } while(0)
#define HSYNC_SetDigitalMode()     do { ANSELAbits.ANSELA4 = 0; } while(0)

// get/set IO_RA5 aliases
#define IO_RA5_TRIS                 TRISAbits.TRISA5
#define IO_RA5_LAT                  LATAbits.LATA5
#define IO_RA5_PORT                 PORTAbits.RA5
#define IO_RA5_WPU                  WPUAbits.WPUA5
#define IO_RA5_OD                   ODCONAbits.ODCA5
#define IO_RA5_ANS                  ANSELAbits.ANSELA5
#define IO_RA5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define IO_RA5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define IO_RA5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define IO_RA5_GetValue()           PORTAbits.RA5
#define IO_RA5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define IO_RA5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define IO_RA5_SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define IO_RA5_ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define IO_RA5_SetPushPull()        do { ODCONAbits.ODCA5 = 0; } while(0)
#define IO_RA5_SetOpenDrain()       do { ODCONAbits.ODCA5 = 1; } while(0)
#define IO_RA5_SetAnalogMode()      do { ANSELAbits.ANSELA5 = 1; } while(0)
#define IO_RA5_SetDigitalMode()     do { ANSELAbits.ANSELA5 = 0; } while(0)

// get/set RB0 procedures
#define RB0_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define RB0_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define RB0_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define RB0_GetValue()              PORTBbits.RB0
#define RB0_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define RB0_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define RB0_SetPullup()             do { WPUBbits.WPUB0 = 1; } while(0)
#define RB0_ResetPullup()           do { WPUBbits.WPUB0 = 0; } while(0)
#define RB0_SetAnalogMode()         do { ANSELBbits.ANSELB0 = 1; } while(0)
#define RB0_SetDigitalMode()        do { ANSELBbits.ANSELB0 = 0; } while(0)

// get/set MUX_SELECT aliases
#define MUX_SELECT_TRIS                 TRISBbits.TRISB1
#define MUX_SELECT_LAT                  LATBbits.LATB1
#define MUX_SELECT_PORT                 PORTBbits.RB1
#define MUX_SELECT_WPU                  WPUBbits.WPUB1
#define MUX_SELECT_OD                   ODCONBbits.ODCB1
#define MUX_SELECT_ANS                  ANSELBbits.ANSELB1
#define MUX_SELECT_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define MUX_SELECT_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define MUX_SELECT_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define MUX_SELECT_GetValue()           PORTBbits.RB1
#define MUX_SELECT_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define MUX_SELECT_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define MUX_SELECT_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define MUX_SELECT_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define MUX_SELECT_SetPushPull()        do { ODCONBbits.ODCB1 = 0; } while(0)
#define MUX_SELECT_SetOpenDrain()       do { ODCONBbits.ODCB1 = 1; } while(0)
#define MUX_SELECT_SetAnalogMode()      do { ANSELBbits.ANSELB1 = 1; } while(0)
#define MUX_SELECT_SetDigitalMode()     do { ANSELBbits.ANSELB1 = 0; } while(0)

// get/set VSYNC aliases
#define VSYNC_TRIS                 TRISBbits.TRISB2
#define VSYNC_LAT                  LATBbits.LATB2
#define VSYNC_PORT                 PORTBbits.RB2
#define VSYNC_WPU                  WPUBbits.WPUB2
#define VSYNC_OD                   ODCONBbits.ODCB2
#define VSYNC_ANS                  ANSELBbits.ANSELB2
#define VSYNC_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define VSYNC_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define VSYNC_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define VSYNC_GetValue()           PORTBbits.RB2
#define VSYNC_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define VSYNC_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define VSYNC_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define VSYNC_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define VSYNC_SetPushPull()        do { ODCONBbits.ODCB2 = 0; } while(0)
#define VSYNC_SetOpenDrain()       do { ODCONBbits.ODCB2 = 1; } while(0)
#define VSYNC_SetAnalogMode()      do { ANSELBbits.ANSELB2 = 1; } while(0)
#define VSYNC_SetDigitalMode()     do { ANSELBbits.ANSELB2 = 0; } while(0)

// get/set RB3 procedures
#define RB3_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define RB3_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define RB3_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define RB3_GetValue()              PORTBbits.RB3
#define RB3_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define RB3_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define RB3_SetPullup()             do { WPUBbits.WPUB3 = 1; } while(0)
#define RB3_ResetPullup()           do { WPUBbits.WPUB3 = 0; } while(0)
#define RB3_SetAnalogMode()         do { ANSELBbits.ANSELB3 = 1; } while(0)
#define RB3_SetDigitalMode()        do { ANSELBbits.ANSELB3 = 0; } while(0)

// get/set BUTTON_1 aliases
#define BUTTON_1_TRIS                 TRISBbits.TRISB4
#define BUTTON_1_LAT                  LATBbits.LATB4
#define BUTTON_1_PORT                 PORTBbits.RB4
#define BUTTON_1_WPU                  WPUBbits.WPUB4
#define BUTTON_1_OD                   ODCONBbits.ODCB4
#define BUTTON_1_ANS                  ANSELBbits.ANSELB4
#define BUTTON_1_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define BUTTON_1_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define BUTTON_1_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define BUTTON_1_GetValue()           PORTBbits.RB4
#define BUTTON_1_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define BUTTON_1_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define BUTTON_1_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define BUTTON_1_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define BUTTON_1_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define BUTTON_1_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define BUTTON_1_SetAnalogMode()      do { ANSELBbits.ANSELB4 = 1; } while(0)
#define BUTTON_1_SetDigitalMode()     do { ANSELBbits.ANSELB4 = 0; } while(0)

// get/set RB5 procedures
#define RB5_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define RB5_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define RB5_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define RB5_GetValue()              PORTBbits.RB5
#define RB5_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define RB5_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define RB5_SetPullup()             do { WPUBbits.WPUB5 = 1; } while(0)
#define RB5_ResetPullup()           do { WPUBbits.WPUB5 = 0; } while(0)
#define RB5_SetAnalogMode()         do { ANSELBbits.ANSELB5 = 1; } while(0)
#define RB5_SetDigitalMode()        do { ANSELBbits.ANSELB5 = 0; } while(0)

// get/set IO_RB6 aliases
#define IO_RB6_TRIS                 TRISBbits.TRISB6
#define IO_RB6_LAT                  LATBbits.LATB6
#define IO_RB6_PORT                 PORTBbits.RB6
#define IO_RB6_WPU                  WPUBbits.WPUB6
#define IO_RB6_OD                   ODCONBbits.ODCB6
#define IO_RB6_ANS                  ANSELBbits.ANSELB6
#define IO_RB6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define IO_RB6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define IO_RB6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define IO_RB6_GetValue()           PORTBbits.RB6
#define IO_RB6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define IO_RB6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define IO_RB6_SetPullup()          do { WPUBbits.WPUB6 = 1; } while(0)
#define IO_RB6_ResetPullup()        do { WPUBbits.WPUB6 = 0; } while(0)
#define IO_RB6_SetPushPull()        do { ODCONBbits.ODCB6 = 0; } while(0)
#define IO_RB6_SetOpenDrain()       do { ODCONBbits.ODCB6 = 1; } while(0)
#define IO_RB6_SetAnalogMode()      do { ANSELBbits.ANSELB6 = 1; } while(0)
#define IO_RB6_SetDigitalMode()     do { ANSELBbits.ANSELB6 = 0; } while(0)

// get/set IO_RB7 aliases
#define IO_RB7_TRIS                 TRISBbits.TRISB7
#define IO_RB7_LAT                  LATBbits.LATB7
#define IO_RB7_PORT                 PORTBbits.RB7
#define IO_RB7_WPU                  WPUBbits.WPUB7
#define IO_RB7_OD                   ODCONBbits.ODCB7
#define IO_RB7_ANS                  ANSELBbits.ANSELB7
#define IO_RB7_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define IO_RB7_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define IO_RB7_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define IO_RB7_GetValue()           PORTBbits.RB7
#define IO_RB7_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define IO_RB7_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define IO_RB7_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define IO_RB7_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)
#define IO_RB7_SetPushPull()        do { ODCONBbits.ODCB7 = 0; } while(0)
#define IO_RB7_SetOpenDrain()       do { ODCONBbits.ODCB7 = 1; } while(0)
#define IO_RB7_SetAnalogMode()      do { ANSELBbits.ANSELB7 = 1; } while(0)
#define IO_RB7_SetDigitalMode()     do { ANSELBbits.ANSELB7 = 0; } while(0)

// get/set IO_RC0 aliases
#define IO_RC0_TRIS                 TRISCbits.TRISC0
#define IO_RC0_LAT                  LATCbits.LATC0
#define IO_RC0_PORT                 PORTCbits.RC0
#define IO_RC0_WPU                  WPUCbits.WPUC0
#define IO_RC0_OD                   ODCONCbits.ODCC0
#define IO_RC0_ANS                  ANSELCbits.ANSELC0
#define IO_RC0_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define IO_RC0_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define IO_RC0_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define IO_RC0_GetValue()           PORTCbits.RC0
#define IO_RC0_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define IO_RC0_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define IO_RC0_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define IO_RC0_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define IO_RC0_SetPushPull()        do { ODCONCbits.ODCC0 = 0; } while(0)
#define IO_RC0_SetOpenDrain()       do { ODCONCbits.ODCC0 = 1; } while(0)
#define IO_RC0_SetAnalogMode()      do { ANSELCbits.ANSELC0 = 1; } while(0)
#define IO_RC0_SetDigitalMode()     do { ANSELCbits.ANSELC0 = 0; } while(0)

// get/set IO_RC4 aliases
#define IO_RC4_TRIS                 TRISCbits.TRISC4
#define IO_RC4_LAT                  LATCbits.LATC4
#define IO_RC4_PORT                 PORTCbits.RC4
#define IO_RC4_WPU                  WPUCbits.WPUC4
#define IO_RC4_OD                   ODCONCbits.ODCC4
#define IO_RC4_ANS                  ANSELCbits.ANSELC4
#define IO_RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define IO_RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define IO_RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define IO_RC4_GetValue()           PORTCbits.RC4
#define IO_RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define IO_RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define IO_RC4_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define IO_RC4_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define IO_RC4_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define IO_RC4_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define IO_RC4_SetAnalogMode()      do { ANSELCbits.ANSELC4 = 1; } while(0)
#define IO_RC4_SetDigitalMode()     do { ANSELCbits.ANSELC4 = 0; } while(0)

// get/set RC5 procedures
#define RC5_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define RC5_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define RC5_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define RC5_GetValue()              PORTCbits.RC5
#define RC5_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define RC5_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define RC5_SetPullup()             do { WPUCbits.WPUC5 = 1; } while(0)
#define RC5_ResetPullup()           do { WPUCbits.WPUC5 = 0; } while(0)
#define RC5_SetAnalogMode()         do { ANSELCbits.ANSELC5 = 1; } while(0)
#define RC5_SetDigitalMode()        do { ANSELCbits.ANSELC5 = 0; } while(0)

// get/set RC6 procedures
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()              PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define RC6_SetPullup()             do { WPUCbits.WPUC6 = 1; } while(0)
#define RC6_ResetPullup()           do { WPUCbits.WPUC6 = 0; } while(0)
#define RC6_SetAnalogMode()         do { ANSELCbits.ANSELC6 = 1; } while(0)
#define RC6_SetDigitalMode()        do { ANSELCbits.ANSELC6 = 0; } while(0)

// get/set RC7 procedures
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()              PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define RC7_SetPullup()             do { WPUCbits.WPUC7 = 1; } while(0)
#define RC7_ResetPullup()           do { WPUCbits.WPUC7 = 0; } while(0)
#define RC7_SetAnalogMode()         do { ANSELCbits.ANSELC7 = 1; } while(0)
#define RC7_SetDigitalMode()        do { ANSELCbits.ANSELC7 = 0; } while(0)

// get/set BC_RED aliases
#define BC_RED_TRIS                 TRISDbits.TRISD0
#define BC_RED_LAT                  LATDbits.LATD0
#define BC_RED_PORT                 PORTDbits.RD0
#define BC_RED_WPU                  WPUDbits.WPUD0
#define BC_RED_OD                   ODCONDbits.ODCD0
#define BC_RED_ANS                  ANSELDbits.ANSELD0
#define BC_RED_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define BC_RED_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define BC_RED_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define BC_RED_GetValue()           PORTDbits.RD0
#define BC_RED_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define BC_RED_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define BC_RED_SetPullup()          do { WPUDbits.WPUD0 = 1; } while(0)
#define BC_RED_ResetPullup()        do { WPUDbits.WPUD0 = 0; } while(0)
#define BC_RED_SetPushPull()        do { ODCONDbits.ODCD0 = 0; } while(0)
#define BC_RED_SetOpenDrain()       do { ODCONDbits.ODCD0 = 1; } while(0)
#define BC_RED_SetAnalogMode()      do { ANSELDbits.ANSELD0 = 1; } while(0)
#define BC_RED_SetDigitalMode()     do { ANSELDbits.ANSELD0 = 0; } while(0)

// get/set BC_GREEN aliases
#define BC_GREEN_TRIS                 TRISDbits.TRISD1
#define BC_GREEN_LAT                  LATDbits.LATD1
#define BC_GREEN_PORT                 PORTDbits.RD1
#define BC_GREEN_WPU                  WPUDbits.WPUD1
#define BC_GREEN_OD                   ODCONDbits.ODCD1
#define BC_GREEN_ANS                  ANSELDbits.ANSELD1
#define BC_GREEN_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define BC_GREEN_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define BC_GREEN_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define BC_GREEN_GetValue()           PORTDbits.RD1
#define BC_GREEN_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define BC_GREEN_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define BC_GREEN_SetPullup()          do { WPUDbits.WPUD1 = 1; } while(0)
#define BC_GREEN_ResetPullup()        do { WPUDbits.WPUD1 = 0; } while(0)
#define BC_GREEN_SetPushPull()        do { ODCONDbits.ODCD1 = 0; } while(0)
#define BC_GREEN_SetOpenDrain()       do { ODCONDbits.ODCD1 = 1; } while(0)
#define BC_GREEN_SetAnalogMode()      do { ANSELDbits.ANSELD1 = 1; } while(0)
#define BC_GREEN_SetDigitalMode()     do { ANSELDbits.ANSELD1 = 0; } while(0)

// get/set BC_BLUE aliases
#define BC_BLUE_TRIS                 TRISDbits.TRISD2
#define BC_BLUE_LAT                  LATDbits.LATD2
#define BC_BLUE_PORT                 PORTDbits.RD2
#define BC_BLUE_WPU                  WPUDbits.WPUD2
#define BC_BLUE_OD                   ODCONDbits.ODCD2
#define BC_BLUE_ANS                  ANSELDbits.ANSELD2
#define BC_BLUE_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define BC_BLUE_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define BC_BLUE_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define BC_BLUE_GetValue()           PORTDbits.RD2
#define BC_BLUE_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define BC_BLUE_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define BC_BLUE_SetPullup()          do { WPUDbits.WPUD2 = 1; } while(0)
#define BC_BLUE_ResetPullup()        do { WPUDbits.WPUD2 = 0; } while(0)
#define BC_BLUE_SetPushPull()        do { ODCONDbits.ODCD2 = 0; } while(0)
#define BC_BLUE_SetOpenDrain()       do { ODCONDbits.ODCD2 = 1; } while(0)
#define BC_BLUE_SetAnalogMode()      do { ANSELDbits.ANSELD2 = 1; } while(0)
#define BC_BLUE_SetDigitalMode()     do { ANSELDbits.ANSELD2 = 0; } while(0)

// get/set BC_INTENSITY aliases
#define BC_INTENSITY_TRIS                 TRISDbits.TRISD3
#define BC_INTENSITY_LAT                  LATDbits.LATD3
#define BC_INTENSITY_PORT                 PORTDbits.RD3
#define BC_INTENSITY_WPU                  WPUDbits.WPUD3
#define BC_INTENSITY_OD                   ODCONDbits.ODCD3
#define BC_INTENSITY_ANS                  ANSELDbits.ANSELD3
#define BC_INTENSITY_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define BC_INTENSITY_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define BC_INTENSITY_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define BC_INTENSITY_GetValue()           PORTDbits.RD3
#define BC_INTENSITY_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define BC_INTENSITY_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define BC_INTENSITY_SetPullup()          do { WPUDbits.WPUD3 = 1; } while(0)
#define BC_INTENSITY_ResetPullup()        do { WPUDbits.WPUD3 = 0; } while(0)
#define BC_INTENSITY_SetPushPull()        do { ODCONDbits.ODCD3 = 0; } while(0)
#define BC_INTENSITY_SetOpenDrain()       do { ODCONDbits.ODCD3 = 1; } while(0)
#define BC_INTENSITY_SetAnalogMode()      do { ANSELDbits.ANSELD3 = 1; } while(0)
#define BC_INTENSITY_SetDigitalMode()     do { ANSELDbits.ANSELD3 = 0; } while(0)

// get/set FC_RED aliases
#define FC_RED_TRIS                 TRISDbits.TRISD4
#define FC_RED_LAT                  LATDbits.LATD4
#define FC_RED_PORT                 PORTDbits.RD4
#define FC_RED_WPU                  WPUDbits.WPUD4
#define FC_RED_OD                   ODCONDbits.ODCD4
#define FC_RED_ANS                  ANSELDbits.ANSELD4
#define FC_RED_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define FC_RED_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define FC_RED_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define FC_RED_GetValue()           PORTDbits.RD4
#define FC_RED_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define FC_RED_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define FC_RED_SetPullup()          do { WPUDbits.WPUD4 = 1; } while(0)
#define FC_RED_ResetPullup()        do { WPUDbits.WPUD4 = 0; } while(0)
#define FC_RED_SetPushPull()        do { ODCONDbits.ODCD4 = 0; } while(0)
#define FC_RED_SetOpenDrain()       do { ODCONDbits.ODCD4 = 1; } while(0)
#define FC_RED_SetAnalogMode()      do { ANSELDbits.ANSELD4 = 1; } while(0)
#define FC_RED_SetDigitalMode()     do { ANSELDbits.ANSELD4 = 0; } while(0)

// get/set FC_GREEN aliases
#define FC_GREEN_TRIS                 TRISDbits.TRISD5
#define FC_GREEN_LAT                  LATDbits.LATD5
#define FC_GREEN_PORT                 PORTDbits.RD5
#define FC_GREEN_WPU                  WPUDbits.WPUD5
#define FC_GREEN_OD                   ODCONDbits.ODCD5
#define FC_GREEN_ANS                  ANSELDbits.ANSELD5
#define FC_GREEN_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define FC_GREEN_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define FC_GREEN_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define FC_GREEN_GetValue()           PORTDbits.RD5
#define FC_GREEN_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define FC_GREEN_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define FC_GREEN_SetPullup()          do { WPUDbits.WPUD5 = 1; } while(0)
#define FC_GREEN_ResetPullup()        do { WPUDbits.WPUD5 = 0; } while(0)
#define FC_GREEN_SetPushPull()        do { ODCONDbits.ODCD5 = 0; } while(0)
#define FC_GREEN_SetOpenDrain()       do { ODCONDbits.ODCD5 = 1; } while(0)
#define FC_GREEN_SetAnalogMode()      do { ANSELDbits.ANSELD5 = 1; } while(0)
#define FC_GREEN_SetDigitalMode()     do { ANSELDbits.ANSELD5 = 0; } while(0)

// get/set FC_BLUE aliases
#define FC_BLUE_TRIS                 TRISDbits.TRISD6
#define FC_BLUE_LAT                  LATDbits.LATD6
#define FC_BLUE_PORT                 PORTDbits.RD6
#define FC_BLUE_WPU                  WPUDbits.WPUD6
#define FC_BLUE_OD                   ODCONDbits.ODCD6
#define FC_BLUE_ANS                  ANSELDbits.ANSELD6
#define FC_BLUE_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define FC_BLUE_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define FC_BLUE_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define FC_BLUE_GetValue()           PORTDbits.RD6
#define FC_BLUE_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define FC_BLUE_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define FC_BLUE_SetPullup()          do { WPUDbits.WPUD6 = 1; } while(0)
#define FC_BLUE_ResetPullup()        do { WPUDbits.WPUD6 = 0; } while(0)
#define FC_BLUE_SetPushPull()        do { ODCONDbits.ODCD6 = 0; } while(0)
#define FC_BLUE_SetOpenDrain()       do { ODCONDbits.ODCD6 = 1; } while(0)
#define FC_BLUE_SetAnalogMode()      do { ANSELDbits.ANSELD6 = 1; } while(0)
#define FC_BLUE_SetDigitalMode()     do { ANSELDbits.ANSELD6 = 0; } while(0)

// get/set FC_INTENSITY aliases
#define FC_INTENSITY_TRIS                 TRISDbits.TRISD7
#define FC_INTENSITY_LAT                  LATDbits.LATD7
#define FC_INTENSITY_PORT                 PORTDbits.RD7
#define FC_INTENSITY_WPU                  WPUDbits.WPUD7
#define FC_INTENSITY_OD                   ODCONDbits.ODCD7
#define FC_INTENSITY_ANS                  ANSELDbits.ANSELD7
#define FC_INTENSITY_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define FC_INTENSITY_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define FC_INTENSITY_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define FC_INTENSITY_GetValue()           PORTDbits.RD7
#define FC_INTENSITY_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define FC_INTENSITY_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define FC_INTENSITY_SetPullup()          do { WPUDbits.WPUD7 = 1; } while(0)
#define FC_INTENSITY_ResetPullup()        do { WPUDbits.WPUD7 = 0; } while(0)
#define FC_INTENSITY_SetPushPull()        do { ODCONDbits.ODCD7 = 0; } while(0)
#define FC_INTENSITY_SetOpenDrain()       do { ODCONDbits.ODCD7 = 1; } while(0)
#define FC_INTENSITY_SetAnalogMode()      do { ANSELDbits.ANSELD7 = 1; } while(0)
#define FC_INTENSITY_SetDigitalMode()     do { ANSELDbits.ANSELD7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/