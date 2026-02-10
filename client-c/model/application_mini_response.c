#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "application_mini_response.h"



static application_mini_response_t *application_mini_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long application_id,
    char *app_key,
    char *title,
    char *current_build_version,
    char *current_api_version,
    asset_short_response_t *app_icon,
    asset_short_response_t *app_logo,
    int active,
    char *returning
    ) {
    application_mini_response_t *application_mini_response_local_var = malloc(sizeof(application_mini_response_t));
    if (!application_mini_response_local_var) {
        return NULL;
    }
    application_mini_response_local_var->valid = valid;
    application_mini_response_local_var->message = message;
    application_mini_response_local_var->version = version;
    application_mini_response_local_var->serialize_nulls = serialize_nulls;
    application_mini_response_local_var->start_time_log = start_time_log;
    application_mini_response_local_var->error_code = error_code;
    application_mini_response_local_var->request = request;
    application_mini_response_local_var->application_id = application_id;
    application_mini_response_local_var->app_key = app_key;
    application_mini_response_local_var->title = title;
    application_mini_response_local_var->current_build_version = current_build_version;
    application_mini_response_local_var->current_api_version = current_api_version;
    application_mini_response_local_var->app_icon = app_icon;
    application_mini_response_local_var->app_logo = app_logo;
    application_mini_response_local_var->active = active;
    application_mini_response_local_var->returning = returning;

    application_mini_response_local_var->_library_owned = 1;
    return application_mini_response_local_var;
}

__attribute__((deprecated)) application_mini_response_t *application_mini_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long application_id,
    char *app_key,
    char *title,
    char *current_build_version,
    char *current_api_version,
    asset_short_response_t *app_icon,
    asset_short_response_t *app_logo,
    int active,
    char *returning
    ) {
    return application_mini_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        application_id,
        app_key,
        title,
        current_build_version,
        current_api_version,
        app_icon,
        app_logo,
        active,
        returning
        );
}

