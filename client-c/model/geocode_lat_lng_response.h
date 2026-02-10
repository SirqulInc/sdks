/*
 * geocode_lat_lng_response.h
 *
 * 
 */

#ifndef _geocode_lat_lng_response_H_
#define _geocode_lat_lng_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct geocode_lat_lng_response_t geocode_lat_lng_response_t;




typedef struct geocode_lat_lng_response_t {
    double lat; //numeric
    double lng; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} geocode_lat_lng_response_t;

__attribute__((deprecated)) geocode_lat_lng_response_t *geocode_lat_lng_response_create(
    double lat,
    double lng
);

void geocode_lat_lng_response_free(geocode_lat_lng_response_t *geocode_lat_lng_response);

geocode_lat_lng_response_t *geocode_lat_lng_response_parseFromJSON(cJSON *geocode_lat_lng_responseJSON);

cJSON *geocode_lat_lng_response_convertToJSON(geocode_lat_lng_response_t *geocode_lat_lng_response);

#endif /* _geocode_lat_lng_response_H_ */

