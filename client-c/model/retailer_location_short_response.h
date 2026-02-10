/*
 * retailer_location_short_response.h
 *
 * 
 */

#ifndef _retailer_location_short_response_H_
#define _retailer_location_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_location_short_response_t retailer_location_short_response_t;

#include "contact_info_response.h"



typedef struct retailer_location_short_response_t {
    long retailer_location_id; //numeric
    char *name; // string
    struct contact_info_response_t *contact; //model
    double latitude; //numeric
    double longitude; //numeric
    int active; //boolean
    long favorite_id; //numeric
    int favorite; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_location_short_response_t;

__attribute__((deprecated)) retailer_location_short_response_t *retailer_location_short_response_create(
    long retailer_location_id,
    char *name,
    contact_info_response_t *contact,
    double latitude,
    double longitude,
    int active,
    long favorite_id,
    int favorite
);

void retailer_location_short_response_free(retailer_location_short_response_t *retailer_location_short_response);

retailer_location_short_response_t *retailer_location_short_response_parseFromJSON(cJSON *retailer_location_short_responseJSON);

cJSON *retailer_location_short_response_convertToJSON(retailer_location_short_response_t *retailer_location_short_response);

#endif /* _retailer_location_short_response_H_ */

