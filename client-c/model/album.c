#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "album.h"


char* album_approval_status_ToString(sirqul_iot_platform_album_APPROVALSTATUS_e approval_status) {
    char* approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return approval_statusArray[approval_status];
}

sirqul_iot_platform_album_APPROVALSTATUS_e album_approval_status_FromString(char* approval_status){
    int stringToReturn = 0;
    char *approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    size_t sizeofArray = sizeof(approval_statusArray) / sizeof(approval_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(approval_status, approval_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* album_visibility_ToString(sirqul_iot_platform_album_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_album_VISIBILITY_e album_visibility_FromString(char* visibility){
    int stringToReturn = 0;
    char *visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(visibilityArray) / sizeof(visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(visibility, visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static album_t *album_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *title,
    application_t *application,
    sirqul_iot_platform_album_APPROVALSTATUS_e approval_status,
    permissions_t *public_permissions,
    list_t *user_permissions,
    sirqul_iot_platform_album_VISIBILITY_e visibility,
    list_t *notes,
    long note_count,
    list_t *likes,
    long like_count,
    long dislike_count,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    char *description,
    char *album_type,
    list_t *assets,
    asset_t *cover_asset,
    char *tags,
    char *start_date,
    char *end_date,
    contact_info_t *contact_info,
    long asset_count,
    long favorite_count,
    long viewed_count,
    long clicked_count,
    long shared_count,
    int anonymous,
    char *owner_username,
    char *display,
    char *app_key,
    long billable_id,
    char *sub_type,
    asset_t *content_asset,
    char *secondary_type,
    char *content_name,
    char *application_title,
    char *short_title,
    long default_threshold
    ) {
    album_t *album_local_var = malloc(sizeof(album_t));
    if (!album_local_var) {
        return NULL;
    }
    album_local_var->id = id;
    album_local_var->active = active;
    album_local_var->valid = valid;
    album_local_var->latitude = latitude;
    album_local_var->longitude = longitude;
    album_local_var->location_description = location_description;
    album_local_var->owner = owner;
    album_local_var->title = title;
    album_local_var->application = application;
    album_local_var->approval_status = approval_status;
    album_local_var->public_permissions = public_permissions;
    album_local_var->user_permissions = user_permissions;
    album_local_var->visibility = visibility;
    album_local_var->notes = notes;
    album_local_var->note_count = note_count;
    album_local_var->likes = likes;
    album_local_var->like_count = like_count;
    album_local_var->dislike_count = dislike_count;
    album_local_var->flags = flags;
    album_local_var->flag_count = flag_count;
    album_local_var->flag_threshold = flag_threshold;
    album_local_var->description = description;
    album_local_var->album_type = album_type;
    album_local_var->assets = assets;
    album_local_var->cover_asset = cover_asset;
    album_local_var->tags = tags;
    album_local_var->start_date = start_date;
    album_local_var->end_date = end_date;
    album_local_var->contact_info = contact_info;
    album_local_var->asset_count = asset_count;
    album_local_var->favorite_count = favorite_count;
    album_local_var->viewed_count = viewed_count;
    album_local_var->clicked_count = clicked_count;
    album_local_var->shared_count = shared_count;
    album_local_var->anonymous = anonymous;
    album_local_var->owner_username = owner_username;
    album_local_var->display = display;
    album_local_var->app_key = app_key;
    album_local_var->billable_id = billable_id;
    album_local_var->sub_type = sub_type;
    album_local_var->content_asset = content_asset;
    album_local_var->secondary_type = secondary_type;
    album_local_var->content_name = content_name;
    album_local_var->application_title = application_title;
    album_local_var->short_title = short_title;
    album_local_var->default_threshold = default_threshold;

    album_local_var->_library_owned = 1;
    return album_local_var;
}

__attribute__((deprecated)) album_t *album_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *title,
    application_t *application,
    sirqul_iot_platform_album_APPROVALSTATUS_e approval_status,
    permissions_t *public_permissions,
    list_t *user_permissions,
    sirqul_iot_platform_album_VISIBILITY_e visibility,
    list_t *notes,
    long note_count,
    list_t *likes,
    long like_count,
    long dislike_count,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    char *description,
    char *album_type,
    list_t *assets,
    asset_t *cover_asset,
    char *tags,
    char *start_date,
    char *end_date,
    contact_info_t *contact_info,
    long asset_count,
    long favorite_count,
    long viewed_count,
    long clicked_count,
    long shared_count,
    int anonymous,
    char *owner_username,
    char *display,
    char *app_key,
    long billable_id,
    char *sub_type,
    asset_t *content_asset,
    char *secondary_type,
    char *content_name,
    char *application_title,
    char *short_title,
    long default_threshold
    ) {
    return album_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        owner,
        title,
        application,
        approval_status,
        public_permissions,
        user_permissions,
        visibility,
        notes,
        note_count,
        likes,
        like_count,
        dislike_count,
        flags,
        flag_count,
        flag_threshold,
        description,
        album_type,
        assets,
        cover_asset,
        tags,
        start_date,
        end_date,
        contact_info,
        asset_count,
        favorite_count,
        viewed_count,
        clicked_count,
        shared_count,
        anonymous,
        owner_username,
        display,
        app_key,
        billable_id,
        sub_type,
        content_asset,
        secondary_type,
        content_name,
        application_title,
        short_title,
        default_threshold
        );
}

void album_free(album_t *album) {
    if(NULL == album){
        return ;
    }
    if(album->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "album_free");
        return ;
    }
    listEntry_t *listEntry;
    if (album->location_description) {
        free(album->location_description);
        album->location_description = NULL;
    }
    if (album->owner) {
        account_free(album->owner);
        album->owner = NULL;
    }
    if (album->title) {
        free(album->title);
        album->title = NULL;
    }
    if (album->application) {
        application_free(album->application);
        album->application = NULL;
    }
    if (album->public_permissions) {
        permissions_free(album->public_permissions);
        album->public_permissions = NULL;
    }
    if (album->user_permissions) {
        list_ForEach(listEntry, album->user_permissions) {
            user_permissions_free(listEntry->data);
        }
        list_freeList(album->user_permissions);
        album->user_permissions = NULL;
    }
    if (album->notes) {
        list_ForEach(listEntry, album->notes) {
            note_free(listEntry->data);
        }
        list_freeList(album->notes);
        album->notes = NULL;
    }
    if (album->likes) {
        list_ForEach(listEntry, album->likes) {
            yay_or_nay_free(listEntry->data);
        }
        list_freeList(album->likes);
        album->likes = NULL;
    }
    if (album->flags) {
        list_ForEach(listEntry, album->flags) {
            flag_free(listEntry->data);
        }
        list_freeList(album->flags);
        album->flags = NULL;
    }
    if (album->flag_threshold) {
        flag_threshold_free(album->flag_threshold);
        album->flag_threshold = NULL;
    }
    if (album->description) {
        free(album->description);
        album->description = NULL;
    }
    if (album->album_type) {
        free(album->album_type);
        album->album_type = NULL;
    }
    if (album->assets) {
        list_ForEach(listEntry, album->assets) {
            asset_free(listEntry->data);
        }
        list_freeList(album->assets);
        album->assets = NULL;
    }
    if (album->cover_asset) {
        asset_free(album->cover_asset);
        album->cover_asset = NULL;
    }
    if (album->tags) {
        free(album->tags);
        album->tags = NULL;
    }
    if (album->start_date) {
        free(album->start_date);
        album->start_date = NULL;
    }
    if (album->end_date) {
        free(album->end_date);
        album->end_date = NULL;
    }
    if (album->contact_info) {
        contact_info_free(album->contact_info);
        album->contact_info = NULL;
    }
    if (album->owner_username) {
        free(album->owner_username);
        album->owner_username = NULL;
    }
    if (album->display) {
        free(album->display);
        album->display = NULL;
    }
    if (album->app_key) {
        free(album->app_key);
        album->app_key = NULL;
    }
    if (album->sub_type) {
        free(album->sub_type);
        album->sub_type = NULL;
    }
    if (album->content_asset) {
        asset_free(album->content_asset);
        album->content_asset = NULL;
    }
    if (album->secondary_type) {
        free(album->secondary_type);
        album->secondary_type = NULL;
    }
    if (album->content_name) {
        free(album->content_name);
        album->content_name = NULL;
    }
    if (album->application_title) {
        free(album->application_title);
        album->application_title = NULL;
    }
    if (album->short_title) {
        free(album->short_title);
        album->short_title = NULL;
    }
    free(album);
}

cJSON *album_convertToJSON(album_t *album) {
    cJSON *item = cJSON_CreateObject();

    // album->id
    if(album->id) {
    if(cJSON_AddNumberToObject(item, "id", album->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->active
    if(album->active) {
    if(cJSON_AddBoolToObject(item, "active", album->active) == NULL) {
    goto fail; //Bool
    }
    }


    // album->valid
    if(album->valid) {
    if(cJSON_AddBoolToObject(item, "valid", album->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // album->latitude
    if(album->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", album->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->longitude
    if(album->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", album->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->location_description
    if(album->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", album->location_description) == NULL) {
    goto fail; //String
    }
    }


    // album->owner
    if(album->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(album->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album->title
    if(album->title) {
    if(cJSON_AddStringToObject(item, "title", album->title) == NULL) {
    goto fail; //String
    }
    }


    // album->application
    if(album->application) {
    cJSON *application_local_JSON = application_convertToJSON(album->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album->approval_status
    if(album->approval_status != sirqul_iot_platform_album_APPROVALSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "approvalStatus", album_approval_status_ToString(album->approval_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // album->public_permissions
    if(album->public_permissions) {
    cJSON *public_permissions_local_JSON = permissions_convertToJSON(album->public_permissions);
    if(public_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "publicPermissions", public_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album->user_permissions
    if(album->user_permissions) {
    cJSON *user_permissions = cJSON_AddArrayToObject(item, "userPermissions");
    if(user_permissions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *user_permissionsListEntry;
    if (album->user_permissions) {
    list_ForEach(user_permissionsListEntry, album->user_permissions) {
    cJSON *itemLocal = user_permissions_convertToJSON(user_permissionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(user_permissions, itemLocal);
    }
    }
    }


    // album->visibility
    if(album->visibility != sirqul_iot_platform_album_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", album_visibility_ToString(album->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // album->notes
    if(album->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (album->notes) {
    list_ForEach(notesListEntry, album->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // album->note_count
    if(album->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", album->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->likes
    if(album->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (album->likes) {
    list_ForEach(likesListEntry, album->likes) {
    cJSON *itemLocal = yay_or_nay_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // album->like_count
    if(album->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", album->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->dislike_count
    if(album->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", album->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->flags
    if(album->flags) {
    cJSON *flags = cJSON_AddArrayToObject(item, "flags");
    if(flags == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *flagsListEntry;
    if (album->flags) {
    list_ForEach(flagsListEntry, album->flags) {
    cJSON *itemLocal = flag_convertToJSON(flagsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(flags, itemLocal);
    }
    }
    }


    // album->flag_count
    if(album->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", album->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->flag_threshold
    if(album->flag_threshold) {
    cJSON *flag_threshold_local_JSON = flag_threshold_convertToJSON(album->flag_threshold);
    if(flag_threshold_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "flagThreshold", flag_threshold_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album->description
    if(album->description) {
    if(cJSON_AddStringToObject(item, "description", album->description) == NULL) {
    goto fail; //String
    }
    }


    // album->album_type
    if(album->album_type) {
    if(cJSON_AddStringToObject(item, "albumType", album->album_type) == NULL) {
    goto fail; //String
    }
    }


    // album->assets
    if(album->assets) {
    cJSON *assets = cJSON_AddArrayToObject(item, "assets");
    if(assets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *assetsListEntry;
    if (album->assets) {
    list_ForEach(assetsListEntry, album->assets) {
    cJSON *itemLocal = asset_convertToJSON(assetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(assets, itemLocal);
    }
    }
    }


    // album->cover_asset
    if(album->cover_asset) {
    cJSON *cover_asset_local_JSON = asset_convertToJSON(album->cover_asset);
    if(cover_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "coverAsset", cover_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album->tags
    if(album->tags) {
    if(cJSON_AddStringToObject(item, "tags", album->tags) == NULL) {
    goto fail; //String
    }
    }


    // album->start_date
    if(album->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", album->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // album->end_date
    if(album->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", album->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // album->contact_info
    if(album->contact_info) {
    cJSON *contact_info_local_JSON = contact_info_convertToJSON(album->contact_info);
    if(contact_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contactInfo", contact_info_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album->asset_count
    if(album->asset_count) {
    if(cJSON_AddNumberToObject(item, "assetCount", album->asset_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->favorite_count
    if(album->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", album->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->viewed_count
    if(album->viewed_count) {
    if(cJSON_AddNumberToObject(item, "viewedCount", album->viewed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->clicked_count
    if(album->clicked_count) {
    if(cJSON_AddNumberToObject(item, "clickedCount", album->clicked_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->shared_count
    if(album->shared_count) {
    if(cJSON_AddNumberToObject(item, "sharedCount", album->shared_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->anonymous
    if(album->anonymous) {
    if(cJSON_AddBoolToObject(item, "anonymous", album->anonymous) == NULL) {
    goto fail; //Bool
    }
    }


    // album->owner_username
    if(album->owner_username) {
    if(cJSON_AddStringToObject(item, "ownerUsername", album->owner_username) == NULL) {
    goto fail; //String
    }
    }


    // album->display
    if(album->display) {
    if(cJSON_AddStringToObject(item, "display", album->display) == NULL) {
    goto fail; //String
    }
    }


    // album->app_key
    if(album->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", album->app_key) == NULL) {
    goto fail; //String
    }
    }


    // album->billable_id
    if(album->billable_id) {
    if(cJSON_AddNumberToObject(item, "billableId", album->billable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // album->sub_type
    if(album->sub_type) {
    if(cJSON_AddStringToObject(item, "subType", album->sub_type) == NULL) {
    goto fail; //String
    }
    }


    // album->content_asset
    if(album->content_asset) {
    cJSON *content_asset_local_JSON = asset_convertToJSON(album->content_asset);
    if(content_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contentAsset", content_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album->secondary_type
    if(album->secondary_type) {
    if(cJSON_AddStringToObject(item, "secondaryType", album->secondary_type) == NULL) {
    goto fail; //String
    }
    }


    // album->content_name
    if(album->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", album->content_name) == NULL) {
    goto fail; //String
    }
    }


    // album->application_title
    if(album->application_title) {
    if(cJSON_AddStringToObject(item, "applicationTitle", album->application_title) == NULL) {
    goto fail; //String
    }
    }


    // album->short_title
    if(album->short_title) {
    if(cJSON_AddStringToObject(item, "shortTitle", album->short_title) == NULL) {
    goto fail; //String
    }
    }


    // album->default_threshold
    if(album->default_threshold) {
    if(cJSON_AddNumberToObject(item, "defaultThreshold", album->default_threshold) == NULL) {
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

album_t *album_parseFromJSON(cJSON *albumJSON){

    album_t *album_local_var = NULL;

    // define the local variable for album->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for album->application
    application_t *application_local_nonprim = NULL;

    // define the local variable for album->public_permissions
    permissions_t *public_permissions_local_nonprim = NULL;

    // define the local list for album->user_permissions
    list_t *user_permissionsList = NULL;

    // define the local list for album->notes
    list_t *notesList = NULL;

    // define the local list for album->likes
    list_t *likesList = NULL;

    // define the local list for album->flags
    list_t *flagsList = NULL;

    // define the local variable for album->flag_threshold
    flag_threshold_t *flag_threshold_local_nonprim = NULL;

    // define the local list for album->assets
    list_t *assetsList = NULL;

    // define the local variable for album->cover_asset
    asset_t *cover_asset_local_nonprim = NULL;

    // define the local variable for album->contact_info
    contact_info_t *contact_info_local_nonprim = NULL;

    // define the local variable for album->content_asset
    asset_t *content_asset_local_nonprim = NULL;

    // album->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(albumJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // album->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(albumJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // album->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(albumJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // album->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(albumJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // album->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(albumJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // album->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(albumJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // album->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(albumJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // album->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(albumJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // album->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(albumJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // album->approval_status
    cJSON *approval_status = cJSON_GetObjectItemCaseSensitive(albumJSON, "approvalStatus");
    if (cJSON_IsNull(approval_status)) {
        approval_status = NULL;
    }
    sirqul_iot_platform_album_APPROVALSTATUS_e approval_statusVariable;
    if (approval_status) { 
    if(!cJSON_IsString(approval_status))
    {
    goto end; //Enum
    }
    approval_statusVariable = album_approval_status_FromString(approval_status->valuestring);
    }

    // album->public_permissions
    cJSON *public_permissions = cJSON_GetObjectItemCaseSensitive(albumJSON, "publicPermissions");
    if (cJSON_IsNull(public_permissions)) {
        public_permissions = NULL;
    }
    if (public_permissions) { 
    public_permissions_local_nonprim = permissions_parseFromJSON(public_permissions); //nonprimitive
    }

    // album->user_permissions
    cJSON *user_permissions = cJSON_GetObjectItemCaseSensitive(albumJSON, "userPermissions");
    if (cJSON_IsNull(user_permissions)) {
        user_permissions = NULL;
    }
    if (user_permissions) { 
    cJSON *user_permissions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(user_permissions)){
        goto end; //nonprimitive container
    }

    user_permissionsList = list_createList();

    cJSON_ArrayForEach(user_permissions_local_nonprimitive,user_permissions )
    {
        if(!cJSON_IsObject(user_permissions_local_nonprimitive)){
            goto end;
        }
        user_permissions_t *user_permissionsItem = user_permissions_parseFromJSON(user_permissions_local_nonprimitive);

        list_addElement(user_permissionsList, user_permissionsItem);
    }
    }

    // album->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(albumJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_album_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = album_visibility_FromString(visibility->valuestring);
    }

    // album->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(albumJSON, "notes");
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

    // album->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // album->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(albumJSON, "likes");
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

    // album->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // album->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // album->flags
    cJSON *flags = cJSON_GetObjectItemCaseSensitive(albumJSON, "flags");
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

    // album->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // album->flag_threshold
    cJSON *flag_threshold = cJSON_GetObjectItemCaseSensitive(albumJSON, "flagThreshold");
    if (cJSON_IsNull(flag_threshold)) {
        flag_threshold = NULL;
    }
    if (flag_threshold) { 
    flag_threshold_local_nonprim = flag_threshold_parseFromJSON(flag_threshold); //nonprimitive
    }

    // album->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(albumJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // album->album_type
    cJSON *album_type = cJSON_GetObjectItemCaseSensitive(albumJSON, "albumType");
    if (cJSON_IsNull(album_type)) {
        album_type = NULL;
    }
    if (album_type) { 
    if(!cJSON_IsString(album_type) && !cJSON_IsNull(album_type))
    {
    goto end; //String
    }
    }

    // album->assets
    cJSON *assets = cJSON_GetObjectItemCaseSensitive(albumJSON, "assets");
    if (cJSON_IsNull(assets)) {
        assets = NULL;
    }
    if (assets) { 
    cJSON *assets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(assets)){
        goto end; //nonprimitive container
    }

    assetsList = list_createList();

    cJSON_ArrayForEach(assets_local_nonprimitive,assets )
    {
        if(!cJSON_IsObject(assets_local_nonprimitive)){
            goto end;
        }
        asset_t *assetsItem = asset_parseFromJSON(assets_local_nonprimitive);

        list_addElement(assetsList, assetsItem);
    }
    }

    // album->cover_asset
    cJSON *cover_asset = cJSON_GetObjectItemCaseSensitive(albumJSON, "coverAsset");
    if (cJSON_IsNull(cover_asset)) {
        cover_asset = NULL;
    }
    if (cover_asset) { 
    cover_asset_local_nonprim = asset_parseFromJSON(cover_asset); //nonprimitive
    }

    // album->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(albumJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }

    // album->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(albumJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // album->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(albumJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // album->contact_info
    cJSON *contact_info = cJSON_GetObjectItemCaseSensitive(albumJSON, "contactInfo");
    if (cJSON_IsNull(contact_info)) {
        contact_info = NULL;
    }
    if (contact_info) { 
    contact_info_local_nonprim = contact_info_parseFromJSON(contact_info); //nonprimitive
    }

    // album->asset_count
    cJSON *asset_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "assetCount");
    if (cJSON_IsNull(asset_count)) {
        asset_count = NULL;
    }
    if (asset_count) { 
    if(!cJSON_IsNumber(asset_count))
    {
    goto end; //Numeric
    }
    }

    // album->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // album->viewed_count
    cJSON *viewed_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "viewedCount");
    if (cJSON_IsNull(viewed_count)) {
        viewed_count = NULL;
    }
    if (viewed_count) { 
    if(!cJSON_IsNumber(viewed_count))
    {
    goto end; //Numeric
    }
    }

    // album->clicked_count
    cJSON *clicked_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "clickedCount");
    if (cJSON_IsNull(clicked_count)) {
        clicked_count = NULL;
    }
    if (clicked_count) { 
    if(!cJSON_IsNumber(clicked_count))
    {
    goto end; //Numeric
    }
    }

    // album->shared_count
    cJSON *shared_count = cJSON_GetObjectItemCaseSensitive(albumJSON, "sharedCount");
    if (cJSON_IsNull(shared_count)) {
        shared_count = NULL;
    }
    if (shared_count) { 
    if(!cJSON_IsNumber(shared_count))
    {
    goto end; //Numeric
    }
    }

    // album->anonymous
    cJSON *anonymous = cJSON_GetObjectItemCaseSensitive(albumJSON, "anonymous");
    if (cJSON_IsNull(anonymous)) {
        anonymous = NULL;
    }
    if (anonymous) { 
    if(!cJSON_IsBool(anonymous))
    {
    goto end; //Bool
    }
    }

    // album->owner_username
    cJSON *owner_username = cJSON_GetObjectItemCaseSensitive(albumJSON, "ownerUsername");
    if (cJSON_IsNull(owner_username)) {
        owner_username = NULL;
    }
    if (owner_username) { 
    if(!cJSON_IsString(owner_username) && !cJSON_IsNull(owner_username))
    {
    goto end; //String
    }
    }

    // album->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(albumJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // album->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(albumJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // album->billable_id
    cJSON *billable_id = cJSON_GetObjectItemCaseSensitive(albumJSON, "billableId");
    if (cJSON_IsNull(billable_id)) {
        billable_id = NULL;
    }
    if (billable_id) { 
    if(!cJSON_IsNumber(billable_id))
    {
    goto end; //Numeric
    }
    }

    // album->sub_type
    cJSON *sub_type = cJSON_GetObjectItemCaseSensitive(albumJSON, "subType");
    if (cJSON_IsNull(sub_type)) {
        sub_type = NULL;
    }
    if (sub_type) { 
    if(!cJSON_IsString(sub_type) && !cJSON_IsNull(sub_type))
    {
    goto end; //String
    }
    }

    // album->content_asset
    cJSON *content_asset = cJSON_GetObjectItemCaseSensitive(albumJSON, "contentAsset");
    if (cJSON_IsNull(content_asset)) {
        content_asset = NULL;
    }
    if (content_asset) { 
    content_asset_local_nonprim = asset_parseFromJSON(content_asset); //nonprimitive
    }

    // album->secondary_type
    cJSON *secondary_type = cJSON_GetObjectItemCaseSensitive(albumJSON, "secondaryType");
    if (cJSON_IsNull(secondary_type)) {
        secondary_type = NULL;
    }
    if (secondary_type) { 
    if(!cJSON_IsString(secondary_type) && !cJSON_IsNull(secondary_type))
    {
    goto end; //String
    }
    }

    // album->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(albumJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // album->application_title
    cJSON *application_title = cJSON_GetObjectItemCaseSensitive(albumJSON, "applicationTitle");
    if (cJSON_IsNull(application_title)) {
        application_title = NULL;
    }
    if (application_title) { 
    if(!cJSON_IsString(application_title) && !cJSON_IsNull(application_title))
    {
    goto end; //String
    }
    }

    // album->short_title
    cJSON *short_title = cJSON_GetObjectItemCaseSensitive(albumJSON, "shortTitle");
    if (cJSON_IsNull(short_title)) {
        short_title = NULL;
    }
    if (short_title) { 
    if(!cJSON_IsString(short_title) && !cJSON_IsNull(short_title))
    {
    goto end; //String
    }
    }

    // album->default_threshold
    cJSON *default_threshold = cJSON_GetObjectItemCaseSensitive(albumJSON, "defaultThreshold");
    if (cJSON_IsNull(default_threshold)) {
        default_threshold = NULL;
    }
    if (default_threshold) { 
    if(!cJSON_IsNumber(default_threshold))
    {
    goto end; //Numeric
    }
    }


    album_local_var = album_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        application ? application_local_nonprim : NULL,
        approval_status ? approval_statusVariable : sirqul_iot_platform_album_APPROVALSTATUS_NULL,
        public_permissions ? public_permissions_local_nonprim : NULL,
        user_permissions ? user_permissionsList : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_album_VISIBILITY_NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        likes ? likesList : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        flags ? flagsList : NULL,
        flag_count ? flag_count->valuedouble : 0,
        flag_threshold ? flag_threshold_local_nonprim : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        album_type && !cJSON_IsNull(album_type) ? strdup(album_type->valuestring) : NULL,
        assets ? assetsList : NULL,
        cover_asset ? cover_asset_local_nonprim : NULL,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        contact_info ? contact_info_local_nonprim : NULL,
        asset_count ? asset_count->valuedouble : 0,
        favorite_count ? favorite_count->valuedouble : 0,
        viewed_count ? viewed_count->valuedouble : 0,
        clicked_count ? clicked_count->valuedouble : 0,
        shared_count ? shared_count->valuedouble : 0,
        anonymous ? anonymous->valueint : 0,
        owner_username && !cJSON_IsNull(owner_username) ? strdup(owner_username->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        billable_id ? billable_id->valuedouble : 0,
        sub_type && !cJSON_IsNull(sub_type) ? strdup(sub_type->valuestring) : NULL,
        content_asset ? content_asset_local_nonprim : NULL,
        secondary_type && !cJSON_IsNull(secondary_type) ? strdup(secondary_type->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        application_title && !cJSON_IsNull(application_title) ? strdup(application_title->valuestring) : NULL,
        short_title && !cJSON_IsNull(short_title) ? strdup(short_title->valuestring) : NULL,
        default_threshold ? default_threshold->valuedouble : 0
        );

    return album_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (public_permissions_local_nonprim) {
        permissions_free(public_permissions_local_nonprim);
        public_permissions_local_nonprim = NULL;
    }
    if (user_permissionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, user_permissionsList) {
            user_permissions_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(user_permissionsList);
        user_permissionsList = NULL;
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
    if (assetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, assetsList) {
            asset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(assetsList);
        assetsList = NULL;
    }
    if (cover_asset_local_nonprim) {
        asset_free(cover_asset_local_nonprim);
        cover_asset_local_nonprim = NULL;
    }
    if (contact_info_local_nonprim) {
        contact_info_free(contact_info_local_nonprim);
        contact_info_local_nonprim = NULL;
    }
    if (content_asset_local_nonprim) {
        asset_free(content_asset_local_nonprim);
        content_asset_local_nonprim = NULL;
    }
    return NULL;

}
