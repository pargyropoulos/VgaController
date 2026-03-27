/* 
 * File: dma_api_internal.h
 * Author: Panagiotis Argyropoulos
 * email: pargyropoulos@gmail.com
 * Created on 14 Σεπτεμβρίου 2025, 2:26 πμ
 */

#ifndef DMP_API_INTERNAL_H
#define	DMP_API_INTERNAL_H

#include "dma_api.h"
// Full dma_interface_t definition hidden from public API
struct dma_interface_t {
    bool (*is_transfer_finished)(void);
    void (*disable)(void);
    void (*set_source_address)(uint24_t addr);
    void (*set_source_size)(uint16_t size);
    void (*set_destination_size)(uint16_t size);
    void (*start_transfer)(void);
    void (*enable)(void);
    uint16_t (*get_destination_pointer)(void);
};

#endif	/* DMP_API_INTERNAL_H */

