/*
 * app_response.h
 *
 * 
 */

#ifndef _app_response_H_
#define _app_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct app_response_t app_response_t;

#include "message_list_response.h"
#include "mission_list_response.h"
#include "name_string_value_response.h"
#include "profile_response.h"



typedef struct app_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    struct mission_list_response_t *missions; //model
    struct profile_response_t *profile; //model
    struct message_list_response_t *messages; //model
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} app_response_t;

__attribute__((deprecated)) app_response_t *app_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    mission_list_response_t *missions,
    profile_response_t *profile,
    message_list_response_t *messages,
    char *returning
);

void app_response_free(app_response_t *app_response);

app_response_t *app_response_parseFromJSON(cJSON *app_responseJSON);

cJSON *app_response_convertToJSON(app_response_t *app_response);

#endif /* _app_response_H_ */

