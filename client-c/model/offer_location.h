/*
 * offer_location.h
 *
 * 
 */

#ifndef _offer_location_H_
#define _offer_location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct offer_location_t offer_location_t;

#include "account.h"
#include "asset.h"
#include "audience.h"
#include "note.h"
#include "offer.h"
#include "retailer_location.h"



typedef struct offer_location_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    struct offer_t *offer; //model
    struct retailer_location_t *location; //model
    double distance; //numeric
    double altitude; //numeric
    double custom_value; //numeric
    char *location_detail; // string
    list_t *audiences; //nonprimitive container
    struct asset_t *qr_invite_code; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    char *search_index_updated; //date time
    int in_search_index; //boolean
    long favorite_count; //numeric
    int added_count; //numeric
    char *display; // string
    char *app_key; // string
    double device_power; //numeric
    double power_loss; //numeric
    char *udid; // string
    long billable_id; //numeric
    char *sub_type; // string
    char *content_name; // string
    struct asset_t *content_asset; //model
    struct account_t *owner; //model
    char *secondary_type; // string
    list_t *category_ids; //primitive container
    list_t *filter_ids; //primitive container

    int _library_owned; // Is the library responsible for freeing this object?
} offer_location_t;

__attribute__((deprecated)) offer_location_t *offer_location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    offer_t *offer,
    retailer_location_t *location,
    double distance,
    double altitude,
    double custom_value,
    char *location_detail,
    list_t *audiences,
    asset_t *qr_invite_code,
    list_t *notes,
    long note_count,
    char *search_index_updated,
    int in_search_index,
    long favorite_count,
    int added_count,
    char *display,
    char *app_key,
    double device_power,
    double power_loss,
    char *udid,
    long billable_id,
    char *sub_type,
    char *content_name,
    asset_t *content_asset,
    account_t *owner,
    char *secondary_type,
    list_t *category_ids,
    list_t *filter_ids
);

void offer_location_free(offer_location_t *offer_location);

offer_location_t *offer_location_parseFromJSON(cJSON *offer_locationJSON);

cJSON *offer_location_convertToJSON(offer_location_t *offer_location);

#endif /* _offer_location_H_ */

