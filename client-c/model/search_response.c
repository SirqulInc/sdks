#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "search_response.h"



static search_response_t *search_response_create_internal(
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
    long count_total,
    long start,
    long limit,
    char *returning
    ) {
    search_response_t *search_response_local_var = malloc(sizeof(search_response_t));
    if (!search_response_local_var) {
        return NULL;
    }
    search_response_local_var->valid = valid;
    search_response_local_var->message = message;
    search_response_local_var->version = version;
    search_response_local_var->serialize_nulls = serialize_nulls;
    search_response_local_var->start_time_log = start_time_log;
    search_response_local_var->error_code = error_code;
    search_response_local_var->request = request;
    search_response_local_var->items = items;
    search_response_local_var->count = count;
    search_response_local_var->has_more_results = has_more_results;
    search_response_local_var->count_total = count_total;
    search_response_local_var->start = start;
    search_response_local_var->limit = limit;
    search_response_local_var->returning = returning;

    search_response_local_var->_library_owned = 1;
    return search_response_local_var;
}

__attribute__((deprecated)) search_response_t *search_response_create(
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
    long count_total,
    long start,
    long limit,
    char *returning
    ) {
    return search_response_create_internal (
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
        count_total,
        start,
        limit,
        returning
        );
}

void search_response_free(search_response_t *search_response) {
    if(NULL == search_response){
        return ;
    }
    if(search_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "search_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (search_response->message) {
        free(search_response->message);
        search_response->message = NULL;
    }
    if (search_response->error_code) {
        free(search_response->error_code);
        search_response->error_code = NULL;
    }
    if (search_response->request) {
        list_ForEach(listEntry, search_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(search_response->request);
        search_response->request = NULL;
    }
    if (search_response->items) {
        list_ForEach(listEntry, search_response->items) {
            object_free(listEntry->data);
        }
        list_freeList(search_response->items);
        search_response->items = NULL;
    }
    if (search_response->returning) {
        free(search_response->returning);
        search_response->returning = NULL;
    }
    free(search_response);
}

cJSON *search_response_convertToJSON(search_response_t *search_response) {
    cJSON *item = cJSON_CreateObject();

    // search_response->valid
    if(search_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", search_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // search_response->message
    if(search_response->message) {
    if(cJSON_AddStringToObject(item, "message", search_response->message) == NULL) {
    goto fail; //String
    }
    }


    // search_response->version
    if(search_response->version) {
    if(cJSON_AddNumberToObject(item, "version", search_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // search_response->serialize_nulls
    if(search_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", search_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // search_response->start_time_log
    if(search_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", search_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // search_response->error_code
    if(search_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", search_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // search_response->request
    if(search_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (search_response->request) {
    list_ForEach(requestListEntry, search_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // search_response->items
    if(search_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (search_response->items) {
    list_ForEach(itemsListEntry, search_response->items) {
    cJSON *itemLocal = object_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // search_response->count
    if(search_response->count) {
    if(cJSON_AddNumberToObject(item, "count", search_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // search_response->has_more_results
    if(search_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", search_response->has_more_results) == NULL) {
    goto fail; //Bool
    }
    }


    // search_response->count_total
    if(search_response->count_total) {
    if(cJSON_AddNumberToObject(item, "countTotal", search_response->count_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // search_response->start
    if(search_response->start) {
    if(cJSON_AddNumberToObject(item, "start", search_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // search_response->limit
    if(search_response->limit) {
    if(cJSON_AddNumberToObject(item, "limit", search_response->limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // search_response->returning
    if(search_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", search_response->returning) == NULL) {
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

search_response_t *search_response_parseFromJSON(cJSON *search_responseJSON){

    search_response_t *search_response_local_var = NULL;

    // define the local list for search_response->request
    list_t *requestList = NULL;

    // define the local list for search_response->items
    list_t *itemsList = NULL;

    // search_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // search_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // search_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // search_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // search_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // search_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // search_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "request");
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

    // search_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "items");
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

    // search_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // search_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }

    // search_response->count_total
    cJSON *count_total = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "countTotal");
    if (cJSON_IsNull(count_total)) {
        count_total = NULL;
    }
    if (count_total) { 
    if(!cJSON_IsNumber(count_total))
    {
    goto end; //Numeric
    }
    }

    // search_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // search_response->limit
    cJSON *limit = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "limit");
    if (cJSON_IsNull(limit)) {
        limit = NULL;
    }
    if (limit) { 
    if(!cJSON_IsNumber(limit))
    {
    goto end; //Numeric
    }
    }

    // search_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(search_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    search_response_local_var = search_response_create_internal (
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
        count_total ? count_total->valuedouble : 0,
        start ? start->valuedouble : 0,
        limit ? limit->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return search_response_local_var;
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
