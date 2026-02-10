#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user_permissions_response.h"



static user_permissions_response_t *user_permissions_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    permission_response_t *permissions,
    connection_response_t *connection,
    connection_group_response_t *connection_group,
    int exclude,
    int blocked,
    int friend_group,
    long permissionable_id,
    char *permissionable_type,
    char *returning
    ) {
    user_permissions_response_t *user_permissions_response_local_var = malloc(sizeof(user_permissions_response_t));
    if (!user_permissions_response_local_var) {
        return NULL;
    }
    user_permissions_response_local_var->valid = valid;
    user_permissions_response_local_var->message = message;
    user_permissions_response_local_var->version = version;
    user_permissions_response_local_var->serialize_nulls = serialize_nulls;
    user_permissions_response_local_var->start_time_log = start_time_log;
    user_permissions_response_local_var->error_code = error_code;
    user_permissions_response_local_var->request = request;
    user_permissions_response_local_var->permissions = permissions;
    user_permissions_response_local_var->connection = connection;
    user_permissions_response_local_var->connection_group = connection_group;
    user_permissions_response_local_var->exclude = exclude;
    user_permissions_response_local_var->blocked = blocked;
    user_permissions_response_local_var->friend_group = friend_group;
    user_permissions_response_local_var->permissionable_id = permissionable_id;
    user_permissions_response_local_var->permissionable_type = permissionable_type;
    user_permissions_response_local_var->returning = returning;

    user_permissions_response_local_var->_library_owned = 1;
    return user_permissions_response_local_var;
}

__attribute__((deprecated)) user_permissions_response_t *user_permissions_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    permission_response_t *permissions,
    connection_response_t *connection,
    connection_group_response_t *connection_group,
    int exclude,
    int blocked,
    int friend_group,
    long permissionable_id,
    char *permissionable_type,
    char *returning
    ) {
    return user_permissions_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        permissions,
        connection,
        connection_group,
        exclude,
        blocked,
        friend_group,
        permissionable_id,
        permissionable_type,
        returning
        );
}

