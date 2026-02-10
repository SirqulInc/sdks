#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "location_search_response.h"



static location_search_response_t *location_search_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long count,
    list_t *locations,
    char *returning
    ) {
    location_search_response_t *location_search_response_local_var = malloc(sizeof(location_search_response_t));
    if (!location_search_response_local_var) {
        return NULL;
    }
    location_search_response_local_var->valid = valid;
    location_search_response_local_var->message = message;
    location_search_response_local_var->version = version;
    location_search_response_local_var->serialize_nulls = serialize_nulls;
    location_search_response_local_var->start_time_log = start_time_log;
    location_search_response_local_var->error_code = error_code;
    location_search_response_local_var->request = request;
    location_search_response_local_var->count = count;
    location_search_response_local_var->locations = locations;
    location_search_response_local_var->returning = returning;

    location_search_response_local_var->_library_owned = 1;
    return location_search_response_local_var;
}

__attribute__((deprecated)) location_search_response_t *location_search_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long count,
    list_t *locations,
    char *returning
    ) {
    return location_search_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        count,
        locations,
        returning
        );
}

void location_search_response_free(location_search_response_t *location_search_response) {
    if(NULL == location_search_response){
        return ;
    }
    if(location_search_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "location_search_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (location_search_response->message) {
        free(location_search_response->message);
        location_search_response->message = NULL;
    }
    if (location_search_response->error_code) {
        free(location_search_response->error_code);
        location_search_response->error_code = NULL;
    }
    if (location_search_response->request) {
        list_ForEach(listEntry, location_search_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(location_search_response->request);
        location_search_response->request = NULL;
    }
    if (location_search_response->locations) {
        list_ForEach(listEntry, location_search_response->locations) {
            location_response_free(listEntry->data);
        }
        list_freeList(location_search_response->locations);
        location_search_response->locations = NULL;
    }
    if (location_search_response->returning) {
        free(location_search_response->returning);
        location_search_response->returning = NULL;
    }
    free(location_search_response);
}

cJSON *location_search_response_convertToJSON(location_search_response_t *location_search_response) {
    cJSON *item = cJSON_CreateObject();

    // location_search_response->valid
    if(location_search_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", location_search_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // location_search_response->message
    if(location_search_response->message) {
    if(cJSON_AddStringToObject(item, "message", location_search_response->message) == NULL) {
    goto fail; //String
    }
    }


    // location_search_response->version
    if(location_search_response->version) {
    if(cJSON_AddNumberToObject(item, "version", location_search_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // location_search_response->serialize_nulls
    if(location_search_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", location_search_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // location_search_response->start_time_log
    if(location_search_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", location_search_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // location_search_response->error_code
    if(location_search_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", location_search_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // location_search_response->request
    if(location_search_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (location_search_response->request) {
    list_ForEach(requestListEntry, location_search_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // location_search_response->count
    if(location_search_response->count) {
    if(cJSON_AddNumberToObject(item, "count", location_search_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // location_search_response->locations
    if(location_search_response->locations) {
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (location_search_response->locations) {
    list_ForEach(locationsListEntry, location_search_response->locations) {
    cJSON *itemLocal = location_response_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }
    }


    // location_search_response->returning
    if(location_search_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", location_search_response->returning) == NULL) {
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

location_search_response_t *location_search_response_parseFromJSON(cJSON *location_search_responseJSON){

    location_search_response_t *location_search_response_local_var = NULL;

    // define the local list for location_search_response->request
    list_t *requestList = NULL;

    // define the local list for location_search_response->locations
    list_t *locationsList = NULL;

    // location_search_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // location_search_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // location_search_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // location_search_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // location_search_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // location_search_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // location_search_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "request");
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

    // location_search_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // location_search_response->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "locations");
    if (cJSON_IsNull(locations)) {
        locations = NULL;
    }
    if (locations) { 
    cJSON *locations_local_nonprimitive = NULL;
    if(!cJSON_IsArray(locations)){
        goto end; //nonprimitive container
    }

    locationsList = list_createList();

    cJSON_ArrayForEach(locations_local_nonprimitive,locations )
    {
        if(!cJSON_IsObject(locations_local_nonprimitive)){
            goto end;
        }
        location_response_t *locationsItem = location_response_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }
    }

    // location_search_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(location_search_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    location_search_response_local_var = location_search_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        count ? count->valuedouble : 0,
        locations ? locationsList : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return location_search_response_local_var;
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
    if (locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, locationsList) {
            location_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(locationsList);
        locationsList = NULL;
    }
    return NULL;

}
