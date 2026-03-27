/**
  DMA2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    dma2.c

  @Summary
    This is the generated driver implementation file for the DMA2 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides APIs for DMA2.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18F47K42
        Driver Version    :  1.0.0
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

/**
  Section: Included Files
*/

#include <xc.h>
#include "dma2.h"





/**
  Section: DMA2 APIs
*/


//extern buffer_t dmaBuffer;


void DMA2_Initialize(void)
{
    //Source Address : &U1RXB
    DMA2SSA = (uint24_t)&U1RXB;

    //DMODE incremented; DSTP not cleared; SMR SFR; SMODE unchanged; SSTP not cleared; 
    DMA2CON1 = 0x40;
    //Source Message Size : 1
    DMA2SSZ = 1; //2 if i want to write only characters in video memory
    //Destination Message Size : 1
    DMA2DSZ = 1;
    //Start Trigger : SIRQ U1RX; 
    DMA2SIRQ = 0x1B;
    //Abort Trigger : AIRQ None; 
    DMA2AIRQ = 0x00;
	
    // Clear Destination Count Interrupt Flag bit
    PIR5bits.DMA2DCNTIF = 0; 
    // Clear Source Count Interrupt Flag bit
    PIR5bits.DMA2SCNTIF = 0; 
    // Clear Abort Interrupt Flag bit
    PIR5bits.DMA2AIF = 0; 
    // Clear Overrun Interrupt Flag bit
    PIR5bits.DMA2ORIF =0; 
    
    PIE5bits.DMA2DCNTIE = 0;
    PIE5bits.DMA2SCNTIE = 0;
    PIE5bits.DMA2AIE = 0;
    PIE5bits.DMA2ORIE = 0;

    INTCON0bits.GIE=0;
    ISRPR=0;
    MAINPR=1;
    DMA2PR = 3;
    DMA1PR = 2;
    PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 1;
	
    //EN enabled; SIRQEN enabled; DGO not in progress; AIRQEN disabled; 
    DMA2CON0 = 0xC0;
	
}

void DMA2_SelectSourceRegion(uint8_t region)
{
	DMA2CON1bits.SMR  = region;
}

void DMA2_SetSourceAddress(uint24_t address)
{
	DMA2SSA = address;
}

void DMA2_SetDestinationAddress(uint16_t address)
{
	DMA2DSA = address;
}

void DMA2_SetSourceSize(uint16_t size)
{
	DMA2SSZ= size;
}

void DMA2_SetDestinationSize(uint16_t size)
{                     
	DMA2DSZ= size;
}

uint24_t DMA2_GetSourcePointer(void)
{
	return DMA2SPTR;
}

uint16_t DMA2_GetDestinationPointer(void)
{
	return DMA2DPTR;
}

void DMA2_SetStartTrigger(uint8_t sirq)
{
	DMA2SIRQ = sirq;
}

void DMA2_SetAbortTrigger(uint8_t airq)
{
	DMA2AIRQ = airq;
}

void DMA2_StartTransfer(void)
{
	DMA2CON0bits.DGO = 1;
}

void DMA2_StartTransferWithTrigger(void)
{
	DMA2CON0bits.SIRQEN = 1;
}

void DMA2_StopTransfer(void)
{
	DMA2CON0bits.SIRQEN = 0; 
	DMA2CON0bits.DGO = 0;
}

void DMA2_SetDMAPriority(uint8_t priority)
{
    // This function is dependant on the PR1WAY CONFIG bit
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 0;
	DMA2PR = priority;
	PRLOCK = 0x55;
	PRLOCK = 0xAA;
	PRLOCKbits.PRLOCKED = 1;
}

void DMA2_EnableDMA(void){
    DMA2CON0bits.EN = 1; 
}

void DMA2_DisableDMA(void){
    DMA2CON0bits.EN = 0; 
}

bool DMA2_isCurrentTransferFinished(void){
    return PIR5bits.DMA2DCNTIF;
}
/**
 End of File
*/
