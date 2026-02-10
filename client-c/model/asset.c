#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "asset.h"


char* asset_default_album_type_ToString(sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e default_album_type) {
    char* default_album_typeArray[] =  { "NULL", "PROFILE", "DEFAULT_PROFILE_AVATAR", "DEFAULT_APP_ICON", "DEFAULT_APP_LOGO" };
    return default_album_typeArray[default_album_type];
}

sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e asset_default_album_type_FromString(char* default_album_type){
    int stringToReturn = 0;
    char *default_album_typeArray[] =  { "NULL", "PROFILE", "DEFAULT_PROFILE_AVATAR", "DEFAULT_APP_ICON", "DEFAULT_APP_LOGO" };
    size_t sizeofArray = sizeof(default_album_typeArray) / sizeof(default_album_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(default_album_type, default_album_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static asset_t *asset_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    long premigration_id,
    long new_owner_id,
    char *folder_uri,
    char *file_name,
    char *media_type,
    char *mime_type,
    char *meta_data,
    char *caption,
    int version_code,
    char *version_name,
    long like_count,
    long dislike_count,
    long note_count,
    account_t *owner,
    list_t *notes,
    list_t *likes,
    long attached_asset_id,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e default_album_type,
    album_t *album,
    assignment_t *assignment,
    application_t *application,
    char *display,
    char *app_key,
    long billable_id,
    char *sub_type,
    char *content_name,
    char *urifolder,
    long default_threshold
    ) {
    asset_t *asset_local_var = malloc(sizeof(asset_t));
    if (!asset_local_var) {
        return NULL;
    }
    asset_local_var->id = id;
    asset_local_var->active = active;
    asset_local_var->valid = valid;
    asset_local_var->latitude = latitude;
    asset_local_var->longitude = longitude;
    asset_local_var->location_description = location_description;
    asset_local_var->premigration_id = premigration_id;
    asset_local_var->new_owner_id = new_owner_id;
    asset_local_var->folder_uri = folder_uri;
    asset_local_var->file_name = file_name;
    asset_local_var->media_type = media_type;
    asset_local_var->mime_type = mime_type;
    asset_local_var->meta_data = meta_data;
    asset_local_var->caption = caption;
    asset_local_var->version_code = version_code;
    asset_local_var->version_name = version_name;
    asset_local_var->like_count = like_count;
    asset_local_var->dislike_count = dislike_count;
    asset_local_var->note_count = note_count;
    asset_local_var->owner = owner;
    asset_local_var->notes = notes;
    asset_local_var->likes = likes;
    asset_local_var->attached_asset_id = attached_asset_id;
    asset_local_var->flags = flags;
    asset_local_var->flag_count = flag_count;
    asset_local_var->flag_threshold = flag_threshold;
    asset_local_var->default_album_type = default_album_type;
    asset_local_var->album = album;
    asset_local_var->assignment = assignment;
    asset_local_var->application = application;
    asset_local_var->display = display;
    asset_local_var->app_key = app_key;
    asset_local_var->billable_id = billable_id;
    asset_local_var->sub_type = sub_type;
    asset_local_var->content_name = content_name;
    asset_local_var->urifolder = urifolder;
    asset_local_var->default_threshold = default_threshold;

    asset_local_var->_library_owned = 1;
    return asset_local_var;
}

__attribute__((deprecated)) asset_t *asset_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    long premigration_id,
    long new_owner_id,
    char *folder_uri,
    char *file_name,
    char *media_type,
    char *mime_type,
    char *meta_data,
    char *caption,
    int version_code,
    char *version_name,
    long like_count,
    long dislike_count,
    long note_count,
    account_t *owner,
    list_t *notes,
    list_t *likes,
    long attached_asset_id,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e default_album_type,
    album_t *album,
    assignment_t *assignment,
    application_t *application,
    char *display,
    char *app_key,
    long billable_id,
    char *sub_type,
    char *content_name,
    char *urifolder,
    long default_threshold
    ) {
    return asset_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        premigration_id,
        new_owner_id,
        folder_uri,
        file_name,
        media_type,
        mime_type,
        meta_data,
        caption,
        version_code,
        version_name,
        like_count,
        dislike_count,
        note_count,
        owner,
        notes,
        likes,
        attached_asset_id,
        flags,
        flag_count,
        flag_threshold,
        default_album_type,
        album,
        assignment,
        application,
        display,
        app_key,
        billable_id,
        sub_type,
        content_name,
        urifolder,
        default_threshold
        );
}

