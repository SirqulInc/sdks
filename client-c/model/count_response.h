/*
 * count_response.h
 *
 * 
 */

#ifndef _count_response_H_
#define _count_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct count_response_t count_response_t;

#include "name_string_value_response.h"



typedef struct count_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} count_response_t;

__attribute__((deprecated)) count_response_t *count_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long count,
    char *returning
);

void count_response_free(count_response_t *count_response);

count_response_t *count_response_parseFromJSON(cJSON *count_responseJSON);

cJSON *count_response_convertToJSON(count_response_t *count_response);

#endif /* _count_response_H_ */

