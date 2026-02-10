/*
 * route.h
 *
 * 
 */

#ifndef _route_H_
#define _route_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct route_t route_t;

#include "account.h"
#include "asset.h"
#include "note.h"
#include "program.h"
#include "region.h"
#include "service_hub.h"
#include "shipment.h"
#include "stop.h"
#include "vehicle.h"



typedef struct route_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *external_id; // string
    struct service_hub_t *hub; //model
    struct program_t *program; //model
    struct region_t *zone; //model
    struct vehicle_t *vehicle; //model
    struct account_t *driver; //model
    struct account_t *concierge; //model
    char *scheduled; //date time
    char *approved; //date time
    char *started; //date time
    char *completed; //date time
    float total_distance; //numeric
    long total_time; //numeric
    double estimated_distance; //numeric
    long estimated_time; //numeric
    struct stop_t *start_stop; //model
    struct stop_t *end_stop; //model
    list_t *stops; //nonprimitive container
    list_t *shipments; //nonprimitive container
    int all_shipments_confirmed; //boolean
    int shipment_order_count; //numeric
    char *polyline; // string
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    char *glympse_token; // string
    int enable_optimization; //boolean
    char *optimized_date; //date time
    char *optimization_started; //date time
    char *optimization_completed; //date time
    int featured; //boolean
    struct asset_t *image; //model
    struct route_t *parent; //model
    char *content_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} route_t;

__attribute__((deprecated)) route_t *route_create(
    long id,
    int active,
    int valid,
    char *name,
    char *external_id,
    service_hub_t *hub,
    program_t *program,
    region_t *zone,
    vehicle_t *vehicle,
    account_t *driver,
    account_t *concierge,
    char *scheduled,
    char *approved,
    char *started,
    char *completed,
    float total_distance,
    long total_time,
    double estimated_distance,
    long estimated_time,
    stop_t *start_stop,
    stop_t *end_stop,
    list_t *stops,
    list_t *shipments,
    int all_shipments_confirmed,
    int shipment_order_count,
    char *polyline,
    list_t *notes,
    long note_count,
    char *glympse_token,
    int enable_optimization,
    char *optimized_date,
    char *optimization_started,
    char *optimization_completed,
    int featured,
    asset_t *image,
    route_t *parent,
    char *content_name
);

void route_free(route_t *route);

route_t *route_parseFromJSON(cJSON *routeJSON);

cJSON *route_convertToJSON(route_t *route);

#endif /* _route_H_ */

