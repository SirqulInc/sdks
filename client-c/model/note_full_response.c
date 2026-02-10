#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "note_full_response.h"



static note_full_response_t *note_full_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long note_id,
    char *comment,
    char *tags,
    long likes_count,
    long dislikes_count,
    long date_created,
    long created_date,
    long updated_date,
    account_short_response_t *owner,
    double latitude,
    double longitude,
    char *location_description,
    list_t *attached_assets,
    list_t *likes,
    int has_liked,
    int has_disliked,
    char *returning
    ) {
    note_full_response_t *note_full_response_local_var = malloc(sizeof(note_full_response_t));
    if (!note_full_response_local_var) {
        return NULL;
    }
    note_full_response_local_var->valid = valid;
    note_full_response_local_var->message = message;
    note_full_response_local_var->version = version;
    note_full_response_local_var->serialize_nulls = serialize_nulls;
    note_full_response_local_var->start_time_log = start_time_log;
    note_full_response_local_var->error_code = error_code;
    note_full_response_local_var->request = request;
    note_full_response_local_var->note_id = note_id;
    note_full_response_local_var->comment = comment;
    note_full_response_local_var->tags = tags;
    note_full_response_local_var->likes_count = likes_count;
    note_full_response_local_var->dislikes_count = dislikes_count;
    note_full_response_local_var->date_created = date_created;
    note_full_response_local_var->created_date = created_date;
    note_full_response_local_var->updated_date = updated_date;
    note_full_response_local_var->owner = owner;
    note_full_response_local_var->latitude = latitude;
    note_full_response_local_var->longitude = longitude;
    note_full_response_local_var->location_description = location_description;
    note_full_response_local_var->attached_assets = attached_assets;
    note_full_response_local_var->likes = likes;
    note_full_response_local_var->has_liked = has_liked;
    note_full_response_local_var->has_disliked = has_disliked;
    note_full_response_local_var->returning = returning;

    note_full_response_local_var->_library_owned = 1;
    return note_full_response_local_var;
}

__attribute__((deprecated)) note_full_response_t *note_full_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long note_id,
    char *comment,
    char *tags,
    long likes_count,
    long dislikes_count,
    long date_created,
    long created_date,
    long updated_date,
    account_short_response_t *owner,
    double latitude,
    double longitude,
    char *location_description,
    list_t *attached_assets,
    list_t *likes,
    int has_liked,
    int has_disliked,
    char *returning
    ) {
    return note_full_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        note_id,
        comment,
        tags,
        likes_count,
        dislikes_count,
        date_created,
        created_date,
        updated_date,
        owner,
        latitude,
        longitude,
        location_description,
        attached_assets,
        likes,
        has_liked,
        has_disliked,
        returning
        );
}

