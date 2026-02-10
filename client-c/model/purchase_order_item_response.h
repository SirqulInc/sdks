/*
 * purchase_order_item_response.h
 *
 * 
 */

#ifndef _purchase_order_item_response_H_
#define _purchase_order_item_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct purchase_order_item_response_t purchase_order_item_response_t;

#include "account_short_response.h"
#include "name_string_value_response.h"



typedef struct purchase_order_item_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long purchase_order_item_id; //numeric
    long created; //numeric
    long updated; //numeric
    struct account_short_response_t *customer; //model
    char *order_item_type; // string
    long order_item_id; //numeric
    char *order_custom_type; // string
    char *order_custom_id; // string
    long retailer_location_id; //numeric
    double amount; //numeric
    double tax; //numeric
    char *comment; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} purchase_order_item_response_t;

__attribute__((deprecated)) purchase_order_item_response_t *purchase_order_item_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long purchase_order_item_id,
    long created,
    long updated,
    account_short_response_t *customer,
    char *order_item_type,
    long order_item_id,
    char *order_custom_type,
    char *order_custom_id,
    long retailer_location_id,
    double amount,
    double tax,
    char *comment,
    char *returning
);

void purchase_order_item_response_free(purchase_order_item_response_t *purchase_order_item_response);

purchase_order_item_response_t *purchase_order_item_response_parseFromJSON(cJSON *purchase_order_item_responseJSON);

cJSON *purchase_order_item_response_convertToJSON(purchase_order_item_response_t *purchase_order_item_response);

#endif /* _purchase_order_item_response_H_ */

