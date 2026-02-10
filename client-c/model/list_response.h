/*
 * list_response.h
 *
 * 
 */

#ifndef _list_response_H_
#define _list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct list_response_t list_response_t;

#include "name_string_value_response.h"
#include "object.h"



typedef struct list_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    int count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} list_response_t;

__attribute__((deprecated)) list_response_t *list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    char *returning
);

void list_response_free(list_response_t *list_response);

list_response_t *list_response_parseFromJSON(cJSON *list_responseJSON);

cJSON *list_response_convertToJSON(list_response_t *list_response);

#endif /* _list_response_H_ */

