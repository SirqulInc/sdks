#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "direction_response.h"



static direction_response_t *direction_response_create_internal(
    char *action,
    double bearing,
    double bearing_difference,
    char *heading,
    double distance,
    char *distance_units,
    char *distance_string,
    double start_latitude,
    double start_longitude,
    double end_latitude,
    double end_longitude,
    char *instruction,
    char *progress_status
    ) {
    direction_response_t *direction_response_local_var = malloc(sizeof(direction_response_t));
    if (!direction_response_local_var) {
        return NULL;
    }
    direction_response_local_var->action = action;
    direction_response_local_var->bearing = bearing;
    direction_response_local_var->bearing_difference = bearing_difference;
    direction_response_local_var->heading = heading;
    direction_response_local_var->distance = distance;
    direction_response_local_var->distance_units = distance_units;
    direction_response_local_var->distance_string = distance_string;
    direction_response_local_var->start_latitude = start_latitude;
    direction_response_local_var->start_longitude = start_longitude;
    direction_response_local_var->end_latitude = end_latitude;
    direction_response_local_var->end_longitude = end_longitude;
    direction_response_local_var->instruction = instruction;
    direction_response_local_var->progress_status = progress_status;

    direction_response_local_var->_library_owned = 1;
    return direction_response_local_var;
}

__attribute__((deprecated)) direction_response_t *direction_response_create(
    char *action,
    double bearing,
    double bearing_difference,
    char *heading,
    double distance,
    char *distance_units,
    char *distance_string,
    double start_latitude,
    double start_longitude,
    double end_latitude,
    double end_longitude,
    char *instruction,
    char *progress_status
    ) {
    return direction_response_create_internal (
        action,
        bearing,
        bearing_difference,
        heading,
        distance,
        distance_units,
        distance_string,
        start_latitude,
        start_longitude,
        end_latitude,
        end_longitude,
        instruction,
        progress_status
        );
}

void direction_response_free(direction_response_t *direction_response) {
    if(NULL == direction_response){
        return ;
    }
    if(direction_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "direction_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (direction_response->action) {
        free(direction_response->action);
        direction_response->action = NULL;
    }
    if (direction_response->heading) {
        free(direction_response->heading);
        direction_response->heading = NULL;
    }
    if (direction_response->distance_units) {
        free(direction_response->distance_units);
        direction_response->distance_units = NULL;
    }
    if (direction_response->distance_string) {
        free(direction_response->distance_string);
        direction_response->distance_string = NULL;
    }
    if (direction_response->instruction) {
        free(direction_response->instruction);
        direction_response->instruction = NULL;
    }
    if (direction_response->progress_status) {
        free(direction_response->progress_status);
        direction_response->progress_status = NULL;
    }
    free(direction_response);
}

