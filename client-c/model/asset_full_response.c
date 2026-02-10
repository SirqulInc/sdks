#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "asset_full_response.h"



static asset_full_response_t *asset_full_response_create_internal(
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
    list_t *comments,
    list_t *likes,
    int has_liked,
    int has_disliked,
    int met_flag_threshold,
    char *returning
    ) {
    asset_full_response_t *asset_full_response_local_var = malloc(sizeof(asset_full_response_t));
    if (!asset_full_response_local_var) {
        return NULL;
    }
    asset_full_response_local_var->valid = valid;
    asset_full_response_local_var->message = message;
    asset_full_response_local_var->version = version;
    asset_full_response_local_var->serialize_nulls = serialize_nulls;
    asset_full_response_local_var->start_time_log = start_time_log;
    asset_full_response_local_var->error_code = error_code;
    asset_full_response_local_var->request = request;
    asset_full_response_local_var->asset_id = asset_id;
    asset_full_response_local_var->file_name = file_name;
    asset_full_response_local_var->caption = caption;
    asset_full_response_local_var->media_type = media_type;
    asset_full_response_local_var->thumbnail_url = thumbnail_url;
    asset_full_response_local_var->cover_url = cover_url;
    asset_full_response_local_var->full_url = full_url;
    asset_full_response_local_var->asset_version = asset_version;
    asset_full_response_local_var->version_name = version_name;
    asset_full_response_local_var->version_code = version_code;
    asset_full_response_local_var->display = display;
    asset_full_response_local_var->location_description = location_description;
    asset_full_response_local_var->uploader = uploader;
    asset_full_response_local_var->likes_count = likes_count;
    asset_full_response_local_var->comments_count = comments_count;
    asset_full_response_local_var->latitude = latitude;
    asset_full_response_local_var->longitude = longitude;
    asset_full_response_local_var->attached_media_type = attached_media_type;
    asset_full_response_local_var->attached_asset_url = attached_asset_url;
    asset_full_response_local_var->created = created;
    asset_full_response_local_var->updated = updated;
    asset_full_response_local_var->search_tags = search_tags;
    asset_full_response_local_var->meta_data = meta_data;
    asset_full_response_local_var->comments = comments;
    asset_full_response_local_var->likes = likes;
    asset_full_response_local_var->has_liked = has_liked;
    asset_full_response_local_var->has_disliked = has_disliked;
    asset_full_response_local_var->met_flag_threshold = met_flag_threshold;
    asset_full_response_local_var->returning = returning;

    asset_full_response_local_var->_library_owned = 1;
    return asset_full_response_local_var;
}

__attribute__((deprecated)) asset_full_response_t *asset_full_response_create(
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
    list_t *comments,
    list_t *likes,
    int has_liked,
    int has_disliked,
    int met_flag_threshold,
    char *returning
    ) {
    return asset_full_response_create_internal (
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
        comments,
        likes,
        has_liked,
        has_disliked,
        met_flag_threshold,
        returning
        );
}

