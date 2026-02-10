#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "vehicle_response.h"



static vehicle_response_t *vehicle_response_create_internal(
    char *id,
    char *name,
    long capacity,
    geo_response_t *depot,
    long start_window,
    long end_window,
    geo_response_t *current,
    stop_response_t *depot_as_stop
    ) {
    vehicle_response_t *vehicle_response_local_var = malloc(sizeof(vehicle_response_t));
    if (!vehicle_response_local_var) {
        return NULL;
    }
    vehicle_response_local_var->id = id;
    vehicle_response_local_var->name = name;
    vehicle_response_local_var->capacity = capacity;
    vehicle_response_local_var->depot = depot;
    vehicle_response_local_var->start_window = start_window;
    vehicle_response_local_var->end_window = end_window;
    vehicle_response_local_var->current = current;
    vehicle_response_local_var->depot_as_stop = depot_as_stop;

    vehicle_response_local_var->_library_owned = 1;
    return vehicle_response_local_var;
}

__attribute__((deprecated)) vehicle_response_t *vehicle_response_create(
    char *id,
    char *name,
    long capacity,
    geo_response_t *depot,
    long start_window,
    long end_window,
    geo_response_t *current,
    stop_response_t *depot_as_stop
    ) {
    return vehicle_response_create_internal (
        id,
        name,
        capacity,
        depot,
        start_window,
        end_window,
        current,
        depot_as_stop
        );
}

void vehicle_response_free(vehicle_response_t *vehicle_response) {
    if(NULL == vehicle_response){
        return ;
    }
    if(vehicle_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "vehicle_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (vehicle_response->id) {
        free(vehicle_response->id);
        vehicle_response->id = NULL;
    }
    if (vehicle_response->name) {
        free(vehicle_response->name);
        vehicle_response->name = NULL;
    }
    if (vehicle_response->depot) {
        geo_response_free(vehicle_response->depot);
        vehicle_response->depot = NULL;
    }
    if (vehicle_response->current) {
        geo_response_free(vehicle_response->current);
        vehicle_response->current = NULL;
    }
    if (vehicle_response->depot_as_stop) {
        stop_response_free(vehicle_response->depot_as_stop);
        vehicle_response->depot_as_stop = NULL;
    }
    free(vehicle_response);
}

cJSON *vehicle_response_convertToJSON(vehicle_response_t *vehicle_response) {
    cJSON *item = cJSON_CreateObject();

    // vehicle_response->id
    if(vehicle_response->id) {
    if(cJSON_AddStringToObject(item, "id", vehicle_response->id) == NULL) {
    goto fail; //String
    }
    }


    // vehicle_response->name
    if(vehicle_response->name) {
    if(cJSON_AddStringToObject(item, "name", vehicle_response->name) == NULL) {
    goto fail; //String
    }
    }


    // vehicle_response->capacity
    if(vehicle_response->capacity) {
    if(cJSON_AddNumberToObject(item, "capacity", vehicle_response->capacity) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_response->depot
    if(vehicle_response->depot) {
    cJSON *depot_local_JSON = geo_response_convertToJSON(vehicle_response->depot);
    if(depot_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "depot", depot_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle_response->start_window
    if(vehicle_response->start_window) {
    if(cJSON_AddNumberToObject(item, "startWindow", vehicle_response->start_window) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_response->end_window
    if(vehicle_response->end_window) {
    if(cJSON_AddNumberToObject(item, "endWindow", vehicle_response->end_window) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_response->current
    if(vehicle_response->current) {
    cJSON *current_local_JSON = geo_response_convertToJSON(vehicle_response->current);
    if(current_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "current", current_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle_response->depot_as_stop
    if(vehicle_response->depot_as_stop) {
    cJSON *depot_as_stop_local_JSON = stop_response_convertToJSON(vehicle_response->depot_as_stop);
    if(depot_as_stop_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "depotAsStop", depot_as_stop_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

vehicle_response_t *vehicle_response_parseFromJSON(cJSON *vehicle_responseJSON){

    vehicle_response_t *vehicle_response_local_var = NULL;

    // define the local variable for vehicle_response->depot
    geo_response_t *depot_local_nonprim = NULL;

    // define the local variable for vehicle_response->current
    geo_response_t *current_local_nonprim = NULL;

    // define the local variable for vehicle_response->depot_as_stop
    stop_response_t *depot_as_stop_local_nonprim = NULL;

    // vehicle_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // vehicle_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // vehicle_response->capacity
    cJSON *capacity = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "capacity");
    if (cJSON_IsNull(capacity)) {
        capacity = NULL;
    }
    if (capacity) { 
    if(!cJSON_IsNumber(capacity))
    {
    goto end; //Numeric
    }
    }

    // vehicle_response->depot
    cJSON *depot = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "depot");
    if (cJSON_IsNull(depot)) {
        depot = NULL;
    }
    if (depot) { 
    depot_local_nonprim = geo_response_parseFromJSON(depot); //nonprimitive
    }

    // vehicle_response->start_window
    cJSON *start_window = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "startWindow");
    if (cJSON_IsNull(start_window)) {
        start_window = NULL;
    }
    if (start_window) { 
    if(!cJSON_IsNumber(start_window))
    {
    goto end; //Numeric
    }
    }

    // vehicle_response->end_window
    cJSON *end_window = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "endWindow");
    if (cJSON_IsNull(end_window)) {
        end_window = NULL;
    }
    if (end_window) { 
    if(!cJSON_IsNumber(end_window))
    {
    goto end; //Numeric
    }
    }

    // vehicle_response->current
    cJSON *current = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "current");
    if (cJSON_IsNull(current)) {
        current = NULL;
    }
    if (current) { 
    current_local_nonprim = geo_response_parseFromJSON(current); //nonprimitive
    }

    // vehicle_response->depot_as_stop
    cJSON *depot_as_stop = cJSON_GetObjectItemCaseSensitive(vehicle_responseJSON, "depotAsStop");
    if (cJSON_IsNull(depot_as_stop)) {
        depot_as_stop = NULL;
    }
    if (depot_as_stop) { 
    depot_as_stop_local_nonprim = stop_response_parseFromJSON(depot_as_stop); //nonprimitive
    }


    vehicle_response_local_var = vehicle_response_create_internal (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        capacity ? capacity->valuedouble : 0,
        depot ? depot_local_nonprim : NULL,
        start_window ? start_window->valuedouble : 0,
        end_window ? end_window->valuedouble : 0,
        current ? current_local_nonprim : NULL,
        depot_as_stop ? depot_as_stop_local_nonprim : NULL
        );

    return vehicle_response_local_var;
end:
    if (depot_local_nonprim) {
        geo_response_free(depot_local_nonprim);
        depot_local_nonprim = NULL;
    }
    if (current_local_nonprim) {
        geo_response_free(current_local_nonprim);
        current_local_nonprim = NULL;
    }
    if (depot_as_stop_local_nonprim) {
        stop_response_free(depot_as_stop_local_nonprim);
        depot_as_stop_local_nonprim = NULL;
    }
    return NULL;

}