cJSON *direction_response_convertToJSON(direction_response_t *direction_response) {
    cJSON *item = cJSON_CreateObject();

    // direction_response->action
    if(direction_response->action) {
    if(cJSON_AddStringToObject(item, "action", direction_response->action) == NULL) {
    goto fail; //String
    }
    }


    // direction_response->bearing
    if(direction_response->bearing) {
    if(cJSON_AddNumberToObject(item, "bearing", direction_response->bearing) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction_response->bearing_difference
    if(direction_response->bearing_difference) {
    if(cJSON_AddNumberToObject(item, "bearingDifference", direction_response->bearing_difference) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction_response->heading
    if(direction_response->heading) {
    if(cJSON_AddStringToObject(item, "heading", direction_response->heading) == NULL) {
    goto fail; //String
    }
    }


    // direction_response->distance
    if(direction_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", direction_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction_response->distance_units
    if(direction_response->distance_units) {
    if(cJSON_AddStringToObject(item, "distanceUnits", direction_response->distance_units) == NULL) {
    goto fail; //String
    }
    }


    // direction_response->distance_string
    if(direction_response->distance_string) {
    if(cJSON_AddStringToObject(item, "distanceString", direction_response->distance_string) == NULL) {
    goto fail; //String
    }
    }


    // direction_response->start_latitude
    if(direction_response->start_latitude) {
    if(cJSON_AddNumberToObject(item, "startLatitude", direction_response->start_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction_response->start_longitude
    if(direction_response->start_longitude) {
    if(cJSON_AddNumberToObject(item, "startLongitude", direction_response->start_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction_response->end_latitude
    if(direction_response->end_latitude) {
    if(cJSON_AddNumberToObject(item, "endLatitude", direction_response->end_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction_response->end_longitude
    if(direction_response->end_longitude) {
    if(cJSON_AddNumberToObject(item, "endLongitude", direction_response->end_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction_response->instruction
    if(direction_response->instruction) {
    if(cJSON_AddStringToObject(item, "instruction", direction_response->instruction) == NULL) {
    goto fail; //String
    }
    }


    // direction_response->progress_status
    if(direction_response->progress_status) {
    if(cJSON_AddStringToObject(item, "progressStatus", direction_response->progress_status) == NULL) {
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

direction_response_t *direction_response_parseFromJSON(cJSON *direction_responseJSON){

    direction_response_t *direction_response_local_var = NULL;

    // direction_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    if (action) { 
    if(!cJSON_IsString(action) && !cJSON_IsNull(action))
    {
    goto end; //String
    }
    }

    // direction_response->bearing
    cJSON *bearing = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "bearing");
    if (cJSON_IsNull(bearing)) {
        bearing = NULL;
    }
    if (bearing) { 
    if(!cJSON_IsNumber(bearing))
    {
    goto end; //Numeric
    }
    }

    // direction_response->bearing_difference
    cJSON *bearing_difference = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "bearingDifference");
    if (cJSON_IsNull(bearing_difference)) {
        bearing_difference = NULL;
    }
    if (bearing_difference) { 
    if(!cJSON_IsNumber(bearing_difference))
    {
    goto end; //Numeric
    }
    }

    // direction_response->heading
    cJSON *heading = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "heading");
    if (cJSON_IsNull(heading)) {
        heading = NULL;
    }
    if (heading) { 
    if(!cJSON_IsString(heading) && !cJSON_IsNull(heading))
    {
    goto end; //String
    }
    }

    // direction_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // direction_response->distance_units
    cJSON *distance_units = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "distanceUnits");
    if (cJSON_IsNull(distance_units)) {
        distance_units = NULL;
    }
    if (distance_units) { 
    if(!cJSON_IsString(distance_units) && !cJSON_IsNull(distance_units))
    {
    goto end; //String
    }
    }

    // direction_response->distance_string
    cJSON *distance_string = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "distanceString");
    if (cJSON_IsNull(distance_string)) {
        distance_string = NULL;
    }
    if (distance_string) { 
    if(!cJSON_IsString(distance_string) && !cJSON_IsNull(distance_string))
    {
    goto end; //String
    }
    }

    // direction_response->start_latitude
    cJSON *start_latitude = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "startLatitude");
    if (cJSON_IsNull(start_latitude)) {
        start_latitude = NULL;
    }
    if (start_latitude) { 
    if(!cJSON_IsNumber(start_latitude))
    {
    goto end; //Numeric
    }
    }

    // direction_response->start_longitude
    cJSON *start_longitude = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "startLongitude");
    if (cJSON_IsNull(start_longitude)) {
        start_longitude = NULL;
    }
    if (start_longitude) { 
    if(!cJSON_IsNumber(start_longitude))
    {
    goto end; //Numeric
    }
    }

    // direction_response->end_latitude
    cJSON *end_latitude = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "endLatitude");
    if (cJSON_IsNull(end_latitude)) {
        end_latitude = NULL;
    }
    if (end_latitude) { 
    if(!cJSON_IsNumber(end_latitude))
    {
    goto end; //Numeric
    }
    }

    // direction_response->end_longitude
    cJSON *end_longitude = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "endLongitude");
    if (cJSON_IsNull(end_longitude)) {
        end_longitude = NULL;
    }
    if (end_longitude) { 
    if(!cJSON_IsNumber(end_longitude))
    {
    goto end; //Numeric
    }
    }

    // direction_response->instruction
    cJSON *instruction = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "instruction");
    if (cJSON_IsNull(instruction)) {
        instruction = NULL;
    }
    if (instruction) { 
    if(!cJSON_IsString(instruction) && !cJSON_IsNull(instruction))
    {
    goto end; //String
    }
    }

    // direction_response->progress_status
    cJSON *progress_status = cJSON_GetObjectItemCaseSensitive(direction_responseJSON, "progressStatus");
    if (cJSON_IsNull(progress_status)) {
        progress_status = NULL;
    }
    if (progress_status) { 
    if(!cJSON_IsString(progress_status) && !cJSON_IsNull(progress_status))
    {
    goto end; //String
    }
    }


    direction_response_local_var = direction_response_create_internal (
        action && !cJSON_IsNull(action) ? strdup(action->valuestring) : NULL,
        bearing ? bearing->valuedouble : 0,
        bearing_difference ? bearing_difference->valuedouble : 0,
        heading && !cJSON_IsNull(heading) ? strdup(heading->valuestring) : NULL,
        distance ? distance->valuedouble : 0,
        distance_units && !cJSON_IsNull(distance_units) ? strdup(distance_units->valuestring) : NULL,
        distance_string && !cJSON_IsNull(distance_string) ? strdup(distance_string->valuestring) : NULL,
        start_latitude ? start_latitude->valuedouble : 0,
        start_longitude ? start_longitude->valuedouble : 0,
        end_latitude ? end_latitude->valuedouble : 0,
        end_longitude ? end_longitude->valuedouble : 0,
        instruction && !cJSON_IsNull(instruction) ? strdup(instruction->valuestring) : NULL,
        progress_status && !cJSON_IsNull(progress_status) ? strdup(progress_status->valuestring) : NULL
        );

    return direction_response_local_var;
end:
    return NULL;

}
