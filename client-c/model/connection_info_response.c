#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connection_info_response.h"



static connection_info_response_t *connection_info_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *groups,
    int follower_count,
    int following_count,
    int friend_count,
    int private_group_count,
    char *returning
    ) {
    connection_info_response_t *connection_info_response_local_var = malloc(sizeof(connection_info_response_t));
    if (!connection_info_response_local_var) {
        return NULL;
    }
    connection_info_response_local_var->valid = valid;
    connection_info_response_local_var->message = message;
    connection_info_response_local_var->version = version;
    connection_info_response_local_var->serialize_nulls = serialize_nulls;
    connection_info_response_local_var->start_time_log = start_time_log;
    connection_info_response_local_var->error_code = error_code;
    connection_info_response_local_var->request = request;
    connection_info_response_local_var->groups = groups;
    connection_info_response_local_var->follower_count = follower_count;
    connection_info_response_local_var->following_count = following_count;
    connection_info_response_local_var->friend_count = friend_count;
    connection_info_response_local_var->private_group_count = private_group_count;
    connection_info_response_local_var->returning = returning;

    connection_info_response_local_var->_library_owned = 1;
    return connection_info_response_local_var;
}

__attribute__((deprecated)) connection_info_response_t *connection_info_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *groups,
    int follower_count,
    int following_count,
    int friend_count,
    int private_group_count,
    char *returning
    ) {
    return connection_info_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        groups,
        follower_count,
        following_count,
        friend_count,
        private_group_count,
        returning
        );
}

void connection_info_response_free(connection_info_response_t *connection_info_response) {
    if(NULL == connection_info_response){
        return ;
    }
    if(connection_info_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connection_info_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connection_info_response->message) {
        free(connection_info_response->message);
        connection_info_response->message = NULL;
    }
    if (connection_info_response->error_code) {
        free(connection_info_response->error_code);
        connection_info_response->error_code = NULL;
    }
    if (connection_info_response->request) {
        list_ForEach(listEntry, connection_info_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(connection_info_response->request);
        connection_info_response->request = NULL;
    }
    if (connection_info_response->groups) {
        list_ForEach(listEntry, connection_info_response->groups) {
            connection_group_response_free(listEntry->data);
        }
        list_freeList(connection_info_response->groups);
        connection_info_response->groups = NULL;
    }
    if (connection_info_response->returning) {
        free(connection_info_response->returning);
        connection_info_response->returning = NULL;
    }
    free(connection_info_response);
}

cJSON *connection_info_response_convertToJSON(connection_info_response_t *connection_info_response) {
    cJSON *item = cJSON_CreateObject();

    // connection_info_response->valid
    if(connection_info_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", connection_info_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_info_response->message
    if(connection_info_response->message) {
    if(cJSON_AddStringToObject(item, "message", connection_info_response->message) == NULL) {
    goto fail; //String
    }
    }


    // connection_info_response->version
    if(connection_info_response->version) {
    if(cJSON_AddNumberToObject(item, "version", connection_info_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_info_response->serialize_nulls
    if(connection_info_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", connection_info_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_info_response->start_time_log
    if(connection_info_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", connection_info_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_info_response->error_code
    if(connection_info_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", connection_info_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // connection_info_response->request
    if(connection_info_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (connection_info_response->request) {
    list_ForEach(requestListEntry, connection_info_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // connection_info_response->groups
    if(connection_info_response->groups) {
    cJSON *groups = cJSON_AddArrayToObject(item, "groups");
    if(groups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *groupsListEntry;
    if (connection_info_response->groups) {
    list_ForEach(groupsListEntry, connection_info_response->groups) {
    cJSON *itemLocal = connection_group_response_convertToJSON(groupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(groups, itemLocal);
    }
    }
    }


    // connection_info_response->follower_count
    if(connection_info_response->follower_count) {
    if(cJSON_AddNumberToObject(item, "followerCount", connection_info_response->follower_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_info_response->following_count
    if(connection_info_response->following_count) {
    if(cJSON_AddNumberToObject(item, "followingCount", connection_info_response->following_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_info_response->friend_count
    if(connection_info_response->friend_count) {
    if(cJSON_AddNumberToObject(item, "friendCount", connection_info_response->friend_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_info_response->private_group_count
    if(connection_info_response->private_group_count) {
    if(cJSON_AddNumberToObject(item, "privateGroupCount", connection_info_response->private_group_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_info_response->returning
    if(connection_info_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", connection_info_response->returning) == NULL) {
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

connection_info_response_t *connection_info_response_parseFromJSON(cJSON *connection_info_responseJSON){

    connection_info_response_t *connection_info_response_local_var = NULL;

    // define the local list for connection_info_response->request
    list_t *requestList = NULL;

    // define the local list for connection_info_response->groups
    list_t *groupsList = NULL;

    // connection_info_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // connection_info_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // connection_info_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // connection_info_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // connection_info_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // connection_info_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // connection_info_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "request");
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

    // connection_info_response->groups
    cJSON *groups = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "groups");
    if (cJSON_IsNull(groups)) {
        groups = NULL;
    }
    if (groups) { 
    cJSON *groups_local_nonprimitive = NULL;
    if(!cJSON_IsArray(groups)){
        goto end; //nonprimitive container
    }

    groupsList = list_createList();

    cJSON_ArrayForEach(groups_local_nonprimitive,groups )
    {
        if(!cJSON_IsObject(groups_local_nonprimitive)){
            goto end;
        }
        connection_group_response_t *groupsItem = connection_group_response_parseFromJSON(groups_local_nonprimitive);

        list_addElement(groupsList, groupsItem);
    }
    }

    // connection_info_response->follower_count
    cJSON *follower_count = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "followerCount");
    if (cJSON_IsNull(follower_count)) {
        follower_count = NULL;
    }
    if (follower_count) { 
    if(!cJSON_IsNumber(follower_count))
    {
    goto end; //Numeric
    }
    }

    // connection_info_response->following_count
    cJSON *following_count = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "followingCount");
    if (cJSON_IsNull(following_count)) {
        following_count = NULL;
    }
    if (following_count) { 
    if(!cJSON_IsNumber(following_count))
    {
    goto end; //Numeric
    }
    }

    // connection_info_response->friend_count
    cJSON *friend_count = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "friendCount");
    if (cJSON_IsNull(friend_count)) {
        friend_count = NULL;
    }
    if (friend_count) { 
    if(!cJSON_IsNumber(friend_count))
    {
    goto end; //Numeric
    }
    }

    // connection_info_response->private_group_count
    cJSON *private_group_count = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "privateGroupCount");
    if (cJSON_IsNull(private_group_count)) {
        private_group_count = NULL;
    }
    if (private_group_count) { 
    if(!cJSON_IsNumber(private_group_count))
    {
    goto end; //Numeric
    }
    }

    // connection_info_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(connection_info_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    connection_info_response_local_var = connection_info_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        groups ? groupsList : NULL,
        follower_count ? follower_count->valuedouble : 0,
        following_count ? following_count->valuedouble : 0,
        friend_count ? friend_count->valuedouble : 0,
        private_group_count ? private_group_count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return connection_info_response_local_var;
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
    if (groupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, groupsList) {
            connection_group_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(groupsList);
        groupsList = NULL;
    }
    return NULL;

}
