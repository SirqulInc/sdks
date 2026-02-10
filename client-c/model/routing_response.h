/*
 * routing_response.h
 *
 * 
 */

#ifndef _routing_response_H_
#define _routing_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct routing_response_t routing_response_t;

#include "config_routing_request.h"
#include "driver_response.h"
#include "itinerary_response.h"
#include "load_response.h"
#include "name_string_value_response.h"
#include "vehicle_response.h"



typedef struct routing_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    list_t *vehicles; //nonprimitive container
    list_t *drivers; //nonprimitive container
    struct config_routing_request_t *config; //model
    char *error; // string
    list_t *debug; //primitive container
    char *start_time; //date time
    char *end_time; //date time
    list_t *responses; //nonprimitive container
    char *orignal_request; // string
    int generated; //boolean
    list_t *itineraries; //nonprimitive container
    long score; //numeric
    int load_size; //numeric
    long runtime; //numeric
    long earliest_pickup_window; //numeric
    long latest_pickup_window; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} routing_response_t;

__attribute__((deprecated)) routing_response_t *routing_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    list_t *vehicles,
    list_t *drivers,
    config_routing_request_t *config,
    char *error,
    list_t *debug,
    char *start_time,
    char *end_time,
    list_t *responses,
    char *orignal_request,
    int generated,
    list_t *itineraries,
    long score,
    int load_size,
    long runtime,
    long earliest_pickup_window,
    long latest_pickup_window,
    char *returning
);

void routing_response_free(routing_response_t *routing_response);

routing_response_t *routing_response_parseFromJSON(cJSON *routing_responseJSON);

cJSON *routing_response_convertToJSON(routing_response_t *routing_response);

#endif /* _routing_response_H_ */

