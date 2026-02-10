#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ticket_list_response.h"



static ticket_list_response_t *ticket_list_response_create_internal(
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
    ticket_list_response_t *ticket_list_response_local_var = malloc(sizeof(ticket_list_response_t));
    if (!ticket_list_response_local_var) {
        return NULL;
    }
    ticket_list_response_local_var->valid = valid;
    ticket_list_response_local_var->message = message;
    ticket_list_response_local_var->version = version;
    ticket_list_response_local_var->serialize_nulls = serialize_nulls;
    ticket_list_response_local_var->start_time_log = start_time_log;
    ticket_list_response_local_var->error_code = error_code;
    ticket_list_response_local_var->request = request;
    ticket_list_response_local_var->items = items;
    ticket_list_response_local_var->count = count;
    ticket_list_response_local_var->has_more_results = has_more_results;
    ticket_list_response_local_var->start = start;
    ticket_list_response_local_var->limit = limit;
    ticket_list_response_local_var->count_total = count_total;
    ticket_list_response_local_var->returning = returning;

    ticket_list_response_local_var->_library_owned = 1;
    return ticket_list_response_local_var;
}

__attribute__((deprecated)) ticket_list_response_t *ticket_list_response_create(
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
    return ticket_list_response_create_internal (
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

void ticket_list_response_free(ticket_list_response_t *ticket_list_response) {
    if(NULL == ticket_list_response){
        return ;
    }
    if(ticket_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ticket_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ticket_list_response->message) {
        free(ticket_list_response->message);
        ticket_list_response->message = NULL;
    }
    if (ticket_list_response->error_code) {
        free(ticket_list_response->error_code);
        ticket_list_response->error_code = NULL;
    }
    if (ticket_list_response->request) {
        list_ForEach(listEntry, ticket_list_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(ticket_list_response->request);
        ticket_list_response->request = NULL;
    }
    if (ticket_list_response->items) {
        list_ForEach(listEntry, ticket_list_response->items) {
            ticket_response_free(listEntry->data);
        }
        list_freeList(ticket_list_response->items);
        ticket_list_response->items = NULL;
    }
    if (ticket_list_response->returning) {
        free(ticket_list_response->returning);
        ticket_list_response->returning = NULL;
    }
    free(ticket_list_response);
}

cJSON *ticket_list_response_convertToJSON(ticket_list_response_t *ticket_list_response) {
    cJSON *item = cJSON_CreateObject();

    // ticket_list_response->valid
    if(ticket_list_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", ticket_list_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // ticket_list_response->message
    if(ticket_list_response->message) {
    if(cJSON_AddStringToObject(item, "message", ticket_list_response->message) == NULL) {
    goto fail; //String
    }
    }


    // ticket_list_response->version
    if(ticket_list_response->version) {
    if(cJSON_AddNumberToObject(item, "version", ticket_list_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_list_response->serialize_nulls
    if(ticket_list_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", ticket_list_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // ticket_list_response->start_time_log
    if(ticket_list_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", ticket_list_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_list_response->error_code
    if(ticket_list_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", ticket_list_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // ticket_list_response->request
    if(ticket_list_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (ticket_list_response->request) {
    list_ForEach(requestListEntry, ticket_list_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // ticket_list_response->items
    if(ticket_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (ticket_list_response->items) {
    list_ForEach(itemsListEntry, ticket_list_response->items) {
    cJSON *itemLocal = ticket_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // ticket_list_response->count
    if(ticket_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", ticket_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_list_response->has_more_results
    if(ticket_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", ticket_list_response->has_more_results) == NULL) {
    goto fail; //Bool
    }
    }


    // ticket_list_response->start
    if(ticket_list_response->start) {
    if(cJSON_AddNumberToObject(item, "start", ticket_list_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_list_response->limit
    if(ticket_list_response->limit) {
    if(cJSON_AddNumberToObject(item, "limit", ticket_list_response->limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_list_response->count_total
    if(ticket_list_response->count_total) {
    if(cJSON_AddNumberToObject(item, "countTotal", ticket_list_response->count_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_list_response->returning
    if(ticket_list_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", ticket_list_response->returning) == NULL) {
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

ticket_list_response_t *ticket_list_response_parseFromJSON(cJSON *ticket_list_responseJSON){

    ticket_list_response_t *ticket_list_response_local_var = NULL;

    // define the local list for ticket_list_response->request
    list_t *requestList = NULL;

    // define the local list for ticket_list_response->items
    list_t *itemsList = NULL;

    // ticket_list_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // ticket_list_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // ticket_list_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // ticket_list_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // ticket_list_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // ticket_list_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // ticket_list_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "request");
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

    // ticket_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "items");
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
        ticket_response_t *itemsItem = ticket_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // ticket_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // ticket_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }

    // ticket_list_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // ticket_list_response->limit
    cJSON *limit = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "limit");
    if (cJSON_IsNull(limit)) {
        limit = NULL;
    }
    if (limit) { 
    if(!cJSON_IsNumber(limit))
    {
    goto end; //Numeric
    }
    }

    // ticket_list_response->count_total
    cJSON *count_total = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "countTotal");
    if (cJSON_IsNull(count_total)) {
        count_total = NULL;
    }
    if (count_total) { 
    if(!cJSON_IsNumber(count_total))
    {
    goto end; //Numeric
    }
    }

    // ticket_list_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(ticket_list_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    ticket_list_response_local_var = ticket_list_response_create_internal (
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

    return ticket_list_response_local_var;
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
            ticket_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
