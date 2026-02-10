/*
 * retailer_short_response.h
 *
 * 
 */

#ifndef _retailer_short_response_H_
#define _retailer_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_short_response_t retailer_short_response_t;

#include "asset_short_response.h"
#include "contact_info_response.h"



typedef struct retailer_short_response_t {
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

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_short_response_t;

__attribute__((deprecated)) retailer_short_response_t *retailer_short_response_create(
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
    char *visibility
);

void retailer_short_response_free(retailer_short_response_t *retailer_short_response);

retailer_short_response_t *retailer_short_response_parseFromJSON(cJSON *retailer_short_responseJSON);

cJSON *retailer_short_response_convertToJSON(retailer_short_response_t *retailer_short_response);

#endif /* _retailer_short_response_H_ */