void application_mini_response_free(application_mini_response_t *application_mini_response) {
    if(NULL == application_mini_response){
        return ;
    }
    if(application_mini_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "application_mini_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (application_mini_response->message) {
        free(application_mini_response->message);
        application_mini_response->message = NULL;
    }
    if (application_mini_response->error_code) {
        free(application_mini_response->error_code);
        application_mini_response->error_code = NULL;
    }
    if (application_mini_response->request) {
        list_ForEach(listEntry, application_mini_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(application_mini_response->request);
        application_mini_response->request = NULL;
    }
    if (application_mini_response->app_key) {
        free(application_mini_response->app_key);
        application_mini_response->app_key = NULL;
    }
    if (application_mini_response->title) {
        free(application_mini_response->title);
        application_mini_response->title = NULL;
    }
    if (application_mini_response->current_build_version) {
        free(application_mini_response->current_build_version);
        application_mini_response->current_build_version = NULL;
    }
    if (application_mini_response->current_api_version) {
        free(application_mini_response->current_api_version);
        application_mini_response->current_api_version = NULL;
    }
    if (application_mini_response->app_icon) {
        asset_short_response_free(application_mini_response->app_icon);
        application_mini_response->app_icon = NULL;
    }
    if (application_mini_response->app_logo) {
        asset_short_response_free(application_mini_response->app_logo);
        application_mini_response->app_logo = NULL;
    }
    if (application_mini_response->returning) {
        free(application_mini_response->returning);
        application_mini_response->returning = NULL;
    }
    free(application_mini_response);
}

cJSON *application_mini_response_convertToJSON(application_mini_response_t *application_mini_response) {
    cJSON *item = cJSON_CreateObject();

    // application_mini_response->valid
    if(application_mini_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", application_mini_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // application_mini_response->message
    if(application_mini_response->message) {
    if(cJSON_AddStringToObject(item, "message", application_mini_response->message) == NULL) {
    goto fail; //String
    }
    }


    // application_mini_response->version
    if(application_mini_response->version) {
    if(cJSON_AddNumberToObject(item, "version", application_mini_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_mini_response->serialize_nulls
    if(application_mini_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", application_mini_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // application_mini_response->start_time_log
    if(application_mini_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", application_mini_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_mini_response->error_code
    if(application_mini_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", application_mini_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // application_mini_response->request
    if(application_mini_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (application_mini_response->request) {
    list_ForEach(requestListEntry, application_mini_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // application_mini_response->application_id
    if(application_mini_response->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", application_mini_response->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_mini_response->app_key
    if(application_mini_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", application_mini_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // application_mini_response->title
    if(application_mini_response->title) {
    if(cJSON_AddStringToObject(item, "title", application_mini_response->title) == NULL) {
    goto fail; //String
    }
    }


    // application_mini_response->current_build_version
    if(application_mini_response->current_build_version) {
    if(cJSON_AddStringToObject(item, "currentBuildVersion", application_mini_response->current_build_version) == NULL) {
    goto fail; //String
    }
    }


    // application_mini_response->current_api_version
    if(application_mini_response->current_api_version) {
    if(cJSON_AddStringToObject(item, "currentApiVersion", application_mini_response->current_api_version) == NULL) {
    goto fail; //String
    }
    }


    // application_mini_response->app_icon
    if(application_mini_response->app_icon) {
    cJSON *app_icon_local_JSON = asset_short_response_convertToJSON(application_mini_response->app_icon);
    if(app_icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appIcon", app_icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_mini_response->app_logo
    if(application_mini_response->app_logo) {
    cJSON *app_logo_local_JSON = asset_short_response_convertToJSON(application_mini_response->app_logo);
    if(app_logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appLogo", app_logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_mini_response->active
    if(application_mini_response->active) {
    if(cJSON_AddBoolToObject(item, "active", application_mini_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // application_mini_response->returning
    if(application_mini_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", application_mini_response->returning) == NULL) {
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

application_mini_response_t *application_mini_response_parseFromJSON(cJSON *application_mini_responseJSON){

    application_mini_response_t *application_mini_response_local_var = NULL;

    // define the local list for application_mini_response->request
    list_t *requestList = NULL;

    // define the local variable for application_mini_response->app_icon
    asset_short_response_t *app_icon_local_nonprim = NULL;

    // define the local variable for application_mini_response->app_logo
    asset_short_response_t *app_logo_local_nonprim = NULL;

    // application_mini_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // application_mini_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // application_mini_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // application_mini_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // application_mini_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // application_mini_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // application_mini_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "request");
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

    // application_mini_response->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // application_mini_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // application_mini_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // application_mini_response->current_build_version
    cJSON *current_build_version = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "currentBuildVersion");
    if (cJSON_IsNull(current_build_version)) {
        current_build_version = NULL;
    }
    if (current_build_version) { 
    if(!cJSON_IsString(current_build_version) && !cJSON_IsNull(current_build_version))
    {
    goto end; //String
    }
    }

    // application_mini_response->current_api_version
    cJSON *current_api_version = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "currentApiVersion");
    if (cJSON_IsNull(current_api_version)) {
        current_api_version = NULL;
    }
    if (current_api_version) { 
    if(!cJSON_IsString(current_api_version) && !cJSON_IsNull(current_api_version))
    {
    goto end; //String
    }
    }

    // application_mini_response->app_icon
    cJSON *app_icon = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "appIcon");
    if (cJSON_IsNull(app_icon)) {
        app_icon = NULL;
    }
    if (app_icon) { 
    app_icon_local_nonprim = asset_short_response_parseFromJSON(app_icon); //nonprimitive
    }

    // application_mini_response->app_logo
    cJSON *app_logo = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "appLogo");
    if (cJSON_IsNull(app_logo)) {
        app_logo = NULL;
    }
    if (app_logo) { 
    app_logo_local_nonprim = asset_short_response_parseFromJSON(app_logo); //nonprimitive
    }

    // application_mini_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // application_mini_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(application_mini_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    application_mini_response_local_var = application_mini_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        application_id ? application_id->valuedouble : 0,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        current_build_version && !cJSON_IsNull(current_build_version) ? strdup(current_build_version->valuestring) : NULL,
        current_api_version && !cJSON_IsNull(current_api_version) ? strdup(current_api_version->valuestring) : NULL,
        app_icon ? app_icon_local_nonprim : NULL,
        app_logo ? app_logo_local_nonprim : NULL,
        active ? active->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return application_mini_response_local_var;
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
    if (app_icon_local_nonprim) {
        asset_short_response_free(app_icon_local_nonprim);
        app_icon_local_nonprim = NULL;
    }
    if (app_logo_local_nonprim) {
        asset_short_response_free(app_logo_local_nonprim);
        app_logo_local_nonprim = NULL;
    }
    return NULL;

}
