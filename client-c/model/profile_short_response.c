#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "profile_short_response.h"



static profile_short_response_t *profile_short_response_create_internal(
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
    char *profile_image,
    asset_short_response_t *profile_avatar,
    char *returning
    ) {
    profile_short_response_t *profile_short_response_local_var = malloc(sizeof(profile_short_response_t));
    if (!profile_short_response_local_var) {
        return NULL;
    }
    profile_short_response_local_var->valid = valid;
    profile_short_response_local_var->message = message;
    profile_short_response_local_var->version = version;
    profile_short_response_local_var->serialize_nulls = serialize_nulls;
    profile_short_response_local_var->start_time_log = start_time_log;
    profile_short_response_local_var->error_code = error_code;
    profile_short_response_local_var->request = request;
    profile_short_response_local_var->account_id = account_id;
    profile_short_response_local_var->location_display = location_display;
    profile_short_response_local_var->display = display;
    profile_short_response_local_var->username = username;
    profile_short_response_local_var->profile_image = profile_image;
    profile_short_response_local_var->profile_avatar = profile_avatar;
    profile_short_response_local_var->returning = returning;

    profile_short_response_local_var->_library_owned = 1;
    return profile_short_response_local_var;
}

__attribute__((deprecated)) profile_short_response_t *profile_short_response_create(
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
    char *profile_image,
    asset_short_response_t *profile_avatar,
    char *returning
    ) {
    return profile_short_response_create_internal (
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
        profile_image,
        profile_avatar,
        returning
        );
}

void profile_short_response_free(profile_short_response_t *profile_short_response) {
    if(NULL == profile_short_response){
        return ;
    }
    if(profile_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "profile_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (profile_short_response->message) {
        free(profile_short_response->message);
        profile_short_response->message = NULL;
    }
    if (profile_short_response->error_code) {
        free(profile_short_response->error_code);
        profile_short_response->error_code = NULL;
    }
    if (profile_short_response->request) {
        list_ForEach(listEntry, profile_short_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(profile_short_response->request);
        profile_short_response->request = NULL;
    }
    if (profile_short_response->location_display) {
        free(profile_short_response->location_display);
        profile_short_response->location_display = NULL;
    }
    if (profile_short_response->display) {
        free(profile_short_response->display);
        profile_short_response->display = NULL;
    }
    if (profile_short_response->username) {
        free(profile_short_response->username);
        profile_short_response->username = NULL;
    }
    if (profile_short_response->profile_image) {
        free(profile_short_response->profile_image);
        profile_short_response->profile_image = NULL;
    }
    if (profile_short_response->profile_avatar) {
        asset_short_response_free(profile_short_response->profile_avatar);
        profile_short_response->profile_avatar = NULL;
    }
    if (profile_short_response->returning) {
        free(profile_short_response->returning);
        profile_short_response->returning = NULL;
    }
    free(profile_short_response);
}

cJSON *profile_short_response_convertToJSON(profile_short_response_t *profile_short_response) {
    cJSON *item = cJSON_CreateObject();

    // profile_short_response->valid
    if(profile_short_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", profile_short_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_short_response->message
    if(profile_short_response->message) {
    if(cJSON_AddStringToObject(item, "message", profile_short_response->message) == NULL) {
    goto fail; //String
    }
    }


    // profile_short_response->version
    if(profile_short_response->version) {
    if(cJSON_AddNumberToObject(item, "version", profile_short_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_short_response->serialize_nulls
    if(profile_short_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", profile_short_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_short_response->start_time_log
    if(profile_short_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", profile_short_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_short_response->error_code
    if(profile_short_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", profile_short_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // profile_short_response->request
    if(profile_short_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (profile_short_response->request) {
    list_ForEach(requestListEntry, profile_short_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // profile_short_response->account_id
    if(profile_short_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", profile_short_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_short_response->location_display
    if(profile_short_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", profile_short_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // profile_short_response->display
    if(profile_short_response->display) {
    if(cJSON_AddStringToObject(item, "display", profile_short_response->display) == NULL) {
    goto fail; //String
    }
    }


    // profile_short_response->username
    if(profile_short_response->username) {
    if(cJSON_AddStringToObject(item, "username", profile_short_response->username) == NULL) {
    goto fail; //String
    }
    }


    // profile_short_response->profile_image
    if(profile_short_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", profile_short_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // profile_short_response->profile_avatar
    if(profile_short_response->profile_avatar) {
    cJSON *profile_avatar_local_JSON = asset_short_response_convertToJSON(profile_short_response->profile_avatar);
    if(profile_avatar_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "profileAvatar", profile_avatar_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_short_response->returning
    if(profile_short_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", profile_short_response->returning) == NULL) {
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

profile_short_response_t *profile_short_response_parseFromJSON(cJSON *profile_short_responseJSON){

    profile_short_response_t *profile_short_response_local_var = NULL;

    // define the local list for profile_short_response->request
    list_t *requestList = NULL;

    // define the local variable for profile_short_response->profile_avatar
    asset_short_response_t *profile_avatar_local_nonprim = NULL;

    // profile_short_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // profile_short_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // profile_short_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // profile_short_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // profile_short_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // profile_short_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // profile_short_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "request");
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

    // profile_short_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // profile_short_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // profile_short_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // profile_short_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // profile_short_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // profile_short_response->profile_avatar
    cJSON *profile_avatar = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "profileAvatar");
    if (cJSON_IsNull(profile_avatar)) {
        profile_avatar = NULL;
    }
    if (profile_avatar) { 
    profile_avatar_local_nonprim = asset_short_response_parseFromJSON(profile_avatar); //nonprimitive
    }

    // profile_short_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(profile_short_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    profile_short_response_local_var = profile_short_response_create_internal (
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
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        profile_avatar ? profile_avatar_local_nonprim : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return profile_short_response_local_var;
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
    if (profile_avatar_local_nonprim) {
        asset_short_response_free(profile_avatar_local_nonprim);
        profile_avatar_local_nonprim = NULL;
    }
    return NULL;

}
