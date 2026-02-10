#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_list_response.h"



static account_list_response_t *account_list_response_create_internal(
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
    int start,
    int limit,
    long count_total,
    char *returning
    ) {
    account_list_response_t *account_list_response_local_var = malloc(sizeof(account_list_response_t));
    if (!account_list_response_local_var) {
        return NULL;
    }
    account_list_response_local_var->valid = valid;
    account_list_response_local_var->message = message;
    account_list_response_local_var->version = version;
    account_list_response_local_var->serialize_nulls = serialize_nulls;
    account_list_response_local_var->start_time_log = start_time_log;
    account_list_response_local_var->error_code = error_code;
    account_list_response_local_var->request = request;
    account_list_response_local_var->items = items;
    account_list_response_local_var->count = count;
    account_list_response_local_var->has_more_results = has_more_results;
    account_list_response_local_var->start = start;
    account_list_response_local_var->limit = limit;
    account_list_response_local_var->count_total = count_total;
    account_list_response_local_var->returning = returning;

    account_list_response_local_var->_library_owned = 1;
    return account_list_response_local_var;
}

__attribute__((deprecated)) account_list_response_t *account_list_response_create(
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
    int start,
    int limit,
    long count_total,
    char *returning
    ) {
    return account_list_response_create_internal (
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
        start,
        limit,
        count_total,
        returning
        );
}

void account_list_response_free(account_list_response_t *account_list_response) {
    if(NULL == account_list_response){
        return ;
    }
    if(account_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "account_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (account_list_response->message) {
        free(account_list_response->message);
        account_list_response->message = NULL;
    }
    if (account_list_response->error_code) {
        free(account_list_response->error_code);
        account_list_response->error_code = NULL;
    }
    if (account_list_response->request) {
        list_ForEach(listEntry, account_list_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(account_list_response->request);
        account_list_response->request = NULL;
    }
    if (account_list_response->items) {
        list_ForEach(listEntry, account_list_response->items) {
            account_response_free(listEntry->data);
        }
        list_freeList(account_list_response->items);
        account_list_response->items = NULL;
    }
    if (account_list_response->returning) {
        free(account_list_response->returning);
        account_list_response->returning = NULL;
    }
    free(account_list_response);
}

cJSON *account_list_response_convertToJSON(account_list_response_t *account_list_response) {
    cJSON *item = cJSON_CreateObject();

    // account_list_response->valid
    if(account_list_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", account_list_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // account_list_response->message
    if(account_list_response->message) {
    if(cJSON_AddStringToObject(item, "message", account_list_response->message) == NULL) {
    goto fail; //String
    }
    }


    // account_list_response->version
    if(account_list_response->version) {
    if(cJSON_AddNumberToObject(item, "version", account_list_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_list_response->serialize_nulls
    if(account_list_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", account_list_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // account_list_response->start_time_log
    if(account_list_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", account_list_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_list_response->error_code
    if(account_list_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", account_list_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // account_list_response->request
    if(account_list_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (account_list_response->request) {
    list_ForEach(requestListEntry, account_list_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // account_list_response->items
    if(account_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (account_list_response->items) {
    list_ForEach(itemsListEntry, account_list_response->items) {
    cJSON *itemLocal = account_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // account_list_response->count
    if(account_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", account_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_list_response->has_more_results
    if(account_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", account_list_response->has_more_results) == NULL) {
    goto fail; //Bool
    }
    }


    // account_list_response->start
    if(account_list_response->start) {
    if(cJSON_AddNumberToObject(item, "start", account_list_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_list_response->limit
    if(account_list_response->limit) {
    if(cJSON_AddNumberToObject(item, "limit", account_list_response->limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_list_response->count_total
    if(account_list_response->count_total) {
    if(cJSON_AddNumberToObject(item, "countTotal", account_list_response->count_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_list_response->returning
    if(account_list_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", account_list_response->returning) == NULL) {
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

account_list_response_t *account_list_response_parseFromJSON(cJSON *account_list_responseJSON){

    account_list_response_t *account_list_response_local_var = NULL;

    // define the local list for account_list_response->request
    list_t *requestList = NULL;

    // define the local list for account_list_response->items
    list_t *itemsList = NULL;

    // account_list_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // account_list_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // account_list_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // account_list_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // account_list_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // account_list_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // account_list_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "request");
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

    // account_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "items");
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
        account_response_t *itemsItem = account_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // account_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // account_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }

    // account_list_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // account_list_response->limit
    cJSON *limit = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "limit");
    if (cJSON_IsNull(limit)) {
        limit = NULL;
    }
    if (limit) { 
    if(!cJSON_IsNumber(limit))
    {
    goto end; //Numeric
    }
    }

    // account_list_response->count_total
    cJSON *count_total = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "countTotal");
    if (cJSON_IsNull(count_total)) {
        count_total = NULL;
    }
    if (count_total) { 
    if(!cJSON_IsNumber(count_total))
    {
    goto end; //Numeric
    }
    }

    // account_list_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(account_list_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    account_list_response_local_var = account_list_response_create_internal (
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
        start ? start->valuedouble : 0,
        limit ? limit->valuedouble : 0,
        count_total ? count_total->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return account_list_response_local_var;
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
            account_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
