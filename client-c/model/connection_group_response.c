#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connection_group_response.h"


char* connection_group_response_group_type_ToString(sirqul_iot_platform_connection_group_response_GROUPTYPE_e group_type) {
    char* group_typeArray[] =  { "NULL", "PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST" };
    return group_typeArray[group_type];
}

sirqul_iot_platform_connection_group_response_GROUPTYPE_e connection_group_response_group_type_FromString(char* group_type){
    int stringToReturn = 0;
    char *group_typeArray[] =  { "NULL", "PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST" };
    size_t sizeofArray = sizeof(group_typeArray) / sizeof(group_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(group_type, group_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static connection_group_response_t *connection_group_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long connection_group_id,
    char *name,
    sirqul_iot_platform_connection_group_response_GROUPTYPE_e group_type,
    char *thumbnail_url,
    list_t *sub_groups,
    char *description,
    int active,
    int connection_count,
    list_t *connections,
    group_permissions_t *group_permissions,
    long owner_id,
    char *returning
    ) {
    connection_group_response_t *connection_group_response_local_var = malloc(sizeof(connection_group_response_t));
    if (!connection_group_response_local_var) {
        return NULL;
    }
    connection_group_response_local_var->valid = valid;
    connection_group_response_local_var->message = message;
    connection_group_response_local_var->version = version;
    connection_group_response_local_var->serialize_nulls = serialize_nulls;
    connection_group_response_local_var->start_time_log = start_time_log;
    connection_group_response_local_var->error_code = error_code;
    connection_group_response_local_var->request = request;
    connection_group_response_local_var->connection_group_id = connection_group_id;
    connection_group_response_local_var->name = name;
    connection_group_response_local_var->group_type = group_type;
    connection_group_response_local_var->thumbnail_url = thumbnail_url;
    connection_group_response_local_var->sub_groups = sub_groups;
    connection_group_response_local_var->description = description;
    connection_group_response_local_var->active = active;
    connection_group_response_local_var->connection_count = connection_count;
    connection_group_response_local_var->connections = connections;
    connection_group_response_local_var->group_permissions = group_permissions;
    connection_group_response_local_var->owner_id = owner_id;
    connection_group_response_local_var->returning = returning;

    connection_group_response_local_var->_library_owned = 1;
    return connection_group_response_local_var;
}

__attribute__((deprecated)) connection_group_response_t *connection_group_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long connection_group_id,
    char *name,
    sirqul_iot_platform_connection_group_response_GROUPTYPE_e group_type,
    char *thumbnail_url,
    list_t *sub_groups,
    char *description,
    int active,
    int connection_count,
    list_t *connections,
    group_permissions_t *group_permissions,
    long owner_id,
    char *returning
    ) {
    return connection_group_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        connection_group_id,
        name,
        group_type,
        thumbnail_url,
        sub_groups,
        description,
        active,
        connection_count,
        connections,
        group_permissions,
        owner_id,
        returning
        );
}

