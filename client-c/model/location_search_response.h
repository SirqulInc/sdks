/*
 * location_search_response.h
 *
 * 
 */

#ifndef _location_search_response_H_
#define _location_search_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct location_search_response_t location_search_response_t;

#include "location_response.h"
#include "name_string_value_response.h"



typedef struct location_search_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long count; //numeric
    list_t *locations; //nonprimitive container
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} location_search_response_t;

__attribute__((deprecated)) location_search_response_t *location_search_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long count,
    list_t *locations,
    char *returning
);

void location_search_response_free(location_search_response_t *location_search_response);

location_search_response_t *location_search_response_parseFromJSON(cJSON *location_search_responseJSON);

cJSON *location_search_response_convertToJSON(location_search_response_t *location_search_response);

#endif /* _location_search_response_H_ */

