/*
 * retailer_response.h
 *
 * 
 */

#ifndef _retailer_response_H_
#define _retailer_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_response_t retailer_response_t;

#include "asset_short_response.h"
#include "billable_entity_response.h"
#include "contact_info_response.h"
#include "profile_short_response.h"
#include "retailer_count_response.h"



typedef struct retailer_response_t {
    long retailer_id; //numeric
    char *name; // string
    char *facebook_url; // string
    char *twitter_url; // string
    int active; //boolean
    struct contact_info_response_t *contact; //model
    struct asset_short_response_t *logo; //model
    struct asset_short_response_t *picture1; //model
    struct asset_short_response_t *picture2; //model
    double latitude; //numeric
    double longitude; //numeric
    char *visibility; // string
    struct profile_short_response_t *responsible; //model
    struct profile_short_response_t *manager; //model
    struct billable_entity_response_t *billable_entity; //model
    struct retailer_count_response_t *counts; //model

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_response_t;

__attribute__((deprecated)) retailer_response_t *retailer_response_create(
    long retailer_id,
    char *name,
    char *facebook_url,
    char *twitter_url,
    int active,
    contact_info_response_t *contact,
    asset_short_response_t *logo,
    asset_short_response_t *picture1,
    asset_short_response_t *picture2,
    double latitude,
    double longitude,
    char *visibility,
    profile_short_response_t *responsible,
    profile_short_response_t *manager,
    billable_entity_response_t *billable_entity,
    retailer_count_response_t *counts
);

void retailer_response_free(retailer_response_t *retailer_response);

retailer_response_t *retailer_response_parseFromJSON(cJSON *retailer_responseJSON);

cJSON *retailer_response_convertToJSON(retailer_response_t *retailer_response);

#endif /* _retailer_response_H_ */

