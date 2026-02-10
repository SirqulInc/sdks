/*
 * sirqul_response.h
 *
 * 
 */

#ifndef _sirqul_response_H_
#define _sirqul_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sirqul_response_t sirqul_response_t;

#include "name_string_value_response.h"



typedef struct sirqul_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sirqul_response_t;

__attribute__((deprecated)) sirqul_response_t *sirqul_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *returning
);

void sirqul_response_free(sirqul_response_t *sirqul_response);

sirqul_response_t *sirqul_response_parseFromJSON(cJSON *sirqul_responseJSON);

cJSON *sirqul_response_convertToJSON(sirqul_response_t *sirqul_response);

#endif /* _sirqul_response_H_ */

