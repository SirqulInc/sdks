#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "count_response.h"



static count_response_t *count_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long count,
    char *returning
    ) {
    count_response_t *count_response_local_var = malloc(sizeof(count_response_t));
    if (!count_response_local_var) {
        return NULL;
    }
    count_response_local_var->valid = valid;
    count_response_local_var->message = message;
    count_response_local_var->version = version;
    count_response_local_var->serialize_nulls = serialize_nulls;
    count_response_local_var->start_time_log = start_time_log;
    count_response_local_var->error_code = error_code;
    count_response_local_var->request = request;
    count_response_local_var->count = count;
    count_response_local_var->returning = returning;

    count_response_local_var->_library_owned = 1;
    return count_response_local_var;
}

__attribute__((deprecated)) count_response_t *count_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long count,
    char *returning
    ) {
    return count_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        count,
        returning
        );
}

void count_response_free(count_response_t *count_response) {
    if(NULL == count_response){
        return ;
    }
    if(count_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "count_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (count_response->message) {
        free(count_response->message);
        count_response->message = NULL;
    }
    if (count_response->error_code) {
        free(count_response->error_code);
        count_response->error_code = NULL;
    }
    if (count_response->request) {
        list_ForEach(listEntry, count_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(count_response->request);
        count_response->request = NULL;
    }
    if (count_response->returning) {
        free(count_response->returning);
        count_response->returning = NULL;
    }
    free(count_response);
}

cJSON *count_response_convertToJSON(count_response_t *count_response) {
    cJSON *item = cJSON_CreateObject();

    // count_response->valid
    if(count_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", count_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // count_response->message
    if(count_response->message) {
    if(cJSON_AddStringToObject(item, "message", count_response->message) == NULL) {
    goto fail; //String
    }
    }


    // count_response->version
    if(count_response->version) {
    if(cJSON_AddNumberToObject(item, "version", count_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // count_response->serialize_nulls
    if(count_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", count_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // count_response->start_time_log
    if(count_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", count_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // count_response->error_code
    if(count_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", count_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // count_response->request
    if(count_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (count_response->request) {
    list_ForEach(requestListEntry, count_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // count_response->count
    if(count_response->count) {
    if(cJSON_AddNumberToObject(item, "count", count_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // count_response->returning
    if(count_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", count_response->returning) == NULL) {
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

count_response_t *count_response_parseFromJSON(cJSON *count_responseJSON){

    count_response_t *count_response_local_var = NULL;

    // define the local list for count_response->request
    list_t *requestList = NULL;

    // count_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // count_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // count_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // count_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // count_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // count_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // count_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "request");
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

    // count_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // count_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(count_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    count_response_local_var = count_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        count ? count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return count_response_local_var;
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
