/*
 * offer_transaction_status_response.h
 *
 * 
 */

#ifndef _offer_transaction_status_response_H_
#define _offer_transaction_status_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct offer_transaction_status_response_t offer_transaction_status_response_t;

#include "application_short_response.h"



typedef struct offer_transaction_status_response_t {
    long id; //numeric
    int active; //boolean
    char *name; // string
    char *description; // string
    int code; //numeric
    char *role; // string
    list_t *applications; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} offer_transaction_status_response_t;

__attribute__((deprecated)) offer_transaction_status_response_t *offer_transaction_status_response_create(
    long id,
    int active,
    char *name,
    char *description,
    int code,
    char *role,
    list_t *applications
);

void offer_transaction_status_response_free(offer_transaction_status_response_t *offer_transaction_status_response);

offer_transaction_status_response_t *offer_transaction_status_response_parseFromJSON(cJSON *offer_transaction_status_responseJSON);

cJSON *offer_transaction_status_response_convertToJSON(offer_transaction_status_response_t *offer_transaction_status_response);

#endif /* _offer_transaction_status_response_H_ */