void asset_free(asset_t *asset) {
    if(NULL == asset){
        return ;
    }
    if(asset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "asset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (asset->location_description) {
        free(asset->location_description);
        asset->location_description = NULL;
    }
    if (asset->folder_uri) {
        free(asset->folder_uri);
        asset->folder_uri = NULL;
    }
    if (asset->file_name) {
        free(asset->file_name);
        asset->file_name = NULL;
    }
    if (asset->media_type) {
        free(asset->media_type);
        asset->media_type = NULL;
    }
    if (asset->mime_type) {
        free(asset->mime_type);
        asset->mime_type = NULL;
    }
    if (asset->meta_data) {
        free(asset->meta_data);
        asset->meta_data = NULL;
    }
    if (asset->caption) {
        free(asset->caption);
        asset->caption = NULL;
    }
    if (asset->version_name) {
        free(asset->version_name);
        asset->version_name = NULL;
    }
    if (asset->owner) {
        account_free(asset->owner);
        asset->owner = NULL;
    }
    if (asset->notes) {
        list_ForEach(listEntry, asset->notes) {
            note_free(listEntry->data);
        }
        list_freeList(asset->notes);
        asset->notes = NULL;
    }
    if (asset->likes) {
        list_ForEach(listEntry, asset->likes) {
            yay_or_nay_free(listEntry->data);
        }
        list_freeList(asset->likes);
        asset->likes = NULL;
    }
    if (asset->flags) {
        list_ForEach(listEntry, asset->flags) {
            flag_free(listEntry->data);
        }
        list_freeList(asset->flags);
        asset->flags = NULL;
    }
    if (asset->flag_threshold) {
        flag_threshold_free(asset->flag_threshold);
        asset->flag_threshold = NULL;
    }
    if (asset->album) {
        album_free(asset->album);
        asset->album = NULL;
    }
    if (asset->assignment) {
        assignment_free(asset->assignment);
        asset->assignment = NULL;
    }
    if (asset->application) {
        application_free(asset->application);
        asset->application = NULL;
    }
    if (asset->display) {
        free(asset->display);
        asset->display = NULL;
    }
    if (asset->app_key) {
        free(asset->app_key);
        asset->app_key = NULL;
    }
    if (asset->sub_type) {
        free(asset->sub_type);
        asset->sub_type = NULL;
    }
    if (asset->content_name) {
        free(asset->content_name);
        asset->content_name = NULL;
    }
    if (asset->urifolder) {
        free(asset->urifolder);
        asset->urifolder = NULL;
    }
    free(asset);
}

