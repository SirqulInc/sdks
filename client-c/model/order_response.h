/*
 * order_response.h
 *
 * 
 */

#ifndef _order_response_H_
#define _order_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_response_t order_response_t;

#include "account_short_response.h"
#include "application_mini_response.h"
#include "name_string_value_response.h"
#include "payment_transaction_response.h"



typedef struct order_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long order_id; //numeric
    struct application_mini_response_t *application; //model
    struct account_short_response_t *customer; //model
    double amount; //numeric
    double purchases; //numeric
    double credits; //numeric
    list_t *payments; //nonprimitive container
    char *external_order_id; // string
    long created; //numeric
    long updated; //numeric
    long external_date; //numeric
    char *description; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} order_response_t;

__attribute__((deprecated)) order_response_t *order_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long order_id,
    application_mini_response_t *application,
    account_short_response_t *customer,
    double amount,
    double purchases,
    double credits,
    list_t *payments,
    char *external_order_id,
    long created,
    long updated,
    long external_date,
    char *description,
    char *returning
);

void order_response_free(order_response_t *order_response);

order_response_t *order_response_parseFromJSON(cJSON *order_responseJSON);

cJSON *order_response_convertToJSON(order_response_t *order_response);

#endif /* _order_response_H_ */

