/*
 * application_config_response.h
 *
 * 
 */

#ifndef _application_config_response_H_
#define _application_config_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct application_config_response_t application_config_response_t;

#include "name_string_value_response.h"



typedef struct application_config_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long config_id; //numeric
    long created; //numeric
    long updated; //numeric
    char *config_version; // string
    char *config_json; // string
    char *config_json_url; // string
    long asset_id; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} application_config_response_t;

__attribute__((deprecated)) application_config_response_t *application_config_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long config_id,
    long created,
    long updated,
    char *config_version,
    char *config_json,
    char *config_json_url,
    long asset_id,
    char *returning
);

void application_config_response_free(application_config_response_t *application_config_response);

application_config_response_t *application_config_response_parseFromJSON(cJSON *application_config_responseJSON);

cJSON *application_config_response_convertToJSON(application_config_response_t *application_config_response);

#endif /* _application_config_response_H_ */

