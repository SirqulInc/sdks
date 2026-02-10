#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "album_contest_response.h"


char* album_contest_response_visibility_ToString(sirqul_iot_platform_album_contest_response_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_album_contest_response_VISIBILITY_e album_contest_response_visibility_FromString(char* visibility){
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
char* album_contest_response_approval_status_ToString(sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e approval_status) {
    char* approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return approval_statusArray[approval_status];
}

sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e album_contest_response_approval_status_FromString(char* approval_status){
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

static album_contest_response_t *album_contest_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long album_contest_id,
    char *contest_type,
    account_short_response_t *owner,
    char *title,
    char *description,
    sirqul_iot_platform_album_contest_response_VISIBILITY_e visibility,
    long start_date,
    long end_date,
    long like_count,
    long dislike_count,
    int comments_count,
    int user_count,
    list_t *comments,
    list_t *likes,
    list_t *connection_groups,
    list_t *connections,
    int has_liked,
    permissions_t *user_permissions,
    permissions_t *public_permissions,
    album_full_response_t *album1,
    album_full_response_t *album2,
    double latitude,
    double longitude,
    char *location_description,
    double distance,
    long date_created,
    long date_updated,
    sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e approval_status,
    long vote_count,
    char *returning
    ) {
    album_contest_response_t *album_contest_response_local_var = malloc(sizeof(album_contest_response_t));
    if (!album_contest_response_local_var) {
        return NULL;
    }
    album_contest_response_local_var->valid = valid;
    album_contest_response_local_var->message = message;
    album_contest_response_local_var->version = version;
    album_contest_response_local_var->serialize_nulls = serialize_nulls;
    album_contest_response_local_var->start_time_log = start_time_log;
    album_contest_response_local_var->error_code = error_code;
    album_contest_response_local_var->request = request;
    album_contest_response_local_var->album_contest_id = album_contest_id;
    album_contest_response_local_var->contest_type = contest_type;
    album_contest_response_local_var->owner = owner;
    album_contest_response_local_var->title = title;
    album_contest_response_local_var->description = description;
    album_contest_response_local_var->visibility = visibility;
    album_contest_response_local_var->start_date = start_date;
    album_contest_response_local_var->end_date = end_date;
    album_contest_response_local_var->like_count = like_count;
    album_contest_response_local_var->dislike_count = dislike_count;
    album_contest_response_local_var->comments_count = comments_count;
    album_contest_response_local_var->user_count = user_count;
    album_contest_response_local_var->comments = comments;
    album_contest_response_local_var->likes = likes;
    album_contest_response_local_var->connection_groups = connection_groups;
    album_contest_response_local_var->connections = connections;
    album_contest_response_local_var->has_liked = has_liked;
    album_contest_response_local_var->user_permissions = user_permissions;
    album_contest_response_local_var->public_permissions = public_permissions;
    album_contest_response_local_var->album1 = album1;
    album_contest_response_local_var->album2 = album2;
    album_contest_response_local_var->latitude = latitude;
    album_contest_response_local_var->longitude = longitude;
    album_contest_response_local_var->location_description = location_description;
    album_contest_response_local_var->distance = distance;
    album_contest_response_local_var->date_created = date_created;
    album_contest_response_local_var->date_updated = date_updated;
    album_contest_response_local_var->approval_status = approval_status;
    album_contest_response_local_var->vote_count = vote_count;
    album_contest_response_local_var->returning = returning;

    album_contest_response_local_var->_library_owned = 1;
    return album_contest_response_local_var;
}

__attribute__((deprecated)) album_contest_response_t *album_contest_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long album_contest_id,
    char *contest_type,
    account_short_response_t *owner,
    char *title,
    char *description,
    sirqul_iot_platform_album_contest_response_VISIBILITY_e visibility,
    long start_date,
    long end_date,
    long like_count,
    long dislike_count,
    int comments_count,
    int user_count,
    list_t *comments,
    list_t *likes,
    list_t *connection_groups,
    list_t *connections,
    int has_liked,
    permissions_t *user_permissions,
    permissions_t *public_permissions,
    album_full_response_t *album1,
    album_full_response_t *album2,
    double latitude,
    double longitude,
    char *location_description,
    double distance,
    long date_created,
    long date_updated,
    sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e approval_status,
    long vote_count,
    char *returning
    ) {
    return album_contest_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        album_contest_id,
        contest_type,
        owner,
        title,
        description,
        visibility,
        start_date,
        end_date,
        like_count,
        dislike_count,
        comments_count,
        user_count,
        comments,
        likes,
        connection_groups,
        connections,
        has_liked,
        user_permissions,
        public_permissions,
        album1,
        album2,
        latitude,
        longitude,
        location_description,
        distance,
        date_created,
        date_updated,
        approval_status,
        vote_count,
        returning
        );
}

