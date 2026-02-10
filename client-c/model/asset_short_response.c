#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "asset_short_response.h"



static asset_short_response_t *asset_short_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long asset_id,
    char *file_name,
    char *caption,
    char *media_type,
    char *thumbnail_url,
    char *cover_url,
    char *full_url,
    char *asset_version,
    char *version_name,
    int version_code,
    char *returning
    ) {
    asset_short_response_t *asset_short_response_local_var = malloc(sizeof(asset_short_response_t));
    if (!asset_short_response_local_var) {
        return NULL;
    }
    asset_short_response_local_var->valid = valid;
    asset_short_response_local_var->message = message;
    asset_short_response_local_var->version = version;
    asset_short_response_local_var->serialize_nulls = serialize_nulls;
    asset_short_response_local_var->start_time_log = start_time_log;
    asset_short_response_local_var->error_code = error_code;
    asset_short_response_local_var->request = request;
    asset_short_response_local_var->asset_id = asset_id;
    asset_short_response_local_var->file_name = file_name;
    asset_short_response_local_var->caption = caption;
    asset_short_response_local_var->media_type = media_type;
    asset_short_response_local_var->thumbnail_url = thumbnail_url;
    asset_short_response_local_var->cover_url = cover_url;
    asset_short_response_local_var->full_url = full_url;
    asset_short_response_local_var->asset_version = asset_version;
    asset_short_response_local_var->version_name = version_name;
    asset_short_response_local_var->version_code = version_code;
    asset_short_response_local_var->returning = returning;

    asset_short_response_local_var->_library_owned = 1;
    return asset_short_response_local_var;
}

__attribute__((deprecated)) asset_short_response_t *asset_short_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long asset_id,
    char *file_name,
    char *caption,
    char *media_type,
    char *thumbnail_url,
    char *cover_url,
    char *full_url,
    char *asset_version,
    char *version_name,
    int version_code,
    char *returning
    ) {
    return asset_short_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        asset_id,
        file_name,
        caption,
        media_type,
        thumbnail_url,
        cover_url,
        full_url,
        asset_version,
        version_name,
        version_code,
        returning
        );
}