void asset_full_response_free(asset_full_response_t *asset_full_response) {
    if(NULL == asset_full_response){
        return ;
    }
    if(asset_full_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "asset_full_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (asset_full_response->message) {
        free(asset_full_response->message);
        asset_full_response->message = NULL;
    }
    if (asset_full_response->error_code) {
        free(asset_full_response->error_code);
        asset_full_response->error_code = NULL;
    }
    if (asset_full_response->request) {
        list_ForEach(listEntry, asset_full_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(asset_full_response->request);
        asset_full_response->request = NULL;
    }
    if (asset_full_response->file_name) {
        free(asset_full_response->file_name);
        asset_full_response->file_name = NULL;
    }
    if (asset_full_response->caption) {
        free(asset_full_response->caption);
        asset_full_response->caption = NULL;
    }
    if (asset_full_response->media_type) {
        free(asset_full_response->media_type);
        asset_full_response->media_type = NULL;
    }
    if (asset_full_response->thumbnail_url) {
        free(asset_full_response->thumbnail_url);
        asset_full_response->thumbnail_url = NULL;
    }
    if (asset_full_response->cover_url) {
        free(asset_full_response->cover_url);
        asset_full_response->cover_url = NULL;
    }
    if (asset_full_response->full_url) {
        free(asset_full_response->full_url);
        asset_full_response->full_url = NULL;
    }
    if (asset_full_response->asset_version) {
        free(asset_full_response->asset_version);
        asset_full_response->asset_version = NULL;
    }
    if (asset_full_response->version_name) {
        free(asset_full_response->version_name);
        asset_full_response->version_name = NULL;
    }
    if (asset_full_response->display) {
        free(asset_full_response->display);
        asset_full_response->display = NULL;
    }
    if (asset_full_response->location_description) {
        free(asset_full_response->location_description);
        asset_full_response->location_description = NULL;
    }
    if (asset_full_response->uploader) {
        account_short_response_free(asset_full_response->uploader);
        asset_full_response->uploader = NULL;
    }
    if (asset_full_response->attached_media_type) {
        free(asset_full_response->attached_media_type);
        asset_full_response->attached_media_type = NULL;
    }
    if (asset_full_response->attached_asset_url) {
        free(asset_full_response->attached_asset_url);
        asset_full_response->attached_asset_url = NULL;
    }
    if (asset_full_response->search_tags) {
        free(asset_full_response->search_tags);
        asset_full_response->search_tags = NULL;
    }
    if (asset_full_response->meta_data) {
        free(asset_full_response->meta_data);
        asset_full_response->meta_data = NULL;
    }
    if (asset_full_response->comments) {
        list_ForEach(listEntry, asset_full_response->comments) {
            note_full_response_free(listEntry->data);
        }
        list_freeList(asset_full_response->comments);
        asset_full_response->comments = NULL;
    }
    if (asset_full_response->likes) {
        list_ForEach(listEntry, asset_full_response->likes) {
            like_response_free(listEntry->data);
        }
        list_freeList(asset_full_response->likes);
        asset_full_response->likes = NULL;
    }
    if (asset_full_response->returning) {
        free(asset_full_response->returning);
        asset_full_response->returning = NULL;
    }
    free(asset_full_response);
}

cJSON *asset_full_response_convertToJSON(asset_full_response_t *asset_full_response) {
    cJSON *item = cJSON_CreateObject();

    // asset_full_response->valid
    if(asset_full_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", asset_full_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_full_response->message
    if(asset_full_response->message) {
    if(cJSON_AddStringToObject(item, "message", asset_full_response->message) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->version
    if(asset_full_response->version) {
    if(cJSON_AddNumberToObject(item, "version", asset_full_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->serialize_nulls
    if(asset_full_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", asset_full_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_full_response->start_time_log
    if(asset_full_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", asset_full_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->error_code
    if(asset_full_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", asset_full_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->request
    if(asset_full_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (asset_full_response->request) {
    list_ForEach(requestListEntry, asset_full_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // asset_full_response->asset_id
    if(asset_full_response->asset_id) {
    if(cJSON_AddNumberToObject(item, "assetId", asset_full_response->asset_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->file_name
    if(asset_full_response->file_name) {
    if(cJSON_AddStringToObject(item, "fileName", asset_full_response->file_name) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->caption
    if(asset_full_response->caption) {
    if(cJSON_AddStringToObject(item, "caption", asset_full_response->caption) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->media_type
    if(asset_full_response->media_type) {
    if(cJSON_AddStringToObject(item, "mediaType", asset_full_response->media_type) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->thumbnail_url
    if(asset_full_response->thumbnail_url) {
    if(cJSON_AddStringToObject(item, "thumbnailURL", asset_full_response->thumbnail_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->cover_url
    if(asset_full_response->cover_url) {
    if(cJSON_AddStringToObject(item, "coverURL", asset_full_response->cover_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->full_url
    if(asset_full_response->full_url) {
    if(cJSON_AddStringToObject(item, "fullURL", asset_full_response->full_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->asset_version
    if(asset_full_response->asset_version) {
    if(cJSON_AddStringToObject(item, "assetVersion", asset_full_response->asset_version) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->version_name
    if(asset_full_response->version_name) {
    if(cJSON_AddStringToObject(item, "versionName", asset_full_response->version_name) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->version_code
    if(asset_full_response->version_code) {
    if(cJSON_AddNumberToObject(item, "versionCode", asset_full_response->version_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->display
    if(asset_full_response->display) {
    if(cJSON_AddStringToObject(item, "display", asset_full_response->display) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->location_description
    if(asset_full_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", asset_full_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->uploader
    if(asset_full_response->uploader) {
    cJSON *uploader_local_JSON = account_short_response_convertToJSON(asset_full_response->uploader);
    if(uploader_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "uploader", uploader_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // asset_full_response->likes_count
    if(asset_full_response->likes_count) {
    if(cJSON_AddNumberToObject(item, "likesCount", asset_full_response->likes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->comments_count
    if(asset_full_response->comments_count) {
    if(cJSON_AddNumberToObject(item, "commentsCount", asset_full_response->comments_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->latitude
    if(asset_full_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", asset_full_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->longitude
    if(asset_full_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", asset_full_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->attached_media_type
    if(asset_full_response->attached_media_type) {
    if(cJSON_AddStringToObject(item, "attachedMediaType", asset_full_response->attached_media_type) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->attached_asset_url
    if(asset_full_response->attached_asset_url) {
    if(cJSON_AddStringToObject(item, "attachedAssetURL", asset_full_response->attached_asset_url) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->created
    if(asset_full_response->created) {
    if(cJSON_AddNumberToObject(item, "created", asset_full_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->updated
    if(asset_full_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", asset_full_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset_full_response->search_tags
    if(asset_full_response->search_tags) {
    if(cJSON_AddStringToObject(item, "searchTags", asset_full_response->search_tags) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->meta_data
    if(asset_full_response->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", asset_full_response->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // asset_full_response->comments
    if(asset_full_response->comments) {
    cJSON *comments = cJSON_AddArrayToObject(item, "comments");
    if(comments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *commentsListEntry;
    if (asset_full_response->comments) {
    list_ForEach(commentsListEntry, asset_full_response->comments) {
    cJSON *itemLocal = note_full_response_convertToJSON(commentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(comments, itemLocal);
    }
    }
    }


    // asset_full_response->likes
    if(asset_full_response->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (asset_full_response->likes) {
    list_ForEach(likesListEntry, asset_full_response->likes) {
    cJSON *itemLocal = like_response_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // asset_full_response->has_liked
    if(asset_full_response->has_liked) {
    if(cJSON_AddBoolToObject(item, "hasLiked", asset_full_response->has_liked) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_full_response->has_disliked
    if(asset_full_response->has_disliked) {
    if(cJSON_AddBoolToObject(item, "hasDisliked", asset_full_response->has_disliked) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_full_response->met_flag_threshold
    if(asset_full_response->met_flag_threshold) {
    if(cJSON_AddBoolToObject(item, "metFlagThreshold", asset_full_response->met_flag_threshold) == NULL) {
    goto fail; //Bool
    }
    }


    // asset_full_response->returning
    if(asset_full_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", asset_full_response->returning) == NULL) {
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

asset_full_response_t *asset_full_response_parseFromJSON(cJSON *asset_full_responseJSON){

    asset_full_response_t *asset_full_response_local_var = NULL;

    // define the local list for asset_full_response->request
    list_t *requestList = NULL;

    // define the local variable for asset_full_response->uploader
    account_short_response_t *uploader_local_nonprim = NULL;

    // define the local list for asset_full_response->comments
    list_t *commentsList = NULL;

    // define the local list for asset_full_response->likes
    list_t *likesList = NULL;

    // asset_full_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // asset_full_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // asset_full_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // asset_full_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // asset_full_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "request");
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

    // asset_full_response->asset_id
    cJSON *asset_id = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "assetId");
    if (cJSON_IsNull(asset_id)) {
        asset_id = NULL;
    }
    if (asset_id) { 
    if(!cJSON_IsNumber(asset_id))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->file_name
    cJSON *file_name = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "fileName");
    if (cJSON_IsNull(file_name)) {
        file_name = NULL;
    }
    if (file_name) { 
    if(!cJSON_IsString(file_name) && !cJSON_IsNull(file_name))
    {
    goto end; //String
    }
    }

    // asset_full_response->caption
    cJSON *caption = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "caption");
    if (cJSON_IsNull(caption)) {
        caption = NULL;
    }
    if (caption) { 
    if(!cJSON_IsString(caption) && !cJSON_IsNull(caption))
    {
    goto end; //String
    }
    }

    // asset_full_response->media_type
    cJSON *media_type = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "mediaType");
    if (cJSON_IsNull(media_type)) {
        media_type = NULL;
    }
    if (media_type) { 
    if(!cJSON_IsString(media_type) && !cJSON_IsNull(media_type))
    {
    goto end; //String
    }
    }

    // asset_full_response->thumbnail_url
    cJSON *thumbnail_url = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "thumbnailURL");
    if (cJSON_IsNull(thumbnail_url)) {
        thumbnail_url = NULL;
    }
    if (thumbnail_url) { 
    if(!cJSON_IsString(thumbnail_url) && !cJSON_IsNull(thumbnail_url))
    {
    goto end; //String
    }
    }

    // asset_full_response->cover_url
    cJSON *cover_url = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "coverURL");
    if (cJSON_IsNull(cover_url)) {
        cover_url = NULL;
    }
    if (cover_url) { 
    if(!cJSON_IsString(cover_url) && !cJSON_IsNull(cover_url))
    {
    goto end; //String
    }
    }

    // asset_full_response->full_url
    cJSON *full_url = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "fullURL");
    if (cJSON_IsNull(full_url)) {
        full_url = NULL;
    }
    if (full_url) { 
    if(!cJSON_IsString(full_url) && !cJSON_IsNull(full_url))
    {
    goto end; //String
    }
    }

    // asset_full_response->asset_version
    cJSON *asset_version = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "assetVersion");
    if (cJSON_IsNull(asset_version)) {
        asset_version = NULL;
    }
    if (asset_version) { 
    if(!cJSON_IsString(asset_version) && !cJSON_IsNull(asset_version))
    {
    goto end; //String
    }
    }

    // asset_full_response->version_name
    cJSON *version_name = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "versionName");
    if (cJSON_IsNull(version_name)) {
        version_name = NULL;
    }
    if (version_name) { 
    if(!cJSON_IsString(version_name) && !cJSON_IsNull(version_name))
    {
    goto end; //String
    }
    }

    // asset_full_response->version_code
    cJSON *version_code = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "versionCode");
    if (cJSON_IsNull(version_code)) {
        version_code = NULL;
    }
    if (version_code) { 
    if(!cJSON_IsNumber(version_code))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // asset_full_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // asset_full_response->uploader
    cJSON *uploader = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "uploader");
    if (cJSON_IsNull(uploader)) {
        uploader = NULL;
    }
    if (uploader) { 
    uploader_local_nonprim = account_short_response_parseFromJSON(uploader); //nonprimitive
    }

    // asset_full_response->likes_count
    cJSON *likes_count = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "likesCount");
    if (cJSON_IsNull(likes_count)) {
        likes_count = NULL;
    }
    if (likes_count) { 
    if(!cJSON_IsNumber(likes_count))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->comments_count
    cJSON *comments_count = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "commentsCount");
    if (cJSON_IsNull(comments_count)) {
        comments_count = NULL;
    }
    if (comments_count) { 
    if(!cJSON_IsNumber(comments_count))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->attached_media_type
    cJSON *attached_media_type = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "attachedMediaType");
    if (cJSON_IsNull(attached_media_type)) {
        attached_media_type = NULL;
    }
    if (attached_media_type) { 
    if(!cJSON_IsString(attached_media_type) && !cJSON_IsNull(attached_media_type))
    {
    goto end; //String
    }
    }

    // asset_full_response->attached_asset_url
    cJSON *attached_asset_url = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "attachedAssetURL");
    if (cJSON_IsNull(attached_asset_url)) {
        attached_asset_url = NULL;
    }
    if (attached_asset_url) { 
    if(!cJSON_IsString(attached_asset_url) && !cJSON_IsNull(attached_asset_url))
    {
    goto end; //String
    }
    }

    // asset_full_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // asset_full_response->search_tags
    cJSON *search_tags = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "searchTags");
    if (cJSON_IsNull(search_tags)) {
        search_tags = NULL;
    }
    if (search_tags) { 
    if(!cJSON_IsString(search_tags) && !cJSON_IsNull(search_tags))
    {
    goto end; //String
    }
    }

    // asset_full_response->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // asset_full_response->comments
    cJSON *comments = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "comments");
    if (cJSON_IsNull(comments)) {
        comments = NULL;
    }
    if (comments) { 
    cJSON *comments_local_nonprimitive = NULL;
    if(!cJSON_IsArray(comments)){
        goto end; //nonprimitive container
    }

    commentsList = list_createList();

    cJSON_ArrayForEach(comments_local_nonprimitive,comments )
    {
        if(!cJSON_IsObject(comments_local_nonprimitive)){
            goto end;
        }
        note_full_response_t *commentsItem = note_full_response_parseFromJSON(comments_local_nonprimitive);

        list_addElement(commentsList, commentsItem);
    }
    }

    // asset_full_response->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "likes");
    if (cJSON_IsNull(likes)) {
        likes = NULL;
    }
    if (likes) { 
    cJSON *likes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(likes)){
        goto end; //nonprimitive container
    }

    likesList = list_createList();

    cJSON_ArrayForEach(likes_local_nonprimitive,likes )
    {
        if(!cJSON_IsObject(likes_local_nonprimitive)){
            goto end;
        }
        like_response_t *likesItem = like_response_parseFromJSON(likes_local_nonprimitive);

        list_addElement(likesList, likesItem);
    }
    }

    // asset_full_response->has_liked
    cJSON *has_liked = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "hasLiked");
    if (cJSON_IsNull(has_liked)) {
        has_liked = NULL;
    }
    if (has_liked) { 
    if(!cJSON_IsBool(has_liked))
    {
    goto end; //Bool
    }
    }

    // asset_full_response->has_disliked
    cJSON *has_disliked = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "hasDisliked");
    if (cJSON_IsNull(has_disliked)) {
        has_disliked = NULL;
    }
    if (has_disliked) { 
    if(!cJSON_IsBool(has_disliked))
    {
    goto end; //Bool
    }
    }

    // asset_full_response->met_flag_threshold
    cJSON *met_flag_threshold = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "metFlagThreshold");
    if (cJSON_IsNull(met_flag_threshold)) {
        met_flag_threshold = NULL;
    }
    if (met_flag_threshold) { 
    if(!cJSON_IsBool(met_flag_threshold))
    {
    goto end; //Bool
    }
    }

    // asset_full_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(asset_full_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    asset_full_response_local_var = asset_full_response_create_internal (
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
        comments ? commentsList : NULL,
        likes ? likesList : NULL,
        has_liked ? has_liked->valueint : 0,
        has_disliked ? has_disliked->valueint : 0,
        met_flag_threshold ? met_flag_threshold->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return asset_full_response_local_var;
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
    if (commentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, commentsList) {
            note_full_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(commentsList);
        commentsList = NULL;
    }
    if (likesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, likesList) {
            like_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(likesList);
        likesList = NULL;
    }
    return NULL;

}
