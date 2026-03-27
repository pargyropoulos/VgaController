#include "mcc.h"
#include "stdint.h"
#include "stdbool.h"
#include "dma_api_internal.h"


static const struct dma_interface_t dma1 = {
    .is_transfer_finished = DMA1_isCurrentTransferFinished,
    .disable = DMA1_DisableDMA,
    .set_source_address = DMA1_SetSourceAddress,
    .set_source_size = DMA1_SetSourceSize,
    .set_destination_size = DMA1_SetDestinationSize,
    .start_transfer = DMA1_StartTransferWithTrigger,
    .enable = DMA1_EnableDMA,
    .get_destination_pointer = DMA1_GetDestinationPointer
};

static const struct dma_interface_t dma2 = {
    .is_transfer_finished = DMA2_isCurrentTransferFinished,
    .disable = DMA2_DisableDMA,
    .set_source_address = DMA2_SetSourceAddress,
    .set_source_size = DMA2_SetSourceSize,
    .set_destination_size = DMA2_SetDestinationSize,
    .start_transfer = DMA2_StartTransferWithTrigger,
    .enable = DMA2_EnableDMA,
    .get_destination_pointer = DMA2_GetDestinationPointer
};

const dma_interface_t* dma1_obj=&dma1;
const dma_interface_t* dma2_obj=&dma2;

// Setup DMA
bool DMA_InitiateTransaction(const dma_interface_t* dma, const uint24_t source_address, const uint16_t size_in_bytes){
    if (!dma->is_transfer_finished()) return false;
    dma->disable();
    dma->set_source_address(source_address);
    dma->set_source_size(size_in_bytes);
    dma->set_destination_size(1);
    dma->start_transfer();
    dma->enable();
    return true;
}

uint16_t DMA_GetDestPtr(const dma_interface_t* dma) {
    return dma->get_destination_pointer();
}
