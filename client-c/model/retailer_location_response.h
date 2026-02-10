/*
 * retailer_location_response.h
 *
 * 
 */

#ifndef _retailer_location_response_H_
#define _retailer_location_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_location_response_t retailer_location_response_t;

#include "asset_short_response.h"
#include "billable_entity_response.h"
#include "category_response.h"
#include "contact_info_response.h"
#include "filter_response.h"
#include "list_response.h"
#include "profile_short_response.h"
#include "retailer_count_response.h"
#include "retailer_short_response.h"



typedef struct retailer_location_response_t {
    long retailer_location_id; //numeric
    char *name; // string
    struct contact_info_response_t *contact; //model
    double latitude; //numeric
    double longitude; //numeric
    int active; //boolean
    long favorite_id; //numeric
    int favorite; //boolean
    struct profile_short_response_t *responsible; //model
    struct profile_short_response_t *manager; //model
    list_t *categories; //nonprimitive container
    list_t *filters; //nonprimitive container
    struct asset_short_response_t *logo; //model
    struct asset_short_response_t *picture1; //model
    struct asset_short_response_t *picture2; //model
    struct billable_entity_response_t *billable_entity; //model
    struct retailer_count_response_t *counts; //model
    struct retailer_short_response_t *retailer; //model
    struct list_response_t *offers; //model
    char *internal_id; // string
    char *details_header; // string
    char *details_body; // string
    char *hours; // string
    char *location_token; // string
    char *building; // string
    char *qr_code_url; // string
    double distance; //numeric
    char *google_place_id; // string
    char *yelp_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_location_response_t;

__attribute__((deprecated)) retailer_location_response_t *retailer_location_response_create(
    long retailer_location_id,
    char *name,
    contact_info_response_t *contact,
    double latitude,
    double longitude,
    int active,
    long favorite_id,
    int favorite,
    profile_short_response_t *responsible,
    profile_short_response_t *manager,
    list_t *categories,
    list_t *filters,
    asset_short_response_t *logo,
    asset_short_response_t *picture1,
    asset_short_response_t *picture2,
    billable_entity_response_t *billable_entity,
    retailer_count_response_t *counts,
    retailer_short_response_t *retailer,
    list_response_t *offers,
    char *internal_id,
    char *details_header,
    char *details_body,
    char *hours,
    char *location_token,
    char *building,
    char *qr_code_url,
    double distance,
    char *google_place_id,
    char *yelp_id
);

void retailer_location_response_free(retailer_location_response_t *retailer_location_response);

retailer_location_response_t *retailer_location_response_parseFromJSON(cJSON *retailer_location_responseJSON);

cJSON *retailer_location_response_convertToJSON(retailer_location_response_t *retailer_location_response);

#endif /* _retailer_location_response_H_ */

