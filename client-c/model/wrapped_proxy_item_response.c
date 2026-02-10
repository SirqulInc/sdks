#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "wrapped_proxy_item_response.h"



static wrapped_proxy_item_response_t *wrapped_proxy_item_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *returning,
    char *type,
    int response_code,
    char *response_raw,
    long request_duration,
    long request_end_time,
    image_generation_response_t *item
    ) {
    wrapped_proxy_item_response_t *wrapped_proxy_item_response_local_var = malloc(sizeof(wrapped_proxy_item_response_t));
    if (!wrapped_proxy_item_response_local_var) {
        return NULL;
    }
    wrapped_proxy_item_response_local_var->valid = valid;
    wrapped_proxy_item_response_local_var->message = message;
    wrapped_proxy_item_response_local_var->version = version;
    wrapped_proxy_item_response_local_var->serialize_nulls = serialize_nulls;
    wrapped_proxy_item_response_local_var->start_time_log = start_time_log;
    wrapped_proxy_item_response_local_var->error_code = error_code;
    wrapped_proxy_item_response_local_var->request = request;
    wrapped_proxy_item_response_local_var->returning = returning;
    wrapped_proxy_item_response_local_var->type = type;
    wrapped_proxy_item_response_local_var->response_code = response_code;
    wrapped_proxy_item_response_local_var->response_raw = response_raw;
    wrapped_proxy_item_response_local_var->request_duration = request_duration;
    wrapped_proxy_item_response_local_var->request_end_time = request_end_time;
    wrapped_proxy_item_response_local_var->item = item;

    wrapped_proxy_item_response_local_var->_library_owned = 1;
    return wrapped_proxy_item_response_local_var;
}

__attribute__((deprecated)) wrapped_proxy_item_response_t *wrapped_proxy_item_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *returning,
    char *type,
    int response_code,
    char *response_raw,
    long request_duration,
    long request_end_time,
    image_generation_response_t *item
    ) {
    return wrapped_proxy_item_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        returning,
        type,
        response_code,
        response_raw,
        request_duration,
        request_end_time,
        item
        );
}

