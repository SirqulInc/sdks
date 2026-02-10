/*
 * stop.h
 *
 * 
 */

#ifndef _stop_H_
#define _stop_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct stop_t stop_t;

#include "account.h"
#include "location.h"
#include "note.h"
#include "route.h"
#include "shipment.h"

// Enum STOPTYPE for stop

typedef enum  { sirqul_iot_platform_stop_STOPTYPE_NULL = 0, sirqul_iot_platform_stop_STOPTYPE_PICKUP, sirqul_iot_platform_stop_STOPTYPE_DROPOFF, sirqul_iot_platform_stop_STOPTYPE_START, sirqul_iot_platform_stop_STOPTYPE_END, sirqul_iot_platform_stop_STOPTYPE_ROUTING } sirqul_iot_platform_stop_STOPTYPE_e;

char* stop_stop_type_ToString(sirqul_iot_platform_stop_STOPTYPE_e stop_type);

sirqul_iot_platform_stop_STOPTYPE_e stop_stop_type_FromString(char* stop_type);

// Enum PROGRESSSTATUS for stop

typedef enum  { sirqul_iot_platform_stop_PROGRESSSTATUS_NULL = 0, sirqul_iot_platform_stop_PROGRESSSTATUS_PENDING, sirqul_iot_platform_stop_PROGRESSSTATUS_COMPLETE, sirqul_iot_platform_stop_PROGRESSSTATUS_INVALID } sirqul_iot_platform_stop_PROGRESSSTATUS_e;

char* stop_progress_status_ToString(sirqul_iot_platform_stop_PROGRESSSTATUS_e progress_status);

sirqul_iot_platform_stop_PROGRESSSTATUS_e stop_progress_status_FromString(char* progress_status);



typedef struct stop_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    char *name; // string
    struct account_t *owner; //model
    struct location_t *location; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    sirqul_iot_platform_stop_STOPTYPE_e stop_type; //enum
    long order_index; //numeric
    char *start_time; //date time
    char *end_time; //date time
    char *estimated_time; //date time
    char *estimated_arrival_time; //date time
    char *estimated_departure_time; //date time
    char *actual_time; //date time
    char *desired_time; //date time
    int time_padding; //numeric
    struct route_t *route; //model
    struct shipment_t *shipment; //model
    sirqul_iot_platform_stop_PROGRESSSTATUS_e progress_status; //enum
    char *compare_estimated_time; //date time
    char *compare_estimated_arrival_time; //date time
    char *compare_estimiated_departure_time; //date time
    char *polyline; // string
    struct stop_t *parent; //model
    char *location_display; // string
    int complete; //boolean
    char *content_name; // string
    char *location_address; // string

    int _library_owned; // Is the library responsible for freeing this object?
} stop_t;

__attribute__((deprecated)) stop_t *stop_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    account_t *owner,
    location_t *location,
    list_t *notes,
    long note_count,
    sirqul_iot_platform_stop_STOPTYPE_e stop_type,
    long order_index,
    char *start_time,
    char *end_time,
    char *estimated_time,
    char *estimated_arrival_time,
    char *estimated_departure_time,
    char *actual_time,
    char *desired_time,
    int time_padding,
    route_t *route,
    shipment_t *shipment,
    sirqul_iot_platform_stop_PROGRESSSTATUS_e progress_status,
    char *compare_estimated_time,
    char *compare_estimated_arrival_time,
    char *compare_estimiated_departure_time,
    char *polyline,
    stop_t *parent,
    char *location_display,
    int complete,
    char *content_name,
    char *location_address
);

void stop_free(stop_t *stop);

stop_t *stop_parseFromJSON(cJSON *stopJSON);

cJSON *stop_convertToJSON(stop_t *stop);

#endif /* _stop_H_ */

