#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "leg.h"



static leg_t *leg_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    account_t *parent_owner,
    application_t *application,
    char *device_id,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    char *start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    char *end_date,
    char *type,
    long retailer_location_id,
    char *floor_id,
    list_t *steps
    ) {
    leg_t *leg_local_var = malloc(sizeof(leg_t));
    if (!leg_local_var) {
        return NULL;
    }
    leg_local_var->id = id;
    leg_local_var->active = active;
    leg_local_var->valid = valid;
    leg_local_var->owner = owner;
    leg_local_var->parent_owner = parent_owner;
    leg_local_var->application = application;
    leg_local_var->device_id = device_id;
    leg_local_var->distance = distance;
    leg_local_var->duration = duration;
    leg_local_var->start_latitude = start_latitude;
    leg_local_var->start_longitude = start_longitude;
    leg_local_var->start_altitude = start_altitude;
    leg_local_var->start_date = start_date;
    leg_local_var->end_latitude = end_latitude;
    leg_local_var->end_longitude = end_longitude;
    leg_local_var->end_altitude = end_altitude;
    leg_local_var->end_date = end_date;
    leg_local_var->type = type;
    leg_local_var->retailer_location_id = retailer_location_id;
    leg_local_var->floor_id = floor_id;
    leg_local_var->steps = steps;

    leg_local_var->_library_owned = 1;
    return leg_local_var;
}

__attribute__((deprecated)) leg_t *leg_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    account_t *parent_owner,
    application_t *application,
    char *device_id,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    char *start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    char *end_date,
    char *type,
    long retailer_location_id,
    char *floor_id,
    list_t *steps
    ) {
    return leg_create_internal (
        id,
        active,
        valid,
        owner,
        parent_owner,
        application,
        device_id,
        distance,
        duration,
        start_latitude,
        start_longitude,
        start_altitude,
        start_date,
        end_latitude,
        end_longitude,
        end_altitude,
        end_date,
        type,
        retailer_location_id,
        floor_id,
        steps
        );
}

void leg_free(leg_t *leg) {
    if(NULL == leg){
        return ;
    }
    if(leg->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "leg_free");
        return ;
    }
    listEntry_t *listEntry;
    if (leg->owner) {
        account_free(leg->owner);
        leg->owner = NULL;
    }
    if (leg->parent_owner) {
        account_free(leg->parent_owner);
        leg->parent_owner = NULL;
    }
    if (leg->application) {
        application_free(leg->application);
        leg->application = NULL;
    }
    if (leg->device_id) {
        free(leg->device_id);
        leg->device_id = NULL;
    }
    if (leg->start_date) {
        free(leg->start_date);
        leg->start_date = NULL;
    }
    if (leg->end_date) {
        free(leg->end_date);
        leg->end_date = NULL;
    }
    if (leg->type) {
        free(leg->type);
        leg->type = NULL;
    }
    if (leg->floor_id) {
        free(leg->floor_id);
        leg->floor_id = NULL;
    }
    if (leg->steps) {
        list_ForEach(listEntry, leg->steps) {
            step_free(listEntry->data);
        }
        list_freeList(leg->steps);
        leg->steps = NULL;
    }
    free(leg);
}

