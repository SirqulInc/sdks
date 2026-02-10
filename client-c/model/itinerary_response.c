#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "itinerary_response.h"



static itinerary_response_t *itinerary_response_create_internal(
    char *itinerary_id,
    long waypoint_count,
    long score,
    char *error_code,
    char *error,
    int item_count,
    vehicle_response_t *vehicle,
    list_t *stops,
    long estimated_start_time,
    long estimated_end_time,
    long estimated_duration,
    double estimated_distance,
    long wait_time,
    int generated,
    int valid
    ) {
    itinerary_response_t *itinerary_response_local_var = malloc(sizeof(itinerary_response_t));
    if (!itinerary_response_local_var) {
        return NULL;
    }
    itinerary_response_local_var->itinerary_id = itinerary_id;
    itinerary_response_local_var->waypoint_count = waypoint_count;
    itinerary_response_local_var->score = score;
    itinerary_response_local_var->error_code = error_code;
    itinerary_response_local_var->error = error;
    itinerary_response_local_var->item_count = item_count;
    itinerary_response_local_var->vehicle = vehicle;
    itinerary_response_local_var->stops = stops;
    itinerary_response_local_var->estimated_start_time = estimated_start_time;
    itinerary_response_local_var->estimated_end_time = estimated_end_time;
    itinerary_response_local_var->estimated_duration = estimated_duration;
    itinerary_response_local_var->estimated_distance = estimated_distance;
    itinerary_response_local_var->wait_time = wait_time;
    itinerary_response_local_var->generated = generated;
    itinerary_response_local_var->valid = valid;

    itinerary_response_local_var->_library_owned = 1;
    return itinerary_response_local_var;
}

__attribute__((deprecated)) itinerary_response_t *itinerary_response_create(
    char *itinerary_id,
    long waypoint_count,
    long score,
    char *error_code,
    char *error,
    int item_count,
    vehicle_response_t *vehicle,
    list_t *stops,
    long estimated_start_time,
    long estimated_end_time,
    long estimated_duration,
    double estimated_distance,
    long wait_time,
    int generated,
    int valid
    ) {
    return itinerary_response_create_internal (
        itinerary_id,
        waypoint_count,
        score,
        error_code,
        error,
        item_count,
        vehicle,
        stops,
        estimated_start_time,
        estimated_end_time,
        estimated_duration,
        estimated_distance,
        wait_time,
        generated,
        valid
        );
}

void itinerary_response_free(itinerary_response_t *itinerary_response) {
    if(NULL == itinerary_response){
        return ;
    }
    if(itinerary_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "itinerary_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (itinerary_response->itinerary_id) {
        free(itinerary_response->itinerary_id);
        itinerary_response->itinerary_id = NULL;
    }
    if (itinerary_response->error_code) {
        free(itinerary_response->error_code);
        itinerary_response->error_code = NULL;
    }
    if (itinerary_response->error) {
        free(itinerary_response->error);
        itinerary_response->error = NULL;
    }
    if (itinerary_response->vehicle) {
        vehicle_response_free(itinerary_response->vehicle);
        itinerary_response->vehicle = NULL;
    }
    if (itinerary_response->stops) {
        list_ForEach(listEntry, itinerary_response->stops) {
            stop_response_free(listEntry->data);
        }
        list_freeList(itinerary_response->stops);
        itinerary_response->stops = NULL;
    }
    free(itinerary_response);
}

