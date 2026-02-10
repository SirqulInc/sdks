#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "route.h"



static route_t *route_create_internal(
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
    ) {
    route_t *route_local_var = malloc(sizeof(route_t));
    if (!route_local_var) {
        return NULL;
    }
    route_local_var->id = id;
    route_local_var->active = active;
    route_local_var->valid = valid;
    route_local_var->name = name;
    route_local_var->external_id = external_id;
    route_local_var->hub = hub;
    route_local_var->program = program;
    route_local_var->zone = zone;
    route_local_var->vehicle = vehicle;
    route_local_var->driver = driver;
    route_local_var->concierge = concierge;
    route_local_var->scheduled = scheduled;
    route_local_var->approved = approved;
    route_local_var->started = started;
    route_local_var->completed = completed;
    route_local_var->total_distance = total_distance;
    route_local_var->total_time = total_time;
    route_local_var->estimated_distance = estimated_distance;
    route_local_var->estimated_time = estimated_time;
    route_local_var->start_stop = start_stop;
    route_local_var->end_stop = end_stop;
    route_local_var->stops = stops;
    route_local_var->shipments = shipments;
    route_local_var->all_shipments_confirmed = all_shipments_confirmed;
    route_local_var->shipment_order_count = shipment_order_count;
    route_local_var->polyline = polyline;
    route_local_var->notes = notes;
    route_local_var->note_count = note_count;
    route_local_var->glympse_token = glympse_token;
    route_local_var->enable_optimization = enable_optimization;
    route_local_var->optimized_date = optimized_date;
    route_local_var->optimization_started = optimization_started;
    route_local_var->optimization_completed = optimization_completed;
    route_local_var->featured = featured;
    route_local_var->image = image;
    route_local_var->parent = parent;
    route_local_var->content_name = content_name;

    route_local_var->_library_owned = 1;
    return route_local_var;
}

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
    ) {
    return route_create_internal (
        id,
        active,
        valid,
        name,
        external_id,
        hub,
        program,
        zone,
        vehicle,
        driver,
        concierge,
        scheduled,
        approved,
        started,
        completed,
        total_distance,
        total_time,
        estimated_distance,
        estimated_time,
        start_stop,
        end_stop,
        stops,
        shipments,
        all_shipments_confirmed,
        shipment_order_count,
        polyline,
        notes,
        note_count,
        glympse_token,
        enable_optimization,
        optimized_date,
        optimization_started,
        optimization_completed,
        featured,
        image,
        parent,
        content_name
        );
}

void route_free(route_t *route) {
    if(NULL == route){
        return ;
    }
    if(route->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "route_free");
        return ;
    }
    listEntry_t *listEntry;
    if (route->name) {
        free(route->name);
        route->name = NULL;
    }
    if (route->external_id) {
        free(route->external_id);
        route->external_id = NULL;
    }
    if (route->hub) {
        service_hub_free(route->hub);
        route->hub = NULL;
    }
    if (route->program) {
        program_free(route->program);
        route->program = NULL;
    }
    if (route->zone) {
        region_free(route->zone);
        route->zone = NULL;
    }
    if (route->vehicle) {
        vehicle_free(route->vehicle);
        route->vehicle = NULL;
    }
    if (route->driver) {
        account_free(route->driver);
        route->driver = NULL;
    }
    if (route->concierge) {
        account_free(route->concierge);
        route->concierge = NULL;
    }
    if (route->scheduled) {
        free(route->scheduled);
        route->scheduled = NULL;
    }
    if (route->approved) {
        free(route->approved);
        route->approved = NULL;
    }
    if (route->started) {
        free(route->started);
        route->started = NULL;
    }
    if (route->completed) {
        free(route->completed);
        route->completed = NULL;
    }
    if (route->start_stop) {
        stop_free(route->start_stop);
        route->start_stop = NULL;
    }
    if (route->end_stop) {
        stop_free(route->end_stop);
        route->end_stop = NULL;
    }
    if (route->stops) {
        list_ForEach(listEntry, route->stops) {
            stop_free(listEntry->data);
        }
        list_freeList(route->stops);
        route->stops = NULL;
    }
    if (route->shipments) {
        list_ForEach(listEntry, route->shipments) {
            shipment_free(listEntry->data);
        }
        list_freeList(route->shipments);
        route->shipments = NULL;
    }
    if (route->polyline) {
        free(route->polyline);
        route->polyline = NULL;
    }
    if (route->notes) {
        list_ForEach(listEntry, route->notes) {
            note_free(listEntry->data);
        }
        list_freeList(route->notes);
        route->notes = NULL;
    }
    if (route->glympse_token) {
        free(route->glympse_token);
        route->glympse_token = NULL;
    }
    if (route->optimized_date) {
        free(route->optimized_date);
        route->optimized_date = NULL;
    }
    if (route->optimization_started) {
        free(route->optimization_started);
        route->optimization_started = NULL;
    }
    if (route->optimization_completed) {
        free(route->optimization_completed);
        route->optimization_completed = NULL;
    }
    if (route->image) {
        asset_free(route->image);
        route->image = NULL;
    }
    if (route->parent) {
        route_free(route->parent);
        route->parent = NULL;
    }
    if (route->content_name) {
        free(route->content_name);
        route->content_name = NULL;
    }
    free(route);
}

