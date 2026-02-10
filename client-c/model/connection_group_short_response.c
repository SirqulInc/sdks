#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connection_group_short_response.h"


char* connection_group_short_response_group_type_ToString(sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e group_type) {
    char* group_typeArray[] =  { "NULL", "PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST" };
    return group_typeArray[group_type];
}

sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e connection_group_short_response_group_type_FromString(char* group_type){
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

static connection_group_short_response_t *connection_group_short_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long connection_group_id,
    char *name,
    sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e group_type,
    char *thumbnail_url,
    char *returning
    ) {
    connection_group_short_response_t *connection_group_short_response_local_var = malloc(sizeof(connection_group_short_response_t));
    if (!connection_group_short_response_local_var) {
        return NULL;
    }
    connection_group_short_response_local_var->valid = valid;
    connection_group_short_response_local_var->message = message;
    connection_group_short_response_local_var->version = version;
    connection_group_short_response_local_var->serialize_nulls = serialize_nulls;
    connection_group_short_response_local_var->start_time_log = start_time_log;
    connection_group_short_response_local_var->error_code = error_code;
    connection_group_short_response_local_var->request = request;
    connection_group_short_response_local_var->connection_group_id = connection_group_id;
    connection_group_short_response_local_var->name = name;
    connection_group_short_response_local_var->group_type = group_type;
    connection_group_short_response_local_var->thumbnail_url = thumbnail_url;
    connection_group_short_response_local_var->returning = returning;

    connection_group_short_response_local_var->_library_owned = 1;
    return connection_group_short_response_local_var;
}

__attribute__((deprecated)) connection_group_short_response_t *connection_group_short_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long connection_group_id,
    char *name,
    sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e group_type,
    char *thumbnail_url,
    char *returning
    ) {
    return connection_group_short_response_create_internal (
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
        returning
        );
}

void connection_group_short_response_free(connection_group_short_response_t *connection_group_short_response) {
    if(NULL == connection_group_short_response){
        return ;
    }
    if(connection_group_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connection_group_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connection_group_short_response->message) {
        free(connection_group_short_response->message);
        connection_group_short_response->message = NULL;
    }
    if (connection_group_short_response->error_code) {
        free(connection_group_short_response->error_code);
        connection_group_short_response->error_code = NULL;
    }
    if (connection_group_short_response->request) {
        list_ForEach(listEntry, connection_group_short_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(connection_group_short_response->request);
        connection_group_short_response->request = NULL;
    }
    if (connection_group_short_response->name) {
        free(connection_group_short_response->name);
        connection_group_short_response->name = NULL;
    }
    if (connection_group_short_response->thumbnail_url) {
        free(connection_group_short_response->thumbnail_url);
        connection_group_short_response->thumbnail_url = NULL;
    }
    if (connection_group_short_response->returning) {
        free(connection_group_short_response->returning);
        connection_group_short_response->returning = NULL;
    }
    free(connection_group_short_response);
}

cJSON *connection_group_short_response_convertToJSON(connection_group_short_response_t *connection_group_short_response) {
    cJSON *item = cJSON_CreateObject();

    // connection_group_short_response->valid
    if(connection_group_short_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", connection_group_short_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_group_short_response->message
    if(connection_group_short_response->message) {
    if(cJSON_AddStringToObject(item, "message", connection_group_short_response->message) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_short_response->version
    if(connection_group_short_response->version) {
    if(cJSON_AddNumberToObject(item, "version", connection_group_short_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_short_response->serialize_nulls
    if(connection_group_short_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", connection_group_short_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_group_short_response->start_time_log
    if(connection_group_short_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", connection_group_short_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_short_response->error_code
    if(connection_group_short_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", connection_group_short_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_short_response->request
    if(connection_group_short_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (connection_group_short_response->request) {
    list_ForEach(requestListEntry, connection_group_short_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // connection_group_short_response->connection_group_id
    if(connection_group_short_response->connection_group_id) {
    if(cJSON_AddNumberToObject(item, "connectionGroupId", connection_group_short_response->connection_group_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group_short_response->name
    if(connection_group_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", connection_group_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_short_response->group_type
    if(connection_group_short_response->group_type != sirqul_iot_platform_connection_group_short_response_GROUPTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "groupType", connection_group_short_response_group_type_ToString(connection_group_short_response->group_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // connection_group_short_response->thumbnail_url
    if(connection_group_short_response->thumbnail_url) {
    if(cJSON_AddStringToObject(item, "thumbnailURL", connection_group_short_response->thumbnail_url) == NULL) {
    goto fail; //String
    }
    }


    // connection_group_short_response->returning
    if(connection_group_short_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", connection_group_short_response->returning) == NULL) {
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

connection_group_short_response_t *connection_group_short_response_parseFromJSON(cJSON *connection_group_short_responseJSON){

    connection_group_short_response_t *connection_group_short_response_local_var = NULL;

    // define the local list for connection_group_short_response->request
    list_t *requestList = NULL;

    // connection_group_short_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // connection_group_short_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // connection_group_short_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // connection_group_short_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // connection_group_short_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // connection_group_short_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // connection_group_short_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "request");
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

    // connection_group_short_response->connection_group_id
    cJSON *connection_group_id = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "connectionGroupId");
    if (cJSON_IsNull(connection_group_id)) {
        connection_group_id = NULL;
    }
    if (connection_group_id) { 
    if(!cJSON_IsNumber(connection_group_id))
    {
    goto end; //Numeric
    }
    }

    // connection_group_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // connection_group_short_response->group_type
    cJSON *group_type = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "groupType");
    if (cJSON_IsNull(group_type)) {
        group_type = NULL;
    }
    sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e group_typeVariable;
    if (group_type) { 
    if(!cJSON_IsString(group_type))
    {
    goto end; //Enum
    }
    group_typeVariable = connection_group_short_response_group_type_FromString(group_type->valuestring);
    }

    // connection_group_short_response->thumbnail_url
    cJSON *thumbnail_url = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "thumbnailURL");
    if (cJSON_IsNull(thumbnail_url)) {
        thumbnail_url = NULL;
    }
    if (thumbnail_url) { 
    if(!cJSON_IsString(thumbnail_url) && !cJSON_IsNull(thumbnail_url))
    {
    goto end; //String
    }
    }

    // connection_group_short_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(connection_group_short_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    connection_group_short_response_local_var = connection_group_short_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        connection_group_id ? connection_group_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        group_type ? group_typeVariable : sirqul_iot_platform_connection_group_short_response_GROUPTYPE_NULL,
        thumbnail_url && !cJSON_IsNull(thumbnail_url) ? strdup(thumbnail_url->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return connection_group_short_response_local_var;
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