void wrapped_proxy_item_response_free(wrapped_proxy_item_response_t *wrapped_proxy_item_response) {
    if(NULL == wrapped_proxy_item_response){
        return ;
    }
    if(wrapped_proxy_item_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "wrapped_proxy_item_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (wrapped_proxy_item_response->message) {
        free(wrapped_proxy_item_response->message);
        wrapped_proxy_item_response->message = NULL;
    }
    if (wrapped_proxy_item_response->error_code) {
        free(wrapped_proxy_item_response->error_code);
        wrapped_proxy_item_response->error_code = NULL;
    }
    if (wrapped_proxy_item_response->request) {
        list_ForEach(listEntry, wrapped_proxy_item_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(wrapped_proxy_item_response->request);
        wrapped_proxy_item_response->request = NULL;
    }
    if (wrapped_proxy_item_response->returning) {
        free(wrapped_proxy_item_response->returning);
        wrapped_proxy_item_response->returning = NULL;
    }
    if (wrapped_proxy_item_response->type) {
        free(wrapped_proxy_item_response->type);
        wrapped_proxy_item_response->type = NULL;
    }
    if (wrapped_proxy_item_response->response_raw) {
        free(wrapped_proxy_item_response->response_raw);
        wrapped_proxy_item_response->response_raw = NULL;
    }
    if (wrapped_proxy_item_response->item) {
        image_generation_response_free(wrapped_proxy_item_response->item);
        wrapped_proxy_item_response->item = NULL;
    }
    free(wrapped_proxy_item_response);
}

cJSON *wrapped_proxy_item_response_convertToJSON(wrapped_proxy_item_response_t *wrapped_proxy_item_response) {
    cJSON *item = cJSON_CreateObject();

    // wrapped_proxy_item_response->valid
    if(wrapped_proxy_item_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", wrapped_proxy_item_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // wrapped_proxy_item_response->message
    if(wrapped_proxy_item_response->message) {
    if(cJSON_AddStringToObject(item, "message", wrapped_proxy_item_response->message) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_proxy_item_response->version
    if(wrapped_proxy_item_response->version) {
    if(cJSON_AddNumberToObject(item, "version", wrapped_proxy_item_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // wrapped_proxy_item_response->serialize_nulls
    if(wrapped_proxy_item_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", wrapped_proxy_item_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // wrapped_proxy_item_response->start_time_log
    if(wrapped_proxy_item_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", wrapped_proxy_item_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // wrapped_proxy_item_response->error_code
    if(wrapped_proxy_item_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", wrapped_proxy_item_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_proxy_item_response->request
    if(wrapped_proxy_item_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (wrapped_proxy_item_response->request) {
    list_ForEach(requestListEntry, wrapped_proxy_item_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // wrapped_proxy_item_response->returning
    if(wrapped_proxy_item_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", wrapped_proxy_item_response->returning) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_proxy_item_response->type
    if(wrapped_proxy_item_response->type) {
    if(cJSON_AddStringToObject(item, "type", wrapped_proxy_item_response->type) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_proxy_item_response->response_code
    if(wrapped_proxy_item_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", wrapped_proxy_item_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // wrapped_proxy_item_response->response_raw
    if(wrapped_proxy_item_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", wrapped_proxy_item_response->response_raw) == NULL) {
    goto fail; //String
    }
    }


    // wrapped_proxy_item_response->request_duration
    if(wrapped_proxy_item_response->request_duration) {
    if(cJSON_AddNumberToObject(item, "requestDuration", wrapped_proxy_item_response->request_duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // wrapped_proxy_item_response->request_end_time
    if(wrapped_proxy_item_response->request_end_time) {
    if(cJSON_AddNumberToObject(item, "requestEndTime", wrapped_proxy_item_response->request_end_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // wrapped_proxy_item_response->item
    if(wrapped_proxy_item_response->item) {
    cJSON *item_local_JSON = image_generation_response_convertToJSON(wrapped_proxy_item_response->item);
    if(item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "item", item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

wrapped_proxy_item_response_t *wrapped_proxy_item_response_parseFromJSON(cJSON *wrapped_proxy_item_responseJSON){

    wrapped_proxy_item_response_t *wrapped_proxy_item_response_local_var = NULL;

    // define the local list for wrapped_proxy_item_response->request
    list_t *requestList = NULL;

    // define the local variable for wrapped_proxy_item_response->item
    image_generation_response_t *item_local_nonprim = NULL;

    // wrapped_proxy_item_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // wrapped_proxy_item_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // wrapped_proxy_item_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // wrapped_proxy_item_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // wrapped_proxy_item_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // wrapped_proxy_item_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // wrapped_proxy_item_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "request");
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

    // wrapped_proxy_item_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }

    // wrapped_proxy_item_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // wrapped_proxy_item_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // wrapped_proxy_item_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }

    // wrapped_proxy_item_response->request_duration
    cJSON *request_duration = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "requestDuration");
    if (cJSON_IsNull(request_duration)) {
        request_duration = NULL;
    }
    if (request_duration) { 
    if(!cJSON_IsNumber(request_duration))
    {
    goto end; //Numeric
    }
    }

    // wrapped_proxy_item_response->request_end_time
    cJSON *request_end_time = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "requestEndTime");
    if (cJSON_IsNull(request_end_time)) {
        request_end_time = NULL;
    }
    if (request_end_time) { 
    if(!cJSON_IsNumber(request_end_time))
    {
    goto end; //Numeric
    }
    }

    // wrapped_proxy_item_response->item
    cJSON *item = cJSON_GetObjectItemCaseSensitive(wrapped_proxy_item_responseJSON, "item");
    if (cJSON_IsNull(item)) {
        item = NULL;
    }
    if (item) { 
    item_local_nonprim = image_generation_response_parseFromJSON(item); //nonprimitive
    }


    wrapped_proxy_item_response_local_var = wrapped_proxy_item_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL,
        request_duration ? request_duration->valuedouble : 0,
        request_end_time ? request_end_time->valuedouble : 0,
        item ? item_local_nonprim : NULL
        );

    return wrapped_proxy_item_response_local_var;
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
    if (item_local_nonprim) {
        image_generation_response_free(item_local_nonprim);
        item_local_nonprim = NULL;
    }
    return NULL;

}
