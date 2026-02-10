#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "profile_response.h"



static profile_response_t *profile_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long login_account_id,
    int validated,
    app_info_response_t *app_info,
    int can_view_app_info,
    int can_view_friend_info,
    int can_view_profile_info,
    long flag_count,
    connection_info_response_t *friend_info,
    int is_blocked,
    int is_profile_owner,
    int met_flag_threshold,
    profile_info_response_t *profile_info,
    int trusted,
    int following,
    int friend_requested,
    int friend_request_pending,
    int blocked,
    int flagged,
    int profile_owner,
    int _friend,
    char *returning
    ) {
    profile_response_t *profile_response_local_var = malloc(sizeof(profile_response_t));
    if (!profile_response_local_var) {
        return NULL;
    }
    profile_response_local_var->valid = valid;
    profile_response_local_var->message = message;
    profile_response_local_var->version = version;
    profile_response_local_var->serialize_nulls = serialize_nulls;
    profile_response_local_var->start_time_log = start_time_log;
    profile_response_local_var->error_code = error_code;
    profile_response_local_var->request = request;
    profile_response_local_var->login_account_id = login_account_id;
    profile_response_local_var->validated = validated;
    profile_response_local_var->app_info = app_info;
    profile_response_local_var->can_view_app_info = can_view_app_info;
    profile_response_local_var->can_view_friend_info = can_view_friend_info;
    profile_response_local_var->can_view_profile_info = can_view_profile_info;
    profile_response_local_var->flag_count = flag_count;
    profile_response_local_var->friend_info = friend_info;
    profile_response_local_var->is_blocked = is_blocked;
    profile_response_local_var->is_profile_owner = is_profile_owner;
    profile_response_local_var->met_flag_threshold = met_flag_threshold;
    profile_response_local_var->profile_info = profile_info;
    profile_response_local_var->trusted = trusted;
    profile_response_local_var->following = following;
    profile_response_local_var->friend_requested = friend_requested;
    profile_response_local_var->friend_request_pending = friend_request_pending;
    profile_response_local_var->blocked = blocked;
    profile_response_local_var->flagged = flagged;
    profile_response_local_var->profile_owner = profile_owner;
    profile_response_local_var->_friend = _friend;
    profile_response_local_var->returning = returning;

    profile_response_local_var->_library_owned = 1;
    return profile_response_local_var;
}

__attribute__((deprecated)) profile_response_t *profile_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long login_account_id,
    int validated,
    app_info_response_t *app_info,
    int can_view_app_info,
    int can_view_friend_info,
    int can_view_profile_info,
    long flag_count,
    connection_info_response_t *friend_info,
    int is_blocked,
    int is_profile_owner,
    int met_flag_threshold,
    profile_info_response_t *profile_info,
    int trusted,
    int following,
    int friend_requested,
    int friend_request_pending,
    int blocked,
    int flagged,
    int profile_owner,
    int _friend,
    char *returning
    ) {
    return profile_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        login_account_id,
        validated,
        app_info,
        can_view_app_info,
        can_view_friend_info,
        can_view_profile_info,
        flag_count,
        friend_info,
        is_blocked,
        is_profile_owner,
        met_flag_threshold,
        profile_info,
        trusted,
        following,
        friend_requested,
        friend_request_pending,
        blocked,
        flagged,
        profile_owner,
        _friend,
        returning
        );
}

