/*
 * predicted_location_response.h
 *
 * 
 */

#ifndef _predicted_location_response_H_
#define _predicted_location_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct predicted_location_response_t predicted_location_response_t;




typedef struct predicted_location_response_t {
    long owner_id; //numeric
    char *on_date; // string
    long on_date_milli; //numeric
    int hour; //numeric
    double latitude; //numeric
    double longitude; //numeric
    double distance; //numeric
    long matches; //numeric
    double average_duration; //numeric
    double weighted_score; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} predicted_location_response_t;

__attribute__((deprecated)) predicted_location_response_t *predicted_location_response_create(
    long owner_id,
    char *on_date,
    long on_date_milli,
    int hour,
    double latitude,
    double longitude,
    double distance,
    long matches,
    double average_duration,
    double weighted_score
);

void predicted_location_response_free(predicted_location_response_t *predicted_location_response);

predicted_location_response_t *predicted_location_response_parseFromJSON(cJSON *predicted_location_responseJSON);

cJSON *predicted_location_response_convertToJSON(predicted_location_response_t *predicted_location_response);

#endif /* _predicted_location_response_H_ */

