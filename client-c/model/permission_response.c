#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "permission_response.h"



static permission_response_t *permission_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    int read,
    int write,
    int _delete,
    int add,
    char *returning
    ) {
    permission_response_t *permission_response_local_var = malloc(sizeof(permission_response_t));
    if (!permission_response_local_var) {
        return NULL;
    }
    permission_response_local_var->valid = valid;
    permission_response_local_var->message = message;
    permission_response_local_var->version = version;
    permission_response_local_var->serialize_nulls = serialize_nulls;
    permission_response_local_var->start_time_log = start_time_log;
    permission_response_local_var->error_code = error_code;
    permission_response_local_var->request = request;
    permission_response_local_var->read = read;
    permission_response_local_var->write = write;
    permission_response_local_var->_delete = _delete;
    permission_response_local_var->add = add;
    permission_response_local_var->returning = returning;

    permission_response_local_var->_library_owned = 1;
    return permission_response_local_var;
}

__attribute__((deprecated)) permission_response_t *permission_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    int read,
    int write,
    int _delete,
    int add,
    char *returning
    ) {
    return permission_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        read,
        write,
        _delete,
        add,
        returning
        );
}

void permission_response_free(permission_response_t *permission_response) {
    if(NULL == permission_response){
        return ;
    }
    if(permission_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "permission_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (permission_response->message) {
        free(permission_response->message);
        permission_response->message = NULL;
    }
    if (permission_response->error_code) {
        free(permission_response->error_code);
        permission_response->error_code = NULL;
    }
    if (permission_response->request) {
        list_ForEach(listEntry, permission_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(permission_response->request);
        permission_response->request = NULL;
    }
    if (permission_response->returning) {
        free(permission_response->returning);
        permission_response->returning = NULL;
    }
    free(permission_response);
}

cJSON *permission_response_convertToJSON(permission_response_t *permission_response) {
    cJSON *item = cJSON_CreateObject();

    // permission_response->valid
    if(permission_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", permission_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // permission_response->message
    if(permission_response->message) {
    if(cJSON_AddStringToObject(item, "message", permission_response->message) == NULL) {
    goto fail; //String
    }
    }


    // permission_response->version
    if(permission_response->version) {
    if(cJSON_AddNumberToObject(item, "version", permission_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // permission_response->serialize_nulls
    if(permission_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", permission_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // permission_response->start_time_log
    if(permission_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", permission_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // permission_response->error_code
    if(permission_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", permission_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // permission_response->request
    if(permission_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (permission_response->request) {
    list_ForEach(requestListEntry, permission_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // permission_response->read
    if(permission_response->read) {
    if(cJSON_AddBoolToObject(item, "read", permission_response->read) == NULL) {
    goto fail; //Bool
    }
    }


    // permission_response->write
    if(permission_response->write) {
    if(cJSON_AddBoolToObject(item, "write", permission_response->write) == NULL) {
    goto fail; //Bool
    }
    }


    // permission_response->_delete
    if(permission_response->_delete) {
    if(cJSON_AddBoolToObject(item, "delete", permission_response->_delete) == NULL) {
    goto fail; //Bool
    }
    }


    // permission_response->add
    if(permission_response->add) {
    if(cJSON_AddBoolToObject(item, "add", permission_response->add) == NULL) {
    goto fail; //Bool
    }
    }


    // permission_response->returning
    if(permission_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", permission_response->returning) == NULL) {
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

permission_response_t *permission_response_parseFromJSON(cJSON *permission_responseJSON){

    permission_response_t *permission_response_local_var = NULL;

    // define the local list for permission_response->request
    list_t *requestList = NULL;

    // permission_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // permission_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // permission_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // permission_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // permission_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // permission_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // permission_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "request");
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

    // permission_response->read
    cJSON *read = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "read");
    if (cJSON_IsNull(read)) {
        read = NULL;
    }
    if (read) { 
    if(!cJSON_IsBool(read))
    {
    goto end; //Bool
    }
    }

    // permission_response->write
    cJSON *write = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "write");
    if (cJSON_IsNull(write)) {
        write = NULL;
    }
    if (write) { 
    if(!cJSON_IsBool(write))
    {
    goto end; //Bool
    }
    }

    // permission_response->_delete
    cJSON *_delete = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "delete");
    if (cJSON_IsNull(_delete)) {
        _delete = NULL;
    }
    if (_delete) { 
    if(!cJSON_IsBool(_delete))
    {
    goto end; //Bool
    }
    }

    // permission_response->add
    cJSON *add = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "add");
    if (cJSON_IsNull(add)) {
        add = NULL;
    }
    if (add) { 
    if(!cJSON_IsBool(add))
    {
    goto end; //Bool
    }
    }

    // permission_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(permission_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    permission_response_local_var = permission_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        read ? read->valueint : 0,
        write ? write->valueint : 0,
        _delete ? _delete->valueint : 0,
        add ? add->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return permission_response_local_var;
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
