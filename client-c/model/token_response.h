/*
 * token_response.h
 *
 * 
 */

#ifndef _token_response_H_
#define _token_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct token_response_t token_response_t;

#include "name_string_value_response.h"



typedef struct token_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *token; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} token_response_t;

__attribute__((deprecated)) token_response_t *token_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *token,
    char *returning
);

void token_response_free(token_response_t *token_response);

token_response_t *token_response_parseFromJSON(cJSON *token_responseJSON);

cJSON *token_response_convertToJSON(token_response_t *token_response);

#endif /* _token_response_H_ */

