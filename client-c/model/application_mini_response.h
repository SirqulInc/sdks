/*
 * application_mini_response.h
 *
 * 
 */

#ifndef _application_mini_response_H_
#define _application_mini_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct application_mini_response_t application_mini_response_t;

#include "asset_short_response.h"
#include "name_string_value_response.h"



typedef struct application_mini_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long application_id; //numeric
    char *app_key; // string
    char *title; // string
    char *current_build_version; // string
    char *current_api_version; // string
    struct asset_short_response_t *app_icon; //model
    struct asset_short_response_t *app_logo; //model
    int active; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} application_mini_response_t;

__attribute__((deprecated)) application_mini_response_t *application_mini_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long application_id,
    char *app_key,
    char *title,
    char *current_build_version,
    char *current_api_version,
    asset_short_response_t *app_icon,
    asset_short_response_t *app_logo,
    int active,
    char *returning
);

void application_mini_response_free(application_mini_response_t *application_mini_response);

application_mini_response_t *application_mini_response_parseFromJSON(cJSON *application_mini_responseJSON);

cJSON *application_mini_response_convertToJSON(application_mini_response_t *application_mini_response);

#endif /* _application_mini_response_H_ */

