/*
 * reward_response.h
 *
 * 
 */

#ifndef _reward_response_H_
#define _reward_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct reward_response_t reward_response_t;

#include "asset_short_response.h"



typedef struct reward_response_t {
    long offer_id; //numeric
    char *title; // string
    char *sub_title; // string
    char *details; // string
    struct asset_short_response_t *artwork; //model
    char *fine_print; // string
    char *redemption_code; // string
    int redemption_status; //numeric
    long transaction_id; //numeric
    double estimated_value; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} reward_response_t;

__attribute__((deprecated)) reward_response_t *reward_response_create(
    long offer_id,
    char *title,
    char *sub_title,
    char *details,
    asset_short_response_t *artwork,
    char *fine_print,
    char *redemption_code,
    int redemption_status,
    long transaction_id,
    double estimated_value
);

void reward_response_free(reward_response_t *reward_response);

reward_response_t *reward_response_parseFromJSON(cJSON *reward_responseJSON);

cJSON *reward_response_convertToJSON(reward_response_t *reward_response);

#endif /* _reward_response_H_ */

