/*
 * leg_response.h
 *
 * 
 */

#ifndef _leg_response_H_
#define _leg_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct leg_response_t leg_response_t;

#include "name_string_value_response.h"
#include "step_response.h"



typedef struct leg_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *app_key; // string
    double distance; //numeric
    long duration; //numeric
    double start_latitude; //numeric
    double start_longitude; //numeric
    double start_altitude; //numeric
    long start_date; //numeric
    double end_latitude; //numeric
    double end_longitude; //numeric
    double end_altitude; //numeric
    long end_date; //numeric
    long created; //numeric
    char *tags; // string
    char *device_id; // string
    long account_id; //numeric
    char *device_signature; // string
    long parent_account_id; //numeric
    list_t *steps; //nonprimitive container
    char *type; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} leg_response_t;

__attribute__((deprecated)) leg_response_t *leg_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *app_key,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    long start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    long end_date,
    long created,
    char *tags,
    char *device_id,
    long account_id,
    char *device_signature,
    long parent_account_id,
    list_t *steps,
    char *type,
    char *returning
);

void leg_response_free(leg_response_t *leg_response);

leg_response_t *leg_response_parseFromJSON(cJSON *leg_responseJSON);

cJSON *leg_response_convertToJSON(leg_response_t *leg_response);

#endif /* _leg_response_H_ */

