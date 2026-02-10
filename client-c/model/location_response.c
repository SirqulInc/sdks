#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "location_response.h"



static location_response_t *location_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long id,
    char *get_distance_miles,
    char *zip,
    char *name,
    char *latitude,
    char *longitude,
    char *get_source,
    char *type,
    char *returning
    ) {
    location_response_t *location_response_local_var = malloc(sizeof(location_response_t));
    if (!location_response_local_var) {
        return NULL;
    }
    location_response_local_var->valid = valid;
    location_response_local_var->message = message;
    location_response_local_var->version = version;
    location_response_local_var->serialize_nulls = serialize_nulls;
    location_response_local_var->start_time_log = start_time_log;
    location_response_local_var->error_code = error_code;
    location_response_local_var->request = request;
    location_response_local_var->id = id;
    location_response_local_var->get_distance_miles = get_distance_miles;
    location_response_local_var->zip = zip;
    location_response_local_var->name = name;
    location_response_local_var->latitude = latitude;
    location_response_local_var->longitude = longitude;
    location_response_local_var->get_source = get_source;
    location_response_local_var->type = type;
    location_response_local_var->returning = returning;

    location_response_local_var->_library_owned = 1;
    return location_response_local_var;
}

__attribute__((deprecated)) location_response_t *location_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long id,
    char *get_distance_miles,
    char *zip,
    char *name,
    char *latitude,
    char *longitude,
    char *get_source,
    char *type,
    char *returning
    ) {
    return location_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        id,
        get_distance_miles,
        zip,
        name,
        latitude,
        longitude,
        get_source,
        type,
        returning
        );
}

void location_response_free(location_response_t *location_response) {
    if(NULL == location_response){
        return ;
    }
    if(location_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "location_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (location_response->message) {
        free(location_response->message);
        location_response->message = NULL;
    }
    if (location_response->error_code) {
        free(location_response->error_code);
        location_response->error_code = NULL;
    }
    if (location_response->request) {
        list_ForEach(listEntry, location_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(location_response->request);
        location_response->request = NULL;
    }
    if (location_response->get_distance_miles) {
        free(location_response->get_distance_miles);
        location_response->get_distance_miles = NULL;
    }
    if (location_response->zip) {
        free(location_response->zip);
        location_response->zip = NULL;
    }
    if (location_response->name) {
        free(location_response->name);
        location_response->name = NULL;
    }
    if (location_response->latitude) {
        free(location_response->latitude);
        location_response->latitude = NULL;
    }
    if (location_response->longitude) {
        free(location_response->longitude);
        location_response->longitude = NULL;
    }
    if (location_response->get_source) {
        free(location_response->get_source);
        location_response->get_source = NULL;
    }
    if (location_response->type) {
        free(location_response->type);
        location_response->type = NULL;
    }
    if (location_response->returning) {
        free(location_response->returning);
        location_response->returning = NULL;
    }
    free(location_response);
}

cJSON *location_response_convertToJSON(location_response_t *location_response) {
    cJSON *item = cJSON_CreateObject();

    // location_response->valid
    if(location_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", location_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // location_response->message
    if(location_response->message) {
    if(cJSON_AddStringToObject(item, "message", location_response->message) == NULL) {
    goto fail; //String
    }
    }


    // location_response->version
    if(location_response->version) {
    if(cJSON_AddNumberToObject(item, "version", location_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // location_response->serialize_nulls
    if(location_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", location_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // location_response->start_time_log
    if(location_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", location_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // location_response->error_code
    if(location_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", location_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // location_response->request
    if(location_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (location_response->request) {
    list_ForEach(requestListEntry, location_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // location_response->id
    if(location_response->id) {
    if(cJSON_AddNumberToObject(item, "id", location_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // location_response->get_distance_miles
    if(location_response->get_distance_miles) {
    if(cJSON_AddStringToObject(item, "get_distance_miles", location_response->get_distance_miles) == NULL) {
    goto fail; //String
    }
    }


    // location_response->zip
    if(location_response->zip) {
    if(cJSON_AddStringToObject(item, "zip", location_response->zip) == NULL) {
    goto fail; //String
    }
    }


    // location_response->name
    if(location_response->name) {
    if(cJSON_AddStringToObject(item, "name", location_response->name) == NULL) {
    goto fail; //String
    }
    }


    // location_response->latitude
    if(location_response->latitude) {
    if(cJSON_AddStringToObject(item, "latitude", location_response->latitude) == NULL) {
    goto fail; //String
    }
    }


    // location_response->longitude
    if(location_response->longitude) {
    if(cJSON_AddStringToObject(item, "longitude", location_response->longitude) == NULL) {
    goto fail; //String
    }
    }


    // location_response->get_source
    if(location_response->get_source) {
    if(cJSON_AddStringToObject(item, "get_source", location_response->get_source) == NULL) {
    goto fail; //String
    }
    }


    // location_response->type
    if(location_response->type) {
    if(cJSON_AddStringToObject(item, "type", location_response->type) == NULL) {
    goto fail; //String
    }
    }


    // location_response->returning
    if(location_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", location_response->returning) == NULL) {
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

location_response_t *location_response_parseFromJSON(cJSON *location_responseJSON){

    location_response_t *location_response_local_var = NULL;

    // define the local list for location_response->request
    list_t *requestList = NULL;

    // location_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // location_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // location_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // location_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // location_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // location_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // location_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "request");
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

    // location_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // location_response->get_distance_miles
    cJSON *get_distance_miles = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "get_distance_miles");
    if (cJSON_IsNull(get_distance_miles)) {
        get_distance_miles = NULL;
    }
    if (get_distance_miles) { 
    if(!cJSON_IsString(get_distance_miles) && !cJSON_IsNull(get_distance_miles))
    {
    goto end; //String
    }
    }

    // location_response->zip
    cJSON *zip = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "zip");
    if (cJSON_IsNull(zip)) {
        zip = NULL;
    }
    if (zip) { 
    if(!cJSON_IsString(zip) && !cJSON_IsNull(zip))
    {
    goto end; //String
    }
    }

    // location_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // location_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsString(latitude) && !cJSON_IsNull(latitude))
    {
    goto end; //String
    }
    }

    // location_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsString(longitude) && !cJSON_IsNull(longitude))
    {
    goto end; //String
    }
    }

    // location_response->get_source
    cJSON *get_source = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "get_source");
    if (cJSON_IsNull(get_source)) {
        get_source = NULL;
    }
    if (get_source) { 
    if(!cJSON_IsString(get_source) && !cJSON_IsNull(get_source))
    {
    goto end; //String
    }
    }

    // location_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // location_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(location_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    location_response_local_var = location_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        id ? id->valuedouble : 0,
        get_distance_miles && !cJSON_IsNull(get_distance_miles) ? strdup(get_distance_miles->valuestring) : NULL,
        zip && !cJSON_IsNull(zip) ? strdup(zip->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        latitude && !cJSON_IsNull(latitude) ? strdup(latitude->valuestring) : NULL,
        longitude && !cJSON_IsNull(longitude) ? strdup(longitude->valuestring) : NULL,
        get_source && !cJSON_IsNull(get_source) ? strdup(get_source->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return location_response_local_var;
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
    return NULL;

}
