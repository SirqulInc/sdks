#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sirqul_response.h"



static sirqul_response_t *sirqul_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *returning
    ) {
    sirqul_response_t *sirqul_response_local_var = malloc(sizeof(sirqul_response_t));
    if (!sirqul_response_local_var) {
        return NULL;
    }
    sirqul_response_local_var->valid = valid;
    sirqul_response_local_var->message = message;
    sirqul_response_local_var->version = version;
    sirqul_response_local_var->serialize_nulls = serialize_nulls;
    sirqul_response_local_var->start_time_log = start_time_log;
    sirqul_response_local_var->error_code = error_code;
    sirqul_response_local_var->request = request;
    sirqul_response_local_var->returning = returning;

    sirqul_response_local_var->_library_owned = 1;
    return sirqul_response_local_var;
}

__attribute__((deprecated)) sirqul_response_t *sirqul_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *returning
    ) {
    return sirqul_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        returning
        );
}

void sirqul_response_free(sirqul_response_t *sirqul_response) {
    if(NULL == sirqul_response){
        return ;
    }
    if(sirqul_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sirqul_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sirqul_response->message) {
        free(sirqul_response->message);
        sirqul_response->message = NULL;
    }
    if (sirqul_response->error_code) {
        free(sirqul_response->error_code);
        sirqul_response->error_code = NULL;
    }
    if (sirqul_response->request) {
        list_ForEach(listEntry, sirqul_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(sirqul_response->request);
        sirqul_response->request = NULL;
    }
    if (sirqul_response->returning) {
        free(sirqul_response->returning);
        sirqul_response->returning = NULL;
    }
    free(sirqul_response);
}

cJSON *sirqul_response_convertToJSON(sirqul_response_t *sirqul_response) {
    cJSON *item = cJSON_CreateObject();

    // sirqul_response->valid
    if(sirqul_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", sirqul_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // sirqul_response->message
    if(sirqul_response->message) {
    if(cJSON_AddStringToObject(item, "message", sirqul_response->message) == NULL) {
    goto fail; //String
    }
    }


    // sirqul_response->version
    if(sirqul_response->version) {
    if(cJSON_AddNumberToObject(item, "version", sirqul_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // sirqul_response->serialize_nulls
    if(sirqul_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", sirqul_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // sirqul_response->start_time_log
    if(sirqul_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", sirqul_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // sirqul_response->error_code
    if(sirqul_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", sirqul_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // sirqul_response->request
    if(sirqul_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (sirqul_response->request) {
    list_ForEach(requestListEntry, sirqul_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // sirqul_response->returning
    if(sirqul_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", sirqul_response->returning) == NULL) {
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

sirqul_response_t *sirqul_response_parseFromJSON(cJSON *sirqul_responseJSON){

    sirqul_response_t *sirqul_response_local_var = NULL;

    // define the local list for sirqul_response->request
    list_t *requestList = NULL;

    // sirqul_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // sirqul_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // sirqul_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // sirqul_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // sirqul_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // sirqul_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // sirqul_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "request");
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

    // sirqul_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(sirqul_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    sirqul_response_local_var = sirqul_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return sirqul_response_local_var;
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