cJSON *itinerary_response_convertToJSON(itinerary_response_t *itinerary_response) {
    cJSON *item = cJSON_CreateObject();

    // itinerary_response->itinerary_id
    if(itinerary_response->itinerary_id) {
    if(cJSON_AddStringToObject(item, "itineraryId", itinerary_response->itinerary_id) == NULL) {
    goto fail; //String
    }
    }


    // itinerary_response->waypoint_count
    if(itinerary_response->waypoint_count) {
    if(cJSON_AddNumberToObject(item, "waypointCount", itinerary_response->waypoint_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->score
    if(itinerary_response->score) {
    if(cJSON_AddNumberToObject(item, "score", itinerary_response->score) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->error_code
    if(itinerary_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", itinerary_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // itinerary_response->error
    if(itinerary_response->error) {
    if(cJSON_AddStringToObject(item, "error", itinerary_response->error) == NULL) {
    goto fail; //String
    }
    }


    // itinerary_response->item_count
    if(itinerary_response->item_count) {
    if(cJSON_AddNumberToObject(item, "itemCount", itinerary_response->item_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->vehicle
    if(itinerary_response->vehicle) {
    cJSON *vehicle_local_JSON = vehicle_response_convertToJSON(itinerary_response->vehicle);
    if(vehicle_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "vehicle", vehicle_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // itinerary_response->stops
    if(itinerary_response->stops) {
    cJSON *stops = cJSON_AddArrayToObject(item, "stops");
    if(stops == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *stopsListEntry;
    if (itinerary_response->stops) {
    list_ForEach(stopsListEntry, itinerary_response->stops) {
    cJSON *itemLocal = stop_response_convertToJSON(stopsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(stops, itemLocal);
    }
    }
    }


    // itinerary_response->estimated_start_time
    if(itinerary_response->estimated_start_time) {
    if(cJSON_AddNumberToObject(item, "estimatedStartTime", itinerary_response->estimated_start_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->estimated_end_time
    if(itinerary_response->estimated_end_time) {
    if(cJSON_AddNumberToObject(item, "estimatedEndTime", itinerary_response->estimated_end_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->estimated_duration
    if(itinerary_response->estimated_duration) {
    if(cJSON_AddNumberToObject(item, "estimatedDuration", itinerary_response->estimated_duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->estimated_distance
    if(itinerary_response->estimated_distance) {
    if(cJSON_AddNumberToObject(item, "estimatedDistance", itinerary_response->estimated_distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->wait_time
    if(itinerary_response->wait_time) {
    if(cJSON_AddNumberToObject(item, "waitTime", itinerary_response->wait_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // itinerary_response->generated
    if(itinerary_response->generated) {
    if(cJSON_AddBoolToObject(item, "generated", itinerary_response->generated) == NULL) {
    goto fail; //Bool
    }
    }


    // itinerary_response->valid
    if(itinerary_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", itinerary_response->valid) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

itinerary_response_t *itinerary_response_parseFromJSON(cJSON *itinerary_responseJSON){

    itinerary_response_t *itinerary_response_local_var = NULL;

    // define the local variable for itinerary_response->vehicle
    vehicle_response_t *vehicle_local_nonprim = NULL;

    // define the local list for itinerary_response->stops
    list_t *stopsList = NULL;

    // itinerary_response->itinerary_id
    cJSON *itinerary_id = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "itineraryId");
    if (cJSON_IsNull(itinerary_id)) {
        itinerary_id = NULL;
    }
    if (itinerary_id) { 
    if(!cJSON_IsString(itinerary_id) && !cJSON_IsNull(itinerary_id))
    {
    goto end; //String
    }
    }

    // itinerary_response->waypoint_count
    cJSON *waypoint_count = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "waypointCount");
    if (cJSON_IsNull(waypoint_count)) {
        waypoint_count = NULL;
    }
    if (waypoint_count) { 
    if(!cJSON_IsNumber(waypoint_count))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->score
    cJSON *score = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "score");
    if (cJSON_IsNull(score)) {
        score = NULL;
    }
    if (score) { 
    if(!cJSON_IsNumber(score))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // itinerary_response->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "error");
    if (cJSON_IsNull(error)) {
        error = NULL;
    }
    if (error) { 
    if(!cJSON_IsString(error) && !cJSON_IsNull(error))
    {
    goto end; //String
    }
    }

    // itinerary_response->item_count
    cJSON *item_count = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "itemCount");
    if (cJSON_IsNull(item_count)) {
        item_count = NULL;
    }
    if (item_count) { 
    if(!cJSON_IsNumber(item_count))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->vehicle
    cJSON *vehicle = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "vehicle");
    if (cJSON_IsNull(vehicle)) {
        vehicle = NULL;
    }
    if (vehicle) { 
    vehicle_local_nonprim = vehicle_response_parseFromJSON(vehicle); //nonprimitive
    }

    // itinerary_response->stops
    cJSON *stops = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "stops");
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
        stop_response_t *stopsItem = stop_response_parseFromJSON(stops_local_nonprimitive);

        list_addElement(stopsList, stopsItem);
    }
    }

    // itinerary_response->estimated_start_time
    cJSON *estimated_start_time = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "estimatedStartTime");
    if (cJSON_IsNull(estimated_start_time)) {
        estimated_start_time = NULL;
    }
    if (estimated_start_time) { 
    if(!cJSON_IsNumber(estimated_start_time))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->estimated_end_time
    cJSON *estimated_end_time = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "estimatedEndTime");
    if (cJSON_IsNull(estimated_end_time)) {
        estimated_end_time = NULL;
    }
    if (estimated_end_time) { 
    if(!cJSON_IsNumber(estimated_end_time))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->estimated_duration
    cJSON *estimated_duration = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "estimatedDuration");
    if (cJSON_IsNull(estimated_duration)) {
        estimated_duration = NULL;
    }
    if (estimated_duration) { 
    if(!cJSON_IsNumber(estimated_duration))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->estimated_distance
    cJSON *estimated_distance = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "estimatedDistance");
    if (cJSON_IsNull(estimated_distance)) {
        estimated_distance = NULL;
    }
    if (estimated_distance) { 
    if(!cJSON_IsNumber(estimated_distance))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->wait_time
    cJSON *wait_time = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "waitTime");
    if (cJSON_IsNull(wait_time)) {
        wait_time = NULL;
    }
    if (wait_time) { 
    if(!cJSON_IsNumber(wait_time))
    {
    goto end; //Numeric
    }
    }

    // itinerary_response->generated
    cJSON *generated = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "generated");
    if (cJSON_IsNull(generated)) {
        generated = NULL;
    }
    if (generated) { 
    if(!cJSON_IsBool(generated))
    {
    goto end; //Bool
    }
    }

    // itinerary_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(itinerary_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }


    itinerary_response_local_var = itinerary_response_create_internal (
        itinerary_id && !cJSON_IsNull(itinerary_id) ? strdup(itinerary_id->valuestring) : NULL,
        waypoint_count ? waypoint_count->valuedouble : 0,
        score ? score->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        error && !cJSON_IsNull(error) ? strdup(error->valuestring) : NULL,
        item_count ? item_count->valuedouble : 0,
        vehicle ? vehicle_local_nonprim : NULL,
        stops ? stopsList : NULL,
        estimated_start_time ? estimated_start_time->valuedouble : 0,
        estimated_end_time ? estimated_end_time->valuedouble : 0,
        estimated_duration ? estimated_duration->valuedouble : 0,
        estimated_distance ? estimated_distance->valuedouble : 0,
        wait_time ? wait_time->valuedouble : 0,
        generated ? generated->valueint : 0,
        valid ? valid->valueint : 0
        );

    return itinerary_response_local_var;
end:
    if (vehicle_local_nonprim) {
        vehicle_response_free(vehicle_local_nonprim);
        vehicle_local_nonprim = NULL;
    }
    if (stopsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, stopsList) {
            stop_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(stopsList);
        stopsList = NULL;
    }
    return NULL;

}