cJSON *leg_convertToJSON(leg_t *leg) {
    cJSON *item = cJSON_CreateObject();

    // leg->id
    if(leg->id) {
    if(cJSON_AddNumberToObject(item, "id", leg->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->active
    if(leg->active) {
    if(cJSON_AddBoolToObject(item, "active", leg->active) == NULL) {
    goto fail; //Bool
    }
    }


    // leg->valid
    if(leg->valid) {
    if(cJSON_AddBoolToObject(item, "valid", leg->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // leg->owner
    if(leg->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(leg->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leg->parent_owner
    if(leg->parent_owner) {
    cJSON *parent_owner_local_JSON = account_convertToJSON(leg->parent_owner);
    if(parent_owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentOwner", parent_owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leg->application
    if(leg->application) {
    cJSON *application_local_JSON = application_convertToJSON(leg->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leg->device_id
    if(leg->device_id) {
    if(cJSON_AddStringToObject(item, "deviceId", leg->device_id) == NULL) {
    goto fail; //String
    }
    }


    // leg->distance
    if(leg->distance) {
    if(cJSON_AddNumberToObject(item, "distance", leg->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->duration
    if(leg->duration) {
    if(cJSON_AddNumberToObject(item, "duration", leg->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->start_latitude
    if(leg->start_latitude) {
    if(cJSON_AddNumberToObject(item, "startLatitude", leg->start_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->start_longitude
    if(leg->start_longitude) {
    if(cJSON_AddNumberToObject(item, "startLongitude", leg->start_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->start_altitude
    if(leg->start_altitude) {
    if(cJSON_AddNumberToObject(item, "startAltitude", leg->start_altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->start_date
    if(leg->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", leg->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // leg->end_latitude
    if(leg->end_latitude) {
    if(cJSON_AddNumberToObject(item, "endLatitude", leg->end_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->end_longitude
    if(leg->end_longitude) {
    if(cJSON_AddNumberToObject(item, "endLongitude", leg->end_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->end_altitude
    if(leg->end_altitude) {
    if(cJSON_AddNumberToObject(item, "endAltitude", leg->end_altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->end_date
    if(leg->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", leg->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // leg->type
    if(leg->type) {
    if(cJSON_AddStringToObject(item, "type", leg->type) == NULL) {
    goto fail; //String
    }
    }


    // leg->retailer_location_id
    if(leg->retailer_location_id) {
    if(cJSON_AddNumberToObject(item, "retailerLocationId", leg->retailer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg->floor_id
    if(leg->floor_id) {
    if(cJSON_AddStringToObject(item, "floorId", leg->floor_id) == NULL) {
    goto fail; //String
    }
    }


    // leg->steps
    if(leg->steps) {
    cJSON *steps = cJSON_AddArrayToObject(item, "steps");
    if(steps == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *stepsListEntry;
    if (leg->steps) {
    list_ForEach(stepsListEntry, leg->steps) {
    cJSON *itemLocal = step_convertToJSON(stepsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(steps, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

leg_t *leg_parseFromJSON(cJSON *legJSON){

    leg_t *leg_local_var = NULL;

    // define the local variable for leg->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for leg->parent_owner
    account_t *parent_owner_local_nonprim = NULL;

    // define the local variable for leg->application
    application_t *application_local_nonprim = NULL;

    // define the local list for leg->steps
    list_t *stepsList = NULL;

    // leg->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(legJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // leg->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(legJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // leg->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(legJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // leg->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(legJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // leg->parent_owner
    cJSON *parent_owner = cJSON_GetObjectItemCaseSensitive(legJSON, "parentOwner");
    if (cJSON_IsNull(parent_owner)) {
        parent_owner = NULL;
    }
    if (parent_owner) { 
    parent_owner_local_nonprim = account_parseFromJSON(parent_owner); //nonprimitive
    }

    // leg->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(legJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // leg->device_id
    cJSON *device_id = cJSON_GetObjectItemCaseSensitive(legJSON, "deviceId");
    if (cJSON_IsNull(device_id)) {
        device_id = NULL;
    }
    if (device_id) { 
    if(!cJSON_IsString(device_id) && !cJSON_IsNull(device_id))
    {
    goto end; //String
    }
    }

    // leg->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(legJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // leg->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(legJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // leg->start_latitude
    cJSON *start_latitude = cJSON_GetObjectItemCaseSensitive(legJSON, "startLatitude");
    if (cJSON_IsNull(start_latitude)) {
        start_latitude = NULL;
    }
    if (start_latitude) { 
    if(!cJSON_IsNumber(start_latitude))
    {
    goto end; //Numeric
    }
    }

    // leg->start_longitude
    cJSON *start_longitude = cJSON_GetObjectItemCaseSensitive(legJSON, "startLongitude");
    if (cJSON_IsNull(start_longitude)) {
        start_longitude = NULL;
    }
    if (start_longitude) { 
    if(!cJSON_IsNumber(start_longitude))
    {
    goto end; //Numeric
    }
    }

    // leg->start_altitude
    cJSON *start_altitude = cJSON_GetObjectItemCaseSensitive(legJSON, "startAltitude");
    if (cJSON_IsNull(start_altitude)) {
        start_altitude = NULL;
    }
    if (start_altitude) { 
    if(!cJSON_IsNumber(start_altitude))
    {
    goto end; //Numeric
    }
    }

    // leg->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(legJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // leg->end_latitude
    cJSON *end_latitude = cJSON_GetObjectItemCaseSensitive(legJSON, "endLatitude");
    if (cJSON_IsNull(end_latitude)) {
        end_latitude = NULL;
    }
    if (end_latitude) { 
    if(!cJSON_IsNumber(end_latitude))
    {
    goto end; //Numeric
    }
    }

    // leg->end_longitude
    cJSON *end_longitude = cJSON_GetObjectItemCaseSensitive(legJSON, "endLongitude");
    if (cJSON_IsNull(end_longitude)) {
        end_longitude = NULL;
    }
    if (end_longitude) { 
    if(!cJSON_IsNumber(end_longitude))
    {
    goto end; //Numeric
    }
    }

    // leg->end_altitude
    cJSON *end_altitude = cJSON_GetObjectItemCaseSensitive(legJSON, "endAltitude");
    if (cJSON_IsNull(end_altitude)) {
        end_altitude = NULL;
    }
    if (end_altitude) { 
    if(!cJSON_IsNumber(end_altitude))
    {
    goto end; //Numeric
    }
    }

    // leg->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(legJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // leg->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(legJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // leg->retailer_location_id
    cJSON *retailer_location_id = cJSON_GetObjectItemCaseSensitive(legJSON, "retailerLocationId");
    if (cJSON_IsNull(retailer_location_id)) {
        retailer_location_id = NULL;
    }
    if (retailer_location_id) { 
    if(!cJSON_IsNumber(retailer_location_id))
    {
    goto end; //Numeric
    }
    }

    // leg->floor_id
    cJSON *floor_id = cJSON_GetObjectItemCaseSensitive(legJSON, "floorId");
    if (cJSON_IsNull(floor_id)) {
        floor_id = NULL;
    }
    if (floor_id) { 
    if(!cJSON_IsString(floor_id) && !cJSON_IsNull(floor_id))
    {
    goto end; //String
    }
    }

    // leg->steps
    cJSON *steps = cJSON_GetObjectItemCaseSensitive(legJSON, "steps");
    if (cJSON_IsNull(steps)) {
        steps = NULL;
    }
    if (steps) { 
    cJSON *steps_local_nonprimitive = NULL;
    if(!cJSON_IsArray(steps)){
        goto end; //nonprimitive container
    }

    stepsList = list_createList();

    cJSON_ArrayForEach(steps_local_nonprimitive,steps )
    {
        if(!cJSON_IsObject(steps_local_nonprimitive)){
            goto end;
        }
        step_t *stepsItem = step_parseFromJSON(steps_local_nonprimitive);

        list_addElement(stepsList, stepsItem);
    }
    }


    leg_local_var = leg_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        parent_owner ? parent_owner_local_nonprim : NULL,
        application ? application_local_nonprim : NULL,
        device_id && !cJSON_IsNull(device_id) ? strdup(device_id->valuestring) : NULL,
        distance ? distance->valuedouble : 0,
        duration ? duration->valuedouble : 0,
        start_latitude ? start_latitude->valuedouble : 0,
        start_longitude ? start_longitude->valuedouble : 0,
        start_altitude ? start_altitude->valuedouble : 0,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_latitude ? end_latitude->valuedouble : 0,
        end_longitude ? end_longitude->valuedouble : 0,
        end_altitude ? end_altitude->valuedouble : 0,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        retailer_location_id ? retailer_location_id->valuedouble : 0,
        floor_id && !cJSON_IsNull(floor_id) ? strdup(floor_id->valuestring) : NULL,
        steps ? stepsList : NULL
        );

    return leg_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (parent_owner_local_nonprim) {
        account_free(parent_owner_local_nonprim);
        parent_owner_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (stepsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, stepsList) {
            step_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(stepsList);
        stepsList = NULL;
    }
    return NULL;

}
