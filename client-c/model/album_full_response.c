#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "album_full_response.h"


char* album_full_response_visibility_ToString(sirqul_iot_platform_album_full_response_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_album_full_response_VISIBILITY_e album_full_response_visibility_FromString(char* visibility){
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
char* album_full_response_approval_status_ToString(sirqul_iot_platform_album_full_response_APPROVALSTATUS_e approval_status) {
    char* approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return approval_statusArray[approval_status];
}

sirqul_iot_platform_album_full_response_APPROVALSTATUS_e album_full_response_approval_status_FromString(char* approval_status){
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

static album_full_response_t *album_full_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long album_id,
    char *album_type,
    long owner_id,
    account_short_response_t *owner,
    char *title,
    char *description,
    asset_response_t *cover_asset,
    char *tags,
    sirqul_iot_platform_album_full_response_VISIBILITY_e visibility,
    long start_date,
    long end_date,
    int asset_count,
    long like_count,
    long dislike_count,
    long comments_count,
    int user_count,
    int notifications,
    double latitude,
    double longitude,
    char *location_description,
    double distance,
    long date_created,
    long date_updated,
    char *cell_phone,
    char *full_address,
    sirqul_iot_platform_album_full_response_APPROVALSTATUS_e approval_status,
    long favorite_count,
    int liked,
    int favorite,
    long favorite_id,
    int anonymous,
    long flag_count,
    long viewed_count,
    long clicked_count,
    long shared_count,
    list_t *assets,
    list_t *comments,
    list_t *likes,
    list_t *connection_groups,
    list_t *connections,
    int has_liked,
    int has_disliked,
    permissions_t *user_permissions,
    permissions_t *public_permissions,
    char *returning
    ) {
    album_full_response_t *album_full_response_local_var = malloc(sizeof(album_full_response_t));
    if (!album_full_response_local_var) {
        return NULL;
    }
    album_full_response_local_var->valid = valid;
    album_full_response_local_var->message = message;
    album_full_response_local_var->version = version;
    album_full_response_local_var->serialize_nulls = serialize_nulls;
    album_full_response_local_var->start_time_log = start_time_log;
    album_full_response_local_var->error_code = error_code;
    album_full_response_local_var->request = request;
    album_full_response_local_var->album_id = album_id;
    album_full_response_local_var->album_type = album_type;
    album_full_response_local_var->owner_id = owner_id;
    album_full_response_local_var->owner = owner;
    album_full_response_local_var->title = title;
    album_full_response_local_var->description = description;
    album_full_response_local_var->cover_asset = cover_asset;
    album_full_response_local_var->tags = tags;
    album_full_response_local_var->visibility = visibility;
    album_full_response_local_var->start_date = start_date;
    album_full_response_local_var->end_date = end_date;
    album_full_response_local_var->asset_count = asset_count;
    album_full_response_local_var->like_count = like_count;
    album_full_response_local_var->dislike_count = dislike_count;
    album_full_response_local_var->comments_count = comments_count;
    album_full_response_local_var->user_count = user_count;
    album_full_response_local_var->notifications = notifications;
    album_full_response_local_var->latitude = latitude;
    album_full_response_local_var->longitude = longitude;
    album_full_response_local_var->location_description = location_description;
    album_full_response_local_var->distance = distance;
    album_full_response_local_var->date_created = date_created;
    album_full_response_local_var->date_updated = date_updated;
    album_full_response_local_var->cell_phone = cell_phone;
    album_full_response_local_var->full_address = full_address;
    album_full_response_local_var->approval_status = approval_status;
    album_full_response_local_var->favorite_count = favorite_count;
    album_full_response_local_var->liked = liked;
    album_full_response_local_var->favorite = favorite;
    album_full_response_local_var->favorite_id = favorite_id;
    album_full_response_local_var->anonymous = anonymous;
    album_full_response_local_var->flag_count = flag_count;
    album_full_response_local_var->viewed_count = viewed_count;
    album_full_response_local_var->clicked_count = clicked_count;
    album_full_response_local_var->shared_count = shared_count;
    album_full_response_local_var->assets = assets;
    album_full_response_local_var->comments = comments;
    album_full_response_local_var->likes = likes;
    album_full_response_local_var->connection_groups = connection_groups;
    album_full_response_local_var->connections = connections;
    album_full_response_local_var->has_liked = has_liked;
    album_full_response_local_var->has_disliked = has_disliked;
    album_full_response_local_var->user_permissions = user_permissions;
    album_full_response_local_var->public_permissions = public_permissions;
    album_full_response_local_var->returning = returning;

    album_full_response_local_var->_library_owned = 1;
    return album_full_response_local_var;
}

__attribute__((deprecated)) album_full_response_t *album_full_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long album_id,
    char *album_type,
    long owner_id,
    account_short_response_t *owner,
    char *title,
    char *description,
    asset_response_t *cover_asset,
    char *tags,
    sirqul_iot_platform_album_full_response_VISIBILITY_e visibility,
    long start_date,
    long end_date,
    int asset_count,
    long like_count,
    long dislike_count,
    long comments_count,
    int user_count,
    int notifications,
    double latitude,
    double longitude,
    char *location_description,
    double distance,
    long date_created,
    long date_updated,
    char *cell_phone,
    char *full_address,
    sirqul_iot_platform_album_full_response_APPROVALSTATUS_e approval_status,
    long favorite_count,
    int liked,
    int favorite,
    long favorite_id,
    int anonymous,
    long flag_count,
    long viewed_count,
    long clicked_count,
    long shared_count,
    list_t *assets,
    list_t *comments,
    list_t *likes,
    list_t *connection_groups,
    list_t *connections,
    int has_liked,
    int has_disliked,
    permissions_t *user_permissions,
    permissions_t *public_permissions,
    char *returning
    ) {
    return album_full_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        album_id,
        album_type,
        owner_id,
        owner,
        title,
        description,
        cover_asset,
        tags,
        visibility,
        start_date,
        end_date,
        asset_count,
        like_count,
        dislike_count,
        comments_count,
        user_count,
        notifications,
        latitude,
        longitude,
        location_description,
        distance,
        date_created,
        date_updated,
        cell_phone,
        full_address,
        approval_status,
        favorite_count,
        liked,
        favorite,
        favorite_id,
        anonymous,
        flag_count,
        viewed_count,
        clicked_count,
        shared_count,
        assets,
        comments,
        likes,
        connection_groups,
        connections,
        has_liked,
        has_disliked,
        user_permissions,
        public_permissions,
        returning
        );
}

