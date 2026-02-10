/*
 * likable_response.h
 *
 * 
 */

#ifndef _likable_response_H_
#define _likable_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct likable_response_t likable_response_t;

#include "name_string_value_response.h"



typedef struct likable_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long like_count; //numeric
    long dislike_count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} likable_response_t;

__attribute__((deprecated)) likable_response_t *likable_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long like_count,
    long dislike_count,
    char *returning
);

void likable_response_free(likable_response_t *likable_response);

likable_response_t *likable_response_parseFromJSON(cJSON *likable_responseJSON);

cJSON *likable_response_convertToJSON(likable_response_t *likable_response);

#endif /* _likable_response_H_ */

