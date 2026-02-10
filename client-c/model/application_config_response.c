#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "application_config_response.h"



static application_config_response_t *application_config_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long config_id,
    long created,
    long updated,
    char *config_version,
    char *config_json,
    char *config_json_url,
    long asset_id,
    char *returning
    ) {
    application_config_response_t *application_config_response_local_var = malloc(sizeof(application_config_response_t));
    if (!application_config_response_local_var) {
        return NULL;
    }
    application_config_response_local_var->valid = valid;
    application_config_response_local_var->message = message;
    application_config_response_local_var->version = version;
    application_config_response_local_var->serialize_nulls = serialize_nulls;
    application_config_response_local_var->start_time_log = start_time_log;
    application_config_response_local_var->error_code = error_code;
    application_config_response_local_var->request = request;
    application_config_response_local_var->config_id = config_id;
    application_config_response_local_var->created = created;
    application_config_response_local_var->updated = updated;
    application_config_response_local_var->config_version = config_version;
    application_config_response_local_var->config_json = config_json;
    application_config_response_local_var->config_json_url = config_json_url;
    application_config_response_local_var->asset_id = asset_id;
    application_config_response_local_var->returning = returning;

    application_config_response_local_var->_library_owned = 1;
    return application_config_response_local_var;
}

__attribute__((deprecated)) application_config_response_t *application_config_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long config_id,
    long created,
    long updated,
    char *config_version,
    char *config_json,
    char *config_json_url,
    long asset_id,
    char *returning
    ) {
    return application_config_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        config_id,
        created,
        updated,
        config_version,
        config_json,
        config_json_url,
        asset_id,
        returning
        );
}

void application_config_response_free(application_config_response_t *application_config_response) {
    if(NULL == application_config_response){
        return ;
    }
    if(application_config_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "application_config_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (application_config_response->message) {
        free(application_config_response->message);
        application_config_response->message = NULL;
    }
    if (application_config_response->error_code) {
        free(application_config_response->error_code);
        application_config_response->error_code = NULL;
    }
    if (application_config_response->request) {
        list_ForEach(listEntry, application_config_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(application_config_response->request);
        application_config_response->request = NULL;
    }
    if (application_config_response->config_version) {
        free(application_config_response->config_version);
        application_config_response->config_version = NULL;
    }
    if (application_config_response->config_json) {
        free(application_config_response->config_json);
        application_config_response->config_json = NULL;
    }
    if (application_config_response->config_json_url) {
        free(application_config_response->config_json_url);
        application_config_response->config_json_url = NULL;
    }
    if (application_config_response->returning) {
        free(application_config_response->returning);
        application_config_response->returning = NULL;
    }
    free(application_config_response);
}

cJSON *application_config_response_convertToJSON(application_config_response_t *application_config_response) {
    cJSON *item = cJSON_CreateObject();

    // application_config_response->valid
    if(application_config_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", application_config_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // application_config_response->message
    if(application_config_response->message) {
    if(cJSON_AddStringToObject(item, "message", application_config_response->message) == NULL) {
    goto fail; //String
    }
    }


    // application_config_response->version
    if(application_config_response->version) {
    if(cJSON_AddNumberToObject(item, "version", application_config_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_config_response->serialize_nulls
    if(application_config_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", application_config_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // application_config_response->start_time_log
    if(application_config_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", application_config_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_config_response->error_code
    if(application_config_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", application_config_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // application_config_response->request
    if(application_config_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (application_config_response->request) {
    list_ForEach(requestListEntry, application_config_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // application_config_response->config_id
    if(application_config_response->config_id) {
    if(cJSON_AddNumberToObject(item, "configId", application_config_response->config_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_config_response->created
    if(application_config_response->created) {
    if(cJSON_AddNumberToObject(item, "created", application_config_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_config_response->updated
    if(application_config_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", application_config_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_config_response->config_version
    if(application_config_response->config_version) {
    if(cJSON_AddStringToObject(item, "configVersion", application_config_response->config_version) == NULL) {
    goto fail; //String
    }
    }


    // application_config_response->config_json
    if(application_config_response->config_json) {
    if(cJSON_AddStringToObject(item, "configJson", application_config_response->config_json) == NULL) {
    goto fail; //String
    }
    }


    // application_config_response->config_json_url
    if(application_config_response->config_json_url) {
    if(cJSON_AddStringToObject(item, "configJsonURL", application_config_response->config_json_url) == NULL) {
    goto fail; //String
    }
    }


    // application_config_response->asset_id
    if(application_config_response->asset_id) {
    if(cJSON_AddNumberToObject(item, "assetId", application_config_response->asset_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_config_response->returning
    if(application_config_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", application_config_response->returning) == NULL) {
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

application_config_response_t *application_config_response_parseFromJSON(cJSON *application_config_responseJSON){

    application_config_response_t *application_config_response_local_var = NULL;

    // define the local list for application_config_response->request
    list_t *requestList = NULL;

    // application_config_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // application_config_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // application_config_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // application_config_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // application_config_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // application_config_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // application_config_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "request");
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

    // application_config_response->config_id
    cJSON *config_id = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "configId");
    if (cJSON_IsNull(config_id)) {
        config_id = NULL;
    }
    if (config_id) { 
    if(!cJSON_IsNumber(config_id))
    {
    goto end; //Numeric
    }
    }

    // application_config_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // application_config_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // application_config_response->config_version
    cJSON *config_version = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "configVersion");
    if (cJSON_IsNull(config_version)) {
        config_version = NULL;
    }
    if (config_version) { 
    if(!cJSON_IsString(config_version) && !cJSON_IsNull(config_version))
    {
    goto end; //String
    }
    }

    // application_config_response->config_json
    cJSON *config_json = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "configJson");
    if (cJSON_IsNull(config_json)) {
        config_json = NULL;
    }
    if (config_json) { 
    if(!cJSON_IsString(config_json) && !cJSON_IsNull(config_json))
    {
    goto end; //String
    }
    }

    // application_config_response->config_json_url
    cJSON *config_json_url = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "configJsonURL");
    if (cJSON_IsNull(config_json_url)) {
        config_json_url = NULL;
    }
    if (config_json_url) { 
    if(!cJSON_IsString(config_json_url) && !cJSON_IsNull(config_json_url))
    {
    goto end; //String
    }
    }

    // application_config_response->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "assetId");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsNumber(asset_id))
    {
    goto end; //Numeric
    }
    }

    // application_config_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(application_config_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    application_config_response_local_var = application_config_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        config_id ? config_id->valuedouble : 0,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        config_version && !cJSON_IsNull(config_version) ? strdup(config_version->valuestring) : NULL,
        config_json && !cJSON_IsNull(config_json) ? strdup(config_json->valuestring) : NULL,
        config_json_url && !cJSON_IsNull(config_json_url) ? strdup(config_json_url->valuestring) : NULL,
        asset_id ? asset_id->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return application_config_response_local_var;
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