void profile_response_free(profile_response_t *profile_response) {
    if(NULL == profile_response){
        return ;
    }
    if(profile_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "profile_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (profile_response->message) {
        free(profile_response->message);
        profile_response->message = NULL;
    }
    if (profile_response->error_code) {
        free(profile_response->error_code);
        profile_response->error_code = NULL;
    }
    if (profile_response->request) {
        list_ForEach(listEntry, profile_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(profile_response->request);
        profile_response->request = NULL;
    }
    if (profile_response->app_info) {
        app_info_response_free(profile_response->app_info);
        profile_response->app_info = NULL;
    }
    if (profile_response->friend_info) {
        connection_info_response_free(profile_response->friend_info);
        profile_response->friend_info = NULL;
    }
    if (profile_response->profile_info) {
        profile_info_response_free(profile_response->profile_info);
        profile_response->profile_info = NULL;
    }
    if (profile_response->returning) {
        free(profile_response->returning);
        profile_response->returning = NULL;
    }
    free(profile_response);
}

cJSON *profile_response_convertToJSON(profile_response_t *profile_response) {
    cJSON *item = cJSON_CreateObject();

    // profile_response->valid
    if(profile_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", profile_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->message
    if(profile_response->message) {
    if(cJSON_AddStringToObject(item, "message", profile_response->message) == NULL) {
    goto fail; //String
    }
    }


    // profile_response->version
    if(profile_response->version) {
    if(cJSON_AddNumberToObject(item, "version", profile_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_response->serialize_nulls
    if(profile_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", profile_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->start_time_log
    if(profile_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", profile_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_response->error_code
    if(profile_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", profile_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // profile_response->request
    if(profile_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (profile_response->request) {
    list_ForEach(requestListEntry, profile_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // profile_response->login_account_id
    if(profile_response->login_account_id) {
    if(cJSON_AddNumberToObject(item, "loginAccountId", profile_response->login_account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_response->validated
    if(profile_response->validated) {
    if(cJSON_AddBoolToObject(item, "validated", profile_response->validated) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->app_info
    if(profile_response->app_info) {
    cJSON *app_info_local_JSON = app_info_response_convertToJSON(profile_response->app_info);
    if(app_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appInfo", app_info_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_response->can_view_app_info
    if(profile_response->can_view_app_info) {
    if(cJSON_AddBoolToObject(item, "canViewAppInfo", profile_response->can_view_app_info) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->can_view_friend_info
    if(profile_response->can_view_friend_info) {
    if(cJSON_AddBoolToObject(item, "canViewFriendInfo", profile_response->can_view_friend_info) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->can_view_profile_info
    if(profile_response->can_view_profile_info) {
    if(cJSON_AddBoolToObject(item, "canViewProfileInfo", profile_response->can_view_profile_info) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->flag_count
    if(profile_response->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", profile_response->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_response->friend_info
    if(profile_response->friend_info) {
    cJSON *friend_info_local_JSON = connection_info_response_convertToJSON(profile_response->friend_info);
    if(friend_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "friendInfo", friend_info_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_response->is_blocked
    if(profile_response->is_blocked) {
    if(cJSON_AddBoolToObject(item, "isBlocked", profile_response->is_blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->is_profile_owner
    if(profile_response->is_profile_owner) {
    if(cJSON_AddBoolToObject(item, "isProfileOwner", profile_response->is_profile_owner) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->met_flag_threshold
    if(profile_response->met_flag_threshold) {
    if(cJSON_AddBoolToObject(item, "metFlagThreshold", profile_response->met_flag_threshold) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->profile_info
    if(profile_response->profile_info) {
    cJSON *profile_info_local_JSON = profile_info_response_convertToJSON(profile_response->profile_info);
    if(profile_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "profileInfo", profile_info_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_response->trusted
    if(profile_response->trusted) {
    if(cJSON_AddBoolToObject(item, "trusted", profile_response->trusted) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->following
    if(profile_response->following) {
    if(cJSON_AddBoolToObject(item, "following", profile_response->following) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->friend_requested
    if(profile_response->friend_requested) {
    if(cJSON_AddBoolToObject(item, "friendRequested", profile_response->friend_requested) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->friend_request_pending
    if(profile_response->friend_request_pending) {
    if(cJSON_AddBoolToObject(item, "friendRequestPending", profile_response->friend_request_pending) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->blocked
    if(profile_response->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", profile_response->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->flagged
    if(profile_response->flagged) {
    if(cJSON_AddBoolToObject(item, "flagged", profile_response->flagged) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->profile_owner
    if(profile_response->profile_owner) {
    if(cJSON_AddBoolToObject(item, "profileOwner", profile_response->profile_owner) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->_friend
    if(profile_response->_friend) {
    if(cJSON_AddBoolToObject(item, "friend", profile_response->_friend) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_response->returning
    if(profile_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", profile_response->returning) == NULL) {
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

profile_response_t *profile_response_parseFromJSON(cJSON *profile_responseJSON){

    profile_response_t *profile_response_local_var = NULL;

    // define the local list for profile_response->request
    list_t *requestList = NULL;

    // define the local variable for profile_response->app_info
    app_info_response_t *app_info_local_nonprim = NULL;

    // define the local variable for profile_response->friend_info
    connection_info_response_t *friend_info_local_nonprim = NULL;

    // define the local variable for profile_response->profile_info
    profile_info_response_t *profile_info_local_nonprim = NULL;

    // profile_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // profile_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // profile_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // profile_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // profile_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // profile_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // profile_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "request");
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

    // profile_response->login_account_id
    cJSON *login_account_id = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "loginAccountId");
    if (cJSON_IsNull(login_account_id)) {
        login_account_id = NULL;
    }
    if (login_account_id) { 
    if(!cJSON_IsNumber(login_account_id))
    {
    goto end; //Numeric
    }
    }

    // profile_response->validated
    cJSON *validated = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "validated");
    if (cJSON_IsNull(validated)) {
        validated = NULL;
    }
    if (validated) { 
    if(!cJSON_IsBool(validated))
    {
    goto end; //Bool
    }
    }

    // profile_response->app_info
    cJSON *app_info = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "appInfo");
    if (cJSON_IsNull(app_info)) {
        app_info = NULL;
    }
    if (app_info) { 
    app_info_local_nonprim = app_info_response_parseFromJSON(app_info); //nonprimitive
    }

    // profile_response->can_view_app_info
    cJSON *can_view_app_info = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "canViewAppInfo");
    if (cJSON_IsNull(can_view_app_info)) {
        can_view_app_info = NULL;
    }
    if (can_view_app_info) { 
    if(!cJSON_IsBool(can_view_app_info))
    {
    goto end; //Bool
    }
    }

    // profile_response->can_view_friend_info
    cJSON *can_view_friend_info = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "canViewFriendInfo");
    if (cJSON_IsNull(can_view_friend_info)) {
        can_view_friend_info = NULL;
    }
    if (can_view_friend_info) { 
    if(!cJSON_IsBool(can_view_friend_info))
    {
    goto end; //Bool
    }
    }

    // profile_response->can_view_profile_info
    cJSON *can_view_profile_info = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "canViewProfileInfo");
    if (cJSON_IsNull(can_view_profile_info)) {
        can_view_profile_info = NULL;
    }
    if (can_view_profile_info) { 
    if(!cJSON_IsBool(can_view_profile_info))
    {
    goto end; //Bool
    }
    }

    // profile_response->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // profile_response->friend_info
    cJSON *friend_info = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "friendInfo");
    if (cJSON_IsNull(friend_info)) {
        friend_info = NULL;
    }
    if (friend_info) { 
    friend_info_local_nonprim = connection_info_response_parseFromJSON(friend_info); //nonprimitive
    }

    // profile_response->is_blocked
    cJSON *is_blocked = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "isBlocked");
    if (cJSON_IsNull(is_blocked)) {
        is_blocked = NULL;
    }
    if (is_blocked) { 
    if(!cJSON_IsBool(is_blocked))
    {
    goto end; //Bool
    }
    }

    // profile_response->is_profile_owner
    cJSON *is_profile_owner = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "isProfileOwner");
    if (cJSON_IsNull(is_profile_owner)) {
        is_profile_owner = NULL;
    }
    if (is_profile_owner) { 
    if(!cJSON_IsBool(is_profile_owner))
    {
    goto end; //Bool
    }
    }

    // profile_response->met_flag_threshold
    cJSON *met_flag_threshold = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "metFlagThreshold");
    if (cJSON_IsNull(met_flag_threshold)) {
        met_flag_threshold = NULL;
    }
    if (met_flag_threshold) { 
    if(!cJSON_IsBool(met_flag_threshold))
    {
    goto end; //Bool
    }
    }

    // profile_response->profile_info
    cJSON *profile_info = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "profileInfo");
    if (cJSON_IsNull(profile_info)) {
        profile_info = NULL;
    }
    if (profile_info) { 
    profile_info_local_nonprim = profile_info_response_parseFromJSON(profile_info); //nonprimitive
    }

    // profile_response->trusted
    cJSON *trusted = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "trusted");
    if (cJSON_IsNull(trusted)) {
        trusted = NULL;
    }
    if (trusted) { 
    if(!cJSON_IsBool(trusted))
    {
    goto end; //Bool
    }
    }

    // profile_response->following
    cJSON *following = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "following");
    if (cJSON_IsNull(following)) {
        following = NULL;
    }
    if (following) { 
    if(!cJSON_IsBool(following))
    {
    goto end; //Bool
    }
    }

    // profile_response->friend_requested
    cJSON *friend_requested = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "friendRequested");
    if (cJSON_IsNull(friend_requested)) {
        friend_requested = NULL;
    }
    if (friend_requested) { 
    if(!cJSON_IsBool(friend_requested))
    {
    goto end; //Bool
    }
    }

    // profile_response->friend_request_pending
    cJSON *friend_request_pending = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "friendRequestPending");
    if (cJSON_IsNull(friend_request_pending)) {
        friend_request_pending = NULL;
    }
    if (friend_request_pending) { 
    if(!cJSON_IsBool(friend_request_pending))
    {
    goto end; //Bool
    }
    }

    // profile_response->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "blocked");
    if (cJSON_IsNull(blocked)) {
        blocked = NULL;
    }
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // profile_response->flagged
    cJSON *flagged = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "flagged");
    if (cJSON_IsNull(flagged)) {
        flagged = NULL;
    }
    if (flagged) { 
    if(!cJSON_IsBool(flagged))
    {
    goto end; //Bool
    }
    }

    // profile_response->profile_owner
    cJSON *profile_owner = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "profileOwner");
    if (cJSON_IsNull(profile_owner)) {
        profile_owner = NULL;
    }
    if (profile_owner) { 
    if(!cJSON_IsBool(profile_owner))
    {
    goto end; //Bool
    }
    }

    // profile_response->_friend
    cJSON *_friend = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "friend");
    if (cJSON_IsNull(_friend)) {
        _friend = NULL;
    }
    if (_friend) { 
    if(!cJSON_IsBool(_friend))
    {
    goto end; //Bool
    }
    }

    // profile_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(profile_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    profile_response_local_var = profile_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        login_account_id ? login_account_id->valuedouble : 0,
        validated ? validated->valueint : 0,
        app_info ? app_info_local_nonprim : NULL,
        can_view_app_info ? can_view_app_info->valueint : 0,
        can_view_friend_info ? can_view_friend_info->valueint : 0,
        can_view_profile_info ? can_view_profile_info->valueint : 0,
        flag_count ? flag_count->valuedouble : 0,
        friend_info ? friend_info_local_nonprim : NULL,
        is_blocked ? is_blocked->valueint : 0,
        is_profile_owner ? is_profile_owner->valueint : 0,
        met_flag_threshold ? met_flag_threshold->valueint : 0,
        profile_info ? profile_info_local_nonprim : NULL,
        trusted ? trusted->valueint : 0,
        following ? following->valueint : 0,
        friend_requested ? friend_requested->valueint : 0,
        friend_request_pending ? friend_request_pending->valueint : 0,
        blocked ? blocked->valueint : 0,
        flagged ? flagged->valueint : 0,
        profile_owner ? profile_owner->valueint : 0,
        _friend ? _friend->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return profile_response_local_var;
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
    if (app_info_local_nonprim) {
        app_info_response_free(app_info_local_nonprim);
        app_info_local_nonprim = NULL;
    }
    if (friend_info_local_nonprim) {
        connection_info_response_free(friend_info_local_nonprim);
        friend_info_local_nonprim = NULL;
    }
    if (profile_info_local_nonprim) {
        profile_info_response_free(profile_info_local_nonprim);
        profile_info_local_nonprim = NULL;
    }
    return NULL;

}
