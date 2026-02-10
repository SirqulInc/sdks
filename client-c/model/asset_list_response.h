/*
 * asset_list_response.h
 *
 * 
 */

#ifndef _asset_list_response_H_
#define _asset_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct asset_list_response_t asset_list_response_t;

#include "asset_response.h"
#include "name_string_value_response.h"



typedef struct asset_list_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    int has_more_results; //boolean
    int count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} asset_list_response_t;

__attribute__((deprecated)) asset_list_response_t *asset_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int has_more_results,
    int count,
    char *returning
);

void asset_list_response_free(asset_list_response_t *asset_list_response);

asset_list_response_t *asset_list_response_parseFromJSON(cJSON *asset_list_responseJSON);

cJSON *asset_list_response_convertToJSON(asset_list_response_t *asset_list_response);

#endif /* _asset_list_response_H_ */

