/*
 * itinerary_response.h
 *
 * 
 */

#ifndef _itinerary_response_H_
#define _itinerary_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct itinerary_response_t itinerary_response_t;

#include "stop_response.h"
#include "vehicle_response.h"



typedef struct itinerary_response_t {
    char *itinerary_id; // string
    long waypoint_count; //numeric
    long score; //numeric
    char *error_code; // string
    char *error; // string
    int item_count; //numeric
    struct vehicle_response_t *vehicle; //model
    list_t *stops; //nonprimitive container
    long estimated_start_time; //numeric
    long estimated_end_time; //numeric
    long estimated_duration; //numeric
    double estimated_distance; //numeric
    long wait_time; //numeric
    int generated; //boolean
    int valid; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} itinerary_response_t;

__attribute__((deprecated)) itinerary_response_t *itinerary_response_create(
    char *itinerary_id,
    long waypoint_count,
    long score,
    char *error_code,
    char *error,
    int item_count,
    vehicle_response_t *vehicle,
    list_t *stops,
    long estimated_start_time,
    long estimated_end_time,
    long estimated_duration,
    double estimated_distance,
    long wait_time,
    int generated,
    int valid
);

void itinerary_response_free(itinerary_response_t *itinerary_response);

itinerary_response_t *itinerary_response_parseFromJSON(cJSON *itinerary_responseJSON);

cJSON *itinerary_response_convertToJSON(itinerary_response_t *itinerary_response);

#endif /* _itinerary_response_H_ */

