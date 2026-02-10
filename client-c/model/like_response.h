/*
 * like_response.h
 *
 * 
 */

#ifndef _like_response_H_
#define _like_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct like_response_t like_response_t;

#include "account_short_response.h"



typedef struct like_response_t {
    struct account_short_response_t *account; //model

    int _library_owned; // Is the library responsible for freeing this object?
} like_response_t;

__attribute__((deprecated)) like_response_t *like_response_create(
    account_short_response_t *account
);

void like_response_free(like_response_t *like_response);

like_response_t *like_response_parseFromJSON(cJSON *like_responseJSON);

cJSON *like_response_convertToJSON(like_response_t *like_response);

#endif /* _like_response_H_ */

