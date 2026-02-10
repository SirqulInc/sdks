/*
 * wrapped_proxy_response.h
 *
 * 
 */

#ifndef _wrapped_proxy_response_H_
#define _wrapped_proxy_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct wrapped_proxy_response_t wrapped_proxy_response_t;

#include "name_string_value_response.h"



typedef struct wrapped_proxy_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *returning; // string
    char *type; // string
    int response_code; //numeric
    char *response_raw; // string
    long request_duration; //numeric
    long request_end_time; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} wrapped_proxy_response_t;

__attribute__((deprecated)) wrapped_proxy_response_t *wrapped_proxy_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *returning,
    char *type,
    int response_code,
    char *response_raw,
    long request_duration,
    long request_end_time
);

void wrapped_proxy_response_free(wrapped_proxy_response_t *wrapped_proxy_response);

wrapped_proxy_response_t *wrapped_proxy_response_parseFromJSON(cJSON *wrapped_proxy_responseJSON);

cJSON *wrapped_proxy_response_convertToJSON(wrapped_proxy_response_t *wrapped_proxy_response);

#endif /* _wrapped_proxy_response_H_ */

