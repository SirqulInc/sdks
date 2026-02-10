/*
 * rank_response.h
 *
 * 
 */

#ifndef _rank_response_H_
#define _rank_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rank_response_t rank_response_t;

#include "account_short_response.h"



typedef struct rank_response_t {
    struct account_short_response_t *owner; //model
    char *rank; // string
    long score_value; //numeric
    long time_value; //numeric
    long count_value; //numeric
    long updated; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} rank_response_t;

__attribute__((deprecated)) rank_response_t *rank_response_create(
    account_short_response_t *owner,
    char *rank,
    long score_value,
    long time_value,
    long count_value,
    long updated
);

void rank_response_free(rank_response_t *rank_response);

rank_response_t *rank_response_parseFromJSON(cJSON *rank_responseJSON);

cJSON *rank_response_convertToJSON(rank_response_t *rank_response);

#endif /* _rank_response_H_ */

