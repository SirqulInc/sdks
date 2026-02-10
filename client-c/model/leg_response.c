#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "leg_response.h"



static leg_response_t *leg_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *app_key,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    long start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    long end_date,
    long created,
    char *tags,
    char *device_id,
    long account_id,
    char *device_signature,
    long parent_account_id,
    list_t *steps,
    char *type,
    char *returning
    ) {
    leg_response_t *leg_response_local_var = malloc(sizeof(leg_response_t));
    if (!leg_response_local_var) {
        return NULL;
    }
    leg_response_local_var->valid = valid;
    leg_response_local_var->message = message;
    leg_response_local_var->version = version;
    leg_response_local_var->serialize_nulls = serialize_nulls;
    leg_response_local_var->start_time_log = start_time_log;
    leg_response_local_var->error_code = error_code;
    leg_response_local_var->request = request;
    leg_response_local_var->app_key = app_key;
    leg_response_local_var->distance = distance;
    leg_response_local_var->duration = duration;
    leg_response_local_var->start_latitude = start_latitude;
    leg_response_local_var->start_longitude = start_longitude;
    leg_response_local_var->start_altitude = start_altitude;
    leg_response_local_var->start_date = start_date;
    leg_response_local_var->end_latitude = end_latitude;
    leg_response_local_var->end_longitude = end_longitude;
    leg_response_local_var->end_altitude = end_altitude;
    leg_response_local_var->end_date = end_date;
    leg_response_local_var->created = created;
    leg_response_local_var->tags = tags;
    leg_response_local_var->device_id = device_id;
    leg_response_local_var->account_id = account_id;
    leg_response_local_var->device_signature = device_signature;
    leg_response_local_var->parent_account_id = parent_account_id;
    leg_response_local_var->steps = steps;
    leg_response_local_var->type = type;
    leg_response_local_var->returning = returning;

    leg_response_local_var->_library_owned = 1;
    return leg_response_local_var;
}

__attribute__((deprecated)) leg_response_t *leg_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *app_key,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    long start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    long end_date,
    long created,
    char *tags,
    char *device_id,
    long account_id,
    char *device_signature,
    long parent_account_id,
    list_t *steps,
    char *type,
    char *returning
    ) {
    return leg_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        app_key,
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
        created,
        tags,
        device_id,
        account_id,
        device_signature,
        parent_account_id,
        steps,
        type,
        returning
        );
}

