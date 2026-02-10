#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "list_response.h"



static list_response_t *list_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    char *returning
    ) {
    list_response_t *list_response_local_var = malloc(sizeof(list_response_t));
    if (!list_response_local_var) {
        return NULL;
    }
    list_response_local_var->valid = valid;
    list_response_local_var->message = message;
    list_response_local_var->version = version;
    list_response_local_var->serialize_nulls = serialize_nulls;
    list_response_local_var->start_time_log = start_time_log;
    list_response_local_var->error_code = error_code;
    list_response_local_var->request = request;
    list_response_local_var->items = items;
    list_response_local_var->count = count;
    list_response_local_var->returning = returning;

    list_response_local_var->_library_owned = 1;
    return list_response_local_var;
}

__attribute__((deprecated)) list_response_t *list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    char *returning
    ) {
    return list_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        items,
        count,
        returning
        );
}

void list_response_free(list_response_t *list_response) {
    if(NULL == list_response){
        return ;
    }
    if(list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (list_response->message) {
        free(list_response->message);
        list_response->message = NULL;
    }
    if (list_response->error_code) {
        free(list_response->error_code);
        list_response->error_code = NULL;
    }
    if (list_response->request) {
        list_ForEach(listEntry, list_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(list_response->request);
        list_response->request = NULL;
    }
    if (list_response->items) {
        list_ForEach(listEntry, list_response->items) {
            object_free(listEntry->data);
        }
        list_freeList(list_response->items);
        list_response->items = NULL;
    }
    if (list_response->returning) {
        free(list_response->returning);
        list_response->returning = NULL;
    }
    free(list_response);
}

cJSON *list_response_convertToJSON(list_response_t *list_response) {
    cJSON *item = cJSON_CreateObject();

    // list_response->valid
    if(list_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", list_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // list_response->message
    if(list_response->message) {
    if(cJSON_AddStringToObject(item, "message", list_response->message) == NULL) {
    goto fail; //String
    }
    }


    // list_response->version
    if(list_response->version) {
    if(cJSON_AddNumberToObject(item, "version", list_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_response->serialize_nulls
    if(list_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", list_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // list_response->start_time_log
    if(list_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", list_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_response->error_code
    if(list_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", list_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // list_response->request
    if(list_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (list_response->request) {
    list_ForEach(requestListEntry, list_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // list_response->items
    if(list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (list_response->items) {
    list_ForEach(itemsListEntry, list_response->items) {
    cJSON *itemLocal = object_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // list_response->count
    if(list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // list_response->returning
    if(list_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", list_response->returning) == NULL) {
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

list_response_t *list_response_parseFromJSON(cJSON *list_responseJSON){

    list_response_t *list_response_local_var = NULL;

    // define the local list for list_response->request
    list_t *requestList = NULL;

    // define the local list for list_response->items
    list_t *itemsList = NULL;

    // list_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // list_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // list_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // list_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // list_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // list_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // list_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "request");
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

    // list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "items");
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
        object_t *itemsItem = object_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // list_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(list_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    list_response_local_var = list_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        items ? itemsList : NULL,
        count ? count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return list_response_local_var;
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
            object_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
