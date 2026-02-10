#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "routing_list_response.h"



static routing_list_response_t *routing_list_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    list_t *debug,
    char *returning
    ) {
    routing_list_response_t *routing_list_response_local_var = malloc(sizeof(routing_list_response_t));
    if (!routing_list_response_local_var) {
        return NULL;
    }
    routing_list_response_local_var->valid = valid;
    routing_list_response_local_var->message = message;
    routing_list_response_local_var->version = version;
    routing_list_response_local_var->serialize_nulls = serialize_nulls;
    routing_list_response_local_var->start_time_log = start_time_log;
    routing_list_response_local_var->error_code = error_code;
    routing_list_response_local_var->request = request;
    routing_list_response_local_var->items = items;
    routing_list_response_local_var->count = count;
    routing_list_response_local_var->debug = debug;
    routing_list_response_local_var->returning = returning;

    routing_list_response_local_var->_library_owned = 1;
    return routing_list_response_local_var;
}

__attribute__((deprecated)) routing_list_response_t *routing_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    list_t *debug,
    char *returning
    ) {
    return routing_list_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        items,
        count,
        debug,
        returning
        );
}

void routing_list_response_free(routing_list_response_t *routing_list_response) {
    if(NULL == routing_list_response){
        return ;
    }
    if(routing_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "routing_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (routing_list_response->message) {
        free(routing_list_response->message);
        routing_list_response->message = NULL;
    }
    if (routing_list_response->error_code) {
        free(routing_list_response->error_code);
        routing_list_response->error_code = NULL;
    }
    if (routing_list_response->request) {
        list_ForEach(listEntry, routing_list_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(routing_list_response->request);
        routing_list_response->request = NULL;
    }
    if (routing_list_response->items) {
        list_ForEach(listEntry, routing_list_response->items) {
            routing_response_free(listEntry->data);
        }
        list_freeList(routing_list_response->items);
        routing_list_response->items = NULL;
    }
    if (routing_list_response->debug) {
        list_ForEach(listEntry, routing_list_response->debug) {
            free(listEntry->data);
        }
        list_freeList(routing_list_response->debug);
        routing_list_response->debug = NULL;
    }
    if (routing_list_response->returning) {
        free(routing_list_response->returning);
        routing_list_response->returning = NULL;
    }
    free(routing_list_response);
}

cJSON *routing_list_response_convertToJSON(routing_list_response_t *routing_list_response) {
    cJSON *item = cJSON_CreateObject();

    // routing_list_response->valid
    if(routing_list_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", routing_list_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // routing_list_response->message
    if(routing_list_response->message) {
    if(cJSON_AddStringToObject(item, "message", routing_list_response->message) == NULL) {
    goto fail; //String
    }
    }


    // routing_list_response->version
    if(routing_list_response->version) {
    if(cJSON_AddNumberToObject(item, "version", routing_list_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_list_response->serialize_nulls
    if(routing_list_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", routing_list_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // routing_list_response->start_time_log
    if(routing_list_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", routing_list_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_list_response->error_code
    if(routing_list_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", routing_list_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // routing_list_response->request
    if(routing_list_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (routing_list_response->request) {
    list_ForEach(requestListEntry, routing_list_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // routing_list_response->items
    if(routing_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (routing_list_response->items) {
    list_ForEach(itemsListEntry, routing_list_response->items) {
    cJSON *itemLocal = routing_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // routing_list_response->count
    if(routing_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", routing_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // routing_list_response->debug
    if(routing_list_response->debug) {
    cJSON *debug = cJSON_AddArrayToObject(item, "debug");
    if(debug == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *debugListEntry;
    list_ForEach(debugListEntry, routing_list_response->debug) {
    if(cJSON_AddStringToObject(debug, "", debugListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // routing_list_response->returning
    if(routing_list_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", routing_list_response->returning) == NULL) {
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

routing_list_response_t *routing_list_response_parseFromJSON(cJSON *routing_list_responseJSON){

    routing_list_response_t *routing_list_response_local_var = NULL;

    // define the local list for routing_list_response->request
    list_t *requestList = NULL;

    // define the local list for routing_list_response->items
    list_t *itemsList = NULL;

    // define the local list for routing_list_response->debug
    list_t *debugList = NULL;

    // routing_list_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // routing_list_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // routing_list_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // routing_list_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // routing_list_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // routing_list_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // routing_list_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "request");
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

    // routing_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "items");
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
        routing_response_t *itemsItem = routing_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // routing_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // routing_list_response->debug
    cJSON *debug = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "debug");
    if (cJSON_IsNull(debug)) {
        debug = NULL;
    }
    if (debug) { 
    cJSON *debug_local = NULL;
    if(!cJSON_IsArray(debug)) {
        goto end;//primitive container
    }
    debugList = list_createList();

    cJSON_ArrayForEach(debug_local, debug)
    {
        if(!cJSON_IsString(debug_local))
        {
            goto end;
        }
        list_addElement(debugList , strdup(debug_local->valuestring));
    }
    }

    // routing_list_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(routing_list_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    routing_list_response_local_var = routing_list_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        items ? itemsList : NULL,
        count ? count->valuedouble : 0,
        debug ? debugList : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return routing_list_response_local_var;
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
            routing_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    if (debugList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, debugList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(debugList);
        debugList = NULL;
    }
    return NULL;

}