void leg_response_free(leg_response_t *leg_response) {
    if(NULL == leg_response){
        return ;
    }
    if(leg_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "leg_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (leg_response->message) {
        free(leg_response->message);
        leg_response->message = NULL;
    }
    if (leg_response->error_code) {
        free(leg_response->error_code);
        leg_response->error_code = NULL;
    }
    if (leg_response->request) {
        list_ForEach(listEntry, leg_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(leg_response->request);
        leg_response->request = NULL;
    }
    if (leg_response->app_key) {
        free(leg_response->app_key);
        leg_response->app_key = NULL;
    }
    if (leg_response->tags) {
        free(leg_response->tags);
        leg_response->tags = NULL;
    }
    if (leg_response->device_id) {
        free(leg_response->device_id);
        leg_response->device_id = NULL;
    }
    if (leg_response->device_signature) {
        free(leg_response->device_signature);
        leg_response->device_signature = NULL;
    }
    if (leg_response->steps) {
        list_ForEach(listEntry, leg_response->steps) {
            step_response_free(listEntry->data);
        }
        list_freeList(leg_response->steps);
        leg_response->steps = NULL;
    }
    if (leg_response->type) {
        free(leg_response->type);
        leg_response->type = NULL;
    }
    if (leg_response->returning) {
        free(leg_response->returning);
        leg_response->returning = NULL;
    }
    free(leg_response);
}

cJSON *leg_response_convertToJSON(leg_response_t *leg_response) {
    cJSON *item = cJSON_CreateObject();

    // leg_response->valid
    if(leg_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", leg_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // leg_response->message
    if(leg_response->message) {
    if(cJSON_AddStringToObject(item, "message", leg_response->message) == NULL) {
    goto fail; //String
    }
    }


    // leg_response->version
    if(leg_response->version) {
    if(cJSON_AddNumberToObject(item, "version", leg_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->serialize_nulls
    if(leg_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", leg_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // leg_response->start_time_log
    if(leg_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", leg_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->error_code
    if(leg_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", leg_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // leg_response->request
    if(leg_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (leg_response->request) {
    list_ForEach(requestListEntry, leg_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // leg_response->app_key
    if(leg_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", leg_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // leg_response->distance
    if(leg_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", leg_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->duration
    if(leg_response->duration) {
    if(cJSON_AddNumberToObject(item, "duration", leg_response->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->start_latitude
    if(leg_response->start_latitude) {
    if(cJSON_AddNumberToObject(item, "startLatitude", leg_response->start_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->start_longitude
    if(leg_response->start_longitude) {
    if(cJSON_AddNumberToObject(item, "startLongitude", leg_response->start_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->start_altitude
    if(leg_response->start_altitude) {
    if(cJSON_AddNumberToObject(item, "startAltitude", leg_response->start_altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->start_date
    if(leg_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", leg_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->end_latitude
    if(leg_response->end_latitude) {
    if(cJSON_AddNumberToObject(item, "endLatitude", leg_response->end_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->end_longitude
    if(leg_response->end_longitude) {
    if(cJSON_AddNumberToObject(item, "endLongitude", leg_response->end_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->end_altitude
    if(leg_response->end_altitude) {
    if(cJSON_AddNumberToObject(item, "endAltitude", leg_response->end_altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->end_date
    if(leg_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", leg_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->created
    if(leg_response->created) {
    if(cJSON_AddNumberToObject(item, "created", leg_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->tags
    if(leg_response->tags) {
    if(cJSON_AddStringToObject(item, "tags", leg_response->tags) == NULL) {
    goto fail; //String
    }
    }


    // leg_response->device_id
    if(leg_response->device_id) {
    if(cJSON_AddStringToObject(item, "deviceId", leg_response->device_id) == NULL) {
    goto fail; //String
    }
    }


    // leg_response->account_id
    if(leg_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", leg_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->device_signature
    if(leg_response->device_signature) {
    if(cJSON_AddStringToObject(item, "deviceSignature", leg_response->device_signature) == NULL) {
    goto fail; //String
    }
    }


    // leg_response->parent_account_id
    if(leg_response->parent_account_id) {
    if(cJSON_AddNumberToObject(item, "parentAccountId", leg_response->parent_account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // leg_response->steps
    if(leg_response->steps) {
    cJSON *steps = cJSON_AddArrayToObject(item, "steps");
    if(steps == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *stepsListEntry;
    if (leg_response->steps) {
    list_ForEach(stepsListEntry, leg_response->steps) {
    cJSON *itemLocal = step_response_convertToJSON(stepsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(steps, itemLocal);
    }
    }
    }


    // leg_response->type
    if(leg_response->type) {
    if(cJSON_AddStringToObject(item, "type", leg_response->type) == NULL) {
    goto fail; //String
    }
    }


    // leg_response->returning
    if(leg_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", leg_response->returning) == NULL) {
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

leg_response_t *leg_response_parseFromJSON(cJSON *leg_responseJSON){

    leg_response_t *leg_response_local_var = NULL;

    // define the local list for leg_response->request
    list_t *requestList = NULL;

    // define the local list for leg_response->steps
    list_t *stepsList = NULL;

    // leg_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // leg_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // leg_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // leg_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // leg_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // leg_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // leg_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "request");
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

    // leg_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // leg_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // leg_response->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // leg_response->start_latitude
    cJSON *start_latitude = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "startLatitude");
    if (cJSON_IsNull(start_latitude)) {
        start_latitude = NULL;
    }
    if (start_latitude) { 
    if(!cJSON_IsNumber(start_latitude))
    {
    goto end; //Numeric
    }
    }

    // leg_response->start_longitude
    cJSON *start_longitude = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "startLongitude");
    if (cJSON_IsNull(start_longitude)) {
        start_longitude = NULL;
    }
    if (start_longitude) { 
    if(!cJSON_IsNumber(start_longitude))
    {
    goto end; //Numeric
    }
    }

    // leg_response->start_altitude
    cJSON *start_altitude = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "startAltitude");
    if (cJSON_IsNull(start_altitude)) {
        start_altitude = NULL;
    }
    if (start_altitude) { 
    if(!cJSON_IsNumber(start_altitude))
    {
    goto end; //Numeric
    }
    }

    // leg_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // leg_response->end_latitude
    cJSON *end_latitude = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "endLatitude");
    if (cJSON_IsNull(end_latitude)) {
        end_latitude = NULL;
    }
    if (end_latitude) { 
    if(!cJSON_IsNumber(end_latitude))
    {
    goto end; //Numeric
    }
    }

    // leg_response->end_longitude
    cJSON *end_longitude = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "endLongitude");
    if (cJSON_IsNull(end_longitude)) {
        end_longitude = NULL;
    }
    if (end_longitude) { 
    if(!cJSON_IsNumber(end_longitude))
    {
    goto end; //Numeric
    }
    }

    // leg_response->end_altitude
    cJSON *end_altitude = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "endAltitude");
    if (cJSON_IsNull(end_altitude)) {
        end_altitude = NULL;
    }
    if (end_altitude) { 
    if(!cJSON_IsNumber(end_altitude))
    {
    goto end; //Numeric
    }
    }

    // leg_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // leg_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // leg_response->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }

    // leg_response->device_id
    cJSON *device_id = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "deviceId");
    if (cJSON_IsNull(device_id)) {
        device_id = NULL;
    }
    if (device_id) { 
    if(!cJSON_IsString(device_id) && !cJSON_IsNull(device_id))
    {
    goto end; //String
    }
    }

    // leg_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // leg_response->device_signature
    cJSON *device_signature = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "deviceSignature");
    if (cJSON_IsNull(device_signature)) {
        device_signature = NULL;
    }
    if (device_signature) { 
    if(!cJSON_IsString(device_signature) && !cJSON_IsNull(device_signature))
    {
    goto end; //String
    }
    }

    // leg_response->parent_account_id
    cJSON *parent_account_id = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "parentAccountId");
    if (cJSON_IsNull(parent_account_id)) {
        parent_account_id = NULL;
    }
    if (parent_account_id) { 
    if(!cJSON_IsNumber(parent_account_id))
    {
    goto end; //Numeric
    }
    }

    // leg_response->steps
    cJSON *steps = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "steps");
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
        step_response_t *stepsItem = step_response_parseFromJSON(steps_local_nonprimitive);

        list_addElement(stepsList, stepsItem);
    }
    }

    // leg_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // leg_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(leg_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    leg_response_local_var = leg_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        distance ? distance->valuedouble : 0,
        duration ? duration->valuedouble : 0,
        start_latitude ? start_latitude->valuedouble : 0,
        start_longitude ? start_longitude->valuedouble : 0,
        start_altitude ? start_altitude->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_latitude ? end_latitude->valuedouble : 0,
        end_longitude ? end_longitude->valuedouble : 0,
        end_altitude ? end_altitude->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        created ? created->valuedouble : 0,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL,
        device_id && !cJSON_IsNull(device_id) ? strdup(device_id->valuestring) : NULL,
        account_id ? account_id->valuedouble : 0,
        device_signature && !cJSON_IsNull(device_signature) ? strdup(device_signature->valuestring) : NULL,
        parent_account_id ? parent_account_id->valuedouble : 0,
        steps ? stepsList : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return leg_response_local_var;
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
    if (stepsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, stepsList) {
            step_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(stepsList);
        stepsList = NULL;
    }
    return NULL;

}
