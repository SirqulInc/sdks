#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "theme_descriptor_response.h"



static theme_descriptor_response_t *theme_descriptor_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long theme_descriptor_id,
    char *returning
    ) {
    theme_descriptor_response_t *theme_descriptor_response_local_var = malloc(sizeof(theme_descriptor_response_t));
    if (!theme_descriptor_response_local_var) {
        return NULL;
    }
    theme_descriptor_response_local_var->valid = valid;
    theme_descriptor_response_local_var->message = message;
    theme_descriptor_response_local_var->version = version;
    theme_descriptor_response_local_var->serialize_nulls = serialize_nulls;
    theme_descriptor_response_local_var->start_time_log = start_time_log;
    theme_descriptor_response_local_var->error_code = error_code;
    theme_descriptor_response_local_var->request = request;
    theme_descriptor_response_local_var->theme_descriptor_id = theme_descriptor_id;
    theme_descriptor_response_local_var->returning = returning;

    theme_descriptor_response_local_var->_library_owned = 1;
    return theme_descriptor_response_local_var;
}

__attribute__((deprecated)) theme_descriptor_response_t *theme_descriptor_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long theme_descriptor_id,
    char *returning
    ) {
    return theme_descriptor_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        theme_descriptor_id,
        returning
        );
}

void theme_descriptor_response_free(theme_descriptor_response_t *theme_descriptor_response) {
    if(NULL == theme_descriptor_response){
        return ;
    }
    if(theme_descriptor_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "theme_descriptor_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (theme_descriptor_response->message) {
        free(theme_descriptor_response->message);
        theme_descriptor_response->message = NULL;
    }
    if (theme_descriptor_response->error_code) {
        free(theme_descriptor_response->error_code);
        theme_descriptor_response->error_code = NULL;
    }
    if (theme_descriptor_response->request) {
        list_ForEach(listEntry, theme_descriptor_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(theme_descriptor_response->request);
        theme_descriptor_response->request = NULL;
    }
    if (theme_descriptor_response->returning) {
        free(theme_descriptor_response->returning);
        theme_descriptor_response->returning = NULL;
    }
    free(theme_descriptor_response);
}

cJSON *theme_descriptor_response_convertToJSON(theme_descriptor_response_t *theme_descriptor_response) {
    cJSON *item = cJSON_CreateObject();

    // theme_descriptor_response->valid
    if(theme_descriptor_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", theme_descriptor_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // theme_descriptor_response->message
    if(theme_descriptor_response->message) {
    if(cJSON_AddStringToObject(item, "message", theme_descriptor_response->message) == NULL) {
    goto fail; //String
    }
    }


    // theme_descriptor_response->version
    if(theme_descriptor_response->version) {
    if(cJSON_AddNumberToObject(item, "version", theme_descriptor_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // theme_descriptor_response->serialize_nulls
    if(theme_descriptor_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", theme_descriptor_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // theme_descriptor_response->start_time_log
    if(theme_descriptor_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", theme_descriptor_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // theme_descriptor_response->error_code
    if(theme_descriptor_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", theme_descriptor_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // theme_descriptor_response->request
    if(theme_descriptor_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (theme_descriptor_response->request) {
    list_ForEach(requestListEntry, theme_descriptor_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // theme_descriptor_response->theme_descriptor_id
    if(theme_descriptor_response->theme_descriptor_id) {
    if(cJSON_AddNumberToObject(item, "themeDescriptorId", theme_descriptor_response->theme_descriptor_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // theme_descriptor_response->returning
    if(theme_descriptor_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", theme_descriptor_response->returning) == NULL) {
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

theme_descriptor_response_t *theme_descriptor_response_parseFromJSON(cJSON *theme_descriptor_responseJSON){

    theme_descriptor_response_t *theme_descriptor_response_local_var = NULL;

    // define the local list for theme_descriptor_response->request
    list_t *requestList = NULL;

    // theme_descriptor_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // theme_descriptor_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // theme_descriptor_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // theme_descriptor_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // theme_descriptor_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // theme_descriptor_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // theme_descriptor_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "request");
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

    // theme_descriptor_response->theme_descriptor_id
    cJSON *theme_descriptor_id = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "themeDescriptorId");
    if (cJSON_IsNull(theme_descriptor_id)) {
        theme_descriptor_id = NULL;
    }
    if (theme_descriptor_id) { 
    if(!cJSON_IsNumber(theme_descriptor_id))
    {
    goto end; //Numeric
    }
    }

    // theme_descriptor_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(theme_descriptor_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    theme_descriptor_response_local_var = theme_descriptor_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        theme_descriptor_id ? theme_descriptor_id->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return theme_descriptor_response_local_var;
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
