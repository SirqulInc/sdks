/*
 * geo_response.h
 *
 * 
 */

#ifndef _geo_response_H_
#define _geo_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct geo_response_t geo_response_t;




typedef struct geo_response_t {
    char *geo_id; // string
    double latitude; //numeric
    double longitude; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} geo_response_t;

__attribute__((deprecated)) geo_response_t *geo_response_create(
    char *geo_id,
    double latitude,
    double longitude
);

void geo_response_free(geo_response_t *geo_response);

geo_response_t *geo_response_parseFromJSON(cJSON *geo_responseJSON);

cJSON *geo_response_convertToJSON(geo_response_t *geo_response);

#endif /* _geo_response_H_ */