cJSON *route_convertToJSON(route_t *route) {
    cJSON *item = cJSON_CreateObject();

    // route->id
    if(route->id) {
    if(cJSON_AddNumberToObject(item, "id", route->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // route->active
    if(route->active) {
    if(cJSON_AddBoolToObject(item, "active", route->active) == NULL) {
    goto fail; //Bool
    }
    }


    // route->valid
    if(route->valid) {
    if(cJSON_AddBoolToObject(item, "valid", route->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // route->name
    if(route->name) {
    if(cJSON_AddStringToObject(item, "name", route->name) == NULL) {
    goto fail; //String
    }
    }


    // route->external_id
    if(route->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", route->external_id) == NULL) {
    goto fail; //String
    }
    }


    // route->hub
    if(route->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(route->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->program
    if(route->program) {
    cJSON *program_local_JSON = program_convertToJSON(route->program);
    if(program_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "program", program_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->zone
    if(route->zone) {
    cJSON *zone_local_JSON = region_convertToJSON(route->zone);
    if(zone_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "zone", zone_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->vehicle
    if(route->vehicle) {
    cJSON *vehicle_local_JSON = vehicle_convertToJSON(route->vehicle);
    if(vehicle_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "vehicle", vehicle_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->driver
    if(route->driver) {
    cJSON *driver_local_JSON = account_convertToJSON(route->driver);
    if(driver_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "driver", driver_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->concierge
    if(route->concierge) {
    cJSON *concierge_local_JSON = account_convertToJSON(route->concierge);
    if(concierge_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "concierge", concierge_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->scheduled
    if(route->scheduled) {
    if(cJSON_AddStringToObject(item, "scheduled", route->scheduled) == NULL) {
    goto fail; //Date-Time
    }
    }


    // route->approved
    if(route->approved) {
    if(cJSON_AddStringToObject(item, "approved", route->approved) == NULL) {
    goto fail; //Date-Time
    }
    }


    // route->started
    if(route->started) {
    if(cJSON_AddStringToObject(item, "started", route->started) == NULL) {
    goto fail; //Date-Time
    }
    }


    // route->completed
    if(route->completed) {
    if(cJSON_AddStringToObject(item, "completed", route->completed) == NULL) {
    goto fail; //Date-Time
    }
    }


    // route->total_distance
    if(route->total_distance) {
    if(cJSON_AddNumberToObject(item, "totalDistance", route->total_distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // route->total_time
    if(route->total_time) {
    if(cJSON_AddNumberToObject(item, "totalTime", route->total_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // route->estimated_distance
    if(route->estimated_distance) {
    if(cJSON_AddNumberToObject(item, "estimatedDistance", route->estimated_distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // route->estimated_time
    if(route->estimated_time) {
    if(cJSON_AddNumberToObject(item, "estimatedTime", route->estimated_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // route->start_stop
    if(route->start_stop) {
    cJSON *start_stop_local_JSON = stop_convertToJSON(route->start_stop);
    if(start_stop_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "startStop", start_stop_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->end_stop
    if(route->end_stop) {
    cJSON *end_stop_local_JSON = stop_convertToJSON(route->end_stop);
    if(end_stop_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "endStop", end_stop_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->stops
    if(route->stops) {
    cJSON *stops = cJSON_AddArrayToObject(item, "stops");
    if(stops == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *stopsListEntry;
    if (route->stops) {
    list_ForEach(stopsListEntry, route->stops) {
    cJSON *itemLocal = stop_convertToJSON(stopsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(stops, itemLocal);
    }
    }
    }


    // route->shipments
    if(route->shipments) {
    cJSON *shipments = cJSON_AddArrayToObject(item, "shipments");
    if(shipments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *shipmentsListEntry;
    if (route->shipments) {
    list_ForEach(shipmentsListEntry, route->shipments) {
    cJSON *itemLocal = shipment_convertToJSON(shipmentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(shipments, itemLocal);
    }
    }
    }


    // route->all_shipments_confirmed
    if(route->all_shipments_confirmed) {
    if(cJSON_AddBoolToObject(item, "allShipmentsConfirmed", route->all_shipments_confirmed) == NULL) {
    goto fail; //Bool
    }
    }


    // route->shipment_order_count
    if(route->shipment_order_count) {
    if(cJSON_AddNumberToObject(item, "shipmentOrderCount", route->shipment_order_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // route->polyline
    if(route->polyline) {
    if(cJSON_AddStringToObject(item, "polyline", route->polyline) == NULL) {
    goto fail; //String
    }
    }


    // route->notes
    if(route->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (route->notes) {
    list_ForEach(notesListEntry, route->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // route->note_count
    if(route->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", route->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // route->glympse_token
    if(route->glympse_token) {
    if(cJSON_AddStringToObject(item, "glympseToken", route->glympse_token) == NULL) {
    goto fail; //String
    }
    }


    // route->enable_optimization
    if(route->enable_optimization) {
    if(cJSON_AddBoolToObject(item, "enableOptimization", route->enable_optimization) == NULL) {
    goto fail; //Bool
    }
    }


    // route->optimized_date
    if(route->optimized_date) {
    if(cJSON_AddStringToObject(item, "optimizedDate", route->optimized_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // route->optimization_started
    if(route->optimization_started) {
    if(cJSON_AddStringToObject(item, "optimizationStarted", route->optimization_started) == NULL) {
    goto fail; //Date-Time
    }
    }


    // route->optimization_completed
    if(route->optimization_completed) {
    if(cJSON_AddStringToObject(item, "optimizationCompleted", route->optimization_completed) == NULL) {
    goto fail; //Date-Time
    }
    }


    // route->featured
    if(route->featured) {
    if(cJSON_AddBoolToObject(item, "featured", route->featured) == NULL) {
    goto fail; //Bool
    }
    }


    // route->image
    if(route->image) {
    cJSON *image_local_JSON = asset_convertToJSON(route->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->parent
    if(route->parent) {
    cJSON *parent_local_JSON = route_convertToJSON(route->parent);
    if(parent_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parent", parent_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route->content_name
    if(route->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", route->content_name) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

route_t *route_parseFromJSON(cJSON *routeJSON){

    route_t *route_local_var = NULL;

    // define the local variable for route->hub
    service_hub_t *hub_local_nonprim = NULL;

    // define the local variable for route->program
    program_t *program_local_nonprim = NULL;

    // define the local variable for route->zone
    region_t *zone_local_nonprim = NULL;

    // define the local variable for route->vehicle
    vehicle_t *vehicle_local_nonprim = NULL;

    // define the local variable for route->driver
    account_t *driver_local_nonprim = NULL;

    // define the local variable for route->concierge
    account_t *concierge_local_nonprim = NULL;

    // define the local variable for route->start_stop
    stop_t *start_stop_local_nonprim = NULL;

    // define the local variable for route->end_stop
    stop_t *end_stop_local_nonprim = NULL;

    // define the local list for route->stops
    list_t *stopsList = NULL;

    // define the local list for route->shipments
    list_t *shipmentsList = NULL;

    // define the local list for route->notes
    list_t *notesList = NULL;

    // define the local variable for route->image
    asset_t *image_local_nonprim = NULL;

    // define the local variable for route->parent
    route_t *parent_local_nonprim = NULL;

    // route->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(routeJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // route->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(routeJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // route->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(routeJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // route->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(routeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // route->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(routeJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // route->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(routeJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }

    // route->program
    cJSON *program = cJSON_GetObjectItemCaseSensitive(routeJSON, "program");
    if (cJSON_IsNull(program)) {
        program = NULL;
    }
    if (program) { 
    program_local_nonprim = program_parseFromJSON(program); //nonprimitive
    }

    // route->zone
    cJSON *zone = cJSON_GetObjectItemCaseSensitive(routeJSON, "zone");
    if (cJSON_IsNull(zone)) {
        zone = NULL;
    }
    if (zone) { 
    zone_local_nonprim = region_parseFromJSON(zone); //nonprimitive
    }

    // route->vehicle
    cJSON *vehicle = cJSON_GetObjectItemCaseSensitive(routeJSON, "vehicle");
    if (cJSON_IsNull(vehicle)) {
        vehicle = NULL;
    }
    if (vehicle) { 
    vehicle_local_nonprim = vehicle_parseFromJSON(vehicle); //nonprimitive
    }

    // route->driver
    cJSON *driver = cJSON_GetObjectItemCaseSensitive(routeJSON, "driver");
    if (cJSON_IsNull(driver)) {
        driver = NULL;
    }
    if (driver) { 
    driver_local_nonprim = account_parseFromJSON(driver); //nonprimitive
    }

    // route->concierge
    cJSON *concierge = cJSON_GetObjectItemCaseSensitive(routeJSON, "concierge");
    if (cJSON_IsNull(concierge)) {
        concierge = NULL;
    }
    if (concierge) { 
    concierge_local_nonprim = account_parseFromJSON(concierge); //nonprimitive
    }

    // route->scheduled
    cJSON *scheduled = cJSON_GetObjectItemCaseSensitive(routeJSON, "scheduled");
    if (cJSON_IsNull(scheduled)) {
        scheduled = NULL;
    }
    if (scheduled) { 
    if(!cJSON_IsString(scheduled) && !cJSON_IsNull(scheduled))
    {
    goto end; //DateTime
    }
    }

    // route->approved
    cJSON *approved = cJSON_GetObjectItemCaseSensitive(routeJSON, "approved");
    if (cJSON_IsNull(approved)) {
        approved = NULL;
    }
    if (approved) { 
    if(!cJSON_IsString(approved) && !cJSON_IsNull(approved))
    {
    goto end; //DateTime
    }
    }

    // route->started
    cJSON *started = cJSON_GetObjectItemCaseSensitive(routeJSON, "started");
    if (cJSON_IsNull(started)) {
        started = NULL;
    }
    if (started) { 
    if(!cJSON_IsString(started) && !cJSON_IsNull(started))
    {
    goto end; //DateTime
    }
    }

    // route->completed
    cJSON *completed = cJSON_GetObjectItemCaseSensitive(routeJSON, "completed");
    if (cJSON_IsNull(completed)) {
        completed = NULL;
    }
    if (completed) { 
    if(!cJSON_IsString(completed) && !cJSON_IsNull(completed))
    {
    goto end; //DateTime
    }
    }

    // route->total_distance
    cJSON *total_distance = cJSON_GetObjectItemCaseSensitive(routeJSON, "totalDistance");
    if (cJSON_IsNull(total_distance)) {
        total_distance = NULL;
    }
    if (total_distance) { 
    if(!cJSON_IsNumber(total_distance))
    {
    goto end; //Numeric
    }
    }

    // route->total_time
    cJSON *total_time = cJSON_GetObjectItemCaseSensitive(routeJSON, "totalTime");
    if (cJSON_IsNull(total_time)) {
        total_time = NULL;
    }
    if (total_time) { 
    if(!cJSON_IsNumber(total_time))
    {
    goto end; //Numeric
    }
    }

    // route->estimated_distance
    cJSON *estimated_distance = cJSON_GetObjectItemCaseSensitive(routeJSON, "estimatedDistance");
    if (cJSON_IsNull(estimated_distance)) {
        estimated_distance = NULL;
    }
    if (estimated_distance) { 
    if(!cJSON_IsNumber(estimated_distance))
    {
    goto end; //Numeric
    }
    }

    // route->estimated_time
    cJSON *estimated_time = cJSON_GetObjectItemCaseSensitive(routeJSON, "estimatedTime");
    if (cJSON_IsNull(estimated_time)) {
        estimated_time = NULL;
    }
    if (estimated_time) { 
    if(!cJSON_IsNumber(estimated_time))
    {
    goto end; //Numeric
    }
    }

    // route->start_stop
    cJSON *start_stop = cJSON_GetObjectItemCaseSensitive(routeJSON, "startStop");
    if (cJSON_IsNull(start_stop)) {
        start_stop = NULL;
    }
    if (start_stop) { 
    start_stop_local_nonprim = stop_parseFromJSON(start_stop); //nonprimitive
    }

    // route->end_stop
    cJSON *end_stop = cJSON_GetObjectItemCaseSensitive(routeJSON, "endStop");
    if (cJSON_IsNull(end_stop)) {
        end_stop = NULL;
    }
    if (end_stop) { 
    end_stop_local_nonprim = stop_parseFromJSON(end_stop); //nonprimitive
    }

    // route->stops
    cJSON *stops = cJSON_GetObjectItemCaseSensitive(routeJSON, "stops");
    if (cJSON_IsNull(stops)) {
        stops = NULL;
    }
    if (stops) { 
    cJSON *stops_local_nonprimitive = NULL;
    if(!cJSON_IsArray(stops)){
        goto end; //nonprimitive container
    }

    stopsList = list_createList();

    cJSON_ArrayForEach(stops_local_nonprimitive,stops )
    {
        if(!cJSON_IsObject(stops_local_nonprimitive)){
            goto end;
        }
        stop_t *stopsItem = stop_parseFromJSON(stops_local_nonprimitive);

        list_addElement(stopsList, stopsItem);
    }
    }

    // route->shipments
    cJSON *shipments = cJSON_GetObjectItemCaseSensitive(routeJSON, "shipments");
    if (cJSON_IsNull(shipments)) {
        shipments = NULL;
    }
    if (shipments) { 
    cJSON *shipments_local_nonprimitive = NULL;
    if(!cJSON_IsArray(shipments)){
        goto end; //nonprimitive container
    }

    shipmentsList = list_createList();

    cJSON_ArrayForEach(shipments_local_nonprimitive,shipments )
    {
        if(!cJSON_IsObject(shipments_local_nonprimitive)){
            goto end;
        }
        shipment_t *shipmentsItem = shipment_parseFromJSON(shipments_local_nonprimitive);

        list_addElement(shipmentsList, shipmentsItem);
    }
    }

    // route->all_shipments_confirmed
    cJSON *all_shipments_confirmed = cJSON_GetObjectItemCaseSensitive(routeJSON, "allShipmentsConfirmed");
    if (cJSON_IsNull(all_shipments_confirmed)) {
        all_shipments_confirmed = NULL;
    }
    if (all_shipments_confirmed) { 
    if(!cJSON_IsBool(all_shipments_confirmed))
    {
    goto end; //Bool
    }
    }

    // route->shipment_order_count
    cJSON *shipment_order_count = cJSON_GetObjectItemCaseSensitive(routeJSON, "shipmentOrderCount");
    if (cJSON_IsNull(shipment_order_count)) {
        shipment_order_count = NULL;
    }
    if (shipment_order_count) { 
    if(!cJSON_IsNumber(shipment_order_count))
    {
    goto end; //Numeric
    }
    }

    // route->polyline
    cJSON *polyline = cJSON_GetObjectItemCaseSensitive(routeJSON, "polyline");
    if (cJSON_IsNull(polyline)) {
        polyline = NULL;
    }
    if (polyline) { 
    if(!cJSON_IsString(polyline) && !cJSON_IsNull(polyline))
    {
    goto end; //String
    }
    }

    // route->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(routeJSON, "notes");
    if (cJSON_IsNull(notes)) {
        notes = NULL;
    }
    if (notes) { 
    cJSON *notes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(notes)){
        goto end; //nonprimitive container
    }

    notesList = list_createList();

    cJSON_ArrayForEach(notes_local_nonprimitive,notes )
    {
        if(!cJSON_IsObject(notes_local_nonprimitive)){
            goto end;
        }
        note_t *notesItem = note_parseFromJSON(notes_local_nonprimitive);

        list_addElement(notesList, notesItem);
    }
    }

    // route->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(routeJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // route->glympse_token
    cJSON *glympse_token = cJSON_GetObjectItemCaseSensitive(routeJSON, "glympseToken");
    if (cJSON_IsNull(glympse_token)) {
        glympse_token = NULL;
    }
    if (glympse_token) { 
    if(!cJSON_IsString(glympse_token) && !cJSON_IsNull(glympse_token))
    {
    goto end; //String
    }
    }

    // route->enable_optimization
    cJSON *enable_optimization = cJSON_GetObjectItemCaseSensitive(routeJSON, "enableOptimization");
    if (cJSON_IsNull(enable_optimization)) {
        enable_optimization = NULL;
    }
    if (enable_optimization) { 
    if(!cJSON_IsBool(enable_optimization))
    {
    goto end; //Bool
    }
    }

    // route->optimized_date
    cJSON *optimized_date = cJSON_GetObjectItemCaseSensitive(routeJSON, "optimizedDate");
    if (cJSON_IsNull(optimized_date)) {
        optimized_date = NULL;
    }
    if (optimized_date) { 
    if(!cJSON_IsString(optimized_date) && !cJSON_IsNull(optimized_date))
    {
    goto end; //DateTime
    }
    }

    // route->optimization_started
    cJSON *optimization_started = cJSON_GetObjectItemCaseSensitive(routeJSON, "optimizationStarted");
    if (cJSON_IsNull(optimization_started)) {
        optimization_started = NULL;
    }
    if (optimization_started) { 
    if(!cJSON_IsString(optimization_started) && !cJSON_IsNull(optimization_started))
    {
    goto end; //DateTime
    }
    }

    // route->optimization_completed
    cJSON *optimization_completed = cJSON_GetObjectItemCaseSensitive(routeJSON, "optimizationCompleted");
    if (cJSON_IsNull(optimization_completed)) {
        optimization_completed = NULL;
    }
    if (optimization_completed) { 
    if(!cJSON_IsString(optimization_completed) && !cJSON_IsNull(optimization_completed))
    {
    goto end; //DateTime
    }
    }

    // route->featured
    cJSON *featured = cJSON_GetObjectItemCaseSensitive(routeJSON, "featured");
    if (cJSON_IsNull(featured)) {
        featured = NULL;
    }
    if (featured) { 
    if(!cJSON_IsBool(featured))
    {
    goto end; //Bool
    }
    }

    // route->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(routeJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }

    // route->parent
    cJSON *parent = cJSON_GetObjectItemCaseSensitive(routeJSON, "parent");
    if (cJSON_IsNull(parent)) {
        parent = NULL;
    }
    if (parent) { 
    parent_local_nonprim = route_parseFromJSON(parent); //nonprimitive
    }

    // route->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(routeJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }


    route_local_var = route_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        hub ? hub_local_nonprim : NULL,
        program ? program_local_nonprim : NULL,
        zone ? zone_local_nonprim : NULL,
        vehicle ? vehicle_local_nonprim : NULL,
        driver ? driver_local_nonprim : NULL,
        concierge ? concierge_local_nonprim : NULL,
        scheduled && !cJSON_IsNull(scheduled) ? strdup(scheduled->valuestring) : NULL,
        approved && !cJSON_IsNull(approved) ? strdup(approved->valuestring) : NULL,
        started && !cJSON_IsNull(started) ? strdup(started->valuestring) : NULL,
        completed && !cJSON_IsNull(completed) ? strdup(completed->valuestring) : NULL,
        total_distance ? total_distance->valuedouble : 0,
        total_time ? total_time->valuedouble : 0,
        estimated_distance ? estimated_distance->valuedouble : 0,
        estimated_time ? estimated_time->valuedouble : 0,
        start_stop ? start_stop_local_nonprim : NULL,
        end_stop ? end_stop_local_nonprim : NULL,
        stops ? stopsList : NULL,
        shipments ? shipmentsList : NULL,
        all_shipments_confirmed ? all_shipments_confirmed->valueint : 0,
        shipment_order_count ? shipment_order_count->valuedouble : 0,
        polyline && !cJSON_IsNull(polyline) ? strdup(polyline->valuestring) : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        glympse_token && !cJSON_IsNull(glympse_token) ? strdup(glympse_token->valuestring) : NULL,
        enable_optimization ? enable_optimization->valueint : 0,
        optimized_date && !cJSON_IsNull(optimized_date) ? strdup(optimized_date->valuestring) : NULL,
        optimization_started && !cJSON_IsNull(optimization_started) ? strdup(optimization_started->valuestring) : NULL,
        optimization_completed && !cJSON_IsNull(optimization_completed) ? strdup(optimization_completed->valuestring) : NULL,
        featured ? featured->valueint : 0,
        image ? image_local_nonprim : NULL,
        parent ? parent_local_nonprim : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL
        );

    return route_local_var;
end:
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    if (program_local_nonprim) {
        program_free(program_local_nonprim);
        program_local_nonprim = NULL;
    }
    if (zone_local_nonprim) {
        region_free(zone_local_nonprim);
        zone_local_nonprim = NULL;
    }
    if (vehicle_local_nonprim) {
        vehicle_free(vehicle_local_nonprim);
        vehicle_local_nonprim = NULL;
    }
    if (driver_local_nonprim) {
        account_free(driver_local_nonprim);
        driver_local_nonprim = NULL;
    }
    if (concierge_local_nonprim) {
        account_free(concierge_local_nonprim);
        concierge_local_nonprim = NULL;
    }
    if (start_stop_local_nonprim) {
        stop_free(start_stop_local_nonprim);
        start_stop_local_nonprim = NULL;
    }
    if (end_stop_local_nonprim) {
        stop_free(end_stop_local_nonprim);
        end_stop_local_nonprim = NULL;
    }
    if (stopsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, stopsList) {
            stop_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(stopsList);
        stopsList = NULL;
    }
    if (shipmentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, shipmentsList) {
            shipment_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(shipmentsList);
        shipmentsList = NULL;
    }
    if (notesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, notesList) {
            note_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(notesList);
        notesList = NULL;
    }
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (parent_local_nonprim) {
        route_free(parent_local_nonprim);
        parent_local_nonprim = NULL;
    }
    return NULL;

}
