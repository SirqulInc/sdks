#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "wrapped_response.h"



static wrapped_response_t *wrapped_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *type,
    object_t *item,
    message_list_response_t *messages,
    char *returning
    ) {
    wrapped_response_t *wrapped_response_local_var = malloc(sizeof(wrapped_response_t));
    if (!wrapped_response_local_var) {
        return NULL;
    }
    wrapped_response_local_var->valid = valid;
    wrapped_response_local_var->message = message;
    wrapped_response_local_var->version = version;
    wrapped_response_local_var->serialize_nulls = serialize_nulls;
    wrapped_response_local_var->start_time_log = start_time_log;
    wrapped_response_local_var->error_code = error_code;
    wrapped_response_local_var->request = request;
    wrapped_response_local_var->type = type;
    wrapped_response_local_var->item = item;
    wrapped_response_local_var->messages = messages;
    wrapped_response_local_var->returning = returning;

    wrapped_response_local_var->_library_owned = 1;
    return wrapped_response_local_var;
}

__attribute__((deprecated)) wrapped_response_t *wrapped_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *type,
    object_t *item,
    message_list_response_t *messages,
    char *returning
    ) {
    return wrapped_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        type,
        item,
        messages,
        returning
        );
}

void wrapped_response_free(wrapped_response_t *wrapped_response) {
    if(NULL == wrapped_response){
        return ;
    }
    if(wrapped_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "wrapped_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (wrapped_response->message) {
        free(wrapped_response->message);
        wrapped_response->message = NULL;
    }
    if (wrapped_response->error_code) {
        free(wrapped_response->error_code);
        wrapped_response->error_code = NULL;
    }
    if (wrapped_response->request) {
        list_ForEach(listEntry, wrapped_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(wrapped_response->request);
        wrapped_response->request = NULL;
    }
    if (wrapped_response->type) {
        free(wrapped_response->type);
        wrapped_response->type = NULL;
    }
    if (wrapped_response->item) {
        object_free(wrapped_response->item);
        wrapped_response->item = NULL;
    }
    if (wrapped_response->messages) {
        message_list_response_free(wrapped_response->messages);
        wrapped_response->messages = NULL;
    }
    if (wrapped_response->returning) {
        free(wrapped_response->returning);
        wrapped_response->returning = NULL;
    }
    free(wrapped_response);
}

cJSON *wrapped_response_convertToJSON(wrapped_response_t *wrapped_response) {
    cJSON *item = cJSON_CreateObject();

    // wrapped_response->valid
    if(wrapped_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", wrapped_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // wrapped_response->message
    if(wrapped_response->message) {
    if(cJSON_AddStringToObject(item, "message", wrapped_response->message) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_response->version
    if(wrapped_response->version) {
    if(cJSON_AddNumberToObject(item, "version", wrapped_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // wrapped_response->serialize_nulls
    if(wrapped_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", wrapped_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // wrapped_response->start_time_log
    if(wrapped_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", wrapped_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // wrapped_response->error_code
    if(wrapped_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", wrapped_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_response->request
    if(wrapped_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (wrapped_response->request) {
    list_ForEach(requestListEntry, wrapped_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // wrapped_response->type
    if(wrapped_response->type) {
    if(cJSON_AddStringToObject(item, "type", wrapped_response->type) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_response->item
    if(wrapped_response->item) {
    cJSON *item_object = object_convertToJSON(wrapped_response->item);
    if(item_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "item", item_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // wrapped_response->messages
    if(wrapped_response->messages) {
    cJSON *messages_local_JSON = message_list_response_convertToJSON(wrapped_response->messages);
    if(messages_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "messages", messages_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // wrapped_response->returning
    if(wrapped_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", wrapped_response->returning) == NULL) {
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

wrapped_response_t *wrapped_response_parseFromJSON(cJSON *wrapped_responseJSON){

    wrapped_response_t *wrapped_response_local_var = NULL;

    // define the local list for wrapped_response->request
    list_t *requestList = NULL;

    // define the local variable for wrapped_response->messages
    message_list_response_t *messages_local_nonprim = NULL;

    // wrapped_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // wrapped_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // wrapped_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // wrapped_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // wrapped_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // wrapped_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // wrapped_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "request");
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

    // wrapped_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // wrapped_response->item
    cJSON *item = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "item");
    if (cJSON_IsNull(item)) {
        item = NULL;
    }
    object_t *item_local_object = NULL;
    if (item) { 
    item_local_object = object_parseFromJSON(item); //object
    }

    // wrapped_response->messages
    cJSON *messages = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "messages");
    if (cJSON_IsNull(messages)) {
        messages = NULL;
    }
    if (messages) { 
    messages_local_nonprim = message_list_response_parseFromJSON(messages); //nonprimitive
    }

    // wrapped_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(wrapped_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    wrapped_response_local_var = wrapped_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        item ? item_local_object : NULL,
        messages ? messages_local_nonprim : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return wrapped_response_local_var;
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
    if (messages_local_nonprim) {
        message_list_response_free(messages_local_nonprim);
        messages_local_nonprim = NULL;
    }
    return NULL;

}