cJSON *asset_convertToJSON(asset_t *asset) {
    cJSON *item = cJSON_CreateObject();

    // asset->id
    if(asset->id) {
    if(cJSON_AddNumberToObject(item, "id", asset->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->active
    if(asset->active) {
    if(cJSON_AddBoolToObject(item, "active", asset->active) == NULL) {
    goto fail; //Bool
    }
    }


    // asset->valid
    if(asset->valid) {
    if(cJSON_AddBoolToObject(item, "valid", asset->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // asset->latitude
    if(asset->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", asset->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->longitude
    if(asset->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", asset->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->location_description
    if(asset->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", asset->location_description) == NULL) {
    goto fail; //String
    }
    }


    // asset->premigration_id
    if(asset->premigration_id) {
    if(cJSON_AddNumberToObject(item, "premigrationId", asset->premigration_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->new_owner_id
    if(asset->new_owner_id) {
    if(cJSON_AddNumberToObject(item, "newOwnerId", asset->new_owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->folder_uri
    if(asset->folder_uri) {
    if(cJSON_AddStringToObject(item, "folderUri", asset->folder_uri) == NULL) {
    goto fail; //String
    }
    }


    // asset->file_name
    if(asset->file_name) {
    if(cJSON_AddStringToObject(item, "fileName", asset->file_name) == NULL) {
    goto fail; //String
    }
    }


    // asset->media_type
    if(asset->media_type) {
    if(cJSON_AddStringToObject(item, "mediaType", asset->media_type) == NULL) {
    goto fail; //String
    }
    }


    // asset->mime_type
    if(asset->mime_type) {
    if(cJSON_AddStringToObject(item, "mimeType", asset->mime_type) == NULL) {
    goto fail; //String
    }
    }


    // asset->meta_data
    if(asset->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", asset->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // asset->caption
    if(asset->caption) {
    if(cJSON_AddStringToObject(item, "caption", asset->caption) == NULL) {
    goto fail; //String
    }
    }


    // asset->version_code
    if(asset->version_code) {
    if(cJSON_AddNumberToObject(item, "versionCode", asset->version_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->version_name
    if(asset->version_name) {
    if(cJSON_AddStringToObject(item, "versionName", asset->version_name) == NULL) {
    goto fail; //String
    }
    }


    // asset->like_count
    if(asset->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", asset->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->dislike_count
    if(asset->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", asset->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->note_count
    if(asset->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", asset->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->owner
    if(asset->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(asset->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // asset->notes
    if(asset->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (asset->notes) {
    list_ForEach(notesListEntry, asset->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // asset->likes
    if(asset->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (asset->likes) {
    list_ForEach(likesListEntry, asset->likes) {
    cJSON *itemLocal = yay_or_nay_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // asset->attached_asset_id
    if(asset->attached_asset_id) {
    if(cJSON_AddNumberToObject(item, "attachedAssetId", asset->attached_asset_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->flags
    if(asset->flags) {
    cJSON *flags = cJSON_AddArrayToObject(item, "flags");
    if(flags == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *flagsListEntry;
    if (asset->flags) {
    list_ForEach(flagsListEntry, asset->flags) {
    cJSON *itemLocal = flag_convertToJSON(flagsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(flags, itemLocal);
    }
    }
    }


    // asset->flag_count
    if(asset->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", asset->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->flag_threshold
    if(asset->flag_threshold) {
    cJSON *flag_threshold_local_JSON = flag_threshold_convertToJSON(asset->flag_threshold);
    if(flag_threshold_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "flagThreshold", flag_threshold_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // asset->default_album_type
    if(asset->default_album_type != sirqul_iot_platform_asset_DEFAULTALBUMTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "defaultAlbumType", asset_default_album_type_ToString(asset->default_album_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // asset->album
    if(asset->album) {
    cJSON *album_local_JSON = album_convertToJSON(asset->album);
    if(album_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "album", album_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // asset->assignment
    if(asset->assignment) {
    cJSON *assignment_local_JSON = assignment_convertToJSON(asset->assignment);
    if(assignment_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "assignment", assignment_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // asset->application
    if(asset->application) {
    cJSON *application_local_JSON = application_convertToJSON(asset->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // asset->display
    if(asset->display) {
    if(cJSON_AddStringToObject(item, "display", asset->display) == NULL) {
    goto fail; //String
    }
    }


    // asset->app_key
    if(asset->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", asset->app_key) == NULL) {
    goto fail; //String
    }
    }


    // asset->billable_id
    if(asset->billable_id) {
    if(cJSON_AddNumberToObject(item, "billableId", asset->billable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // asset->sub_type
    if(asset->sub_type) {
    if(cJSON_AddStringToObject(item, "subType", asset->sub_type) == NULL) {
    goto fail; //String
    }
    }


    // asset->content_name
    if(asset->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", asset->content_name) == NULL) {
    goto fail; //String
    }
    }


    // asset->urifolder
    if(asset->urifolder) {
    if(cJSON_AddStringToObject(item, "urifolder", asset->urifolder) == NULL) {
    goto fail; //String
    }
    }


    // asset->default_threshold
    if(asset->default_threshold) {
    if(cJSON_AddNumberToObject(item, "defaultThreshold", asset->default_threshold) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

asset_t *asset_parseFromJSON(cJSON *assetJSON){

    asset_t *asset_local_var = NULL;

    // define the local variable for asset->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for asset->notes
    list_t *notesList = NULL;

    // define the local list for asset->likes
    list_t *likesList = NULL;

    // define the local list for asset->flags
    list_t *flagsList = NULL;

    // define the local variable for asset->flag_threshold
    flag_threshold_t *flag_threshold_local_nonprim = NULL;

    // define the local variable for asset->album
    album_t *album_local_nonprim = NULL;

    // define the local variable for asset->assignment
    assignment_t *assignment_local_nonprim = NULL;

    // define the local variable for asset->application
    application_t *application_local_nonprim = NULL;

    // asset->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(assetJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // asset->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(assetJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // asset->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(assetJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // asset->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(assetJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // asset->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(assetJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // asset->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(assetJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // asset->premigration_id
    cJSON *premigration_id = cJSON_GetObjectItemCaseSensitive(assetJSON, "premigrationId");
    if (cJSON_IsNull(premigration_id)) {
        premigration_id = NULL;
    }
    if (premigration_id) { 
    if(!cJSON_IsNumber(premigration_id))
    {
    goto end; //Numeric
    }
    }

    // asset->new_owner_id
    cJSON *new_owner_id = cJSON_GetObjectItemCaseSensitive(assetJSON, "newOwnerId");
    if (cJSON_IsNull(new_owner_id)) {
        new_owner_id = NULL;
    }
    if (new_owner_id) { 
    if(!cJSON_IsNumber(new_owner_id))
    {
    goto end; //Numeric
    }
    }

    // asset->folder_uri
    cJSON *folder_uri = cJSON_GetObjectItemCaseSensitive(assetJSON, "folderUri");
    if (cJSON_IsNull(folder_uri)) {
        folder_uri = NULL;
    }
    if (folder_uri) { 
    if(!cJSON_IsString(folder_uri) && !cJSON_IsNull(folder_uri))
    {
    goto end; //String
    }
    }

    // asset->file_name
    cJSON *file_name = cJSON_GetObjectItemCaseSensitive(assetJSON, "fileName");
    if (cJSON_IsNull(file_name)) {
        file_name = NULL;
    }
    if (file_name) { 
    if(!cJSON_IsString(file_name) && !cJSON_IsNull(file_name))
    {
    goto end; //String
    }
    }

    // asset->media_type
    cJSON *media_type = cJSON_GetObjectItemCaseSensitive(assetJSON, "mediaType");
    if (cJSON_IsNull(media_type)) {
        media_type = NULL;
    }
    if (media_type) { 
    if(!cJSON_IsString(media_type) && !cJSON_IsNull(media_type))
    {
    goto end; //String
    }
    }

    // asset->mime_type
    cJSON *mime_type = cJSON_GetObjectItemCaseSensitive(assetJSON, "mimeType");
    if (cJSON_IsNull(mime_type)) {
        mime_type = NULL;
    }
    if (mime_type) { 
    if(!cJSON_IsString(mime_type) && !cJSON_IsNull(mime_type))
    {
    goto end; //String
    }
    }

    // asset->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(assetJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // asset->caption
    cJSON *caption = cJSON_GetObjectItemCaseSensitive(assetJSON, "caption");
    if (cJSON_IsNull(caption)) {
        caption = NULL;
    }
    if (caption) { 
    if(!cJSON_IsString(caption) && !cJSON_IsNull(caption))
    {
    goto end; //String
    }
    }

    // asset->version_code
    cJSON *version_code = cJSON_GetObjectItemCaseSensitive(assetJSON, "versionCode");
    if (cJSON_IsNull(version_code)) {
        version_code = NULL;
    }
    if (version_code) { 
    if(!cJSON_IsNumber(version_code))
    {
    goto end; //Numeric
    }
    }

    // asset->version_name
    cJSON *version_name = cJSON_GetObjectItemCaseSensitive(assetJSON, "versionName");
    if (cJSON_IsNull(version_name)) {
        version_name = NULL;
    }
    if (version_name) { 
    if(!cJSON_IsString(version_name) && !cJSON_IsNull(version_name))
    {
    goto end; //String
    }
    }

    // asset->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(assetJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // asset->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(assetJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // asset->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(assetJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // asset->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(assetJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // asset->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(assetJSON, "notes");
    if (cJSON_IsNull(notes)) {
        notes = NULL;
    }
    if (notes) { 
    cJSON *notes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(notes)){
        goto end; //nonprimitive container
    }

    notesList = list_createList();

    cJSON_ArrayForEach(notes_local_nonprimitive,notes )
    {
        if(!cJSON_IsObject(notes_local_nonprimitive)){
            goto end;
        }
        note_t *notesItem = note_parseFromJSON(notes_local_nonprimitive);

        list_addElement(notesList, notesItem);
    }
    }

    // asset->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(assetJSON, "likes");
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
        yay_or_nay_t *likesItem = yay_or_nay_parseFromJSON(likes_local_nonprimitive);

        list_addElement(likesList, likesItem);
    }
    }

    // asset->attached_asset_id
    cJSON *attached_asset_id = cJSON_GetObjectItemCaseSensitive(assetJSON, "attachedAssetId");
    if (cJSON_IsNull(attached_asset_id)) {
        attached_asset_id = NULL;
    }
    if (attached_asset_id) { 
    if(!cJSON_IsNumber(attached_asset_id))
    {
    goto end; //Numeric
    }
    }

    // asset->flags
    cJSON *flags = cJSON_GetObjectItemCaseSensitive(assetJSON, "flags");
    if (cJSON_IsNull(flags)) {
        flags = NULL;
    }
    if (flags) { 
    cJSON *flags_local_nonprimitive = NULL;
    if(!cJSON_IsArray(flags)){
        goto end; //nonprimitive container
    }

    flagsList = list_createList();

    cJSON_ArrayForEach(flags_local_nonprimitive,flags )
    {
        if(!cJSON_IsObject(flags_local_nonprimitive)){
            goto end;
        }
        flag_t *flagsItem = flag_parseFromJSON(flags_local_nonprimitive);

        list_addElement(flagsList, flagsItem);
    }
    }

    // asset->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(assetJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // asset->flag_threshold
    cJSON *flag_threshold = cJSON_GetObjectItemCaseSensitive(assetJSON, "flagThreshold");
    if (cJSON_IsNull(flag_threshold)) {
        flag_threshold = NULL;
    }
    if (flag_threshold) { 
    flag_threshold_local_nonprim = flag_threshold_parseFromJSON(flag_threshold); //nonprimitive
    }

    // asset->default_album_type
    cJSON *default_album_type = cJSON_GetObjectItemCaseSensitive(assetJSON, "defaultAlbumType");
    if (cJSON_IsNull(default_album_type)) {
        default_album_type = NULL;
    }
    sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e default_album_typeVariable;
    if (default_album_type) { 
    if(!cJSON_IsString(default_album_type))
    {
    goto end; //Enum
    }
    default_album_typeVariable = asset_default_album_type_FromString(default_album_type->valuestring);
    }

    // asset->album
    cJSON *album = cJSON_GetObjectItemCaseSensitive(assetJSON, "album");
    if (cJSON_IsNull(album)) {
        album = NULL;
    }
    if (album) { 
    album_local_nonprim = album_parseFromJSON(album); //nonprimitive
    }

    // asset->assignment
    cJSON *assignment = cJSON_GetObjectItemCaseSensitive(assetJSON, "assignment");
    if (cJSON_IsNull(assignment)) {
        assignment = NULL;
    }
    if (assignment) { 
    assignment_local_nonprim = assignment_parseFromJSON(assignment); //nonprimitive
    }

    // asset->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(assetJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // asset->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(assetJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // asset->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(assetJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // asset->billable_id
    cJSON *billable_id = cJSON_GetObjectItemCaseSensitive(assetJSON, "billableId");
    if (cJSON_IsNull(billable_id)) {
        billable_id = NULL;
    }
    if (billable_id) { 
    if(!cJSON_IsNumber(billable_id))
    {
    goto end; //Numeric
    }
    }

    // asset->sub_type
    cJSON *sub_type = cJSON_GetObjectItemCaseSensitive(assetJSON, "subType");
    if (cJSON_IsNull(sub_type)) {
        sub_type = NULL;
    }
    if (sub_type) { 
    if(!cJSON_IsString(sub_type) && !cJSON_IsNull(sub_type))
    {
    goto end; //String
    }
    }

    // asset->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(assetJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // asset->urifolder
    cJSON *urifolder = cJSON_GetObjectItemCaseSensitive(assetJSON, "urifolder");
    if (cJSON_IsNull(urifolder)) {
        urifolder = NULL;
    }
    if (urifolder) { 
    if(!cJSON_IsString(urifolder) && !cJSON_IsNull(urifolder))
    {
    goto end; //String
    }
    }

    // asset->default_threshold
    cJSON *default_threshold = cJSON_GetObjectItemCaseSensitive(assetJSON, "defaultThreshold");
    if (cJSON_IsNull(default_threshold)) {
        default_threshold = NULL;
    }
    if (default_threshold) { 
    if(!cJSON_IsNumber(default_threshold))
    {
    goto end; //Numeric
    }
    }


    asset_local_var = asset_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        premigration_id ? premigration_id->valuedouble : 0,
        new_owner_id ? new_owner_id->valuedouble : 0,
        folder_uri && !cJSON_IsNull(folder_uri) ? strdup(folder_uri->valuestring) : NULL,
        file_name && !cJSON_IsNull(file_name) ? strdup(file_name->valuestring) : NULL,
        media_type && !cJSON_IsNull(media_type) ? strdup(media_type->valuestring) : NULL,
        mime_type && !cJSON_IsNull(mime_type) ? strdup(mime_type->valuestring) : NULL,
        meta_data && !cJSON_IsNull(meta_data) ? strdup(meta_data->valuestring) : NULL,
        caption && !cJSON_IsNull(caption) ? strdup(caption->valuestring) : NULL,
        version_code ? version_code->valuedouble : 0,
        version_name && !cJSON_IsNull(version_name) ? strdup(version_name->valuestring) : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        note_count ? note_count->valuedouble : 0,
        owner ? owner_local_nonprim : NULL,
        notes ? notesList : NULL,
        likes ? likesList : NULL,
        attached_asset_id ? attached_asset_id->valuedouble : 0,
        flags ? flagsList : NULL,
        flag_count ? flag_count->valuedouble : 0,
        flag_threshold ? flag_threshold_local_nonprim : NULL,
        default_album_type ? default_album_typeVariable : sirqul_iot_platform_asset_DEFAULTALBUMTYPE_NULL,
        album ? album_local_nonprim : NULL,
        assignment ? assignment_local_nonprim : NULL,
        application ? application_local_nonprim : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        billable_id ? billable_id->valuedouble : 0,
        sub_type && !cJSON_IsNull(sub_type) ? strdup(sub_type->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        urifolder && !cJSON_IsNull(urifolder) ? strdup(urifolder->valuestring) : NULL,
        default_threshold ? default_threshold->valuedouble : 0
        );

    return asset_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (notesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, notesList) {
            note_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(notesList);
        notesList = NULL;
    }
    if (likesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, likesList) {
            yay_or_nay_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(likesList);
        likesList = NULL;
    }
    if (flagsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, flagsList) {
            flag_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(flagsList);
        flagsList = NULL;
    }
    if (flag_threshold_local_nonprim) {
        flag_threshold_free(flag_threshold_local_nonprim);
        flag_threshold_local_nonprim = NULL;
    }
    if (album_local_nonprim) {
        album_free(album_local_nonprim);
        album_local_nonprim = NULL;
    }
    if (assignment_local_nonprim) {
        assignment_free(assignment_local_nonprim);
        assignment_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    return NULL;

}
