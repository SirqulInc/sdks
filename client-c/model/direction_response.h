/*
 * direction_response.h
 *
 * 
 */

#ifndef _direction_response_H_
#define _direction_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct direction_response_t direction_response_t;




typedef struct direction_response_t {
    char *action; // string
    double bearing; //numeric
    double bearing_difference; //numeric
    char *heading; // string
    double distance; //numeric
    char *distance_units; // string
    char *distance_string; // string
    double start_latitude; //numeric
    double start_longitude; //numeric
    double end_latitude; //numeric
    double end_longitude; //numeric
    char *instruction; // string
    char *progress_status; // string

    int _library_owned; // Is the library responsible for freeing this object?
} direction_response_t;

__attribute__((deprecated)) direction_response_t *direction_response_create(
    char *action,
    double bearing,
    double bearing_difference,
    char *heading,
    double distance,
    char *distance_units,
    char *distance_string,
    double start_latitude,
    double start_longitude,
    double end_latitude,
    double end_longitude,
    char *instruction,
    char *progress_status
);

void direction_response_free(direction_response_t *direction_response);

direction_response_t *direction_response_parseFromJSON(cJSON *direction_responseJSON);

cJSON *direction_response_convertToJSON(direction_response_t *direction_response);

#endif /* _direction_response_H_ */

