/*
 * orders.h
 *
 * 
 */

#ifndef _orders_H_
#define _orders_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orders_t orders_t;

#include "shipment_order.h"



typedef struct orders_t {
    list_t *orders; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} orders_t;

__attribute__((deprecated)) orders_t *orders_create(
    list_t *orders
);

void orders_free(orders_t *orders);

orders_t *orders_parseFromJSON(cJSON *ordersJSON);

cJSON *orders_convertToJSON(orders_t *orders);

#endif /* _orders_H_ */

