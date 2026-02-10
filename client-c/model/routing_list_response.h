/*
 * routing_list_response.h
 *
 * 
 */

#ifndef _routing_list_response_H_
#define _routing_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct routing_list_response_t routing_list_response_t;

#include "name_string_value_response.h"
#include "routing_response.h"



typedef struct routing_list_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    int count; //numeric
    list_t *debug; //primitive container
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} routing_list_response_t;

__attribute__((deprecated)) routing_list_response_t *routing_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    list_t *debug,
    char *returning
);

void routing_list_response_free(routing_list_response_t *routing_list_response);

routing_list_response_t *routing_list_response_parseFromJSON(cJSON *routing_list_responseJSON);

cJSON *routing_list_response_convertToJSON(routing_list_response_t *routing_list_response);

#endif /* _routing_list_response_H_ */

