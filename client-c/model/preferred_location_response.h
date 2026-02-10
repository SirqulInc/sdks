/*
 * preferred_location_response.h
 *
 * 
 */

#ifndef _preferred_location_response_H_
#define _preferred_location_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct preferred_location_response_t preferred_location_response_t;




typedef struct preferred_location_response_t {
    long owner_id; //numeric
    char *on_date; // string
    long on_date_milli; //numeric
    int hour; //numeric
    double latitude; //numeric
    double longitude; //numeric
    double distance; //numeric
    long duration; //numeric
    long start_step_id; //numeric
    long end_step_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} preferred_location_response_t;

__attribute__((deprecated)) preferred_location_response_t *preferred_location_response_create(
    long owner_id,
    char *on_date,
    long on_date_milli,
    int hour,
    double latitude,
    double longitude,
    double distance,
    long duration,
    long start_step_id,
    long end_step_id
);

void preferred_location_response_free(preferred_location_response_t *preferred_location_response);

preferred_location_response_t *preferred_location_response_parseFromJSON(cJSON *preferred_location_responseJSON);

cJSON *preferred_location_response_convertToJSON(preferred_location_response_t *preferred_location_response);

#endif /* _preferred_location_response_H_ */

