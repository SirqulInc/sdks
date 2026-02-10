/*
 * payment_transaction_response.h
 *
 * 
 */

#ifndef _payment_transaction_response_H_
#define _payment_transaction_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct payment_transaction_response_t payment_transaction_response_t;

#include "account_short_response.h"
#include "name_string_value_response.h"
#include "offer_transaction_response.h"
#include "purchase_order_item_response.h"



typedef struct payment_transaction_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long payment_transaction_id; //numeric
    struct account_short_response_t *customer; //model
    char *promo_code; // string
    char *remote_ref_id; // string
    char *currency_type; // string
    double amount; //numeric
    double tax; //numeric
    list_t *offer_transactions; //nonprimitive container
    list_t *order_items; //nonprimitive container
    char *external_payment_id; // string
    char *metadata; // string
    long created; //numeric
    long updated; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} payment_transaction_response_t;

__attribute__((deprecated)) payment_transaction_response_t *payment_transaction_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long payment_transaction_id,
    account_short_response_t *customer,
    char *promo_code,
    char *remote_ref_id,
    char *currency_type,
    double amount,
    double tax,
    list_t *offer_transactions,
    list_t *order_items,
    char *external_payment_id,
    char *metadata,
    long created,
    long updated,
    char *returning
);

void payment_transaction_response_free(payment_transaction_response_t *payment_transaction_response);

payment_transaction_response_t *payment_transaction_response_parseFromJSON(cJSON *payment_transaction_responseJSON);

cJSON *payment_transaction_response_convertToJSON(payment_transaction_response_t *payment_transaction_response);

#endif /* _payment_transaction_response_H_ */

