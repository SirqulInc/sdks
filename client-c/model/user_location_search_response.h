/*
 * user_location_search_response.h
 *
 * 
 */

#ifndef _user_location_search_response_H_
#define _user_location_search_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_location_search_response_t user_location_search_response_t;

#include "name_string_value_response.h"
#include "user_location_list_response.h"



typedef struct user_location_search_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    int has_more_results; //boolean
    int count; //numeric
    list_t *user_locations; //nonprimitive container
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} user_location_search_response_t;

__attribute__((deprecated)) user_location_search_response_t *user_location_search_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    int has_more_results,
    int count,
    list_t *user_locations,
    char *returning
);

void user_location_search_response_free(user_location_search_response_t *user_location_search_response);

user_location_search_response_t *user_location_search_response_parseFromJSON(cJSON *user_location_search_responseJSON);

cJSON *user_location_search_response_convertToJSON(user_location_search_response_t *user_location_search_response);

#endif /* _user_location_search_response_H_ */

