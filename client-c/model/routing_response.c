#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "routing_response.h"



static routing_response_t *routing_response_create_internal(
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
    ) {
    routing_response_t *routing_response_local_var = malloc(sizeof(routing_response_t));
    if (!routing_response_local_var) {
        return NULL;
    }
    routing_response_local_var->valid = valid;
    routing_response_local_var->message = message;
    routing_response_local_var->version = version;
    routing_response_local_var->serialize_nulls = serialize_nulls;
    routing_response_local_var->start_time_log = start_time_log;
    routing_response_local_var->error_code = error_code;
    routing_response_local_var->request = request;
    routing_response_local_var->items = items;
    routing_response_local_var->vehicles = vehicles;
    routing_response_local_var->drivers = drivers;
    routing_response_local_var->config = config;
    routing_response_local_var->error = error;
    routing_response_local_var->debug = debug;
    routing_response_local_var->start_time = start_time;
    routing_response_local_var->end_time = end_time;
    routing_response_local_var->responses = responses;
    routing_response_local_var->orignal_request = orignal_request;
    routing_response_local_var->generated = generated;
    routing_response_local_var->itineraries = itineraries;
    routing_response_local_var->score = score;
    routing_response_local_var->load_size = load_size;
    routing_response_local_var->runtime = runtime;
    routing_response_local_var->earliest_pickup_window = earliest_pickup_window;
    routing_response_local_var->latest_pickup_window = latest_pickup_window;
    routing_response_local_var->returning = returning;

    routing_response_local_var->_library_owned = 1;
    return routing_response_local_var;
}

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
    ) {
    return routing_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        items,
        vehicles,
        drivers,
        config,
        error,
        debug,
        start_time,
        end_time,
        responses,
        orignal_request,
        generated,
        itineraries,
        score,
        load_size,
        runtime,
        earliest_pickup_window,
        latest_pickup_window,
        returning
        );
}

