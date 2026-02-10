/*
 * invite_response.h
 *
 * 
 */

#ifndef _invite_response_H_
#define _invite_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct invite_response_t invite_response_t;

#include "name_string_value_response.h"



typedef struct invite_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *url; // string
    char *token; // string
    long offer_id; //numeric
    long offer_location_id; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} invite_response_t;

__attribute__((deprecated)) invite_response_t *invite_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *url,
    char *token,
    long offer_id,
    long offer_location_id,
    char *returning
);

void invite_response_free(invite_response_t *invite_response);

invite_response_t *invite_response_parseFromJSON(cJSON *invite_responseJSON);

cJSON *invite_response_convertToJSON(invite_response_t *invite_response);

#endif /* _invite_response_H_ */

