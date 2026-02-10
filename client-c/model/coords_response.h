/*
 * coords_response.h
 *
 * 
 */

#ifndef _coords_response_H_
#define _coords_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct coords_response_t coords_response_t;

#include "name_string_value_response.h"



typedef struct coords_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    double latitude; //numeric
    double longitude; //numeric
    char *country; // string
    char *country_code; // string
    char *region; // string
    char *city; // string
    char *postal_code; // string
    char *region_code; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} coords_response_t;

__attribute__((deprecated)) coords_response_t *coords_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    double latitude,
    double longitude,
    char *country,
    char *country_code,
    char *region,
    char *city,
    char *postal_code,
    char *region_code,
    char *returning
);

void coords_response_free(coords_response_t *coords_response);

coords_response_t *coords_response_parseFromJSON(cJSON *coords_responseJSON);

cJSON *coords_response_convertToJSON(coords_response_t *coords_response);

#endif /* _coords_response_H_ */

