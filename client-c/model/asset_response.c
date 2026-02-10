#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "asset_response.h"



static asset_response_t *asset_response_create_internal(
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
    char *display,
    char *location_description,
    account_short_response_t *uploader,
    long likes_count,
    int comments_count,
    double latitude,
    double longitude,
    char *attached_media_type,
    char *attached_asset_url,
    long created,
    long updated,
    char *search_tags,
    char *meta_data,
    char *returning
    ) {
    asset_response_t *asset_response_local_var = malloc(sizeof(asset_response_t));
    if (!asset_response_local_var) {
        return NULL;
    }
    asset_response_local_var->valid = valid;
    asset_response_local_var->message = message;
    asset_response_local_var->version = version;
    asset_response_local_var->serialize_nulls = serialize_nulls;
    asset_response_local_var->start_time_log = start_time_log;
    asset_response_local_var->error_code = error_code;
    asset_response_local_var->request = request;
    asset_response_local_var->asset_id = asset_id;
    asset_response_local_var->file_name = file_name;
    asset_response_local_var->caption = caption;
    asset_response_local_var->media_type = media_type;
    asset_response_local_var->thumbnail_url = thumbnail_url;
    asset_response_local_var->cover_url = cover_url;
    asset_response_local_var->full_url = full_url;
    asset_response_local_var->asset_version = asset_version;
    asset_response_local_var->version_name = version_name;
    asset_response_local_var->version_code = version_code;
    asset_response_local_var->display = display;
    asset_response_local_var->location_description = location_description;
    asset_response_local_var->uploader = uploader;
    asset_response_local_var->likes_count = likes_count;
    asset_response_local_var->comments_count = comments_count;
    asset_response_local_var->latitude = latitude;
    asset_response_local_var->longitude = longitude;
    asset_response_local_var->attached_media_type = attached_media_type;
    asset_response_local_var->attached_asset_url = attached_asset_url;
    asset_response_local_var->created = created;
    asset_response_local_var->updated = updated;
    asset_response_local_var->search_tags = search_tags;
    asset_response_local_var->meta_data = meta_data;
    asset_response_local_var->returning = returning;

    asset_response_local_var->_library_owned = 1;
    return asset_response_local_var;
}

__attribute__((deprecated)) asset_response_t *asset_response_create(
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
    char *display,
    char *location_description,
    account_short_response_t *uploader,
    long likes_count,
    int comments_count,
    double latitude,
    double longitude,
    char *attached_media_type,
    char *attached_asset_url,
    long created,
    long updated,
    char *search_tags,
    char *meta_data,
    char *returning
    ) {
    return asset_response_create_internal (
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
        display,
        location_description,
        uploader,
        likes_count,
        comments_count,
        latitude,
        longitude,
        attached_media_type,
        attached_asset_url,
        created,
        updated,
        search_tags,
        meta_data,
        returning
        );
}

