#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connection_list_response.h"



static connection_list_response_t *connection_list_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *connections,
    int friend_count,
    int following_count,
    int item_count,
    int has_more_results,
    char *returning
    ) {
    connection_list_response_t *connection_list_response_local_var = malloc(sizeof(connection_list_response_t));
    if (!connection_list_response_local_var) {
        return NULL;
    }
    connection_list_response_local_var->valid = valid;
    connection_list_response_local_var->message = message;
    connection_list_response_local_var->version = version;
    connection_list_response_local_var->serialize_nulls = serialize_nulls;
    connection_list_response_local_var->start_time_log = start_time_log;
    connection_list_response_local_var->error_code = error_code;
    connection_list_response_local_var->request = request;
    connection_list_response_local_var->connections = connections;
    connection_list_response_local_var->friend_count = friend_count;
    connection_list_response_local_var->following_count = following_count;
    connection_list_response_local_var->item_count = item_count;
    connection_list_response_local_var->has_more_results = has_more_results;
    connection_list_response_local_var->returning = returning;

    connection_list_response_local_var->_library_owned = 1;
    return connection_list_response_local_var;
}

__attribute__((deprecated)) connection_list_response_t *connection_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *connections,
    int friend_count,
    int following_count,
    int item_count,
    int has_more_results,
    char *returning
    ) {
    return connection_list_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        connections,
        friend_count,
        following_count,
        item_count,
        has_more_results,
        returning
        );
}

void connection_list_response_free(connection_list_response_t *connection_list_response) {
    if(NULL == connection_list_response){
        return ;
    }
    if(connection_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connection_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connection_list_response->message) {
        free(connection_list_response->message);
        connection_list_response->message = NULL;
    }
    if (connection_list_response->error_code) {
        free(connection_list_response->error_code);
        connection_list_response->error_code = NULL;
    }
    if (connection_list_response->request) {
        list_ForEach(listEntry, connection_list_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(connection_list_response->request);
        connection_list_response->request = NULL;
    }
    if (connection_list_response->connections) {
        list_ForEach(listEntry, connection_list_response->connections) {
            connection_response_free(listEntry->data);
        }
        list_freeList(connection_list_response->connections);
        connection_list_response->connections = NULL;
    }
    if (connection_list_response->returning) {
        free(connection_list_response->returning);
        connection_list_response->returning = NULL;
    }
    free(connection_list_response);
}

cJSON *connection_list_response_convertToJSON(connection_list_response_t *connection_list_response) {
    cJSON *item = cJSON_CreateObject();

    // connection_list_response->valid
    if(connection_list_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", connection_list_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_list_response->message
    if(connection_list_response->message) {
    if(cJSON_AddStringToObject(item, "message", connection_list_response->message) == NULL) {
    goto fail; //String
    }
    }


    // connection_list_response->version
    if(connection_list_response->version) {
    if(cJSON_AddNumberToObject(item, "version", connection_list_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_list_response->serialize_nulls
    if(connection_list_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", connection_list_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_list_response->start_time_log
    if(connection_list_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", connection_list_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_list_response->error_code
    if(connection_list_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", connection_list_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // connection_list_response->request
    if(connection_list_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (connection_list_response->request) {
    list_ForEach(requestListEntry, connection_list_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // connection_list_response->connections
    if(connection_list_response->connections) {
    cJSON *connections = cJSON_AddArrayToObject(item, "connections");
    if(connections == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connectionsListEntry;
    if (connection_list_response->connections) {
    list_ForEach(connectionsListEntry, connection_list_response->connections) {
    cJSON *itemLocal = connection_response_convertToJSON(connectionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connections, itemLocal);
    }
    }
    }


    // connection_list_response->friend_count
    if(connection_list_response->friend_count) {
    if(cJSON_AddNumberToObject(item, "friendCount", connection_list_response->friend_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_list_response->following_count
    if(connection_list_response->following_count) {
    if(cJSON_AddNumberToObject(item, "followingCount", connection_list_response->following_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_list_response->item_count
    if(connection_list_response->item_count) {
    if(cJSON_AddNumberToObject(item, "itemCount", connection_list_response->item_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_list_response->has_more_results
    if(connection_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", connection_list_response->has_more_results) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_list_response->returning
    if(connection_list_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", connection_list_response->returning) == NULL) {
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

connection_list_response_t *connection_list_response_parseFromJSON(cJSON *connection_list_responseJSON){

    connection_list_response_t *connection_list_response_local_var = NULL;

    // define the local list for connection_list_response->request
    list_t *requestList = NULL;

    // define the local list for connection_list_response->connections
    list_t *connectionsList = NULL;

    // connection_list_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // connection_list_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // connection_list_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // connection_list_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // connection_list_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // connection_list_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // connection_list_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "request");
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

    // connection_list_response->connections
    cJSON *connections = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "connections");
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

    // connection_list_response->friend_count
    cJSON *friend_count = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "friendCount");
    if (cJSON_IsNull(friend_count)) {
        friend_count = NULL;
    }
    if (friend_count) { 
    if(!cJSON_IsNumber(friend_count))
    {
    goto end; //Numeric
    }
    }

    // connection_list_response->following_count
    cJSON *following_count = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "followingCount");
    if (cJSON_IsNull(following_count)) {
        following_count = NULL;
    }
    if (following_count) { 
    if(!cJSON_IsNumber(following_count))
    {
    goto end; //Numeric
    }
    }

    // connection_list_response->item_count
    cJSON *item_count = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "itemCount");
    if (cJSON_IsNull(item_count)) {
        item_count = NULL;
    }
    if (item_count) { 
    if(!cJSON_IsNumber(item_count))
    {
    goto end; //Numeric
    }
    }

    // connection_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }

    // connection_list_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(connection_list_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    connection_list_response_local_var = connection_list_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        connections ? connectionsList : NULL,
        friend_count ? friend_count->valuedouble : 0,
        following_count ? following_count->valuedouble : 0,
        item_count ? item_count->valuedouble : 0,
        has_more_results ? has_more_results->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return connection_list_response_local_var;
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
    if (connectionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, connectionsList) {
            connection_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(connectionsList);
        connectionsList = NULL;
    }
    return NULL;

}
