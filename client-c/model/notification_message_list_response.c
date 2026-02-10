#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "notification_message_list_response.h"



static notification_message_list_response_t *notification_message_list_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    int has_more_results,
    char *returning
    ) {
    notification_message_list_response_t *notification_message_list_response_local_var = malloc(sizeof(notification_message_list_response_t));
    if (!notification_message_list_response_local_var) {
        return NULL;
    }
    notification_message_list_response_local_var->valid = valid;
    notification_message_list_response_local_var->message = message;
    notification_message_list_response_local_var->version = version;
    notification_message_list_response_local_var->serialize_nulls = serialize_nulls;
    notification_message_list_response_local_var->start_time_log = start_time_log;
    notification_message_list_response_local_var->error_code = error_code;
    notification_message_list_response_local_var->request = request;
    notification_message_list_response_local_var->items = items;
    notification_message_list_response_local_var->count = count;
    notification_message_list_response_local_var->has_more_results = has_more_results;
    notification_message_list_response_local_var->returning = returning;

    notification_message_list_response_local_var->_library_owned = 1;
    return notification_message_list_response_local_var;
}

__attribute__((deprecated)) notification_message_list_response_t *notification_message_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    int has_more_results,
    char *returning
    ) {
    return notification_message_list_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        items,
        count,
        has_more_results,
        returning
        );
}

void notification_message_list_response_free(notification_message_list_response_t *notification_message_list_response) {
    if(NULL == notification_message_list_response){
        return ;
    }
    if(notification_message_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "notification_message_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (notification_message_list_response->message) {
        free(notification_message_list_response->message);
        notification_message_list_response->message = NULL;
    }
    if (notification_message_list_response->error_code) {
        free(notification_message_list_response->error_code);
        notification_message_list_response->error_code = NULL;
    }
    if (notification_message_list_response->request) {
        list_ForEach(listEntry, notification_message_list_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(notification_message_list_response->request);
        notification_message_list_response->request = NULL;
    }
    if (notification_message_list_response->items) {
        list_ForEach(listEntry, notification_message_list_response->items) {
            notification_message_response_free(listEntry->data);
        }
        list_freeList(notification_message_list_response->items);
        notification_message_list_response->items = NULL;
    }
    if (notification_message_list_response->returning) {
        free(notification_message_list_response->returning);
        notification_message_list_response->returning = NULL;
    }
    free(notification_message_list_response);
}

cJSON *notification_message_list_response_convertToJSON(notification_message_list_response_t *notification_message_list_response) {
    cJSON *item = cJSON_CreateObject();

    // notification_message_list_response->valid
    if(notification_message_list_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", notification_message_list_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // notification_message_list_response->message
    if(notification_message_list_response->message) {
    if(cJSON_AddStringToObject(item, "message", notification_message_list_response->message) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_list_response->version
    if(notification_message_list_response->version) {
    if(cJSON_AddNumberToObject(item, "version", notification_message_list_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_message_list_response->serialize_nulls
    if(notification_message_list_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", notification_message_list_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // notification_message_list_response->start_time_log
    if(notification_message_list_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", notification_message_list_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_message_list_response->error_code
    if(notification_message_list_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", notification_message_list_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_list_response->request
    if(notification_message_list_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (notification_message_list_response->request) {
    list_ForEach(requestListEntry, notification_message_list_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // notification_message_list_response->items
    if(notification_message_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (notification_message_list_response->items) {
    list_ForEach(itemsListEntry, notification_message_list_response->items) {
    cJSON *itemLocal = notification_message_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // notification_message_list_response->count
    if(notification_message_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", notification_message_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_message_list_response->has_more_results
    if(notification_message_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", notification_message_list_response->has_more_results) == NULL) {
    goto fail; //Bool
    }
    }


    // notification_message_list_response->returning
    if(notification_message_list_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", notification_message_list_response->returning) == NULL) {
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

notification_message_list_response_t *notification_message_list_response_parseFromJSON(cJSON *notification_message_list_responseJSON){

    notification_message_list_response_t *notification_message_list_response_local_var = NULL;

    // define the local list for notification_message_list_response->request
    list_t *requestList = NULL;

    // define the local list for notification_message_list_response->items
    list_t *itemsList = NULL;

    // notification_message_list_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // notification_message_list_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // notification_message_list_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // notification_message_list_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // notification_message_list_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // notification_message_list_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // notification_message_list_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "request");
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

    // notification_message_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        notification_message_response_t *itemsItem = notification_message_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // notification_message_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // notification_message_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }

    // notification_message_list_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(notification_message_list_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    notification_message_list_response_local_var = notification_message_list_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        items ? itemsList : NULL,
        count ? count->valuedouble : 0,
        has_more_results ? has_more_results->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return notification_message_list_response_local_var;
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
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            notification_message_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
