/*
 * listing_group_response.h
 *
 * 
 */

#ifndef _listing_group_response_H_
#define _listing_group_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct listing_group_response_t listing_group_response_t;

#include "category_response.h"
#include "listing_response.h"



typedef struct listing_group_response_t {
    struct category_response_t *category; //model
    list_t *listings; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} listing_group_response_t;

__attribute__((deprecated)) listing_group_response_t *listing_group_response_create(
    category_response_t *category,
    list_t *listings
);

void listing_group_response_free(listing_group_response_t *listing_group_response);

listing_group_response_t *listing_group_response_parseFromJSON(cJSON *listing_group_responseJSON);

cJSON *listing_group_response_convertToJSON(listing_group_response_t *listing_group_response);

#endif /* _listing_group_response_H_ */

