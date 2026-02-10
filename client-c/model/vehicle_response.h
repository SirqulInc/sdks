/*
 * vehicle_response.h
 *
 * 
 */

#ifndef _vehicle_response_H_
#define _vehicle_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct vehicle_response_t vehicle_response_t;

#include "geo_response.h"
#include "stop_response.h"



typedef struct vehicle_response_t {
    char *id; // string
    char *name; // string
    long capacity; //numeric
    struct geo_response_t *depot; //model
    long start_window; //numeric
    long end_window; //numeric
    struct geo_response_t *current; //model
    struct stop_response_t *depot_as_stop; //model

    int _library_owned; // Is the library responsible for freeing this object?
} vehicle_response_t;

__attribute__((deprecated)) vehicle_response_t *vehicle_response_create(
    char *id,
    char *name,
    long capacity,
    geo_response_t *depot,
    long start_window,
    long end_window,
    geo_response_t *current,
    stop_response_t *depot_as_stop
);

void vehicle_response_free(vehicle_response_t *vehicle_response);

vehicle_response_t *vehicle_response_parseFromJSON(cJSON *vehicle_responseJSON);

cJSON *vehicle_response_convertToJSON(vehicle_response_t *vehicle_response);

#endif /* _vehicle_response_H_ */

