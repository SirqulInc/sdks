#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "step.h"



static step_t *step_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *device_id,
    leg_t *leg,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    char *start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    char *end_date
    ) {
    step_t *step_local_var = malloc(sizeof(step_t));
    if (!step_local_var) {
        return NULL;
    }
    step_local_var->id = id;
    step_local_var->active = active;
    step_local_var->valid = valid;
    step_local_var->owner = owner;
    step_local_var->device_id = device_id;
    step_local_var->leg = leg;
    step_local_var->distance = distance;
    step_local_var->duration = duration;
    step_local_var->start_latitude = start_latitude;
    step_local_var->start_longitude = start_longitude;
    step_local_var->start_altitude = start_altitude;
    step_local_var->start_date = start_date;
    step_local_var->end_latitude = end_latitude;
    step_local_var->end_longitude = end_longitude;
    step_local_var->end_altitude = end_altitude;
    step_local_var->end_date = end_date;

    step_local_var->_library_owned = 1;
    return step_local_var;
}

__attribute__((deprecated)) step_t *step_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *device_id,
    leg_t *leg,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    char *start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    char *end_date
    ) {
    return step_create_internal (
        id,
        active,
        valid,
        owner,
        device_id,
        leg,
        distance,
        duration,
        start_latitude,
        start_longitude,
        start_altitude,
        start_date,
        end_latitude,
        end_longitude,
        end_altitude,
        end_date
        );
}

void step_free(step_t *step) {
    if(NULL == step){
        return ;
    }
    if(step->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "step_free");
        return ;
    }
    listEntry_t *listEntry;
    if (step->owner) {
        account_free(step->owner);
        step->owner = NULL;
    }
    if (step->device_id) {
        free(step->device_id);
        step->device_id = NULL;
    }
    if (step->leg) {
        leg_free(step->leg);
        step->leg = NULL;
    }
    if (step->start_date) {
        free(step->start_date);
        step->start_date = NULL;
    }
    if (step->end_date) {
        free(step->end_date);
        step->end_date = NULL;
    }
    free(step);
}

