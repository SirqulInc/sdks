/*
 * order_item_request.h
 *
 * 
 */

#ifndef _order_item_request_H_
#define _order_item_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_item_request_t order_item_request_t;


// Enum ORDERITEMTYPE for order_item_request

typedef enum  { sirqul_iot_platform_order_item_request_ORDERITEMTYPE_NULL = 0, sirqul_iot_platform_order_item_request_ORDERITEMTYPE_OFFER, sirqul_iot_platform_order_item_request_ORDERITEMTYPE_CUSTOM } sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e;

char* order_item_request_order_item_type_ToString(sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_type);

sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_request_order_item_type_FromString(char* order_item_type);



typedef struct order_item_request_t {
    sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_type; //enum
    long order_item_id; //numeric
    char *offer_name; // string
    char *order_custom_type; // string
    char *order_custom_id; // string
    long retailer_location_id; //numeric
    int quantity; //numeric
    double amount; //numeric
    double tax; //numeric
    long reserve_start_date; //numeric
    long reserve_end_date; //numeric
    char *message; // string

    int _library_owned; // Is the library responsible for freeing this object?
} order_item_request_t;

__attribute__((deprecated)) order_item_request_t *order_item_request_create(
    sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_type,
    long order_item_id,
    char *offer_name,
    char *order_custom_type,
    char *order_custom_id,
    long retailer_location_id,
    int quantity,
    double amount,
    double tax,
    long reserve_start_date,
    long reserve_end_date,
    char *message
);

void order_item_request_free(order_item_request_t *order_item_request);

order_item_request_t *order_item_request_parseFromJSON(cJSON *order_item_requestJSON);

cJSON *order_item_request_convertToJSON(order_item_request_t *order_item_request);

#endif /* _order_item_request_H_ */