void routing_response_free(routing_response_t *routing_response) {
    if(NULL == routing_response){
        return ;
    }
    if(routing_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "routing_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (routing_response->message) {
        free(routing_response->message);
        routing_response->message = NULL;
    }
    if (routing_response->error_code) {
        free(routing_response->error_code);
        routing_response->error_code = NULL;
    }
    if (routing_response->request) {
        list_ForEach(listEntry, routing_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(routing_response->request);
        routing_response->request = NULL;
    }
    if (routing_response->items) {
        list_ForEach(listEntry, routing_response->items) {
            load_response_free(listEntry->data);
        }
        list_freeList(routing_response->items);
        routing_response->items = NULL;
    }
    if (routing_response->vehicles) {
        list_ForEach(listEntry, routing_response->vehicles) {
            vehicle_response_free(listEntry->data);
        }
        list_freeList(routing_response->vehicles);
        routing_response->vehicles = NULL;
    }
    if (routing_response->drivers) {
        list_ForEach(listEntry, routing_response->drivers) {
            driver_response_free(listEntry->data);
        }
        list_freeList(routing_response->drivers);
        routing_response->drivers = NULL;
    }
    if (routing_response->config) {
        config_routing_request_free(routing_response->config);
        routing_response->config = NULL;
    }
    if (routing_response->error) {
        free(routing_response->error);
        routing_response->error = NULL;
    }
    if (routing_response->debug) {
        list_ForEach(listEntry, routing_response->debug) {
            free(listEntry->data);
        }
        list_freeList(routing_response->debug);
        routing_response->debug = NULL;
    }
    if (routing_response->start_time) {
        free(routing_response->start_time);
        routing_response->start_time = NULL;
    }
    if (routing_response->end_time) {
        free(routing_response->end_time);
        routing_response->end_time = NULL;
    }
    if (routing_response->responses) {
        list_ForEach(listEntry, routing_response->responses) {
            routing_response_free(listEntry->data);
        }
        list_freeList(routing_response->responses);
        routing_response->responses = NULL;
    }
    if (routing_response->orignal_request) {
        free(routing_response->orignal_request);
        routing_response->orignal_request = NULL;
    }
    if (routing_response->itineraries) {
        list_ForEach(listEntry, routing_response->itineraries) {
            itinerary_response_free(listEntry->data);
        }
        list_freeList(routing_response->itineraries);
        routing_response->itineraries = NULL;
    }
    if (routing_response->returning) {
        free(routing_response->returning);
        routing_response->returning = NULL;
    }
    free(routing_response);
}

cJSON *routing_response_convertToJSON(routing_response_t *routing_response) {
    cJSON *item = cJSON_CreateObject();

    // routing_response->valid
    if(routing_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", routing_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // routing_response->message
    if(routing_response->message) {
    if(cJSON_AddStringToObject(item, "message", routing_response->message) == NULL) {
    goto fail; //String
    }
    }


    // routing_response->version
    if(routing_response->version) {
    if(cJSON_AddNumberToObject(item, "version", routing_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_response->serialize_nulls
    if(routing_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", routing_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // routing_response->start_time_log
    if(routing_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", routing_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_response->error_code
    if(routing_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", routing_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // routing_response->request
    if(routing_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (routing_response->request) {
    list_ForEach(requestListEntry, routing_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // routing_response->items
    if(routing_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (routing_response->items) {
    list_ForEach(itemsListEntry, routing_response->items) {
    cJSON *itemLocal = load_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // routing_response->vehicles
    if(routing_response->vehicles) {
    cJSON *vehicles = cJSON_AddArrayToObject(item, "vehicles");
    if(vehicles == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *vehiclesListEntry;
    if (routing_response->vehicles) {
    list_ForEach(vehiclesListEntry, routing_response->vehicles) {
    cJSON *itemLocal = vehicle_response_convertToJSON(vehiclesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(vehicles, itemLocal);
    }
    }
    }


    // routing_response->drivers
    if(routing_response->drivers) {
    cJSON *drivers = cJSON_AddArrayToObject(item, "drivers");
    if(drivers == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *driversListEntry;
    if (routing_response->drivers) {
    list_ForEach(driversListEntry, routing_response->drivers) {
    cJSON *itemLocal = driver_response_convertToJSON(driversListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(drivers, itemLocal);
    }
    }
    }


    // routing_response->config
    if(routing_response->config) {
    cJSON *config_local_JSON = config_routing_request_convertToJSON(routing_response->config);
    if(config_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "config", config_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // routing_response->error
    if(routing_response->error) {
    if(cJSON_AddStringToObject(item, "error", routing_response->error) == NULL) {
    goto fail; //String
    }
    }


    // routing_response->debug
    if(routing_response->debug) {
    cJSON *debug = cJSON_AddArrayToObject(item, "debug");
    if(debug == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *debugListEntry;
    list_ForEach(debugListEntry, routing_response->debug) {
    if(cJSON_AddStringToObject(debug, "", debugListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // routing_response->start_time
    if(routing_response->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", routing_response->start_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // routing_response->end_time
    if(routing_response->end_time) {
    if(cJSON_AddStringToObject(item, "endTime", routing_response->end_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // routing_response->responses
    if(routing_response->responses) {
    cJSON *responses = cJSON_AddArrayToObject(item, "responses");
    if(responses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *responsesListEntry;
    if (routing_response->responses) {
    list_ForEach(responsesListEntry, routing_response->responses) {
    cJSON *itemLocal = routing_response_convertToJSON(responsesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(responses, itemLocal);
    }
    }
    }


    // routing_response->orignal_request
    if(routing_response->orignal_request) {
    if(cJSON_AddStringToObject(item, "orignalRequest", routing_response->orignal_request) == NULL) {
    goto fail; //String
    }
    }


    // routing_response->generated
    if(routing_response->generated) {
    if(cJSON_AddBoolToObject(item, "generated", routing_response->generated) == NULL) {
    goto fail; //Bool
    }
    }


    // routing_response->itineraries
    if(routing_response->itineraries) {
    cJSON *itineraries = cJSON_AddArrayToObject(item, "itineraries");
    if(itineraries == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itinerariesListEntry;
    if (routing_response->itineraries) {
    list_ForEach(itinerariesListEntry, routing_response->itineraries) {
    cJSON *itemLocal = itinerary_response_convertToJSON(itinerariesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(itineraries, itemLocal);
    }
    }
    }


    // routing_response->score
    if(routing_response->score) {
    if(cJSON_AddNumberToObject(item, "score", routing_response->score) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_response->load_size
    if(routing_response->load_size) {
    if(cJSON_AddNumberToObject(item, "loadSize", routing_response->load_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_response->runtime
    if(routing_response->runtime) {
    if(cJSON_AddNumberToObject(item, "runtime", routing_response->runtime) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_response->earliest_pickup_window
    if(routing_response->earliest_pickup_window) {
    if(cJSON_AddNumberToObject(item, "earliestPickupWindow", routing_response->earliest_pickup_window) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_response->latest_pickup_window
    if(routing_response->latest_pickup_window) {
    if(cJSON_AddNumberToObject(item, "latestPickupWindow", routing_response->latest_pickup_window) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_response->returning
    if(routing_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", routing_response->returning) == NULL) {
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

routing_response_t *routing_response_parseFromJSON(cJSON *routing_responseJSON){

    routing_response_t *routing_response_local_var = NULL;

    // define the local list for routing_response->request
    list_t *requestList = NULL;

    // define the local list for routing_response->items
    list_t *itemsList = NULL;

    // define the local list for routing_response->vehicles
    list_t *vehiclesList = NULL;

    // define the local list for routing_response->drivers
    list_t *driversList = NULL;

    // define the local variable for routing_response->config
    config_routing_request_t *config_local_nonprim = NULL;

    // define the local list for routing_response->debug
    list_t *debugList = NULL;

    // define the local list for routing_response->responses
    list_t *responsesList = NULL;

    // define the local list for routing_response->itineraries
    list_t *itinerariesList = NULL;

    // routing_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // routing_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // routing_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // routing_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // routing_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // routing_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // routing_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }

    // routing_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        load_response_t *itemsItem = load_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // routing_response->vehicles
    cJSON *vehicles = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "vehicles");
    if (cJSON_IsNull(vehicles)) {
        vehicles = NULL;
    }
    if (vehicles) { 
    cJSON *vehicles_local_nonprimitive = NULL;
    if(!cJSON_IsArray(vehicles)){
        goto end; //nonprimitive container
    }

    vehiclesList = list_createList();

    cJSON_ArrayForEach(vehicles_local_nonprimitive,vehicles )
    {
        if(!cJSON_IsObject(vehicles_local_nonprimitive)){
            goto end;
        }
        vehicle_response_t *vehiclesItem = vehicle_response_parseFromJSON(vehicles_local_nonprimitive);

        list_addElement(vehiclesList, vehiclesItem);
    }
    }

    // routing_response->drivers
    cJSON *drivers = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "drivers");
    if (cJSON_IsNull(drivers)) {
        drivers = NULL;
    }
    if (drivers) { 
    cJSON *drivers_local_nonprimitive = NULL;
    if(!cJSON_IsArray(drivers)){
        goto end; //nonprimitive container
    }

    driversList = list_createList();

    cJSON_ArrayForEach(drivers_local_nonprimitive,drivers )
    {
        if(!cJSON_IsObject(drivers_local_nonprimitive)){
            goto end;
        }
        driver_response_t *driversItem = driver_response_parseFromJSON(drivers_local_nonprimitive);

        list_addElement(driversList, driversItem);
    }
    }

    // routing_response->config
    cJSON *config = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "config");
    if (cJSON_IsNull(config)) {
        config = NULL;
    }
    if (config) { 
    config_local_nonprim = config_routing_request_parseFromJSON(config); //nonprimitive
    }

    // routing_response->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "error");
    if (cJSON_IsNull(error)) {
        error = NULL;
    }
    if (error) { 
    if(!cJSON_IsString(error) && !cJSON_IsNull(error))
    {
    goto end; //String
    }
    }

    // routing_response->debug
    cJSON *debug = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "debug");
    if (cJSON_IsNull(debug)) {
        debug = NULL;
    }
    if (debug) { 
    cJSON *debug_local = NULL;
    if(!cJSON_IsArray(debug)) {
        goto end;//primitive container
    }
    debugList = list_createList();

    cJSON_ArrayForEach(debug_local, debug)
    {
        if(!cJSON_IsString(debug_local))
        {
            goto end;
        }
        list_addElement(debugList , strdup(debug_local->valuestring));
    }
    }

    // routing_response->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //DateTime
    }
    }

    // routing_response->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "endTime");
    if (cJSON_IsNull(end_time)) {
        end_time = NULL;
    }
    if (end_time) { 
    if(!cJSON_IsString(end_time) && !cJSON_IsNull(end_time))
    {
    goto end; //DateTime
    }
    }

    // routing_response->responses
    cJSON *responses = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "responses");
    if (cJSON_IsNull(responses)) {
        responses = NULL;
    }
    if (responses) { 
    cJSON *responses_local_nonprimitive = NULL;
    if(!cJSON_IsArray(responses)){
        goto end; //nonprimitive container
    }

    responsesList = list_createList();

    cJSON_ArrayForEach(responses_local_nonprimitive,responses )
    {
        if(!cJSON_IsObject(responses_local_nonprimitive)){
            goto end;
        }
        routing_response_t *responsesItem = routing_response_parseFromJSON(responses_local_nonprimitive);

        list_addElement(responsesList, responsesItem);
    }
    }

    // routing_response->orignal_request
    cJSON *orignal_request = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "orignalRequest");
    if (cJSON_IsNull(orignal_request)) {
        orignal_request = NULL;
    }
    if (orignal_request) { 
    if(!cJSON_IsString(orignal_request) && !cJSON_IsNull(orignal_request))
    {
    goto end; //String
    }
    }

    // routing_response->generated
    cJSON *generated = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "generated");
    if (cJSON_IsNull(generated)) {
        generated = NULL;
    }
    if (generated) { 
    if(!cJSON_IsBool(generated))
    {
    goto end; //Bool
    }
    }

    // routing_response->itineraries
    cJSON *itineraries = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "itineraries");
    if (cJSON_IsNull(itineraries)) {
        itineraries = NULL;
    }
    if (itineraries) { 
    cJSON *itineraries_local_nonprimitive = NULL;
    if(!cJSON_IsArray(itineraries)){
        goto end; //nonprimitive container
    }

    itinerariesList = list_createList();

    cJSON_ArrayForEach(itineraries_local_nonprimitive,itineraries )
    {
        if(!cJSON_IsObject(itineraries_local_nonprimitive)){
            goto end;
        }
        itinerary_response_t *itinerariesItem = itinerary_response_parseFromJSON(itineraries_local_nonprimitive);

        list_addElement(itinerariesList, itinerariesItem);
    }
    }

    // routing_response->score
    cJSON *score = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "score");
    if (cJSON_IsNull(score)) {
        score = NULL;
    }
    if (score) { 
    if(!cJSON_IsNumber(score))
    {
    goto end; //Numeric
    }
    }

    // routing_response->load_size
    cJSON *load_size = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "loadSize");
    if (cJSON_IsNull(load_size)) {
        load_size = NULL;
    }
    if (load_size) { 
    if(!cJSON_IsNumber(load_size))
    {
    goto end; //Numeric
    }
    }

    // routing_response->runtime
    cJSON *runtime = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "runtime");
    if (cJSON_IsNull(runtime)) {
        runtime = NULL;
    }
    if (runtime) { 
    if(!cJSON_IsNumber(runtime))
    {
    goto end; //Numeric
    }
    }

    // routing_response->earliest_pickup_window
    cJSON *earliest_pickup_window = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "earliestPickupWindow");
    if (cJSON_IsNull(earliest_pickup_window)) {
        earliest_pickup_window = NULL;
    }
    if (earliest_pickup_window) { 
    if(!cJSON_IsNumber(earliest_pickup_window))
    {
    goto end; //Numeric
    }
    }

    // routing_response->latest_pickup_window
    cJSON *latest_pickup_window = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "latestPickupWindow");
    if (cJSON_IsNull(latest_pickup_window)) {
        latest_pickup_window = NULL;
    }
    if (latest_pickup_window) { 
    if(!cJSON_IsNumber(latest_pickup_window))
    {
    goto end; //Numeric
    }
    }

    // routing_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(routing_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    routing_response_local_var = routing_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        items ? itemsList : NULL,
        vehicles ? vehiclesList : NULL,
        drivers ? driversList : NULL,
        config ? config_local_nonprim : NULL,
        error && !cJSON_IsNull(error) ? strdup(error->valuestring) : NULL,
        debug ? debugList : NULL,
        start_time && !cJSON_IsNull(start_time) ? strdup(start_time->valuestring) : NULL,
        end_time && !cJSON_IsNull(end_time) ? strdup(end_time->valuestring) : NULL,
        responses ? responsesList : NULL,
        orignal_request && !cJSON_IsNull(orignal_request) ? strdup(orignal_request->valuestring) : NULL,
        generated ? generated->valueint : 0,
        itineraries ? itinerariesList : NULL,
        score ? score->valuedouble : 0,
        load_size ? load_size->valuedouble : 0,
        runtime ? runtime->valuedouble : 0,
        earliest_pickup_window ? earliest_pickup_window->valuedouble : 0,
        latest_pickup_window ? latest_pickup_window->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return routing_response_local_var;
end:
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            load_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    if (vehiclesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, vehiclesList) {
            vehicle_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(vehiclesList);
        vehiclesList = NULL;
    }
    if (driversList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, driversList) {
            driver_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(driversList);
        driversList = NULL;
    }
    if (config_local_nonprim) {
        config_routing_request_free(config_local_nonprim);
        config_local_nonprim = NULL;
    }
    if (debugList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, debugList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(debugList);
        debugList = NULL;
    }
    if (responsesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, responsesList) {
            routing_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(responsesList);
        responsesList = NULL;
    }
    if (itinerariesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itinerariesList) {
            itinerary_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itinerariesList);
        itinerariesList = NULL;
    }
    return NULL;

}