cJSON *step_convertToJSON(step_t *step) {
    cJSON *item = cJSON_CreateObject();

    // step->id
    if(step->id) {
    if(cJSON_AddNumberToObject(item, "id", step->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->active
    if(step->active) {
    if(cJSON_AddBoolToObject(item, "active", step->active) == NULL) {
    goto fail; //Bool
    }
    }


    // step->valid
    if(step->valid) {
    if(cJSON_AddBoolToObject(item, "valid", step->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // step->owner
    if(step->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(step->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // step->device_id
    if(step->device_id) {
    if(cJSON_AddStringToObject(item, "deviceId", step->device_id) == NULL) {
    goto fail; //String
    }
    }


    // step->leg
    if(step->leg) {
    cJSON *leg_local_JSON = leg_convertToJSON(step->leg);
    if(leg_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "leg", leg_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // step->distance
    if(step->distance) {
    if(cJSON_AddNumberToObject(item, "distance", step->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->duration
    if(step->duration) {
    if(cJSON_AddNumberToObject(item, "duration", step->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->start_latitude
    if(step->start_latitude) {
    if(cJSON_AddNumberToObject(item, "startLatitude", step->start_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->start_longitude
    if(step->start_longitude) {
    if(cJSON_AddNumberToObject(item, "startLongitude", step->start_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->start_altitude
    if(step->start_altitude) {
    if(cJSON_AddNumberToObject(item, "startAltitude", step->start_altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->start_date
    if(step->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", step->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // step->end_latitude
    if(step->end_latitude) {
    if(cJSON_AddNumberToObject(item, "endLatitude", step->end_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->end_longitude
    if(step->end_longitude) {
    if(cJSON_AddNumberToObject(item, "endLongitude", step->end_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->end_altitude
    if(step->end_altitude) {
    if(cJSON_AddNumberToObject(item, "endAltitude", step->end_altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // step->end_date
    if(step->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", step->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

step_t *step_parseFromJSON(cJSON *stepJSON){

    step_t *step_local_var = NULL;

    // define the local variable for step->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for step->leg
    leg_t *leg_local_nonprim = NULL;

    // step->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(stepJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // step->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(stepJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // step->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(stepJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // step->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(stepJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // step->device_id
    cJSON *device_id = cJSON_GetObjectItemCaseSensitive(stepJSON, "deviceId");
    if (cJSON_IsNull(device_id)) {
        device_id = NULL;
    }
    if (device_id) { 
    if(!cJSON_IsString(device_id) && !cJSON_IsNull(device_id))
    {
    goto end; //String
    }
    }

    // step->leg
    cJSON *leg = cJSON_GetObjectItemCaseSensitive(stepJSON, "leg");
    if (cJSON_IsNull(leg)) {
        leg = NULL;
    }
    if (leg) { 
    leg_local_nonprim = leg_parseFromJSON(leg); //nonprimitive
    }

    // step->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(stepJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // step->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(stepJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // step->start_latitude
    cJSON *start_latitude = cJSON_GetObjectItemCaseSensitive(stepJSON, "startLatitude");
    if (cJSON_IsNull(start_latitude)) {
        start_latitude = NULL;
    }
    if (start_latitude) { 
    if(!cJSON_IsNumber(start_latitude))
    {
    goto end; //Numeric
    }
    }

    // step->start_longitude
    cJSON *start_longitude = cJSON_GetObjectItemCaseSensitive(stepJSON, "startLongitude");
    if (cJSON_IsNull(start_longitude)) {
        start_longitude = NULL;
    }
    if (start_longitude) { 
    if(!cJSON_IsNumber(start_longitude))
    {
    goto end; //Numeric
    }
    }

    // step->start_altitude
    cJSON *start_altitude = cJSON_GetObjectItemCaseSensitive(stepJSON, "startAltitude");
    if (cJSON_IsNull(start_altitude)) {
        start_altitude = NULL;
    }
    if (start_altitude) { 
    if(!cJSON_IsNumber(start_altitude))
    {
    goto end; //Numeric
    }
    }

    // step->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(stepJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // step->end_latitude
    cJSON *end_latitude = cJSON_GetObjectItemCaseSensitive(stepJSON, "endLatitude");
    if (cJSON_IsNull(end_latitude)) {
        end_latitude = NULL;
    }
    if (end_latitude) { 
    if(!cJSON_IsNumber(end_latitude))
    {
    goto end; //Numeric
    }
    }

    // step->end_longitude
    cJSON *end_longitude = cJSON_GetObjectItemCaseSensitive(stepJSON, "endLongitude");
    if (cJSON_IsNull(end_longitude)) {
        end_longitude = NULL;
    }
    if (end_longitude) { 
    if(!cJSON_IsNumber(end_longitude))
    {
    goto end; //Numeric
    }
    }

    // step->end_altitude
    cJSON *end_altitude = cJSON_GetObjectItemCaseSensitive(stepJSON, "endAltitude");
    if (cJSON_IsNull(end_altitude)) {
        end_altitude = NULL;
    }
    if (end_altitude) { 
    if(!cJSON_IsNumber(end_altitude))
    {
    goto end; //Numeric
    }
    }

    // step->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(stepJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }


    step_local_var = step_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        device_id && !cJSON_IsNull(device_id) ? strdup(device_id->valuestring) : NULL,
        leg ? leg_local_nonprim : NULL,
        distance ? distance->valuedouble : 0,
        duration ? duration->valuedouble : 0,
        start_latitude ? start_latitude->valuedouble : 0,
        start_longitude ? start_longitude->valuedouble : 0,
        start_altitude ? start_altitude->valuedouble : 0,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_latitude ? end_latitude->valuedouble : 0,
        end_longitude ? end_longitude->valuedouble : 0,
        end_altitude ? end_altitude->valuedouble : 0,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL
        );

    return step_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (leg_local_nonprim) {
        leg_free(leg_local_nonprim);
        leg_local_nonprim = NULL;
    }
    return NULL;

}
