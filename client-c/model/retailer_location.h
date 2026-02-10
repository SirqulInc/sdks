/*
 * retailer_location.h
 *
 * 
 */

#ifndef _retailer_location_H_
#define _retailer_location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_location_t retailer_location_t;

#include "account.h"
#include "asset.h"
#include "assignment.h"
#include "building.h"
#include "category.h"
#include "filter.h"
#include "note.h"
#include "offer_location.h"
#include "region.h"
#include "retailer.h"
#include "retailer_profile.h"



typedef struct retailer_location_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    list_t *categories; //nonprimitive container
    list_t *filters; //nonprimitive container
    list_t *offer_locations; //nonprimitive container
    struct asset_t *logo; //model
    struct asset_t *picture1; //model
    struct asset_t *picture2; //model
    struct asset_t *qr_code; //model
    char *name; // string
    char *location_id; // string
    char *code; // string
    struct retailer_t *retailer; //model
    list_t *assignments; //nonprimitive container
    struct assignment_t *current_assignment; //model
    struct retailer_profile_t *profile; //model
    list_t *regions; //nonprimitive container
    char *offer_print_key_prefix; // string
    list_t *administrators; //nonprimitive container
    long sqoot_id; //numeric
    long yipit_id; //numeric
    char *location_token; // string
    struct building_t *building; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    char *search_index_updated; //date time
    int in_search_index; //boolean
    long favorite_count; //numeric
    int has_ratings; //boolean
    char *google_place_id; // string
    char *yelp_id; // string
    char *display; // string
    char *app_key; // string
    char *category_tree; // string
    char *filter_tree; // string
    char *address_display; // string
    char *map_query; // string
    char *sort_name; // string
    char *full_display; // string
    int has_offers; //boolean
    long billable_id; //numeric
    char *sub_type; // string
    char *content_name; // string
    struct account_t *owner; //model
    char *secondary_type; // string
    char *location_address; // string
    list_t *valid_offer_location_ids; //primitive container

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_location_t;

__attribute__((deprecated)) retailer_location_t *retailer_location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    list_t *categories,
    list_t *filters,
    list_t *offer_locations,
    asset_t *logo,
    asset_t *picture1,
    asset_t *picture2,
    asset_t *qr_code,
    char *name,
    char *location_id,
    char *code,
    retailer_t *retailer,
    list_t *assignments,
    assignment_t *current_assignment,
    retailer_profile_t *profile,
    list_t *regions,
    char *offer_print_key_prefix,
    list_t *administrators,
    long sqoot_id,
    long yipit_id,
    char *location_token,
    building_t *building,
    list_t *notes,
    long note_count,
    char *search_index_updated,
    int in_search_index,
    long favorite_count,
    int has_ratings,
    char *google_place_id,
    char *yelp_id,
    char *display,
    char *app_key,
    char *category_tree,
    char *filter_tree,
    char *address_display,
    char *map_query,
    char *sort_name,
    char *full_display,
    int has_offers,
    long billable_id,
    char *sub_type,
    char *content_name,
    account_t *owner,
    char *secondary_type,
    char *location_address,
    list_t *valid_offer_location_ids
);

void retailer_location_free(retailer_location_t *retailer_location);

retailer_location_t *retailer_location_parseFromJSON(cJSON *retailer_locationJSON);

cJSON *retailer_location_convertToJSON(retailer_location_t *retailer_location);

#endif /* _retailer_location_H_ */

