#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "app_response.h"



static app_response_t *app_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    mission_list_response_t *missions,
    profile_response_t *profile,
    message_list_response_t *messages,
    char *returning
    ) {
    app_response_t *app_response_local_var = malloc(sizeof(app_response_t));
    if (!app_response_local_var) {
        return NULL;
    }
    app_response_local_var->valid = valid;
    app_response_local_var->message = message;
    app_response_local_var->version = version;
    app_response_local_var->serialize_nulls = serialize_nulls;
    app_response_local_var->start_time_log = start_time_log;
    app_response_local_var->error_code = error_code;
    app_response_local_var->request = request;
    app_response_local_var->missions = missions;
    app_response_local_var->profile = profile;
    app_response_local_var->messages = messages;
    app_response_local_var->returning = returning;

    app_response_local_var->_library_owned = 1;
    return app_response_local_var;
}

__attribute__((deprecated)) app_response_t *app_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    mission_list_response_t *missions,
    profile_response_t *profile,
    message_list_response_t *messages,
    char *returning
    ) {
    return app_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        missions,
        profile,
        messages,
        returning
        );
}

void app_response_free(app_response_t *app_response) {
    if(NULL == app_response){
        return ;
    }
    if(app_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "app_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (app_response->message) {
        free(app_response->message);
        app_response->message = NULL;
    }
    if (app_response->error_code) {
        free(app_response->error_code);
        app_response->error_code = NULL;
    }
    if (app_response->request) {
        list_ForEach(listEntry, app_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(app_response->request);
        app_response->request = NULL;
    }
    if (app_response->missions) {
        mission_list_response_free(app_response->missions);
        app_response->missions = NULL;
    }
    if (app_response->profile) {
        profile_response_free(app_response->profile);
        app_response->profile = NULL;
    }
    if (app_response->messages) {
        message_list_response_free(app_response->messages);
        app_response->messages = NULL;
    }
    if (app_response->returning) {
        free(app_response->returning);
        app_response->returning = NULL;
    }
    free(app_response);
}

cJSON *app_response_convertToJSON(app_response_t *app_response) {
    cJSON *item = cJSON_CreateObject();

    // app_response->valid
    if(app_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", app_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // app_response->message
    if(app_response->message) {
    if(cJSON_AddStringToObject(item, "message", app_response->message) == NULL) {
    goto fail; //String
    }
    }


    // app_response->version
    if(app_response->version) {
    if(cJSON_AddNumberToObject(item, "version", app_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_response->serialize_nulls
    if(app_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", app_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // app_response->start_time_log
    if(app_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", app_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_response->error_code
    if(app_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", app_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // app_response->request
    if(app_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (app_response->request) {
    list_ForEach(requestListEntry, app_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // app_response->missions
    if(app_response->missions) {
    cJSON *missions_local_JSON = mission_list_response_convertToJSON(app_response->missions);
    if(missions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "missions", missions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // app_response->profile
    if(app_response->profile) {
    cJSON *profile_local_JSON = profile_response_convertToJSON(app_response->profile);
    if(profile_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "profile", profile_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // app_response->messages
    if(app_response->messages) {
    cJSON *messages_local_JSON = message_list_response_convertToJSON(app_response->messages);
    if(messages_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "messages", messages_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // app_response->returning
    if(app_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", app_response->returning) == NULL) {
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

app_response_t *app_response_parseFromJSON(cJSON *app_responseJSON){

    app_response_t *app_response_local_var = NULL;

    // define the local list for app_response->request
    list_t *requestList = NULL;

    // define the local variable for app_response->missions
    mission_list_response_t *missions_local_nonprim = NULL;

    // define the local variable for app_response->profile
    profile_response_t *profile_local_nonprim = NULL;

    // define the local variable for app_response->messages
    message_list_response_t *messages_local_nonprim = NULL;

    // app_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // app_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // app_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // app_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // app_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // app_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // app_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "request");
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

    // app_response->missions
    cJSON *missions = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "missions");
    if (cJSON_IsNull(missions)) {
        missions = NULL;
    }
    if (missions) { 
    missions_local_nonprim = mission_list_response_parseFromJSON(missions); //nonprimitive
    }

    // app_response->profile
    cJSON *profile = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "profile");
    if (cJSON_IsNull(profile)) {
        profile = NULL;
    }
    if (profile) { 
    profile_local_nonprim = profile_response_parseFromJSON(profile); //nonprimitive
    }

    // app_response->messages
    cJSON *messages = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "messages");
    if (cJSON_IsNull(messages)) {
        messages = NULL;
    }
    if (messages) { 
    messages_local_nonprim = message_list_response_parseFromJSON(messages); //nonprimitive
    }

    // app_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(app_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    app_response_local_var = app_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        missions ? missions_local_nonprim : NULL,
        profile ? profile_local_nonprim : NULL,
        messages ? messages_local_nonprim : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return app_response_local_var;
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
    if (missions_local_nonprim) {
        mission_list_response_free(missions_local_nonprim);
        missions_local_nonprim = NULL;
    }
    if (profile_local_nonprim) {
        profile_response_free(profile_local_nonprim);
        profile_local_nonprim = NULL;
    }
    if (messages_local_nonprim) {
        message_list_response_free(messages_local_nonprim);
        messages_local_nonprim = NULL;
    }
    return NULL;

}
