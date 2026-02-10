/*
 * location_response.h
 *
 * 
 */

#ifndef _location_response_H_
#define _location_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct location_response_t location_response_t;

#include "name_string_value_response.h"



typedef struct location_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long id; //numeric
    char *get_distance_miles; // string
    char *zip; // string
    char *name; // string
    char *latitude; // string
    char *longitude; // string
    char *get_source; // string
    char *type; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} location_response_t;

__attribute__((deprecated)) location_response_t *location_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long id,
    char *get_distance_miles,
    char *zip,
    char *name,
    char *latitude,
    char *longitude,
    char *get_source,
    char *type,
    char *returning
);

void location_response_free(location_response_t *location_response);

location_response_t *location_response_parseFromJSON(cJSON *location_responseJSON);

cJSON *location_response_convertToJSON(location_response_t *location_response);

#endif /* _location_response_H_ */

