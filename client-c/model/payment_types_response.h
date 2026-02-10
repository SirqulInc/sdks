/*
 * payment_types_response.h
 *
 * 
 */

#ifndef _payment_types_response_H_
#define _payment_types_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct payment_types_response_t payment_types_response_t;

#include "account_short_response.h"
#include "name_string_value_response.h"



typedef struct payment_types_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    int credit_card_on_file; //boolean
    char *credit_card_number; // string
    char *credit_card_expiration_month; // string
    char *credit_card_expiration_year; // string
    int points_on_file; //boolean
    double points_amount; //numeric
    struct account_short_response_t *account; //model
    char *first_name; // string
    char *last_name; // string
    char *address; // string
    char *city; // string
    char *state; // string
    char *postal_code; // string
    char *phone; // string
    char *provider; // string
    long payment_method_id; //numeric
    int validated; //boolean
    char *account_number; // string
    char *bank_name; // string
    char *routing_number; // string
    int is_default_payment_method; //boolean
    char *account_name; // string
    char *payment_method_nickname; // string
    char *tax_id; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} payment_types_response_t;

__attribute__((deprecated)) payment_types_response_t *payment_types_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    int credit_card_on_file,
    char *credit_card_number,
    char *credit_card_expiration_month,
    char *credit_card_expiration_year,
    int points_on_file,
    double points_amount,
    account_short_response_t *account,
    char *first_name,
    char *last_name,
    char *address,
    char *city,
    char *state,
    char *postal_code,
    char *phone,
    char *provider,
    long payment_method_id,
    int validated,
    char *account_number,
    char *bank_name,
    char *routing_number,
    int is_default_payment_method,
    char *account_name,
    char *payment_method_nickname,
    char *tax_id,
    char *returning
);

void payment_types_response_free(payment_types_response_t *payment_types_response);

payment_types_response_t *payment_types_response_parseFromJSON(cJSON *payment_types_responseJSON);

cJSON *payment_types_response_convertToJSON(payment_types_response_t *payment_types_response);

#endif /* _payment_types_response_H_ */

