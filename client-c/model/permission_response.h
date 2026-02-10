/*
 * permission_response.h
 *
 * 
 */

#ifndef _permission_response_H_
#define _permission_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct permission_response_t permission_response_t;

#include "name_string_value_response.h"



typedef struct permission_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    int read; //boolean
    int write; //boolean
    int _delete; //boolean
    int add; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} permission_response_t;

__attribute__((deprecated)) permission_response_t *permission_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    int read,
    int write,
    int _delete,
    int add,
    char *returning
);

void permission_response_free(permission_response_t *permission_response);

permission_response_t *permission_response_parseFromJSON(cJSON *permission_responseJSON);

cJSON *permission_response_convertToJSON(permission_response_t *permission_response);

#endif /* _permission_response_H_ */

