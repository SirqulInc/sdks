/*
 * theme_descriptor_response.h
 *
 * 
 */

#ifndef _theme_descriptor_response_H_
#define _theme_descriptor_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct theme_descriptor_response_t theme_descriptor_response_t;

#include "name_string_value_response.h"



typedef struct theme_descriptor_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long theme_descriptor_id; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} theme_descriptor_response_t;

__attribute__((deprecated)) theme_descriptor_response_t *theme_descriptor_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long theme_descriptor_id,
    char *returning
);

void theme_descriptor_response_free(theme_descriptor_response_t *theme_descriptor_response);

theme_descriptor_response_t *theme_descriptor_response_parseFromJSON(cJSON *theme_descriptor_responseJSON);

cJSON *theme_descriptor_response_convertToJSON(theme_descriptor_response_t *theme_descriptor_response);

#endif /* _theme_descriptor_response_H_ */

