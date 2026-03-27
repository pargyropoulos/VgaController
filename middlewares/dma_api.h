/* 
 * File:   dma_api.h
 * Author: Panagiotis Argyropoulos
 * email: pargyropoulos@gmail.com
 * Created on 28 Αυγούστου 2025, 11:03 μμ
 */

#ifndef DMA_API_H
#define	DMA_API_H
#include <stdint.h>

typedef struct dma_interface_t dma_interface_t;

extern const dma_interface_t* dma1_obj;
extern const dma_interface_t* dma2_obj;

bool DMA_InitiateTransaction(const dma_interface_t* dma,const uint24_t source_address,const uint16_t size_in_bytes);
uint16_t DMA_GetDestPtr(const dma_interface_t* dma);

#endif	/* DMA_API_H */

