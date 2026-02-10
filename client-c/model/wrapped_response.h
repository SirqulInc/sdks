/*
 * wrapped_response.h
 *
 * 
 */

#ifndef _wrapped_response_H_
#define _wrapped_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct wrapped_response_t wrapped_response_t;

#include "message_list_response.h"
#include "name_string_value_response.h"
#include "object.h"



typedef struct wrapped_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *type; // string
    object_t *item; //object
    struct message_list_response_t *messages; //model
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} wrapped_response_t;

__attribute__((deprecated)) wrapped_response_t *wrapped_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *type,
    object_t *item,
    message_list_response_t *messages,
    char *returning
);

void wrapped_response_free(wrapped_response_t *wrapped_response);

wrapped_response_t *wrapped_response_parseFromJSON(cJSON *wrapped_responseJSON);

cJSON *wrapped_response_convertToJSON(wrapped_response_t *wrapped_response);

#endif /* _wrapped_response_H_ */

