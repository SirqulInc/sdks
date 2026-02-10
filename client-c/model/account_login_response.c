#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_login_response.h"



static account_login_response_t *account_login_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    int validated,
    char *returning
    ) {
    account_login_response_t *account_login_response_local_var = malloc(sizeof(account_login_response_t));
    if (!account_login_response_local_var) {
        return NULL;
    }
    account_login_response_local_var->valid = valid;
    account_login_response_local_var->message = message;
    account_login_response_local_var->version = version;
    account_login_response_local_var->serialize_nulls = serialize_nulls;
    account_login_response_local_var->start_time_log = start_time_log;
    account_login_response_local_var->error_code = error_code;
    account_login_response_local_var->request = request;
    account_login_response_local_var->account_id = account_id;
    account_login_response_local_var->location_display = location_display;
    account_login_response_local_var->display = display;
    account_login_response_local_var->username = username;
    account_login_response_local_var->account_type = account_type;
    account_login_response_local_var->validated = validated;
    account_login_response_local_var->returning = returning;

    account_login_response_local_var->_library_owned = 1;
    return account_login_response_local_var;
}

__attribute__((deprecated)) account_login_response_t *account_login_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    int validated,
    char *returning
    ) {
    return account_login_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        account_id,
        location_display,
        display,
        username,
        account_type,
        validated,
        returning
        );
}

void account_login_response_free(account_login_response_t *account_login_response) {
    if(NULL == account_login_response){
        return ;
    }
    if(account_login_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "account_login_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (account_login_response->message) {
        free(account_login_response->message);
        account_login_response->message = NULL;
    }
    if (account_login_response->error_code) {
        free(account_login_response->error_code);
        account_login_response->error_code = NULL;
    }
    if (account_login_response->request) {
        list_ForEach(listEntry, account_login_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(account_login_response->request);
        account_login_response->request = NULL;
    }
    if (account_login_response->location_display) {
        free(account_login_response->location_display);
        account_login_response->location_display = NULL;
    }
    if (account_login_response->display) {
        free(account_login_response->display);
        account_login_response->display = NULL;
    }
    if (account_login_response->username) {
        free(account_login_response->username);
        account_login_response->username = NULL;
    }
    if (account_login_response->account_type) {
        free(account_login_response->account_type);
        account_login_response->account_type = NULL;
    }
    if (account_login_response->returning) {
        free(account_login_response->returning);
        account_login_response->returning = NULL;
    }
    free(account_login_response);
}

cJSON *account_login_response_convertToJSON(account_login_response_t *account_login_response) {
    cJSON *item = cJSON_CreateObject();

    // account_login_response->valid
    if(account_login_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", account_login_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // account_login_response->message
    if(account_login_response->message) {
    if(cJSON_AddStringToObject(item, "message", account_login_response->message) == NULL) {
    goto fail; //String
    }
    }


    // account_login_response->version
    if(account_login_response->version) {
    if(cJSON_AddNumberToObject(item, "version", account_login_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_login_response->serialize_nulls
    if(account_login_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", account_login_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // account_login_response->start_time_log
    if(account_login_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", account_login_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_login_response->error_code
    if(account_login_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", account_login_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // account_login_response->request
    if(account_login_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (account_login_response->request) {
    list_ForEach(requestListEntry, account_login_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // account_login_response->account_id
    if(account_login_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", account_login_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_login_response->location_display
    if(account_login_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", account_login_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // account_login_response->display
    if(account_login_response->display) {
    if(cJSON_AddStringToObject(item, "display", account_login_response->display) == NULL) {
    goto fail; //String
    }
    }


    // account_login_response->username
    if(account_login_response->username) {
    if(cJSON_AddStringToObject(item, "username", account_login_response->username) == NULL) {
    goto fail; //String
    }
    }


    // account_login_response->account_type
    if(account_login_response->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", account_login_response->account_type) == NULL) {
    goto fail; //String
    }
    }


    // account_login_response->validated
    if(account_login_response->validated) {
    if(cJSON_AddBoolToObject(item, "validated", account_login_response->validated) == NULL) {
    goto fail; //Bool
    }
    }


    // account_login_response->returning
    if(account_login_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", account_login_response->returning) == NULL) {
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

account_login_response_t *account_login_response_parseFromJSON(cJSON *account_login_responseJSON){

    account_login_response_t *account_login_response_local_var = NULL;

    // define the local list for account_login_response->request
    list_t *requestList = NULL;

    // account_login_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // account_login_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // account_login_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // account_login_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // account_login_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // account_login_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // account_login_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "request");
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

    // account_login_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // account_login_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // account_login_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // account_login_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // account_login_response->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }

    // account_login_response->validated
    cJSON *validated = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "validated");
    if (cJSON_IsNull(validated)) {
        validated = NULL;
    }
    if (validated) { 
    if(!cJSON_IsBool(validated))
    {
    goto end; //Bool
    }
    }

    // account_login_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(account_login_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    account_login_response_local_var = account_login_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        account_id ? account_id->valuedouble : 0,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL,
        validated ? validated->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return account_login_response_local_var;
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
