#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "token_response.h"



static token_response_t *token_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *token,
    char *returning
    ) {
    token_response_t *token_response_local_var = malloc(sizeof(token_response_t));
    if (!token_response_local_var) {
        return NULL;
    }
    token_response_local_var->valid = valid;
    token_response_local_var->message = message;
    token_response_local_var->version = version;
    token_response_local_var->serialize_nulls = serialize_nulls;
    token_response_local_var->start_time_log = start_time_log;
    token_response_local_var->error_code = error_code;
    token_response_local_var->request = request;
    token_response_local_var->token = token;
    token_response_local_var->returning = returning;

    token_response_local_var->_library_owned = 1;
    return token_response_local_var;
}

__attribute__((deprecated)) token_response_t *token_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *token,
    char *returning
    ) {
    return token_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        token,
        returning
        );
}

void token_response_free(token_response_t *token_response) {
    if(NULL == token_response){
        return ;
    }
    if(token_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "token_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (token_response->message) {
        free(token_response->message);
        token_response->message = NULL;
    }
    if (token_response->error_code) {
        free(token_response->error_code);
        token_response->error_code = NULL;
    }
    if (token_response->request) {
        list_ForEach(listEntry, token_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(token_response->request);
        token_response->request = NULL;
    }
    if (token_response->token) {
        free(token_response->token);
        token_response->token = NULL;
    }
    if (token_response->returning) {
        free(token_response->returning);
        token_response->returning = NULL;
    }
    free(token_response);
}

cJSON *token_response_convertToJSON(token_response_t *token_response) {
    cJSON *item = cJSON_CreateObject();

    // token_response->valid
    if(token_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", token_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // token_response->message
    if(token_response->message) {
    if(cJSON_AddStringToObject(item, "message", token_response->message) == NULL) {
    goto fail; //String
    }
    }


    // token_response->version
    if(token_response->version) {
    if(cJSON_AddNumberToObject(item, "version", token_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_response->serialize_nulls
    if(token_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", token_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // token_response->start_time_log
    if(token_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", token_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_response->error_code
    if(token_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", token_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // token_response->request
    if(token_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (token_response->request) {
    list_ForEach(requestListEntry, token_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // token_response->token
    if(token_response->token) {
    if(cJSON_AddStringToObject(item, "token", token_response->token) == NULL) {
    goto fail; //String
    }
    }


    // token_response->returning
    if(token_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", token_response->returning) == NULL) {
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

token_response_t *token_response_parseFromJSON(cJSON *token_responseJSON){

    token_response_t *token_response_local_var = NULL;

    // define the local list for token_response->request
    list_t *requestList = NULL;

    // token_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // token_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // token_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // token_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // token_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // token_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // token_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "request");
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

    // token_response->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "token");
    if (cJSON_IsNull(token)) {
        token = NULL;
    }
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // token_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(token_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    token_response_local_var = token_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return token_response_local_var;
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