void asset_short_response_free(asset_short_response_t *asset_short_response) {
    if(NULL == asset_short_response){
        return ;
    }
    if(asset_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "asset_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (asset_short_response->message) {
        free(asset_short_response->message);
        asset_short_response->message = NULL;
    }
    if (asset_short_response->error_code) {
        free(asset_short_response->error_code);
        asset_short_response->error_code = NULL;
    }
    if (asset_short_response->request) {
        list_ForEach(listEntry, asset_short_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(asset_short_response->request);
        asset_short_response->request = NULL;
    }
    if (asset_short_response->file_name) {
        free(asset_short_response->file_name);
        asset_short_response->file_name = NULL;
    }
    if (asset_short_response->caption) {
        free(asset_short_response->caption);
        asset_short_response->caption = NULL;
    }
    if (asset_short_response->media_type) {
        free(asset_short_response->media_type);
        asset_short_response->media_type = NULL;
    }
    if (asset_short_response->thumbnail_url) {
        free(asset_short_response->thumbnail_url);
        asset_short_response->thumbnail_url = NULL;
    }
    if (asset_short_response->cover_url) {
        free(asset_short_response->cover_url);
        asset_short_response->cover_url = NULL;
    }
    if (asset_short_response->full_url) {
        free(asset_short_response->full_url);
        asset_short_response->full_url = NULL;
    }
    if (asset_short_response->asset_version) {
        free(asset_short_response->asset_version);
        asset_short_response->asset_version = NULL;
    }
    if (asset_short_response->version_name) {
        free(asset_short_response->version_name);
        asset_short_response->version_name = NULL;
    }
    if (asset_short_response->returning) {
        free(asset_short_response->returning);
        asset_short_response->returning = NULL;
    }
    free(asset_short_response);
}

cJSON *asset_short_response_convertToJSON(asset_short_response_t *asset_short_response) {
    cJSON *item = cJSON_CreateObject();

    // asset_short_response->valid
    if(asset_short_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", asset_short_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_short_response->message
    if(asset_short_response->message) {
    if(cJSON_AddStringToObject(item, "message", asset_short_response->message) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->version
    if(asset_short_response->version) {
    if(cJSON_AddNumberToObject(item, "version", asset_short_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_short_response->serialize_nulls
    if(asset_short_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", asset_short_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_short_response->start_time_log
    if(asset_short_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", asset_short_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_short_response->error_code
    if(asset_short_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", asset_short_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->request
    if(asset_short_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (asset_short_response->request) {
    list_ForEach(requestListEntry, asset_short_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // asset_short_response->asset_id
    if(asset_short_response->asset_id) {
    if(cJSON_AddNumberToObject(item, "assetId", asset_short_response->asset_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_short_response->file_name
    if(asset_short_response->file_name) {
    if(cJSON_AddStringToObject(item, "fileName", asset_short_response->file_name) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->caption
    if(asset_short_response->caption) {
    if(cJSON_AddStringToObject(item, "caption", asset_short_response->caption) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->media_type
    if(asset_short_response->media_type) {
    if(cJSON_AddStringToObject(item, "mediaType", asset_short_response->media_type) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->thumbnail_url
    if(asset_short_response->thumbnail_url) {
    if(cJSON_AddStringToObject(item, "thumbnailURL", asset_short_response->thumbnail_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->cover_url
    if(asset_short_response->cover_url) {
    if(cJSON_AddStringToObject(item, "coverURL", asset_short_response->cover_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->full_url
    if(asset_short_response->full_url) {
    if(cJSON_AddStringToObject(item, "fullURL", asset_short_response->full_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->asset_version
    if(asset_short_response->asset_version) {
    if(cJSON_AddStringToObject(item, "assetVersion", asset_short_response->asset_version) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->version_name
    if(asset_short_response->version_name) {
    if(cJSON_AddStringToObject(item, "versionName", asset_short_response->version_name) == NULL) {
    goto fail; //String
    }
    }


    // asset_short_response->version_code
    if(asset_short_response->version_code) {
    if(cJSON_AddNumberToObject(item, "versionCode", asset_short_response->version_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_short_response->returning
    if(asset_short_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", asset_short_response->returning) == NULL) {
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

asset_short_response_t *asset_short_response_parseFromJSON(cJSON *asset_short_responseJSON){

    asset_short_response_t *asset_short_response_local_var = NULL;

    // define the local list for asset_short_response->request
    list_t *requestList = NULL;

    // asset_short_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // asset_short_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // asset_short_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // asset_short_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // asset_short_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // asset_short_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // asset_short_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "request");
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

    // asset_short_response->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "assetId");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsNumber(asset_id))
    {
    goto end; //Numeric
    }
    }

    // asset_short_response->file_name
    cJSON *file_name = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "fileName");
    if (cJSON_IsNull(file_name)) {
        file_name = NULL;
    }
    if (file_name) { 
    if(!cJSON_IsString(file_name) && !cJSON_IsNull(file_name))
    {
    goto end; //String
    }
    }

    // asset_short_response->caption
    cJSON *caption = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "caption");
    if (cJSON_IsNull(caption)) {
        caption = NULL;
    }
    if (caption) { 
    if(!cJSON_IsString(caption) && !cJSON_IsNull(caption))
    {
    goto end; //String
    }
    }

    // asset_short_response->media_type
    cJSON *media_type = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "mediaType");
    if (cJSON_IsNull(media_type)) {
        media_type = NULL;
    }
    if (media_type) { 
    if(!cJSON_IsString(media_type) && !cJSON_IsNull(media_type))
    {
    goto end; //String
    }
    }

    // asset_short_response->thumbnail_url
    cJSON *thumbnail_url = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "thumbnailURL");
    if (cJSON_IsNull(thumbnail_url)) {
        thumbnail_url = NULL;
    }
    if (thumbnail_url) { 
    if(!cJSON_IsString(thumbnail_url) && !cJSON_IsNull(thumbnail_url))
    {
    goto end; //String
    }
    }

    // asset_short_response->cover_url
    cJSON *cover_url = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "coverURL");
    if (cJSON_IsNull(cover_url)) {
        cover_url = NULL;
    }
    if (cover_url) { 
    if(!cJSON_IsString(cover_url) && !cJSON_IsNull(cover_url))
    {
    goto end; //String
    }
    }

    // asset_short_response->full_url
    cJSON *full_url = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "fullURL");
    if (cJSON_IsNull(full_url)) {
        full_url = NULL;
    }
    if (full_url) { 
    if(!cJSON_IsString(full_url) && !cJSON_IsNull(full_url))
    {
    goto end; //String
    }
    }

    // asset_short_response->asset_version
    cJSON *asset_version = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "assetVersion");
    if (cJSON_IsNull(asset_version)) {
        asset_version = NULL;
    }
    if (asset_version) { 
    if(!cJSON_IsString(asset_version) && !cJSON_IsNull(asset_version))
    {
    goto end; //String
    }
    }

    // asset_short_response->version_name
    cJSON *version_name = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "versionName");
    if (cJSON_IsNull(version_name)) {
        version_name = NULL;
    }
    if (version_name) { 
    if(!cJSON_IsString(version_name) && !cJSON_IsNull(version_name))
    {
    goto end; //String
    }
    }

    // asset_short_response->version_code
    cJSON *version_code = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "versionCode");
    if (cJSON_IsNull(version_code)) {
        version_code = NULL;
    }
    if (version_code) { 
    if(!cJSON_IsNumber(version_code))
    {
    goto end; //Numeric
    }
    }

    // asset_short_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(asset_short_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    asset_short_response_local_var = asset_short_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        asset_id ? asset_id->valuedouble : 0,
        file_name && !cJSON_IsNull(file_name) ? strdup(file_name->valuestring) : NULL,
        caption && !cJSON_IsNull(caption) ? strdup(caption->valuestring) : NULL,
        media_type && !cJSON_IsNull(media_type) ? strdup(media_type->valuestring) : NULL,
        thumbnail_url && !cJSON_IsNull(thumbnail_url) ? strdup(thumbnail_url->valuestring) : NULL,
        cover_url && !cJSON_IsNull(cover_url) ? strdup(cover_url->valuestring) : NULL,
        full_url && !cJSON_IsNull(full_url) ? strdup(full_url->valuestring) : NULL,
        asset_version && !cJSON_IsNull(asset_version) ? strdup(asset_version->valuestring) : NULL,
        version_name && !cJSON_IsNull(version_name) ? strdup(version_name->valuestring) : NULL,
        version_code ? version_code->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return asset_short_response_local_var;
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
