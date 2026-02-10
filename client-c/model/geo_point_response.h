/*
 * geo_point_response.h
 *
 * 
 */

#ifndef _geo_point_response_H_
#define _geo_point_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct geo_point_response_t geo_point_response_t;

#include "asset_short_response.h"



typedef struct geo_point_response_t {
    char *object_id; // string
    double latitude; //numeric
    double longitude; //numeric
    double altitude; //numeric
    char *location_description; // string
    long locatable_id; //numeric
    char *locatable_object_id; // string
    char *locatable_object_name; // string
    char *locatable_display; // string
    struct asset_short_response_t *asset; //model
    double distance; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} geo_point_response_t;

__attribute__((deprecated)) geo_point_response_t *geo_point_response_create(
    char *object_id,
    double latitude,
    double longitude,
    double altitude,
    char *location_description,
    long locatable_id,
    char *locatable_object_id,
    char *locatable_object_name,
    char *locatable_display,
    asset_short_response_t *asset,
    double distance
);

void geo_point_response_free(geo_point_response_t *geo_point_response);

geo_point_response_t *geo_point_response_parseFromJSON(cJSON *geo_point_responseJSON);

cJSON *geo_point_response_convertToJSON(geo_point_response_t *geo_point_response);

#endif /* _geo_point_response_H_ */

