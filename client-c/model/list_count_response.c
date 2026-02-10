#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "list_count_response.h"



static list_count_response_t *list_count_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long location_offers_count,
    long instant_offers_count,
    long all_offers_count,
    char *returning
    ) {
    list_count_response_t *list_count_response_local_var = malloc(sizeof(list_count_response_t));
    if (!list_count_response_local_var) {
        return NULL;
    }
    list_count_response_local_var->valid = valid;
    list_count_response_local_var->message = message;
    list_count_response_local_var->version = version;
    list_count_response_local_var->serialize_nulls = serialize_nulls;
    list_count_response_local_var->start_time_log = start_time_log;
    list_count_response_local_var->error_code = error_code;
    list_count_response_local_var->request = request;
    list_count_response_local_var->location_offers_count = location_offers_count;
    list_count_response_local_var->instant_offers_count = instant_offers_count;
    list_count_response_local_var->all_offers_count = all_offers_count;
    list_count_response_local_var->returning = returning;

    list_count_response_local_var->_library_owned = 1;
    return list_count_response_local_var;
}

__attribute__((deprecated)) list_count_response_t *list_count_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long location_offers_count,
    long instant_offers_count,
    long all_offers_count,
    char *returning
    ) {
    return list_count_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        location_offers_count,
        instant_offers_count,
        all_offers_count,
        returning
        );
}

void list_count_response_free(list_count_response_t *list_count_response) {
    if(NULL == list_count_response){
        return ;
    }
    if(list_count_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "list_count_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (list_count_response->message) {
        free(list_count_response->message);
        list_count_response->message = NULL;
    }
    if (list_count_response->error_code) {
        free(list_count_response->error_code);
        list_count_response->error_code = NULL;
    }
    if (list_count_response->request) {
        list_ForEach(listEntry, list_count_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(list_count_response->request);
        list_count_response->request = NULL;
    }
    if (list_count_response->returning) {
        free(list_count_response->returning);
        list_count_response->returning = NULL;
    }
    free(list_count_response);
}

cJSON *list_count_response_convertToJSON(list_count_response_t *list_count_response) {
    cJSON *item = cJSON_CreateObject();

    // list_count_response->valid
    if(list_count_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", list_count_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // list_count_response->message
    if(list_count_response->message) {
    if(cJSON_AddStringToObject(item, "message", list_count_response->message) == NULL) {
    goto fail; //String
    }
    }


    // list_count_response->version
    if(list_count_response->version) {
    if(cJSON_AddNumberToObject(item, "version", list_count_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_count_response->serialize_nulls
    if(list_count_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", list_count_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // list_count_response->start_time_log
    if(list_count_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", list_count_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_count_response->error_code
    if(list_count_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", list_count_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // list_count_response->request
    if(list_count_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (list_count_response->request) {
    list_ForEach(requestListEntry, list_count_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // list_count_response->location_offers_count
    if(list_count_response->location_offers_count) {
    if(cJSON_AddNumberToObject(item, "locationOffersCount", list_count_response->location_offers_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_count_response->instant_offers_count
    if(list_count_response->instant_offers_count) {
    if(cJSON_AddNumberToObject(item, "instantOffersCount", list_count_response->instant_offers_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_count_response->all_offers_count
    if(list_count_response->all_offers_count) {
    if(cJSON_AddNumberToObject(item, "allOffersCount", list_count_response->all_offers_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_count_response->returning
    if(list_count_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", list_count_response->returning) == NULL) {
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

list_count_response_t *list_count_response_parseFromJSON(cJSON *list_count_responseJSON){

    list_count_response_t *list_count_response_local_var = NULL;

    // define the local list for list_count_response->request
    list_t *requestList = NULL;

    // list_count_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // list_count_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // list_count_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // list_count_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // list_count_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // list_count_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // list_count_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "request");
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

    // list_count_response->location_offers_count
    cJSON *location_offers_count = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "locationOffersCount");
    if (cJSON_IsNull(location_offers_count)) {
        location_offers_count = NULL;
    }
    if (location_offers_count) { 
    if(!cJSON_IsNumber(location_offers_count))
    {
    goto end; //Numeric
    }
    }

    // list_count_response->instant_offers_count
    cJSON *instant_offers_count = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "instantOffersCount");
    if (cJSON_IsNull(instant_offers_count)) {
        instant_offers_count = NULL;
    }
    if (instant_offers_count) { 
    if(!cJSON_IsNumber(instant_offers_count))
    {
    goto end; //Numeric
    }
    }

    // list_count_response->all_offers_count
    cJSON *all_offers_count = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "allOffersCount");
    if (cJSON_IsNull(all_offers_count)) {
        all_offers_count = NULL;
    }
    if (all_offers_count) { 
    if(!cJSON_IsNumber(all_offers_count))
    {
    goto end; //Numeric
    }
    }

    // list_count_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(list_count_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    list_count_response_local_var = list_count_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        location_offers_count ? location_offers_count->valuedouble : 0,
        instant_offers_count ? instant_offers_count->valuedouble : 0,
        all_offers_count ? all_offers_count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return list_count_response_local_var;
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