void user_permissions_response_free(user_permissions_response_t *user_permissions_response) {
    if(NULL == user_permissions_response){
        return ;
    }
    if(user_permissions_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "user_permissions_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (user_permissions_response->message) {
        free(user_permissions_response->message);
        user_permissions_response->message = NULL;
    }
    if (user_permissions_response->error_code) {
        free(user_permissions_response->error_code);
        user_permissions_response->error_code = NULL;
    }
    if (user_permissions_response->request) {
        list_ForEach(listEntry, user_permissions_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(user_permissions_response->request);
        user_permissions_response->request = NULL;
    }
    if (user_permissions_response->permissions) {
        permission_response_free(user_permissions_response->permissions);
        user_permissions_response->permissions = NULL;
    }
    if (user_permissions_response->connection) {
        connection_response_free(user_permissions_response->connection);
        user_permissions_response->connection = NULL;
    }
    if (user_permissions_response->connection_group) {
        connection_group_response_free(user_permissions_response->connection_group);
        user_permissions_response->connection_group = NULL;
    }
    if (user_permissions_response->permissionable_type) {
        free(user_permissions_response->permissionable_type);
        user_permissions_response->permissionable_type = NULL;
    }
    if (user_permissions_response->returning) {
        free(user_permissions_response->returning);
        user_permissions_response->returning = NULL;
    }
    free(user_permissions_response);
}

cJSON *user_permissions_response_convertToJSON(user_permissions_response_t *user_permissions_response) {
    cJSON *item = cJSON_CreateObject();

    // user_permissions_response->valid
    if(user_permissions_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", user_permissions_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions_response->message
    if(user_permissions_response->message) {
    if(cJSON_AddStringToObject(item, "message", user_permissions_response->message) == NULL) {
    goto fail; //String
    }
    }


    // user_permissions_response->version
    if(user_permissions_response->version) {
    if(cJSON_AddNumberToObject(item, "version", user_permissions_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_permissions_response->serialize_nulls
    if(user_permissions_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", user_permissions_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions_response->start_time_log
    if(user_permissions_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", user_permissions_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_permissions_response->error_code
    if(user_permissions_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", user_permissions_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // user_permissions_response->request
    if(user_permissions_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (user_permissions_response->request) {
    list_ForEach(requestListEntry, user_permissions_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // user_permissions_response->permissions
    if(user_permissions_response->permissions) {
    cJSON *permissions_local_JSON = permission_response_convertToJSON(user_permissions_response->permissions);
    if(permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "permissions", permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_permissions_response->connection
    if(user_permissions_response->connection) {
    cJSON *connection_local_JSON = connection_response_convertToJSON(user_permissions_response->connection);
    if(connection_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "connection", connection_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_permissions_response->connection_group
    if(user_permissions_response->connection_group) {
    cJSON *connection_group_local_JSON = connection_group_response_convertToJSON(user_permissions_response->connection_group);
    if(connection_group_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "connectionGroup", connection_group_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_permissions_response->exclude
    if(user_permissions_response->exclude) {
    if(cJSON_AddBoolToObject(item, "exclude", user_permissions_response->exclude) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions_response->blocked
    if(user_permissions_response->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", user_permissions_response->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions_response->friend_group
    if(user_permissions_response->friend_group) {
    if(cJSON_AddBoolToObject(item, "friendGroup", user_permissions_response->friend_group) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions_response->permissionable_id
    if(user_permissions_response->permissionable_id) {
    if(cJSON_AddNumberToObject(item, "permissionableId", user_permissions_response->permissionable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_permissions_response->permissionable_type
    if(user_permissions_response->permissionable_type) {
    if(cJSON_AddStringToObject(item, "permissionableType", user_permissions_response->permissionable_type) == NULL) {
    goto fail; //String
    }
    }


    // user_permissions_response->returning
    if(user_permissions_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", user_permissions_response->returning) == NULL) {
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

user_permissions_response_t *user_permissions_response_parseFromJSON(cJSON *user_permissions_responseJSON){

    user_permissions_response_t *user_permissions_response_local_var = NULL;

    // define the local list for user_permissions_response->request
    list_t *requestList = NULL;

    // define the local variable for user_permissions_response->permissions
    permission_response_t *permissions_local_nonprim = NULL;

    // define the local variable for user_permissions_response->connection
    connection_response_t *connection_local_nonprim = NULL;

    // define the local variable for user_permissions_response->connection_group
    connection_group_response_t *connection_group_local_nonprim = NULL;

    // user_permissions_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // user_permissions_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // user_permissions_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // user_permissions_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // user_permissions_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // user_permissions_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // user_permissions_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "request");
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

    // user_permissions_response->permissions
    cJSON *permissions = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "permissions");
    if (cJSON_IsNull(permissions)) {
        permissions = NULL;
    }
    if (permissions) { 
    permissions_local_nonprim = permission_response_parseFromJSON(permissions); //nonprimitive
    }

    // user_permissions_response->connection
    cJSON *connection = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "connection");
    if (cJSON_IsNull(connection)) {
        connection = NULL;
    }
    if (connection) { 
    connection_local_nonprim = connection_response_parseFromJSON(connection); //nonprimitive
    }

    // user_permissions_response->connection_group
    cJSON *connection_group = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "connectionGroup");
    if (cJSON_IsNull(connection_group)) {
        connection_group = NULL;
    }
    if (connection_group) { 
    connection_group_local_nonprim = connection_group_response_parseFromJSON(connection_group); //nonprimitive
    }

    // user_permissions_response->exclude
    cJSON *exclude = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "exclude");
    if (cJSON_IsNull(exclude)) {
        exclude = NULL;
    }
    if (exclude) { 
    if(!cJSON_IsBool(exclude))
    {
    goto end; //Bool
    }
    }

    // user_permissions_response->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "blocked");
    if (cJSON_IsNull(blocked)) {
        blocked = NULL;
    }
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // user_permissions_response->friend_group
    cJSON *friend_group = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "friendGroup");
    if (cJSON_IsNull(friend_group)) {
        friend_group = NULL;
    }
    if (friend_group) { 
    if(!cJSON_IsBool(friend_group))
    {
    goto end; //Bool
    }
    }

    // user_permissions_response->permissionable_id
    cJSON *permissionable_id = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "permissionableId");
    if (cJSON_IsNull(permissionable_id)) {
        permissionable_id = NULL;
    }
    if (permissionable_id) { 
    if(!cJSON_IsNumber(permissionable_id))
    {
    goto end; //Numeric
    }
    }

    // user_permissions_response->permissionable_type
    cJSON *permissionable_type = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "permissionableType");
    if (cJSON_IsNull(permissionable_type)) {
        permissionable_type = NULL;
    }
    if (permissionable_type) { 
    if(!cJSON_IsString(permissionable_type) && !cJSON_IsNull(permissionable_type))
    {
    goto end; //String
    }
    }

    // user_permissions_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(user_permissions_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    user_permissions_response_local_var = user_permissions_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        permissions ? permissions_local_nonprim : NULL,
        connection ? connection_local_nonprim : NULL,
        connection_group ? connection_group_local_nonprim : NULL,
        exclude ? exclude->valueint : 0,
        blocked ? blocked->valueint : 0,
        friend_group ? friend_group->valueint : 0,
        permissionable_id ? permissionable_id->valuedouble : 0,
        permissionable_type && !cJSON_IsNull(permissionable_type) ? strdup(permissionable_type->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return user_permissions_response_local_var;
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
    if (permissions_local_nonprim) {
        permission_response_free(permissions_local_nonprim);
        permissions_local_nonprim = NULL;
    }
    if (connection_local_nonprim) {
        connection_response_free(connection_local_nonprim);
        connection_local_nonprim = NULL;
    }
    if (connection_group_local_nonprim) {
        connection_group_response_free(connection_group_local_nonprim);
        connection_group_local_nonprim = NULL;
    }
    return NULL;

}
