/*
 * shipment.h
 *
 * 
 */

#ifndef _shipment_H_
#define _shipment_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct shipment_t shipment_t;

#include "account.h"
#include "cargo_type.h"
#include "date_time_range.h"
#include "note.h"
#include "promo_code.h"
#include "route.h"
#include "service_type.h"
#include "stop.h"



typedef struct shipment_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    struct account_t *owner; //model
    struct account_t *rider; //model
    struct stop_t *pickup_stop; //model
    struct stop_t *drop_off_stop; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    char *batch_id; // string
    char *reserved; //date time
    char *canceled; //date time
    char *confirmed; //date time
    struct route_t *route; //model
    char *polyline; // string
    struct shipment_t *replace_passenger; //model
    int refunded; //boolean
    struct promo_code_t *promo_code; //model
    int quantity; //numeric
    struct date_time_range_t *pickup_time_window; //model
    struct date_time_range_t *drop_off_time_window; //model
    struct cargo_type_t *cargo_type; //model
    struct service_type_t *service_type; //model
    long route_id; //numeric
    double total_volume; //numeric
    int complete; //boolean
    char *content_name; // string
    char *rider_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} shipment_t;

__attribute__((deprecated)) shipment_t *shipment_create(
    long id,
    int active,
    int valid,
    char *name,
    account_t *owner,
    account_t *rider,
    stop_t *pickup_stop,
    stop_t *drop_off_stop,
    list_t *notes,
    long note_count,
    char *batch_id,
    char *reserved,
    char *canceled,
    char *confirmed,
    route_t *route,
    char *polyline,
    shipment_t *replace_passenger,
    int refunded,
    promo_code_t *promo_code,
    int quantity,
    date_time_range_t *pickup_time_window,
    date_time_range_t *drop_off_time_window,
    cargo_type_t *cargo_type,
    service_type_t *service_type,
    long route_id,
    double total_volume,
    int complete,
    char *content_name,
    char *rider_name
);

void shipment_free(shipment_t *shipment);

shipment_t *shipment_parseFromJSON(cJSON *shipmentJSON);

cJSON *shipment_convertToJSON(shipment_t *shipment);

#endif /* _shipment_H_ */

