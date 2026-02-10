/*
 * rating_response.h
 *
 * 
 */

#ifndef _rating_response_H_
#define _rating_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rating_response_t rating_response_t;

#include "account_short_response.h"
#include "category_response.h"



typedef struct rating_response_t {
    long rating_id; //numeric
    int rating_value; //numeric
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    struct category_response_t *category; //model
    struct account_short_response_t *owner; //model

    int _library_owned; // Is the library responsible for freeing this object?
} rating_response_t;

__attribute__((deprecated)) rating_response_t *rating_response_create(
    long rating_id,
    int rating_value,
    double latitude,
    double longitude,
    char *location_description,
    category_response_t *category,
    account_short_response_t *owner
);

void rating_response_free(rating_response_t *rating_response);

rating_response_t *rating_response_parseFromJSON(cJSON *rating_responseJSON);

cJSON *rating_response_convertToJSON(rating_response_t *rating_response);

#endif /* _rating_response_H_ */

