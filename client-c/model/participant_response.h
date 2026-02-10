/*
 * participant_response.h
 *
 * 
 */

#ifndef _participant_response_H_
#define _participant_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct participant_response_t participant_response_t;

#include "account_mini_response.h"



typedef struct participant_response_t {
    long id; //numeric
    struct account_mini_response_t *account; //model
    long available_start; //numeric
    long available_end; //numeric
    char *color1; // string
    char *color2; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} participant_response_t;

__attribute__((deprecated)) participant_response_t *participant_response_create(
    long id,
    account_mini_response_t *account,
    long available_start,
    long available_end,
    char *color1,
    char *color2,
    char *type
);

void participant_response_free(participant_response_t *participant_response);

participant_response_t *participant_response_parseFromJSON(cJSON *participant_responseJSON);

cJSON *participant_response_convertToJSON(participant_response_t *participant_response);

#endif /* _participant_response_H_ */

