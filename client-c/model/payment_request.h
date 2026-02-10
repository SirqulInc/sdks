/*
 * payment_request.h
 *
 * 
 */

#ifndef _payment_request_H_
#define _payment_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct payment_request_t payment_request_t;

#include "biometric_request.h"
#include "invoice.h"
#include "order_item_request.h"



typedef struct payment_request_t {
    char *app_key; // string
    char *client_payment_id; // string
    int min_age_years; //numeric
    struct invoice_t *invoice; //model
    struct biometric_request_t *biometrics; //model
    list_t *order_items; //nonprimitive container
    int accepted_billing; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} payment_request_t;

__attribute__((deprecated)) payment_request_t *payment_request_create(
    char *app_key,
    char *client_payment_id,
    int min_age_years,
    invoice_t *invoice,
    biometric_request_t *biometrics,
    list_t *order_items,
    int accepted_billing
);

void payment_request_free(payment_request_t *payment_request);

payment_request_t *payment_request_parseFromJSON(cJSON *payment_requestJSON);

cJSON *payment_request_convertToJSON(payment_request_t *payment_request);

#endif /* _payment_request_H_ */