void album_full_response_free(album_full_response_t *album_full_response) {
    if(NULL == album_full_response){
        return ;
    }
    if(album_full_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "album_full_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (album_full_response->message) {
        free(album_full_response->message);
        album_full_response->message = NULL;
    }
    if (album_full_response->error_code) {
        free(album_full_response->error_code);
        album_full_response->error_code = NULL;
    }
    if (album_full_response->request) {
        list_ForEach(listEntry, album_full_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(album_full_response->request);
        album_full_response->request = NULL;
    }
    if (album_full_response->album_type) {
        free(album_full_response->album_type);
        album_full_response->album_type = NULL;
    }
    if (album_full_response->owner) {
        account_short_response_free(album_full_response->owner);
        album_full_response->owner = NULL;
    }
    if (album_full_response->title) {
        free(album_full_response->title);
        album_full_response->title = NULL;
    }
    if (album_full_response->description) {
        free(album_full_response->description);
        album_full_response->description = NULL;
    }
    if (album_full_response->cover_asset) {
        asset_response_free(album_full_response->cover_asset);
        album_full_response->cover_asset = NULL;
    }
    if (album_full_response->tags) {
        free(album_full_response->tags);
        album_full_response->tags = NULL;
    }
    if (album_full_response->location_description) {
        free(album_full_response->location_description);
        album_full_response->location_description = NULL;
    }
    if (album_full_response->cell_phone) {
        free(album_full_response->cell_phone);
        album_full_response->cell_phone = NULL;
    }
    if (album_full_response->full_address) {
        free(album_full_response->full_address);
        album_full_response->full_address = NULL;
    }
    if (album_full_response->assets) {
        list_ForEach(listEntry, album_full_response->assets) {
            asset_response_free(listEntry->data);
        }
        list_freeList(album_full_response->assets);
        album_full_response->assets = NULL;
    }
    if (album_full_response->comments) {
        list_ForEach(listEntry, album_full_response->comments) {
            note_full_response_free(listEntry->data);
        }
        list_freeList(album_full_response->comments);
        album_full_response->comments = NULL;
    }
    if (album_full_response->likes) {
        list_ForEach(listEntry, album_full_response->likes) {
            like_response_free(listEntry->data);
        }
        list_freeList(album_full_response->likes);
        album_full_response->likes = NULL;
    }
    if (album_full_response->connection_groups) {
        list_ForEach(listEntry, album_full_response->connection_groups) {
            connection_group_short_response_free(listEntry->data);
        }
        list_freeList(album_full_response->connection_groups);
        album_full_response->connection_groups = NULL;
    }
    if (album_full_response->connections) {
        list_ForEach(listEntry, album_full_response->connections) {
            connection_response_free(listEntry->data);
        }
        list_freeList(album_full_response->connections);
        album_full_response->connections = NULL;
    }
    if (album_full_response->user_permissions) {
        permissions_free(album_full_response->user_permissions);
        album_full_response->user_permissions = NULL;
    }
    if (album_full_response->public_permissions) {
        permissions_free(album_full_response->public_permissions);
        album_full_response->public_permissions = NULL;
    }
    if (album_full_response->returning) {
        free(album_full_response->returning);
        album_full_response->returning = NULL;
    }
    free(album_full_response);
}

cJSON *album_full_response_convertToJSON(album_full_response_t *album_full_response) {
    cJSON *item = cJSON_CreateObject();

    // album_full_response->valid
    if(album_full_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", album_full_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->message
    if(album_full_response->message) {
    if(cJSON_AddStringToObject(item, "message", album_full_response->message) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->version
    if(album_full_response->version) {
    if(cJSON_AddNumberToObject(item, "version", album_full_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->serialize_nulls
    if(album_full_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", album_full_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->start_time_log
    if(album_full_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", album_full_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->error_code
    if(album_full_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", album_full_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->request
    if(album_full_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (album_full_response->request) {
    list_ForEach(requestListEntry, album_full_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // album_full_response->album_id
    if(album_full_response->album_id) {
    if(cJSON_AddNumberToObject(item, "albumId", album_full_response->album_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->album_type
    if(album_full_response->album_type) {
    if(cJSON_AddStringToObject(item, "albumType", album_full_response->album_type) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->owner_id
    if(album_full_response->owner_id) {
    if(cJSON_AddNumberToObject(item, "ownerId", album_full_response->owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->owner
    if(album_full_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(album_full_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_full_response->title
    if(album_full_response->title) {
    if(cJSON_AddStringToObject(item, "title", album_full_response->title) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->description
    if(album_full_response->description) {
    if(cJSON_AddStringToObject(item, "description", album_full_response->description) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->cover_asset
    if(album_full_response->cover_asset) {
    cJSON *cover_asset_local_JSON = asset_response_convertToJSON(album_full_response->cover_asset);
    if(cover_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "coverAsset", cover_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_full_response->tags
    if(album_full_response->tags) {
    if(cJSON_AddStringToObject(item, "tags", album_full_response->tags) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->visibility
    if(album_full_response->visibility != sirqul_iot_platform_album_full_response_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", album_full_response_visibility_ToString(album_full_response->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // album_full_response->start_date
    if(album_full_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", album_full_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->end_date
    if(album_full_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", album_full_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->asset_count
    if(album_full_response->asset_count) {
    if(cJSON_AddNumberToObject(item, "assetCount", album_full_response->asset_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->like_count
    if(album_full_response->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", album_full_response->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->dislike_count
    if(album_full_response->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", album_full_response->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->comments_count
    if(album_full_response->comments_count) {
    if(cJSON_AddNumberToObject(item, "commentsCount", album_full_response->comments_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->user_count
    if(album_full_response->user_count) {
    if(cJSON_AddNumberToObject(item, "userCount", album_full_response->user_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->notifications
    if(album_full_response->notifications) {
    if(cJSON_AddBoolToObject(item, "notifications", album_full_response->notifications) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->latitude
    if(album_full_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", album_full_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->longitude
    if(album_full_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", album_full_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->location_description
    if(album_full_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", album_full_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->distance
    if(album_full_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", album_full_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->date_created
    if(album_full_response->date_created) {
    if(cJSON_AddNumberToObject(item, "dateCreated", album_full_response->date_created) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->date_updated
    if(album_full_response->date_updated) {
    if(cJSON_AddNumberToObject(item, "dateUpdated", album_full_response->date_updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->cell_phone
    if(album_full_response->cell_phone) {
    if(cJSON_AddStringToObject(item, "cellPhone", album_full_response->cell_phone) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->full_address
    if(album_full_response->full_address) {
    if(cJSON_AddStringToObject(item, "fullAddress", album_full_response->full_address) == NULL) {
    goto fail; //String
    }
    }


    // album_full_response->approval_status
    if(album_full_response->approval_status != sirqul_iot_platform_album_full_response_APPROVALSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "approvalStatus", album_full_response_approval_status_ToString(album_full_response->approval_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // album_full_response->favorite_count
    if(album_full_response->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", album_full_response->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->liked
    if(album_full_response->liked) {
    if(cJSON_AddBoolToObject(item, "liked", album_full_response->liked) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->favorite
    if(album_full_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", album_full_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->favorite_id
    if(album_full_response->favorite_id) {
    if(cJSON_AddNumberToObject(item, "favoriteId", album_full_response->favorite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->anonymous
    if(album_full_response->anonymous) {
    if(cJSON_AddBoolToObject(item, "anonymous", album_full_response->anonymous) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->flag_count
    if(album_full_response->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", album_full_response->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->viewed_count
    if(album_full_response->viewed_count) {
    if(cJSON_AddNumberToObject(item, "viewedCount", album_full_response->viewed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->clicked_count
    if(album_full_response->clicked_count) {
    if(cJSON_AddNumberToObject(item, "clickedCount", album_full_response->clicked_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->shared_count
    if(album_full_response->shared_count) {
    if(cJSON_AddNumberToObject(item, "sharedCount", album_full_response->shared_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_full_response->assets
    if(album_full_response->assets) {
    cJSON *assets = cJSON_AddArrayToObject(item, "assets");
    if(assets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *assetsListEntry;
    if (album_full_response->assets) {
    list_ForEach(assetsListEntry, album_full_response->assets) {
    cJSON *itemLocal = asset_response_convertToJSON(assetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(assets, itemLocal);
    }
    }
    }


    // album_full_response->comments
    if(album_full_response->comments) {
    cJSON *comments = cJSON_AddArrayToObject(item, "comments");
    if(comments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *commentsListEntry;
    if (album_full_response->comments) {
    list_ForEach(commentsListEntry, album_full_response->comments) {
    cJSON *itemLocal = note_full_response_convertToJSON(commentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(comments, itemLocal);
    }
    }
    }


    // album_full_response->likes
    if(album_full_response->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (album_full_response->likes) {
    list_ForEach(likesListEntry, album_full_response->likes) {
    cJSON *itemLocal = like_response_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // album_full_response->connection_groups
    if(album_full_response->connection_groups) {
    cJSON *connection_groups = cJSON_AddArrayToObject(item, "connectionGroups");
    if(connection_groups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connection_groupsListEntry;
    if (album_full_response->connection_groups) {
    list_ForEach(connection_groupsListEntry, album_full_response->connection_groups) {
    cJSON *itemLocal = connection_group_short_response_convertToJSON(connection_groupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connection_groups, itemLocal);
    }
    }
    }


    // album_full_response->connections
    if(album_full_response->connections) {
    cJSON *connections = cJSON_AddArrayToObject(item, "connections");
    if(connections == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connectionsListEntry;
    if (album_full_response->connections) {
    list_ForEach(connectionsListEntry, album_full_response->connections) {
    cJSON *itemLocal = connection_response_convertToJSON(connectionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connections, itemLocal);
    }
    }
    }


    // album_full_response->has_liked
    if(album_full_response->has_liked) {
    if(cJSON_AddBoolToObject(item, "hasLiked", album_full_response->has_liked) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->has_disliked
    if(album_full_response->has_disliked) {
    if(cJSON_AddBoolToObject(item, "hasDisliked", album_full_response->has_disliked) == NULL) {
    goto fail; //Bool
    }
    }


    // album_full_response->user_permissions
    if(album_full_response->user_permissions) {
    cJSON *user_permissions_local_JSON = permissions_convertToJSON(album_full_response->user_permissions);
    if(user_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userPermissions", user_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_full_response->public_permissions
    if(album_full_response->public_permissions) {
    cJSON *public_permissions_local_JSON = permissions_convertToJSON(album_full_response->public_permissions);
    if(public_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "publicPermissions", public_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_full_response->returning
    if(album_full_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", album_full_response->returning) == NULL) {
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

album_full_response_t *album_full_response_parseFromJSON(cJSON *album_full_responseJSON){

    album_full_response_t *album_full_response_local_var = NULL;

    // define the local list for album_full_response->request
    list_t *requestList = NULL;

    // define the local variable for album_full_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for album_full_response->cover_asset
    asset_response_t *cover_asset_local_nonprim = NULL;

    // define the local list for album_full_response->assets
    list_t *assetsList = NULL;

    // define the local list for album_full_response->comments
    list_t *commentsList = NULL;

    // define the local list for album_full_response->likes
    list_t *likesList = NULL;

    // define the local list for album_full_response->connection_groups
    list_t *connection_groupsList = NULL;

    // define the local list for album_full_response->connections
    list_t *connectionsList = NULL;

    // define the local variable for album_full_response->user_permissions
    permissions_t *user_permissions_local_nonprim = NULL;

    // define the local variable for album_full_response->public_permissions
    permissions_t *public_permissions_local_nonprim = NULL;

    // album_full_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // album_full_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // album_full_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // album_full_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // album_full_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "request");
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

    // album_full_response->album_id
    cJSON *album_id = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "albumId");
    if (cJSON_IsNull(album_id)) {
        album_id = NULL;
    }
    if (album_id) { 
    if(!cJSON_IsNumber(album_id))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->album_type
    cJSON *album_type = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "albumType");
    if (cJSON_IsNull(album_type)) {
        album_type = NULL;
    }
    if (album_type) { 
    if(!cJSON_IsString(album_type) && !cJSON_IsNull(album_type))
    {
    goto end; //String
    }
    }

    // album_full_response->owner_id
    cJSON *owner_id = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "ownerId");
    if (cJSON_IsNull(owner_id)) {
        owner_id = NULL;
    }
    if (owner_id) { 
    if(!cJSON_IsNumber(owner_id))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // album_full_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // album_full_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // album_full_response->cover_asset
    cJSON *cover_asset = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "coverAsset");
    if (cJSON_IsNull(cover_asset)) {
        cover_asset = NULL;
    }
    if (cover_asset) { 
    cover_asset_local_nonprim = asset_response_parseFromJSON(cover_asset); //nonprimitive
    }

    // album_full_response->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }

    // album_full_response->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_album_full_response_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = album_full_response_visibility_FromString(visibility->valuestring);
    }

    // album_full_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->asset_count
    cJSON *asset_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "assetCount");
    if (cJSON_IsNull(asset_count)) {
        asset_count = NULL;
    }
    if (asset_count) { 
    if(!cJSON_IsNumber(asset_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->comments_count
    cJSON *comments_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "commentsCount");
    if (cJSON_IsNull(comments_count)) {
        comments_count = NULL;
    }
    if (comments_count) { 
    if(!cJSON_IsNumber(comments_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->user_count
    cJSON *user_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "userCount");
    if (cJSON_IsNull(user_count)) {
        user_count = NULL;
    }
    if (user_count) { 
    if(!cJSON_IsNumber(user_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->notifications
    cJSON *notifications = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "notifications");
    if (cJSON_IsNull(notifications)) {
        notifications = NULL;
    }
    if (notifications) { 
    if(!cJSON_IsBool(notifications))
    {
    goto end; //Bool
    }
    }

    // album_full_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // album_full_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->date_created
    cJSON *date_created = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "dateCreated");
    if (cJSON_IsNull(date_created)) {
        date_created = NULL;
    }
    if (date_created) { 
    if(!cJSON_IsNumber(date_created))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->date_updated
    cJSON *date_updated = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "dateUpdated");
    if (cJSON_IsNull(date_updated)) {
        date_updated = NULL;
    }
    if (date_updated) { 
    if(!cJSON_IsNumber(date_updated))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->cell_phone
    cJSON *cell_phone = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "cellPhone");
    if (cJSON_IsNull(cell_phone)) {
        cell_phone = NULL;
    }
    if (cell_phone) { 
    if(!cJSON_IsString(cell_phone) && !cJSON_IsNull(cell_phone))
    {
    goto end; //String
    }
    }

    // album_full_response->full_address
    cJSON *full_address = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "fullAddress");
    if (cJSON_IsNull(full_address)) {
        full_address = NULL;
    }
    if (full_address) { 
    if(!cJSON_IsString(full_address) && !cJSON_IsNull(full_address))
    {
    goto end; //String
    }
    }

    // album_full_response->approval_status
    cJSON *approval_status = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "approvalStatus");
    if (cJSON_IsNull(approval_status)) {
        approval_status = NULL;
    }
    sirqul_iot_platform_album_full_response_APPROVALSTATUS_e approval_statusVariable;
    if (approval_status) { 
    if(!cJSON_IsString(approval_status))
    {
    goto end; //Enum
    }
    approval_statusVariable = album_full_response_approval_status_FromString(approval_status->valuestring);
    }

    // album_full_response->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->liked
    cJSON *liked = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "liked");
    if (cJSON_IsNull(liked)) {
        liked = NULL;
    }
    if (liked) { 
    if(!cJSON_IsBool(liked))
    {
    goto end; //Bool
    }
    }

    // album_full_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }

    // album_full_response->favorite_id
    cJSON *favorite_id = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "favoriteId");
    if (cJSON_IsNull(favorite_id)) {
        favorite_id = NULL;
    }
    if (favorite_id) { 
    if(!cJSON_IsNumber(favorite_id))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->anonymous
    cJSON *anonymous = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "anonymous");
    if (cJSON_IsNull(anonymous)) {
        anonymous = NULL;
    }
    if (anonymous) { 
    if(!cJSON_IsBool(anonymous))
    {
    goto end; //Bool
    }
    }

    // album_full_response->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->viewed_count
    cJSON *viewed_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "viewedCount");
    if (cJSON_IsNull(viewed_count)) {
        viewed_count = NULL;
    }
    if (viewed_count) { 
    if(!cJSON_IsNumber(viewed_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->clicked_count
    cJSON *clicked_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "clickedCount");
    if (cJSON_IsNull(clicked_count)) {
        clicked_count = NULL;
    }
    if (clicked_count) { 
    if(!cJSON_IsNumber(clicked_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->shared_count
    cJSON *shared_count = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "sharedCount");
    if (cJSON_IsNull(shared_count)) {
        shared_count = NULL;
    }
    if (shared_count) { 
    if(!cJSON_IsNumber(shared_count))
    {
    goto end; //Numeric
    }
    }

    // album_full_response->assets
    cJSON *assets = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "assets");
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
        asset_response_t *assetsItem = asset_response_parseFromJSON(assets_local_nonprimitive);

        list_addElement(assetsList, assetsItem);
    }
    }

    // album_full_response->comments
    cJSON *comments = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "comments");
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

    // album_full_response->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "likes");
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

    // album_full_response->connection_groups
    cJSON *connection_groups = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "connectionGroups");
    if (cJSON_IsNull(connection_groups)) {
        connection_groups = NULL;
    }
    if (connection_groups) { 
    cJSON *connection_groups_local_nonprimitive = NULL;
    if(!cJSON_IsArray(connection_groups)){
        goto end; //nonprimitive container
    }

    connection_groupsList = list_createList();

    cJSON_ArrayForEach(connection_groups_local_nonprimitive,connection_groups )
    {
        if(!cJSON_IsObject(connection_groups_local_nonprimitive)){
            goto end;
        }
        connection_group_short_response_t *connection_groupsItem = connection_group_short_response_parseFromJSON(connection_groups_local_nonprimitive);

        list_addElement(connection_groupsList, connection_groupsItem);
    }
    }

    // album_full_response->connections
    cJSON *connections = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "connections");
    if (cJSON_IsNull(connections)) {
        connections = NULL;
    }
    if (connections) { 
    cJSON *connections_local_nonprimitive = NULL;
    if(!cJSON_IsArray(connections)){
        goto end; //nonprimitive container
    }

    connectionsList = list_createList();

    cJSON_ArrayForEach(connections_local_nonprimitive,connections )
    {
        if(!cJSON_IsObject(connections_local_nonprimitive)){
            goto end;
        }
        connection_response_t *connectionsItem = connection_response_parseFromJSON(connections_local_nonprimitive);

        list_addElement(connectionsList, connectionsItem);
    }
    }

    // album_full_response->has_liked
    cJSON *has_liked = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "hasLiked");
    if (cJSON_IsNull(has_liked)) {
        has_liked = NULL;
    }
    if (has_liked) { 
    if(!cJSON_IsBool(has_liked))
    {
    goto end; //Bool
    }
    }

    // album_full_response->has_disliked
    cJSON *has_disliked = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "hasDisliked");
    if (cJSON_IsNull(has_disliked)) {
        has_disliked = NULL;
    }
    if (has_disliked) { 
    if(!cJSON_IsBool(has_disliked))
    {
    goto end; //Bool
    }
    }

    // album_full_response->user_permissions
    cJSON *user_permissions = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "userPermissions");
    if (cJSON_IsNull(user_permissions)) {
        user_permissions = NULL;
    }
    if (user_permissions) { 
    user_permissions_local_nonprim = permissions_parseFromJSON(user_permissions); //nonprimitive
    }

    // album_full_response->public_permissions
    cJSON *public_permissions = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "publicPermissions");
    if (cJSON_IsNull(public_permissions)) {
        public_permissions = NULL;
    }
    if (public_permissions) { 
    public_permissions_local_nonprim = permissions_parseFromJSON(public_permissions); //nonprimitive
    }

    // album_full_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(album_full_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    album_full_response_local_var = album_full_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        album_id ? album_id->valuedouble : 0,
        album_type && !cJSON_IsNull(album_type) ? strdup(album_type->valuestring) : NULL,
        owner_id ? owner_id->valuedouble : 0,
        owner ? owner_local_nonprim : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        cover_asset ? cover_asset_local_nonprim : NULL,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_album_full_response_VISIBILITY_NULL,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        asset_count ? asset_count->valuedouble : 0,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        comments_count ? comments_count->valuedouble : 0,
        user_count ? user_count->valuedouble : 0,
        notifications ? notifications->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        distance ? distance->valuedouble : 0,
        date_created ? date_created->valuedouble : 0,
        date_updated ? date_updated->valuedouble : 0,
        cell_phone && !cJSON_IsNull(cell_phone) ? strdup(cell_phone->valuestring) : NULL,
        full_address && !cJSON_IsNull(full_address) ? strdup(full_address->valuestring) : NULL,
        approval_status ? approval_statusVariable : sirqul_iot_platform_album_full_response_APPROVALSTATUS_NULL,
        favorite_count ? favorite_count->valuedouble : 0,
        liked ? liked->valueint : 0,
        favorite ? favorite->valueint : 0,
        favorite_id ? favorite_id->valuedouble : 0,
        anonymous ? anonymous->valueint : 0,
        flag_count ? flag_count->valuedouble : 0,
        viewed_count ? viewed_count->valuedouble : 0,
        clicked_count ? clicked_count->valuedouble : 0,
        shared_count ? shared_count->valuedouble : 0,
        assets ? assetsList : NULL,
        comments ? commentsList : NULL,
        likes ? likesList : NULL,
        connection_groups ? connection_groupsList : NULL,
        connections ? connectionsList : NULL,
        has_liked ? has_liked->valueint : 0,
        has_disliked ? has_disliked->valueint : 0,
        user_permissions ? user_permissions_local_nonprim : NULL,
        public_permissions ? public_permissions_local_nonprim : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return album_full_response_local_var;
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
    if (cover_asset_local_nonprim) {
        asset_response_free(cover_asset_local_nonprim);
        cover_asset_local_nonprim = NULL;
    }
    if (assetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, assetsList) {
            asset_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(assetsList);
        assetsList = NULL;
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
    if (connection_groupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, connection_groupsList) {
            connection_group_short_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(connection_groupsList);
        connection_groupsList = NULL;
    }
    if (connectionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, connectionsList) {
            connection_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(connectionsList);
        connectionsList = NULL;
    }
    if (user_permissions_local_nonprim) {
        permissions_free(user_permissions_local_nonprim);
        user_permissions_local_nonprim = NULL;
    }
    if (public_permissions_local_nonprim) {
        permissions_free(public_permissions_local_nonprim);
        public_permissions_local_nonprim = NULL;
    }
    return NULL;

}
