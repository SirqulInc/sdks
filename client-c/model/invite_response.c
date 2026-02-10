#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "invite_response.h"



static invite_response_t *invite_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *url,
    char *token,
    long offer_id,
    long offer_location_id,
    char *returning
    ) {
    invite_response_t *invite_response_local_var = malloc(sizeof(invite_response_t));
    if (!invite_response_local_var) {
        return NULL;
    }
    invite_response_local_var->valid = valid;
    invite_response_local_var->message = message;
    invite_response_local_var->version = version;
    invite_response_local_var->serialize_nulls = serialize_nulls;
    invite_response_local_var->start_time_log = start_time_log;
    invite_response_local_var->error_code = error_code;
    invite_response_local_var->request = request;
    invite_response_local_var->url = url;
    invite_response_local_var->token = token;
    invite_response_local_var->offer_id = offer_id;
    invite_response_local_var->offer_location_id = offer_location_id;
    invite_response_local_var->returning = returning;

    invite_response_local_var->_library_owned = 1;
    return invite_response_local_var;
}

__attribute__((deprecated)) invite_response_t *invite_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *url,
    char *token,
    long offer_id,
    long offer_location_id,
    char *returning
    ) {
    return invite_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        url,
        token,
        offer_id,
        offer_location_id,
        returning
        );
}

void invite_response_free(invite_response_t *invite_response) {
    if(NULL == invite_response){
        return ;
    }
    if(invite_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "invite_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (invite_response->message) {
        free(invite_response->message);
        invite_response->message = NULL;
    }
    if (invite_response->error_code) {
        free(invite_response->error_code);
        invite_response->error_code = NULL;
    }
    if (invite_response->request) {
        list_ForEach(listEntry, invite_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(invite_response->request);
        invite_response->request = NULL;
    }
    if (invite_response->url) {
        free(invite_response->url);
        invite_response->url = NULL;
    }
    if (invite_response->token) {
        free(invite_response->token);
        invite_response->token = NULL;
    }
    if (invite_response->returning) {
        free(invite_response->returning);
        invite_response->returning = NULL;
    }
    free(invite_response);
}

cJSON *invite_response_convertToJSON(invite_response_t *invite_response) {
    cJSON *item = cJSON_CreateObject();

    // invite_response->valid
    if(invite_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", invite_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // invite_response->message
    if(invite_response->message) {
    if(cJSON_AddStringToObject(item, "message", invite_response->message) == NULL) {
    goto fail; //String
    }
    }


    // invite_response->version
    if(invite_response->version) {
    if(cJSON_AddNumberToObject(item, "version", invite_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // invite_response->serialize_nulls
    if(invite_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", invite_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // invite_response->start_time_log
    if(invite_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", invite_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // invite_response->error_code
    if(invite_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", invite_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // invite_response->request
    if(invite_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (invite_response->request) {
    list_ForEach(requestListEntry, invite_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // invite_response->url
    if(invite_response->url) {
    if(cJSON_AddStringToObject(item, "url", invite_response->url) == NULL) {
    goto fail; //String
    }
    }


    // invite_response->token
    if(invite_response->token) {
    if(cJSON_AddStringToObject(item, "token", invite_response->token) == NULL) {
    goto fail; //String
    }
    }


    // invite_response->offer_id
    if(invite_response->offer_id) {
    if(cJSON_AddNumberToObject(item, "offerId", invite_response->offer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // invite_response->offer_location_id
    if(invite_response->offer_location_id) {
    if(cJSON_AddNumberToObject(item, "offerLocationId", invite_response->offer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // invite_response->returning
    if(invite_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", invite_response->returning) == NULL) {
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

invite_response_t *invite_response_parseFromJSON(cJSON *invite_responseJSON){

    invite_response_t *invite_response_local_var = NULL;

    // define the local list for invite_response->request
    list_t *requestList = NULL;

    // invite_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // invite_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // invite_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // invite_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // invite_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // invite_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // invite_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "request");
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

    // invite_response->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // invite_response->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "token");
    if (cJSON_IsNull(token)) {
        token = NULL;
    }
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // invite_response->offer_id
    cJSON *offer_id = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "offerId");
    if (cJSON_IsNull(offer_id)) {
        offer_id = NULL;
    }
    if (offer_id) { 
    if(!cJSON_IsNumber(offer_id))
    {
    goto end; //Numeric
    }
    }

    // invite_response->offer_location_id
    cJSON *offer_location_id = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "offerLocationId");
    if (cJSON_IsNull(offer_location_id)) {
        offer_location_id = NULL;
    }
    if (offer_location_id) { 
    if(!cJSON_IsNumber(offer_location_id))
    {
    goto end; //Numeric
    }
    }

    // invite_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(invite_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    invite_response_local_var = invite_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        offer_id ? offer_id->valuedouble : 0,
        offer_location_id ? offer_location_id->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return invite_response_local_var;
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
