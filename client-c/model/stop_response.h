/*
 * stop_response.h
 *
 * 
 */

#ifndef _stop_response_H_
#define _stop_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct stop_response_t stop_response_t;

#include "load_short_response.h"
#include "node_request.h"

// Enum TYPE for stop_response

typedef enum  { sirqul_iot_platform_stop_response_TYPE_NULL = 0, sirqul_iot_platform_stop_response_TYPE_PICKUP, sirqul_iot_platform_stop_response_TYPE_DROPOFF, sirqul_iot_platform_stop_response_TYPE_START, sirqul_iot_platform_stop_response_TYPE_END, sirqul_iot_platform_stop_response_TYPE_ROUTING } sirqul_iot_platform_stop_response_TYPE_e;

char* stop_response_type_ToString(sirqul_iot_platform_stop_response_TYPE_e type);

sirqul_iot_platform_stop_response_TYPE_e stop_response_type_FromString(char* type);



typedef struct stop_response_t {
    char *geo_id; // string
    double latitude; //numeric
    double longitude; //numeric
    long start_window; //numeric
    long end_window; //numeric
    sirqul_iot_platform_stop_response_TYPE_e type; //enum
    long eta; //numeric
    long etd; //numeric
    long score; //numeric
    char *error_code; // string
    char *error; // string
    char *item_id; // string
    long item_size; //numeric
    struct load_short_response_t *load; //model
    list_t *floor_plan_path; //nonprimitive container
    int valid; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} stop_response_t;

__attribute__((deprecated)) stop_response_t *stop_response_create(
    char *geo_id,
    double latitude,
    double longitude,
    long start_window,
    long end_window,
    sirqul_iot_platform_stop_response_TYPE_e type,
    long eta,
    long etd,
    long score,
    char *error_code,
    char *error,
    char *item_id,
    long item_size,
    load_short_response_t *load,
    list_t *floor_plan_path,
    int valid
);

void stop_response_free(stop_response_t *stop_response);

stop_response_t *stop_response_parseFromJSON(cJSON *stop_responseJSON);

cJSON *stop_response_convertToJSON(stop_response_t *stop_response);

#endif /* _stop_response_H_ */