void connection_group_response_free(connection_group_response_t *connection_group_response) {
    if(NULL == connection_group_response){
        return ;
    }
    if(connection_group_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connection_group_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connection_group_response->message) {
        free(connection_group_response->message);
        connection_group_response->message = NULL;
    }
    if (connection_group_response->error_code) {
        free(connection_group_response->error_code);
        connection_group_response->error_code = NULL;
    }
    if (connection_group_response->request) {
        list_ForEach(listEntry, connection_group_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(connection_group_response->request);
        connection_group_response->request = NULL;
    }
    if (connection_group_response->name) {
        free(connection_group_response->name);
        connection_group_response->name = NULL;
    }
    if (connection_group_response->thumbnail_url) {
        free(connection_group_response->thumbnail_url);
        connection_group_response->thumbnail_url = NULL;
    }
    if (connection_group_response->sub_groups) {
        list_ForEach(listEntry, connection_group_response->sub_groups) {
            connection_group_response_free(listEntry->data);
        }
        list_freeList(connection_group_response->sub_groups);
        connection_group_response->sub_groups = NULL;
    }
    if (connection_group_response->description) {
        free(connection_group_response->description);
        connection_group_response->description = NULL;
    }
    if (connection_group_response->connections) {
        list_ForEach(listEntry, connection_group_response->connections) {
            connection_response_free(listEntry->data);
        }
        list_freeList(connection_group_response->connections);
        connection_group_response->connections = NULL;
    }
    if (connection_group_response->group_permissions) {
        group_permissions_free(connection_group_response->group_permissions);
        connection_group_response->group_permissions = NULL;
    }
    if (connection_group_response->returning) {
        free(connection_group_response->returning);
        connection_group_response->returning = NULL;
    }
    free(connection_group_response);
}

cJSON *connection_group_response_convertToJSON(connection_group_response_t *connection_group_response) {
    cJSON *item = cJSON_CreateObject();

    // connection_group_response->valid
    if(connection_group_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", connection_group_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_group_response->message
    if(connection_group_response->message) {
    if(cJSON_AddStringToObject(item, "message", connection_group_response->message) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_response->version
    if(connection_group_response->version) {
    if(cJSON_AddNumberToObject(item, "version", connection_group_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_response->serialize_nulls
    if(connection_group_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", connection_group_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_group_response->start_time_log
    if(connection_group_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", connection_group_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_response->error_code
    if(connection_group_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", connection_group_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_response->request
    if(connection_group_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (connection_group_response->request) {
    list_ForEach(requestListEntry, connection_group_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // connection_group_response->connection_group_id
    if(connection_group_response->connection_group_id) {
    if(cJSON_AddNumberToObject(item, "connectionGroupId", connection_group_response->connection_group_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_response->name
    if(connection_group_response->name) {
    if(cJSON_AddStringToObject(item, "name", connection_group_response->name) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_response->group_type
    if(connection_group_response->group_type != sirqul_iot_platform_connection_group_response_GROUPTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "groupType", connection_group_response_group_type_ToString(connection_group_response->group_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // connection_group_response->thumbnail_url
    if(connection_group_response->thumbnail_url) {
    if(cJSON_AddStringToObject(item, "thumbnailURL", connection_group_response->thumbnail_url) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_response->sub_groups
    if(connection_group_response->sub_groups) {
    cJSON *sub_groups = cJSON_AddArrayToObject(item, "subGroups");
    if(sub_groups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sub_groupsListEntry;
    if (connection_group_response->sub_groups) {
    list_ForEach(sub_groupsListEntry, connection_group_response->sub_groups) {
    cJSON *itemLocal = connection_group_response_convertToJSON(sub_groupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sub_groups, itemLocal);
    }
    }
    }


    // connection_group_response->description
    if(connection_group_response->description) {
    if(cJSON_AddStringToObject(item, "description", connection_group_response->description) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_response->active
    if(connection_group_response->active) {
    if(cJSON_AddBoolToObject(item, "active", connection_group_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_group_response->connection_count
    if(connection_group_response->connection_count) {
    if(cJSON_AddNumberToObject(item, "connectionCount", connection_group_response->connection_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_response->connections
    if(connection_group_response->connections) {
    cJSON *connections = cJSON_AddArrayToObject(item, "connections");
    if(connections == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connectionsListEntry;
    if (connection_group_response->connections) {
    list_ForEach(connectionsListEntry, connection_group_response->connections) {
    cJSON *itemLocal = connection_response_convertToJSON(connectionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connections, itemLocal);
    }
    }
    }


    // connection_group_response->group_permissions
    if(connection_group_response->group_permissions) {
    cJSON *group_permissions_local_JSON = group_permissions_convertToJSON(connection_group_response->group_permissions);
    if(group_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "groupPermissions", group_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connection_group_response->owner_id
    if(connection_group_response->owner_id) {
    if(cJSON_AddNumberToObject(item, "ownerId", connection_group_response->owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_response->returning
    if(connection_group_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", connection_group_response->returning) == NULL) {
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

connection_group_response_t *connection_group_response_parseFromJSON(cJSON *connection_group_responseJSON){

    connection_group_response_t *connection_group_response_local_var = NULL;

    // define the local list for connection_group_response->request
    list_t *requestList = NULL;

    // define the local list for connection_group_response->sub_groups
    list_t *sub_groupsList = NULL;

    // define the local list for connection_group_response->connections
    list_t *connectionsList = NULL;

    // define the local variable for connection_group_response->group_permissions
    group_permissions_t *group_permissions_local_nonprim = NULL;

    // connection_group_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // connection_group_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // connection_group_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // connection_group_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // connection_group_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // connection_group_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // connection_group_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "request");
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

    // connection_group_response->connection_group_id
    cJSON *connection_group_id = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "connectionGroupId");
    if (cJSON_IsNull(connection_group_id)) {
        connection_group_id = NULL;
    }
    if (connection_group_id) { 
    if(!cJSON_IsNumber(connection_group_id))
    {
    goto end; //Numeric
    }
    }

    // connection_group_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // connection_group_response->group_type
    cJSON *group_type = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "groupType");
    if (cJSON_IsNull(group_type)) {
        group_type = NULL;
    }
    sirqul_iot_platform_connection_group_response_GROUPTYPE_e group_typeVariable;
    if (group_type) { 
    if(!cJSON_IsString(group_type))
    {
    goto end; //Enum
    }
    group_typeVariable = connection_group_response_group_type_FromString(group_type->valuestring);
    }

    // connection_group_response->thumbnail_url
    cJSON *thumbnail_url = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "thumbnailURL");
    if (cJSON_IsNull(thumbnail_url)) {
        thumbnail_url = NULL;
    }
    if (thumbnail_url) { 
    if(!cJSON_IsString(thumbnail_url) && !cJSON_IsNull(thumbnail_url))
    {
    goto end; //String
    }
    }

    // connection_group_response->sub_groups
    cJSON *sub_groups = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "subGroups");
    if (cJSON_IsNull(sub_groups)) {
        sub_groups = NULL;
    }
    if (sub_groups) { 
    cJSON *sub_groups_local_nonprimitive = NULL;
    if(!cJSON_IsArray(sub_groups)){
        goto end; //nonprimitive container
    }

    sub_groupsList = list_createList();

    cJSON_ArrayForEach(sub_groups_local_nonprimitive,sub_groups )
    {
        if(!cJSON_IsObject(sub_groups_local_nonprimitive)){
            goto end;
        }
        connection_group_response_t *sub_groupsItem = connection_group_response_parseFromJSON(sub_groups_local_nonprimitive);

        list_addElement(sub_groupsList, sub_groupsItem);
    }
    }

    // connection_group_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // connection_group_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // connection_group_response->connection_count
    cJSON *connection_count = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "connectionCount");
    if (cJSON_IsNull(connection_count)) {
        connection_count = NULL;
    }
    if (connection_count) { 
    if(!cJSON_IsNumber(connection_count))
    {
    goto end; //Numeric
    }
    }

    // connection_group_response->connections
    cJSON *connections = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "connections");
    if (cJSON_IsNull(connections)) {
        connections = NULL;
    }
    if (connections) { 
    cJSON *connections_local_nonprimitive = NULL;
    if(!cJSON_IsArray(connections)){
        goto end; //nonprimitive container
    }

    connectionsList = list_createList();

    cJSON_ArrayForEach(connections_local_nonprimitive,connections )
    {
        if(!cJSON_IsObject(connections_local_nonprimitive)){
            goto end;
        }
        connection_response_t *connectionsItem = connection_response_parseFromJSON(connections_local_nonprimitive);

        list_addElement(connectionsList, connectionsItem);
    }
    }

    // connection_group_response->group_permissions
    cJSON *group_permissions = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "groupPermissions");
    if (cJSON_IsNull(group_permissions)) {
        group_permissions = NULL;
    }
    if (group_permissions) { 
    group_permissions_local_nonprim = group_permissions_parseFromJSON(group_permissions); //nonprimitive
    }

    // connection_group_response->owner_id
    cJSON *owner_id = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "ownerId");
    if (cJSON_IsNull(owner_id)) {
        owner_id = NULL;
    }
    if (owner_id) { 
    if(!cJSON_IsNumber(owner_id))
    {
    goto end; //Numeric
    }
    }

    // connection_group_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(connection_group_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    connection_group_response_local_var = connection_group_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        connection_group_id ? connection_group_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        group_type ? group_typeVariable : sirqul_iot_platform_connection_group_response_GROUPTYPE_NULL,
        thumbnail_url && !cJSON_IsNull(thumbnail_url) ? strdup(thumbnail_url->valuestring) : NULL,
        sub_groups ? sub_groupsList : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        active ? active->valueint : 0,
        connection_count ? connection_count->valuedouble : 0,
        connections ? connectionsList : NULL,
        group_permissions ? group_permissions_local_nonprim : NULL,
        owner_id ? owner_id->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return connection_group_response_local_var;
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
    if (sub_groupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sub_groupsList) {
            connection_group_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sub_groupsList);
        sub_groupsList = NULL;
    }
    if (connectionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, connectionsList) {
            connection_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(connectionsList);
        connectionsList = NULL;
    }
    if (group_permissions_local_nonprim) {
        group_permissions_free(group_permissions_local_nonprim);
        group_permissions_local_nonprim = NULL;
    }
    return NULL;

}
