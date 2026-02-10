/*
 * reservation_response.h
 *
 * 
 */

#ifndef _reservation_response_H_
#define _reservation_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct reservation_response_t reservation_response_t;

#include "account_short_response.h"
#include "offer_short_response.h"



typedef struct reservation_response_t {
    long reservation_id; //numeric
    long reservable_id; //numeric
    char *reservable_type; // string
    struct account_short_response_t *account; //model
    long created_date; //numeric
    long updated_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    struct offer_short_response_t *transaction; //model

    int _library_owned; // Is the library responsible for freeing this object?
} reservation_response_t;

__attribute__((deprecated)) reservation_response_t *reservation_response_create(
    long reservation_id,
    long reservable_id,
    char *reservable_type,
    account_short_response_t *account,
    long created_date,
    long updated_date,
    long start_date,
    long end_date,
    offer_short_response_t *transaction
);

void reservation_response_free(reservation_response_t *reservation_response);

reservation_response_t *reservation_response_parseFromJSON(cJSON *reservation_responseJSON);

cJSON *reservation_response_convertToJSON(reservation_response_t *reservation_response);

#endif /* _reservation_response_H_ */

