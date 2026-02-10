/*
 * trip.h
 *
 * 
 */

#ifndef _trip_H_
#define _trip_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct trip_t trip_t;

#include "account.h"
#include "connection.h"
#include "location.h"
#include "recurrence.h"
#include "route.h"
#include "shipment.h"

// Enum PREFERENCE for trip

typedef enum  { sirqul_iot_platform_trip_PREFERENCE_NULL = 0, sirqul_iot_platform_trip_PREFERENCE_DRIVE, sirqul_iot_platform_trip_PREFERENCE_FLEXIBLE, sirqul_iot_platform_trip_PREFERENCE_RIDE } sirqul_iot_platform_trip_PREFERENCE_e;

char* trip_preference_ToString(sirqul_iot_platform_trip_PREFERENCE_e preference);

sirqul_iot_platform_trip_PREFERENCE_e trip_preference_FromString(char* preference);



typedef struct trip_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    struct location_t *pickup_location; //model
    char *pickup_time; //date time
    struct location_t *drop_off_location; //model
    char *drop_off_time; //date time
    list_t *shipments; //nonprimitive container
    struct recurrence_t *recurrence; //model
    char *time_zone; // string
    struct route_t *route; //model
    sirqul_iot_platform_trip_PREFERENCE_e preference; //enum
    char *notifications; // string
    list_t *matches; //nonprimitive container
    struct connection_t *owner_connection; //model
    long original_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} trip_t;

__attribute__((deprecated)) trip_t *trip_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    location_t *pickup_location,
    char *pickup_time,
    location_t *drop_off_location,
    char *drop_off_time,
    list_t *shipments,
    recurrence_t *recurrence,
    char *time_zone,
    route_t *route,
    sirqul_iot_platform_trip_PREFERENCE_e preference,
    char *notifications,
    list_t *matches,
    connection_t *owner_connection,
    long original_id
);

void trip_free(trip_t *trip);

trip_t *trip_parseFromJSON(cJSON *tripJSON);

cJSON *trip_convertToJSON(trip_t *trip);

#endif /* _trip_H_ */

