#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "preferred_location_response.h"



static preferred_location_response_t *preferred_location_response_create_internal(
    long owner_id,
    char *on_date,
    long on_date_milli,
    int hour,
    double latitude,
    double longitude,
    double distance,
    long duration,
    long start_step_id,
    long end_step_id
    ) {
    preferred_location_response_t *preferred_location_response_local_var = malloc(sizeof(preferred_location_response_t));
    if (!preferred_location_response_local_var) {
        return NULL;
    }
    preferred_location_response_local_var->owner_id = owner_id;
    preferred_location_response_local_var->on_date = on_date;
    preferred_location_response_local_var->on_date_milli = on_date_milli;
    preferred_location_response_local_var->hour = hour;
    preferred_location_response_local_var->latitude = latitude;
    preferred_location_response_local_var->longitude = longitude;
    preferred_location_response_local_var->distance = distance;
    preferred_location_response_local_var->duration = duration;
    preferred_location_response_local_var->start_step_id = start_step_id;
    preferred_location_response_local_var->end_step_id = end_step_id;

    preferred_location_response_local_var->_library_owned = 1;
    return preferred_location_response_local_var;
}

__attribute__((deprecated)) preferred_location_response_t *preferred_location_response_create(
    long owner_id,
    char *on_date,
    long on_date_milli,
    int hour,
    double latitude,
    double longitude,
    double distance,
    long duration,
    long start_step_id,
    long end_step_id
    ) {
    return preferred_location_response_create_internal (
        owner_id,
        on_date,
        on_date_milli,
        hour,
        latitude,
        longitude,
        distance,
        duration,
        start_step_id,
        end_step_id
        );
}

void preferred_location_response_free(preferred_location_response_t *preferred_location_response) {
    if(NULL == preferred_location_response){
        return ;
    }
    if(preferred_location_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "preferred_location_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (preferred_location_response->on_date) {
        free(preferred_location_response->on_date);
        preferred_location_response->on_date = NULL;
    }
    free(preferred_location_response);
}

cJSON *preferred_location_response_convertToJSON(preferred_location_response_t *preferred_location_response) {
    cJSON *item = cJSON_CreateObject();

    // preferred_location_response->owner_id
    if(preferred_location_response->owner_id) {
    if(cJSON_AddNumberToObject(item, "ownerId", preferred_location_response->owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->on_date
    if(preferred_location_response->on_date) {
    if(cJSON_AddStringToObject(item, "onDate", preferred_location_response->on_date) == NULL) {
    goto fail; //String
    }
    }


    // preferred_location_response->on_date_milli
    if(preferred_location_response->on_date_milli) {
    if(cJSON_AddNumberToObject(item, "onDateMilli", preferred_location_response->on_date_milli) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->hour
    if(preferred_location_response->hour) {
    if(cJSON_AddNumberToObject(item, "hour", preferred_location_response->hour) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->latitude
    if(preferred_location_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", preferred_location_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->longitude
    if(preferred_location_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", preferred_location_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->distance
    if(preferred_location_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", preferred_location_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->duration
    if(preferred_location_response->duration) {
    if(cJSON_AddNumberToObject(item, "duration", preferred_location_response->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->start_step_id
    if(preferred_location_response->start_step_id) {
    if(cJSON_AddNumberToObject(item, "startStepId", preferred_location_response->start_step_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // preferred_location_response->end_step_id
    if(preferred_location_response->end_step_id) {
    if(cJSON_AddNumberToObject(item, "endStepId", preferred_location_response->end_step_id) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

preferred_location_response_t *preferred_location_response_parseFromJSON(cJSON *preferred_location_responseJSON){

    preferred_location_response_t *preferred_location_response_local_var = NULL;

    // preferred_location_response->owner_id
    cJSON *owner_id = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "ownerId");
    if (cJSON_IsNull(owner_id)) {
        owner_id = NULL;
    }
    if (owner_id) { 
    if(!cJSON_IsNumber(owner_id))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->on_date
    cJSON *on_date = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "onDate");
    if (cJSON_IsNull(on_date)) {
        on_date = NULL;
    }
    if (on_date) { 
    if(!cJSON_IsString(on_date) && !cJSON_IsNull(on_date))
    {
    goto end; //String
    }
    }

    // preferred_location_response->on_date_milli
    cJSON *on_date_milli = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "onDateMilli");
    if (cJSON_IsNull(on_date_milli)) {
        on_date_milli = NULL;
    }
    if (on_date_milli) { 
    if(!cJSON_IsNumber(on_date_milli))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->hour
    cJSON *hour = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "hour");
    if (cJSON_IsNull(hour)) {
        hour = NULL;
    }
    if (hour) { 
    if(!cJSON_IsNumber(hour))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->start_step_id
    cJSON *start_step_id = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "startStepId");
    if (cJSON_IsNull(start_step_id)) {
        start_step_id = NULL;
    }
    if (start_step_id) { 
    if(!cJSON_IsNumber(start_step_id))
    {
    goto end; //Numeric
    }
    }

    // preferred_location_response->end_step_id
    cJSON *end_step_id = cJSON_GetObjectItemCaseSensitive(preferred_location_responseJSON, "endStepId");
    if (cJSON_IsNull(end_step_id)) {
        end_step_id = NULL;
    }
    if (end_step_id) { 
    if(!cJSON_IsNumber(end_step_id))
    {
    goto end; //Numeric
    }
    }


    preferred_location_response_local_var = preferred_location_response_create_internal (
        owner_id ? owner_id->valuedouble : 0,
        on_date && !cJSON_IsNull(on_date) ? strdup(on_date->valuestring) : NULL,
        on_date_milli ? on_date_milli->valuedouble : 0,
        hour ? hour->valuedouble : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        distance ? distance->valuedouble : 0,
        duration ? duration->valuedouble : 0,
        start_step_id ? start_step_id->valuedouble : 0,
        end_step_id ? end_step_id->valuedouble : 0
        );

    return preferred_location_response_local_var;
end:
    return NULL;

}
