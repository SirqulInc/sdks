/*
 * creative_response.h
 *
 * 
 */

#ifndef _creative_response_H_
#define _creative_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct creative_response_t creative_response_t;

#include "account_short_response.h"
#include "asset_short_response.h"
#include "bid_response.h"
#include "json_element.h"



typedef struct creative_response_t {
    long creative_id; //numeric
    int active; //boolean
    char *name; // string
    char *description; // string
    struct asset_short_response_t *image; //model
    char *action; // string
    struct json_element_t *content; //model
    char *suffix; // string
    char *type; // string
    char *app_version; // string
    int preview; //boolean
    struct account_short_response_t *owner; //model
    struct bid_response_t *current_bid; //model

    int _library_owned; // Is the library responsible for freeing this object?
} creative_response_t;

__attribute__((deprecated)) creative_response_t *creative_response_create(
    long creative_id,
    int active,
    char *name,
    char *description,
    asset_short_response_t *image,
    char *action,
    json_element_t *content,
    char *suffix,
    char *type,
    char *app_version,
    int preview,
    account_short_response_t *owner,
    bid_response_t *current_bid
);

void creative_response_free(creative_response_t *creative_response);

creative_response_t *creative_response_parseFromJSON(cJSON *creative_responseJSON);

cJSON *creative_response_convertToJSON(creative_response_t *creative_response);

#endif /* _creative_response_H_ */