void album_contest_response_free(album_contest_response_t *album_contest_response) {
    if(NULL == album_contest_response){
        return ;
    }
    if(album_contest_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "album_contest_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (album_contest_response->message) {
        free(album_contest_response->message);
        album_contest_response->message = NULL;
    }
    if (album_contest_response->error_code) {
        free(album_contest_response->error_code);
        album_contest_response->error_code = NULL;
    }
    if (album_contest_response->request) {
        list_ForEach(listEntry, album_contest_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(album_contest_response->request);
        album_contest_response->request = NULL;
    }
    if (album_contest_response->contest_type) {
        free(album_contest_response->contest_type);
        album_contest_response->contest_type = NULL;
    }
    if (album_contest_response->owner) {
        account_short_response_free(album_contest_response->owner);
        album_contest_response->owner = NULL;
    }
    if (album_contest_response->title) {
        free(album_contest_response->title);
        album_contest_response->title = NULL;
    }
    if (album_contest_response->description) {
        free(album_contest_response->description);
        album_contest_response->description = NULL;
    }
    if (album_contest_response->comments) {
        list_ForEach(listEntry, album_contest_response->comments) {
            note_full_response_free(listEntry->data);
        }
        list_freeList(album_contest_response->comments);
        album_contest_response->comments = NULL;
    }
    if (album_contest_response->likes) {
        list_ForEach(listEntry, album_contest_response->likes) {
            like_response_free(listEntry->data);
        }
        list_freeList(album_contest_response->likes);
        album_contest_response->likes = NULL;
    }
    if (album_contest_response->connection_groups) {
        list_ForEach(listEntry, album_contest_response->connection_groups) {
            connection_group_short_response_free(listEntry->data);
        }
        list_freeList(album_contest_response->connection_groups);
        album_contest_response->connection_groups = NULL;
    }
    if (album_contest_response->connections) {
        list_ForEach(listEntry, album_contest_response->connections) {
            connection_response_free(listEntry->data);
        }
        list_freeList(album_contest_response->connections);
        album_contest_response->connections = NULL;
    }
    if (album_contest_response->user_permissions) {
        permissions_free(album_contest_response->user_permissions);
        album_contest_response->user_permissions = NULL;
    }
    if (album_contest_response->public_permissions) {
        permissions_free(album_contest_response->public_permissions);
        album_contest_response->public_permissions = NULL;
    }
    if (album_contest_response->album1) {
        album_full_response_free(album_contest_response->album1);
        album_contest_response->album1 = NULL;
    }
    if (album_contest_response->album2) {
        album_full_response_free(album_contest_response->album2);
        album_contest_response->album2 = NULL;
    }
    if (album_contest_response->location_description) {
        free(album_contest_response->location_description);
        album_contest_response->location_description = NULL;
    }
    if (album_contest_response->returning) {
        free(album_contest_response->returning);
        album_contest_response->returning = NULL;
    }
    free(album_contest_response);
}

cJSON *album_contest_response_convertToJSON(album_contest_response_t *album_contest_response) {
    cJSON *item = cJSON_CreateObject();

    // album_contest_response->valid
    if(album_contest_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", album_contest_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // album_contest_response->message
    if(album_contest_response->message) {
    if(cJSON_AddStringToObject(item, "message", album_contest_response->message) == NULL) {
    goto fail; //String
    }
    }


    // album_contest_response->version
    if(album_contest_response->version) {
    if(cJSON_AddNumberToObject(item, "version", album_contest_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->serialize_nulls
    if(album_contest_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", album_contest_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // album_contest_response->start_time_log
    if(album_contest_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", album_contest_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->error_code
    if(album_contest_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", album_contest_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // album_contest_response->request
    if(album_contest_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (album_contest_response->request) {
    list_ForEach(requestListEntry, album_contest_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // album_contest_response->album_contest_id
    if(album_contest_response->album_contest_id) {
    if(cJSON_AddNumberToObject(item, "albumContestId", album_contest_response->album_contest_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->contest_type
    if(album_contest_response->contest_type) {
    if(cJSON_AddStringToObject(item, "contestType", album_contest_response->contest_type) == NULL) {
    goto fail; //String
    }
    }


    // album_contest_response->owner
    if(album_contest_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(album_contest_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_contest_response->title
    if(album_contest_response->title) {
    if(cJSON_AddStringToObject(item, "title", album_contest_response->title) == NULL) {
    goto fail; //String
    }
    }


    // album_contest_response->description
    if(album_contest_response->description) {
    if(cJSON_AddStringToObject(item, "description", album_contest_response->description) == NULL) {
    goto fail; //String
    }
    }


    // album_contest_response->visibility
    if(album_contest_response->visibility != sirqul_iot_platform_album_contest_response_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", album_contest_response_visibility_ToString(album_contest_response->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // album_contest_response->start_date
    if(album_contest_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", album_contest_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->end_date
    if(album_contest_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", album_contest_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->like_count
    if(album_contest_response->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", album_contest_response->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->dislike_count
    if(album_contest_response->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", album_contest_response->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->comments_count
    if(album_contest_response->comments_count) {
    if(cJSON_AddNumberToObject(item, "commentsCount", album_contest_response->comments_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->user_count
    if(album_contest_response->user_count) {
    if(cJSON_AddNumberToObject(item, "userCount", album_contest_response->user_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->comments
    if(album_contest_response->comments) {
    cJSON *comments = cJSON_AddArrayToObject(item, "comments");
    if(comments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *commentsListEntry;
    if (album_contest_response->comments) {
    list_ForEach(commentsListEntry, album_contest_response->comments) {
    cJSON *itemLocal = note_full_response_convertToJSON(commentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(comments, itemLocal);
    }
    }
    }


    // album_contest_response->likes
    if(album_contest_response->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (album_contest_response->likes) {
    list_ForEach(likesListEntry, album_contest_response->likes) {
    cJSON *itemLocal = like_response_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // album_contest_response->connection_groups
    if(album_contest_response->connection_groups) {
    cJSON *connection_groups = cJSON_AddArrayToObject(item, "connectionGroups");
    if(connection_groups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connection_groupsListEntry;
    if (album_contest_response->connection_groups) {
    list_ForEach(connection_groupsListEntry, album_contest_response->connection_groups) {
    cJSON *itemLocal = connection_group_short_response_convertToJSON(connection_groupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connection_groups, itemLocal);
    }
    }
    }


    // album_contest_response->connections
    if(album_contest_response->connections) {
    cJSON *connections = cJSON_AddArrayToObject(item, "connections");
    if(connections == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connectionsListEntry;
    if (album_contest_response->connections) {
    list_ForEach(connectionsListEntry, album_contest_response->connections) {
    cJSON *itemLocal = connection_response_convertToJSON(connectionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connections, itemLocal);
    }
    }
    }


    // album_contest_response->has_liked
    if(album_contest_response->has_liked) {
    if(cJSON_AddBoolToObject(item, "hasLiked", album_contest_response->has_liked) == NULL) {
    goto fail; //Bool
    }
    }


    // album_contest_response->user_permissions
    if(album_contest_response->user_permissions) {
    cJSON *user_permissions_local_JSON = permissions_convertToJSON(album_contest_response->user_permissions);
    if(user_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userPermissions", user_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_contest_response->public_permissions
    if(album_contest_response->public_permissions) {
    cJSON *public_permissions_local_JSON = permissions_convertToJSON(album_contest_response->public_permissions);
    if(public_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "publicPermissions", public_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_contest_response->album1
    if(album_contest_response->album1) {
    cJSON *album1_local_JSON = album_full_response_convertToJSON(album_contest_response->album1);
    if(album1_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "album1", album1_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_contest_response->album2
    if(album_contest_response->album2) {
    cJSON *album2_local_JSON = album_full_response_convertToJSON(album_contest_response->album2);
    if(album2_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "album2", album2_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // album_contest_response->latitude
    if(album_contest_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", album_contest_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->longitude
    if(album_contest_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", album_contest_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->location_description
    if(album_contest_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", album_contest_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // album_contest_response->distance
    if(album_contest_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", album_contest_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->date_created
    if(album_contest_response->date_created) {
    if(cJSON_AddNumberToObject(item, "dateCreated", album_contest_response->date_created) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->date_updated
    if(album_contest_response->date_updated) {
    if(cJSON_AddNumberToObject(item, "dateUpdated", album_contest_response->date_updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->approval_status
    if(album_contest_response->approval_status != sirqul_iot_platform_album_contest_response_APPROVALSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "approvalStatus", album_contest_response_approval_status_ToString(album_contest_response->approval_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // album_contest_response->vote_count
    if(album_contest_response->vote_count) {
    if(cJSON_AddNumberToObject(item, "voteCount", album_contest_response->vote_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // album_contest_response->returning
    if(album_contest_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", album_contest_response->returning) == NULL) {
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

album_contest_response_t *album_contest_response_parseFromJSON(cJSON *album_contest_responseJSON){

    album_contest_response_t *album_contest_response_local_var = NULL;

    // define the local list for album_contest_response->request
    list_t *requestList = NULL;

    // define the local variable for album_contest_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local list for album_contest_response->comments
    list_t *commentsList = NULL;

    // define the local list for album_contest_response->likes
    list_t *likesList = NULL;

    // define the local list for album_contest_response->connection_groups
    list_t *connection_groupsList = NULL;

    // define the local list for album_contest_response->connections
    list_t *connectionsList = NULL;

    // define the local variable for album_contest_response->user_permissions
    permissions_t *user_permissions_local_nonprim = NULL;

    // define the local variable for album_contest_response->public_permissions
    permissions_t *public_permissions_local_nonprim = NULL;

    // define the local variable for album_contest_response->album1
    album_full_response_t *album1_local_nonprim = NULL;

    // define the local variable for album_contest_response->album2
    album_full_response_t *album2_local_nonprim = NULL;

    // album_contest_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // album_contest_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // album_contest_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // album_contest_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // album_contest_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "request");
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

    // album_contest_response->album_contest_id
    cJSON *album_contest_id = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "albumContestId");
    if (cJSON_IsNull(album_contest_id)) {
        album_contest_id = NULL;
    }
    if (album_contest_id) { 
    if(!cJSON_IsNumber(album_contest_id))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->contest_type
    cJSON *contest_type = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "contestType");
    if (cJSON_IsNull(contest_type)) {
        contest_type = NULL;
    }
    if (contest_type) { 
    if(!cJSON_IsString(contest_type) && !cJSON_IsNull(contest_type))
    {
    goto end; //String
    }
    }

    // album_contest_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // album_contest_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // album_contest_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // album_contest_response->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_album_contest_response_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = album_contest_response_visibility_FromString(visibility->valuestring);
    }

    // album_contest_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->comments_count
    cJSON *comments_count = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "commentsCount");
    if (cJSON_IsNull(comments_count)) {
        comments_count = NULL;
    }
    if (comments_count) { 
    if(!cJSON_IsNumber(comments_count))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->user_count
    cJSON *user_count = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "userCount");
    if (cJSON_IsNull(user_count)) {
        user_count = NULL;
    }
    if (user_count) { 
    if(!cJSON_IsNumber(user_count))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->comments
    cJSON *comments = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "comments");
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

    // album_contest_response->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "likes");
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

    // album_contest_response->connection_groups
    cJSON *connection_groups = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "connectionGroups");
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

    // album_contest_response->connections
    cJSON *connections = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "connections");
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

    // album_contest_response->has_liked
    cJSON *has_liked = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "hasLiked");
    if (cJSON_IsNull(has_liked)) {
        has_liked = NULL;
    }
    if (has_liked) { 
    if(!cJSON_IsBool(has_liked))
    {
    goto end; //Bool
    }
    }

    // album_contest_response->user_permissions
    cJSON *user_permissions = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "userPermissions");
    if (cJSON_IsNull(user_permissions)) {
        user_permissions = NULL;
    }
    if (user_permissions) { 
    user_permissions_local_nonprim = permissions_parseFromJSON(user_permissions); //nonprimitive
    }

    // album_contest_response->public_permissions
    cJSON *public_permissions = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "publicPermissions");
    if (cJSON_IsNull(public_permissions)) {
        public_permissions = NULL;
    }
    if (public_permissions) { 
    public_permissions_local_nonprim = permissions_parseFromJSON(public_permissions); //nonprimitive
    }

    // album_contest_response->album1
    cJSON *album1 = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "album1");
    if (cJSON_IsNull(album1)) {
        album1 = NULL;
    }
    if (album1) { 
    album1_local_nonprim = album_full_response_parseFromJSON(album1); //nonprimitive
    }

    // album_contest_response->album2
    cJSON *album2 = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "album2");
    if (cJSON_IsNull(album2)) {
        album2 = NULL;
    }
    if (album2) { 
    album2_local_nonprim = album_full_response_parseFromJSON(album2); //nonprimitive
    }

    // album_contest_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // album_contest_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->date_created
    cJSON *date_created = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "dateCreated");
    if (cJSON_IsNull(date_created)) {
        date_created = NULL;
    }
    if (date_created) { 
    if(!cJSON_IsNumber(date_created))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->date_updated
    cJSON *date_updated = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "dateUpdated");
    if (cJSON_IsNull(date_updated)) {
        date_updated = NULL;
    }
    if (date_updated) { 
    if(!cJSON_IsNumber(date_updated))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->approval_status
    cJSON *approval_status = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "approvalStatus");
    if (cJSON_IsNull(approval_status)) {
        approval_status = NULL;
    }
    sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e approval_statusVariable;
    if (approval_status) { 
    if(!cJSON_IsString(approval_status))
    {
    goto end; //Enum
    }
    approval_statusVariable = album_contest_response_approval_status_FromString(approval_status->valuestring);
    }

    // album_contest_response->vote_count
    cJSON *vote_count = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "voteCount");
    if (cJSON_IsNull(vote_count)) {
        vote_count = NULL;
    }
    if (vote_count) { 
    if(!cJSON_IsNumber(vote_count))
    {
    goto end; //Numeric
    }
    }

    // album_contest_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(album_contest_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    album_contest_response_local_var = album_contest_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        album_contest_id ? album_contest_id->valuedouble : 0,
        contest_type && !cJSON_IsNull(contest_type) ? strdup(contest_type->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_album_contest_response_VISIBILITY_NULL,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        comments_count ? comments_count->valuedouble : 0,
        user_count ? user_count->valuedouble : 0,
        comments ? commentsList : NULL,
        likes ? likesList : NULL,
        connection_groups ? connection_groupsList : NULL,
        connections ? connectionsList : NULL,
        has_liked ? has_liked->valueint : 0,
        user_permissions ? user_permissions_local_nonprim : NULL,
        public_permissions ? public_permissions_local_nonprim : NULL,
        album1 ? album1_local_nonprim : NULL,
        album2 ? album2_local_nonprim : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        distance ? distance->valuedouble : 0,
        date_created ? date_created->valuedouble : 0,
        date_updated ? date_updated->valuedouble : 0,
        approval_status ? approval_statusVariable : sirqul_iot_platform_album_contest_response_APPROVALSTATUS_NULL,
        vote_count ? vote_count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return album_contest_response_local_var;
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
    if (album1_local_nonprim) {
        album_full_response_free(album1_local_nonprim);
        album1_local_nonprim = NULL;
    }
    if (album2_local_nonprim) {
        album_full_response_free(album2_local_nonprim);
        album2_local_nonprim = NULL;
    }
    return NULL;

}
