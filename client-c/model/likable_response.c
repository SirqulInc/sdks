#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "likable_response.h"



static likable_response_t *likable_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long like_count,
    long dislike_count,
    char *returning
    ) {
    likable_response_t *likable_response_local_var = malloc(sizeof(likable_response_t));
    if (!likable_response_local_var) {
        return NULL;
    }
    likable_response_local_var->valid = valid;
    likable_response_local_var->message = message;
    likable_response_local_var->version = version;
    likable_response_local_var->serialize_nulls = serialize_nulls;
    likable_response_local_var->start_time_log = start_time_log;
    likable_response_local_var->error_code = error_code;
    likable_response_local_var->request = request;
    likable_response_local_var->like_count = like_count;
    likable_response_local_var->dislike_count = dislike_count;
    likable_response_local_var->returning = returning;

    likable_response_local_var->_library_owned = 1;
    return likable_response_local_var;
}

__attribute__((deprecated)) likable_response_t *likable_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long like_count,
    long dislike_count,
    char *returning
    ) {
    return likable_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        like_count,
        dislike_count,
        returning
        );
}

void likable_response_free(likable_response_t *likable_response) {
    if(NULL == likable_response){
        return ;
    }
    if(likable_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "likable_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (likable_response->message) {
        free(likable_response->message);
        likable_response->message = NULL;
    }
    if (likable_response->error_code) {
        free(likable_response->error_code);
        likable_response->error_code = NULL;
    }
    if (likable_response->request) {
        list_ForEach(listEntry, likable_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(likable_response->request);
        likable_response->request = NULL;
    }
    if (likable_response->returning) {
        free(likable_response->returning);
        likable_response->returning = NULL;
    }
    free(likable_response);
}

cJSON *likable_response_convertToJSON(likable_response_t *likable_response) {
    cJSON *item = cJSON_CreateObject();

    // likable_response->valid
    if(likable_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", likable_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // likable_response->message
    if(likable_response->message) {
    if(cJSON_AddStringToObject(item, "message", likable_response->message) == NULL) {
    goto fail; //String
    }
    }


    // likable_response->version
    if(likable_response->version) {
    if(cJSON_AddNumberToObject(item, "version", likable_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // likable_response->serialize_nulls
    if(likable_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", likable_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // likable_response->start_time_log
    if(likable_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", likable_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // likable_response->error_code
    if(likable_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", likable_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // likable_response->request
    if(likable_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (likable_response->request) {
    list_ForEach(requestListEntry, likable_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // likable_response->like_count
    if(likable_response->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", likable_response->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // likable_response->dislike_count
    if(likable_response->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", likable_response->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // likable_response->returning
    if(likable_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", likable_response->returning) == NULL) {
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

likable_response_t *likable_response_parseFromJSON(cJSON *likable_responseJSON){

    likable_response_t *likable_response_local_var = NULL;

    // define the local list for likable_response->request
    list_t *requestList = NULL;

    // likable_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // likable_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // likable_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // likable_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // likable_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // likable_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // likable_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "request");
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

    // likable_response->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // likable_response->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // likable_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(likable_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    likable_response_local_var = likable_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return likable_response_local_var;
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