void note_full_response_free(note_full_response_t *note_full_response) {
    if(NULL == note_full_response){
        return ;
    }
    if(note_full_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "note_full_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (note_full_response->message) {
        free(note_full_response->message);
        note_full_response->message = NULL;
    }
    if (note_full_response->error_code) {
        free(note_full_response->error_code);
        note_full_response->error_code = NULL;
    }
    if (note_full_response->request) {
        list_ForEach(listEntry, note_full_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(note_full_response->request);
        note_full_response->request = NULL;
    }
    if (note_full_response->comment) {
        free(note_full_response->comment);
        note_full_response->comment = NULL;
    }
    if (note_full_response->tags) {
        free(note_full_response->tags);
        note_full_response->tags = NULL;
    }
    if (note_full_response->owner) {
        account_short_response_free(note_full_response->owner);
        note_full_response->owner = NULL;
    }
    if (note_full_response->location_description) {
        free(note_full_response->location_description);
        note_full_response->location_description = NULL;
    }
    if (note_full_response->attached_assets) {
        list_ForEach(listEntry, note_full_response->attached_assets) {
            asset_short_response_free(listEntry->data);
        }
        list_freeList(note_full_response->attached_assets);
        note_full_response->attached_assets = NULL;
    }
    if (note_full_response->likes) {
        list_ForEach(listEntry, note_full_response->likes) {
            like_response_free(listEntry->data);
        }
        list_freeList(note_full_response->likes);
        note_full_response->likes = NULL;
    }
    if (note_full_response->returning) {
        free(note_full_response->returning);
        note_full_response->returning = NULL;
    }
    free(note_full_response);
}

cJSON *note_full_response_convertToJSON(note_full_response_t *note_full_response) {
    cJSON *item = cJSON_CreateObject();

    // note_full_response->valid
    if(note_full_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", note_full_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // note_full_response->message
    if(note_full_response->message) {
    if(cJSON_AddStringToObject(item, "message", note_full_response->message) == NULL) {
    goto fail; //String
    }
    }


    // note_full_response->version
    if(note_full_response->version) {
    if(cJSON_AddNumberToObject(item, "version", note_full_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->serialize_nulls
    if(note_full_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", note_full_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // note_full_response->start_time_log
    if(note_full_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", note_full_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->error_code
    if(note_full_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", note_full_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // note_full_response->request
    if(note_full_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (note_full_response->request) {
    list_ForEach(requestListEntry, note_full_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // note_full_response->note_id
    if(note_full_response->note_id) {
    if(cJSON_AddNumberToObject(item, "noteId", note_full_response->note_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->comment
    if(note_full_response->comment) {
    if(cJSON_AddStringToObject(item, "comment", note_full_response->comment) == NULL) {
    goto fail; //String
    }
    }


    // note_full_response->tags
    if(note_full_response->tags) {
    if(cJSON_AddStringToObject(item, "tags", note_full_response->tags) == NULL) {
    goto fail; //String
    }
    }


    // note_full_response->likes_count
    if(note_full_response->likes_count) {
    if(cJSON_AddNumberToObject(item, "likesCount", note_full_response->likes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->dislikes_count
    if(note_full_response->dislikes_count) {
    if(cJSON_AddNumberToObject(item, "dislikesCount", note_full_response->dislikes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->date_created
    if(note_full_response->date_created) {
    if(cJSON_AddNumberToObject(item, "dateCreated", note_full_response->date_created) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->created_date
    if(note_full_response->created_date) {
    if(cJSON_AddNumberToObject(item, "createdDate", note_full_response->created_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->updated_date
    if(note_full_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", note_full_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->owner
    if(note_full_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(note_full_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // note_full_response->latitude
    if(note_full_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", note_full_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->longitude
    if(note_full_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", note_full_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_full_response->location_description
    if(note_full_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", note_full_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // note_full_response->attached_assets
    if(note_full_response->attached_assets) {
    cJSON *attached_assets = cJSON_AddArrayToObject(item, "attachedAssets");
    if(attached_assets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *attached_assetsListEntry;
    if (note_full_response->attached_assets) {
    list_ForEach(attached_assetsListEntry, note_full_response->attached_assets) {
    cJSON *itemLocal = asset_short_response_convertToJSON(attached_assetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(attached_assets, itemLocal);
    }
    }
    }


    // note_full_response->likes
    if(note_full_response->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (note_full_response->likes) {
    list_ForEach(likesListEntry, note_full_response->likes) {
    cJSON *itemLocal = like_response_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // note_full_response->has_liked
    if(note_full_response->has_liked) {
    if(cJSON_AddBoolToObject(item, "hasLiked", note_full_response->has_liked) == NULL) {
    goto fail; //Bool
    }
    }


    // note_full_response->has_disliked
    if(note_full_response->has_disliked) {
    if(cJSON_AddBoolToObject(item, "hasDisliked", note_full_response->has_disliked) == NULL) {
    goto fail; //Bool
    }
    }


    // note_full_response->returning
    if(note_full_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", note_full_response->returning) == NULL) {
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

note_full_response_t *note_full_response_parseFromJSON(cJSON *note_full_responseJSON){

    note_full_response_t *note_full_response_local_var = NULL;

    // define the local list for note_full_response->request
    list_t *requestList = NULL;

    // define the local variable for note_full_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local list for note_full_response->attached_assets
    list_t *attached_assetsList = NULL;

    // define the local list for note_full_response->likes
    list_t *likesList = NULL;

    // note_full_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // note_full_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // note_full_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // note_full_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // note_full_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "request");
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

    // note_full_response->note_id
    cJSON *note_id = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "noteId");
    if (cJSON_IsNull(note_id)) {
        note_id = NULL;
    }
    if (note_id) { 
    if(!cJSON_IsNumber(note_id))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }

    // note_full_response->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }

    // note_full_response->likes_count
    cJSON *likes_count = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "likesCount");
    if (cJSON_IsNull(likes_count)) {
        likes_count = NULL;
    }
    if (likes_count) { 
    if(!cJSON_IsNumber(likes_count))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->dislikes_count
    cJSON *dislikes_count = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "dislikesCount");
    if (cJSON_IsNull(dislikes_count)) {
        dislikes_count = NULL;
    }
    if (dislikes_count) { 
    if(!cJSON_IsNumber(dislikes_count))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->date_created
    cJSON *date_created = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "dateCreated");
    if (cJSON_IsNull(date_created)) {
        date_created = NULL;
    }
    if (date_created) { 
    if(!cJSON_IsNumber(date_created))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->created_date
    cJSON *created_date = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "createdDate");
    if (cJSON_IsNull(created_date)) {
        created_date = NULL;
    }
    if (created_date) { 
    if(!cJSON_IsNumber(created_date))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // note_full_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // note_full_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // note_full_response->attached_assets
    cJSON *attached_assets = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "attachedAssets");
    if (cJSON_IsNull(attached_assets)) {
        attached_assets = NULL;
    }
    if (attached_assets) { 
    cJSON *attached_assets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(attached_assets)){
        goto end; //nonprimitive container
    }

    attached_assetsList = list_createList();

    cJSON_ArrayForEach(attached_assets_local_nonprimitive,attached_assets )
    {
        if(!cJSON_IsObject(attached_assets_local_nonprimitive)){
            goto end;
        }
        asset_short_response_t *attached_assetsItem = asset_short_response_parseFromJSON(attached_assets_local_nonprimitive);

        list_addElement(attached_assetsList, attached_assetsItem);
    }
    }

    // note_full_response->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "likes");
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

    // note_full_response->has_liked
    cJSON *has_liked = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "hasLiked");
    if (cJSON_IsNull(has_liked)) {
        has_liked = NULL;
    }
    if (has_liked) { 
    if(!cJSON_IsBool(has_liked))
    {
    goto end; //Bool
    }
    }

    // note_full_response->has_disliked
    cJSON *has_disliked = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "hasDisliked");
    if (cJSON_IsNull(has_disliked)) {
        has_disliked = NULL;
    }
    if (has_disliked) { 
    if(!cJSON_IsBool(has_disliked))
    {
    goto end; //Bool
    }
    }

    // note_full_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(note_full_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    note_full_response_local_var = note_full_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        note_id ? note_id->valuedouble : 0,
        comment && !cJSON_IsNull(comment) ? strdup(comment->valuestring) : NULL,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL,
        likes_count ? likes_count->valuedouble : 0,
        dislikes_count ? dislikes_count->valuedouble : 0,
        date_created ? date_created->valuedouble : 0,
        created_date ? created_date->valuedouble : 0,
        updated_date ? updated_date->valuedouble : 0,
        owner ? owner_local_nonprim : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        attached_assets ? attached_assetsList : NULL,
        likes ? likesList : NULL,
        has_liked ? has_liked->valueint : 0,
        has_disliked ? has_disliked->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return note_full_response_local_var;
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
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (attached_assetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, attached_assetsList) {
            asset_short_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(attached_assetsList);
        attached_assetsList = NULL;
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
