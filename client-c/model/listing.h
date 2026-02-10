/*
 * listing.h
 *
 * 
 */

#ifndef _listing_H_
#define _listing_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct listing_t listing_t;

#include "account.h"
#include "filter.h"
#include "participant.h"



typedef struct listing_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    char *name; // string
    char *description; // string
    char *start; //date time
    char *end; //date time
    char *location_name; // string
    char *location_description; // string
    list_t *participants; //nonprimitive container
    char *external_id; // string
    char *external_group_id; // string
    list_t *filters; //nonprimitive container
    int _private; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} listing_t;

__attribute__((deprecated)) listing_t *listing_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *name,
    char *description,
    char *start,
    char *end,
    char *location_name,
    char *location_description,
    list_t *participants,
    char *external_id,
    char *external_group_id,
    list_t *filters,
    int _private
);

void listing_free(listing_t *listing);

listing_t *listing_parseFromJSON(cJSON *listingJSON);

cJSON *listing_convertToJSON(listing_t *listing);

#endif /* _listing_H_ */

