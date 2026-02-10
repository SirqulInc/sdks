/*
 * listing_response.h
 *
 * 
 */

#ifndef _listing_response_H_
#define _listing_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct listing_response_t listing_response_t;

#include "account_short_response.h"
#include "participant_response.h"



typedef struct listing_response_t {
    long id; //numeric
    char *name; // string
    char *description; // string
    long start; //numeric
    long end; //numeric
    char *location_name; // string
    char *location_description; // string
    int private_listing; //boolean
    int active; //boolean
    list_t *participants; //nonprimitive container
    struct account_short_response_t *owner; //model

    int _library_owned; // Is the library responsible for freeing this object?
} listing_response_t;

__attribute__((deprecated)) listing_response_t *listing_response_create(
    long id,
    char *name,
    char *description,
    long start,
    long end,
    char *location_name,
    char *location_description,
    int private_listing,
    int active,
    list_t *participants,
    account_short_response_t *owner
);

void listing_response_free(listing_response_t *listing_response);

listing_response_t *listing_response_parseFromJSON(cJSON *listing_responseJSON);

cJSON *listing_response_convertToJSON(listing_response_t *listing_response);

#endif /* _listing_response_H_ */