void asset_response_free(asset_response_t *asset_response) {
    if(NULL == asset_response){
        return ;
    }
    if(asset_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "asset_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (asset_response->message) {
        free(asset_response->message);
        asset_response->message = NULL;
    }
    if (asset_response->error_code) {
        free(asset_response->error_code);
        asset_response->error_code = NULL;
    }
    if (asset_response->request) {
        list_ForEach(listEntry, asset_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(asset_response->request);
        asset_response->request = NULL;
    }
    if (asset_response->file_name) {
        free(asset_response->file_name);
        asset_response->file_name = NULL;
    }
    if (asset_response->caption) {
        free(asset_response->caption);
        asset_response->caption = NULL;
    }
    if (asset_response->media_type) {
        free(asset_response->media_type);
        asset_response->media_type = NULL;
    }
    if (asset_response->thumbnail_url) {
        free(asset_response->thumbnail_url);
        asset_response->thumbnail_url = NULL;
    }
    if (asset_response->cover_url) {
        free(asset_response->cover_url);
        asset_response->cover_url = NULL;
    }
    if (asset_response->full_url) {
        free(asset_response->full_url);
        asset_response->full_url = NULL;
    }
    if (asset_response->asset_version) {
        free(asset_response->asset_version);
        asset_response->asset_version = NULL;
    }
    if (asset_response->version_name) {
        free(asset_response->version_name);
        asset_response->version_name = NULL;
    }
    if (asset_response->display) {
        free(asset_response->display);
        asset_response->display = NULL;
    }
    if (asset_response->location_description) {
        free(asset_response->location_description);
        asset_response->location_description = NULL;
    }
    if (asset_response->uploader) {
        account_short_response_free(asset_response->uploader);
        asset_response->uploader = NULL;
    }
    if (asset_response->attached_media_type) {
        free(asset_response->attached_media_type);
        asset_response->attached_media_type = NULL;
    }
    if (asset_response->attached_asset_url) {
        free(asset_response->attached_asset_url);
        asset_response->attached_asset_url = NULL;
    }
    if (asset_response->search_tags) {
        free(asset_response->search_tags);
        asset_response->search_tags = NULL;
    }
    if (asset_response->meta_data) {
        free(asset_response->meta_data);
        asset_response->meta_data = NULL;
    }
    if (asset_response->returning) {
        free(asset_response->returning);
        asset_response->returning = NULL;
    }
    free(asset_response);
}

cJSON *asset_response_convertToJSON(asset_response_t *asset_response) {
    cJSON *item = cJSON_CreateObject();

    // asset_response->valid
    if(asset_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", asset_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_response->message
    if(asset_response->message) {
    if(cJSON_AddStringToObject(item, "message", asset_response->message) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->version
    if(asset_response->version) {
    if(cJSON_AddNumberToObject(item, "version", asset_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->serialize_nulls
    if(asset_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", asset_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_response->start_time_log
    if(asset_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", asset_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->error_code
    if(asset_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", asset_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->request
    if(asset_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (asset_response->request) {
    list_ForEach(requestListEntry, asset_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // asset_response->asset_id
    if(asset_response->asset_id) {
    if(cJSON_AddNumberToObject(item, "assetId", asset_response->asset_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->file_name
    if(asset_response->file_name) {
    if(cJSON_AddStringToObject(item, "fileName", asset_response->file_name) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->caption
    if(asset_response->caption) {
    if(cJSON_AddStringToObject(item, "caption", asset_response->caption) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->media_type
    if(asset_response->media_type) {
    if(cJSON_AddStringToObject(item, "mediaType", asset_response->media_type) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->thumbnail_url
    if(asset_response->thumbnail_url) {
    if(cJSON_AddStringToObject(item, "thumbnailURL", asset_response->thumbnail_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->cover_url
    if(asset_response->cover_url) {
    if(cJSON_AddStringToObject(item, "coverURL", asset_response->cover_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->full_url
    if(asset_response->full_url) {
    if(cJSON_AddStringToObject(item, "fullURL", asset_response->full_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->asset_version
    if(asset_response->asset_version) {
    if(cJSON_AddStringToObject(item, "assetVersion", asset_response->asset_version) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->version_name
    if(asset_response->version_name) {
    if(cJSON_AddStringToObject(item, "versionName", asset_response->version_name) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->version_code
    if(asset_response->version_code) {
    if(cJSON_AddNumberToObject(item, "versionCode", asset_response->version_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->display
    if(asset_response->display) {
    if(cJSON_AddStringToObject(item, "display", asset_response->display) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->location_description
    if(asset_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", asset_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->uploader
    if(asset_response->uploader) {
    cJSON *uploader_local_JSON = account_short_response_convertToJSON(asset_response->uploader);
    if(uploader_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "uploader", uploader_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // asset_response->likes_count
    if(asset_response->likes_count) {
    if(cJSON_AddNumberToObject(item, "likesCount", asset_response->likes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->comments_count
    if(asset_response->comments_count) {
    if(cJSON_AddNumberToObject(item, "commentsCount", asset_response->comments_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->latitude
    if(asset_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", asset_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->longitude
    if(asset_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", asset_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->attached_media_type
    if(asset_response->attached_media_type) {
    if(cJSON_AddStringToObject(item, "attachedMediaType", asset_response->attached_media_type) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->attached_asset_url
    if(asset_response->attached_asset_url) {
    if(cJSON_AddStringToObject(item, "attachedAssetURL", asset_response->attached_asset_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->created
    if(asset_response->created) {
    if(cJSON_AddNumberToObject(item, "created", asset_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->updated
    if(asset_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", asset_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_response->search_tags
    if(asset_response->search_tags) {
    if(cJSON_AddStringToObject(item, "searchTags", asset_response->search_tags) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->meta_data
    if(asset_response->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", asset_response->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // asset_response->returning
    if(asset_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", asset_response->returning) == NULL) {
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

asset_response_t *asset_response_parseFromJSON(cJSON *asset_responseJSON){

    asset_response_t *asset_response_local_var = NULL;

    // define the local list for asset_response->request
    list_t *requestList = NULL;

    // define the local variable for asset_response->uploader
    account_short_response_t *uploader_local_nonprim = NULL;

    // asset_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // asset_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // asset_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // asset_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // asset_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // asset_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // asset_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "request");
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

    // asset_response->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "assetId");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsNumber(asset_id))
    {
    goto end; //Numeric
    }
    }

    // asset_response->file_name
    cJSON *file_name = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "fileName");
    if (cJSON_IsNull(file_name)) {
        file_name = NULL;
    }
    if (file_name) { 
    if(!cJSON_IsString(file_name) && !cJSON_IsNull(file_name))
    {
    goto end; //String
    }
    }

    // asset_response->caption
    cJSON *caption = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "caption");
    if (cJSON_IsNull(caption)) {
        caption = NULL;
    }
    if (caption) { 
    if(!cJSON_IsString(caption) && !cJSON_IsNull(caption))
    {
    goto end; //String
    }
    }

    // asset_response->media_type
    cJSON *media_type = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "mediaType");
    if (cJSON_IsNull(media_type)) {
        media_type = NULL;
    }
    if (media_type) { 
    if(!cJSON_IsString(media_type) && !cJSON_IsNull(media_type))
    {
    goto end; //String
    }
    }

    // asset_response->thumbnail_url
    cJSON *thumbnail_url = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "thumbnailURL");
    if (cJSON_IsNull(thumbnail_url)) {
        thumbnail_url = NULL;
    }
    if (thumbnail_url) { 
    if(!cJSON_IsString(thumbnail_url) && !cJSON_IsNull(thumbnail_url))
    {
    goto end; //String
    }
    }

    // asset_response->cover_url
    cJSON *cover_url = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "coverURL");
    if (cJSON_IsNull(cover_url)) {
        cover_url = NULL;
    }
    if (cover_url) { 
    if(!cJSON_IsString(cover_url) && !cJSON_IsNull(cover_url))
    {
    goto end; //String
    }
    }

    // asset_response->full_url
    cJSON *full_url = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "fullURL");
    if (cJSON_IsNull(full_url)) {
        full_url = NULL;
    }
    if (full_url) { 
    if(!cJSON_IsString(full_url) && !cJSON_IsNull(full_url))
    {
    goto end; //String
    }
    }

    // asset_response->asset_version
    cJSON *asset_version = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "assetVersion");
    if (cJSON_IsNull(asset_version)) {
        asset_version = NULL;
    }
    if (asset_version) { 
    if(!cJSON_IsString(asset_version) && !cJSON_IsNull(asset_version))
    {
    goto end; //String
    }
    }

    // asset_response->version_name
    cJSON *version_name = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "versionName");
    if (cJSON_IsNull(version_name)) {
        version_name = NULL;
    }
    if (version_name) { 
    if(!cJSON_IsString(version_name) && !cJSON_IsNull(version_name))
    {
    goto end; //String
    }
    }

    // asset_response->version_code
    cJSON *version_code = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "versionCode");
    if (cJSON_IsNull(version_code)) {
        version_code = NULL;
    }
    if (version_code) { 
    if(!cJSON_IsNumber(version_code))
    {
    goto end; //Numeric
    }
    }

    // asset_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // asset_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // asset_response->uploader
    cJSON *uploader = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "uploader");
    if (cJSON_IsNull(uploader)) {
        uploader = NULL;
    }
    if (uploader) { 
    uploader_local_nonprim = account_short_response_parseFromJSON(uploader); //nonprimitive
    }

    // asset_response->likes_count
    cJSON *likes_count = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "likesCount");
    if (cJSON_IsNull(likes_count)) {
        likes_count = NULL;
    }
    if (likes_count) { 
    if(!cJSON_IsNumber(likes_count))
    {
    goto end; //Numeric
    }
    }

    // asset_response->comments_count
    cJSON *comments_count = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "commentsCount");
    if (cJSON_IsNull(comments_count)) {
        comments_count = NULL;
    }
    if (comments_count) { 
    if(!cJSON_IsNumber(comments_count))
    {
    goto end; //Numeric
    }
    }

    // asset_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // asset_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // asset_response->attached_media_type
    cJSON *attached_media_type = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "attachedMediaType");
    if (cJSON_IsNull(attached_media_type)) {
        attached_media_type = NULL;
    }
    if (attached_media_type) { 
    if(!cJSON_IsString(attached_media_type) && !cJSON_IsNull(attached_media_type))
    {
    goto end; //String
    }
    }

    // asset_response->attached_asset_url
    cJSON *attached_asset_url = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "attachedAssetURL");
    if (cJSON_IsNull(attached_asset_url)) {
        attached_asset_url = NULL;
    }
    if (attached_asset_url) { 
    if(!cJSON_IsString(attached_asset_url) && !cJSON_IsNull(attached_asset_url))
    {
    goto end; //String
    }
    }

    // asset_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // asset_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // asset_response->search_tags
    cJSON *search_tags = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "searchTags");
    if (cJSON_IsNull(search_tags)) {
        search_tags = NULL;
    }
    if (search_tags) { 
    if(!cJSON_IsString(search_tags) && !cJSON_IsNull(search_tags))
    {
    goto end; //String
    }
    }

    // asset_response->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // asset_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(asset_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    asset_response_local_var = asset_response_create_internal (
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
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        uploader ? uploader_local_nonprim : NULL,
        likes_count ? likes_count->valuedouble : 0,
        comments_count ? comments_count->valuedouble : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        attached_media_type && !cJSON_IsNull(attached_media_type) ? strdup(attached_media_type->valuestring) : NULL,
        attached_asset_url && !cJSON_IsNull(attached_asset_url) ? strdup(attached_asset_url->valuestring) : NULL,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        search_tags && !cJSON_IsNull(search_tags) ? strdup(search_tags->valuestring) : NULL,
        meta_data && !cJSON_IsNull(meta_data) ? strdup(meta_data->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return asset_response_local_var;
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
    if (uploader_local_nonprim) {
        account_short_response_free(uploader_local_nonprim);
        uploader_local_nonprim = NULL;
    }
    return NULL;

}
