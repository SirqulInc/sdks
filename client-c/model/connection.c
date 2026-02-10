#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connection.h"


char* connection_connection_type_ToString(sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_type) {
    char* connection_typeArray[] =  { "NULL", "PRIMARY", "SECONDARY", "DEPENDENT", "ACQUAINTANCE" };
    return connection_typeArray[connection_type];
}

sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_connection_type_FromString(char* connection_type){
    int stringToReturn = 0;
    char *connection_typeArray[] =  { "NULL", "PRIMARY", "SECONDARY", "DEPENDENT", "ACQUAINTANCE" };
    size_t sizeofArray = sizeof(connection_typeArray) / sizeof(connection_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(connection_type, connection_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static connection_t *connection_create_internal(
    long id,
    char *created,
    char *updated,
    char *deleted,
    char *object_type,
    char *legacy_id,
    char *search_tags,
    int active,
    int valid,
    account_t *account,
    account_t *connection,
    connected_friend_t *pending_connection,
    int _friend,
    int friend_requested,
    int friend_request_pending,
    int following,
    int follower,
    int trusted,
    int blocked,
    char *friend_request_date,
    char *friend_response_date,
    char *display,
    char *connection_viewed_date,
    sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_type,
    char *title,
    long pending_connection_id,
    double latitude,
    double longitude
    ) {
    connection_t *connection_local_var = malloc(sizeof(connection_t));
    if (!connection_local_var) {
        return NULL;
    }
    connection_local_var->id = id;
    connection_local_var->created = created;
    connection_local_var->updated = updated;
    connection_local_var->deleted = deleted;
    connection_local_var->object_type = object_type;
    connection_local_var->legacy_id = legacy_id;
    connection_local_var->search_tags = search_tags;
    connection_local_var->active = active;
    connection_local_var->valid = valid;
    connection_local_var->account = account;
    connection_local_var->connection = connection;
    connection_local_var->pending_connection = pending_connection;
    connection_local_var->_friend = _friend;
    connection_local_var->friend_requested = friend_requested;
    connection_local_var->friend_request_pending = friend_request_pending;
    connection_local_var->following = following;
    connection_local_var->follower = follower;
    connection_local_var->trusted = trusted;
    connection_local_var->blocked = blocked;
    connection_local_var->friend_request_date = friend_request_date;
    connection_local_var->friend_response_date = friend_response_date;
    connection_local_var->display = display;
    connection_local_var->connection_viewed_date = connection_viewed_date;
    connection_local_var->connection_type = connection_type;
    connection_local_var->title = title;
    connection_local_var->pending_connection_id = pending_connection_id;
    connection_local_var->latitude = latitude;
    connection_local_var->longitude = longitude;

    connection_local_var->_library_owned = 1;
    return connection_local_var;
}

__attribute__((deprecated)) connection_t *connection_create(
    long id,
    char *created,
    char *updated,
    char *deleted,
    char *object_type,
    char *legacy_id,
    char *search_tags,
    int active,
    int valid,
    account_t *account,
    account_t *connection,
    connected_friend_t *pending_connection,
    int _friend,
    int friend_requested,
    int friend_request_pending,
    int following,
    int follower,
    int trusted,
    int blocked,
    char *friend_request_date,
    char *friend_response_date,
    char *display,
    char *connection_viewed_date,
    sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_type,
    char *title,
    long pending_connection_id,
    double latitude,
    double longitude
    ) {
    return connection_create_internal (
        id,
        created,
        updated,
        deleted,
        object_type,
        legacy_id,
        search_tags,
        active,
        valid,
        account,
        connection,
        pending_connection,
        _friend,
        friend_requested,
        friend_request_pending,
        following,
        follower,
        trusted,
        blocked,
        friend_request_date,
        friend_response_date,
        display,
        connection_viewed_date,
        connection_type,
        title,
        pending_connection_id,
        latitude,
        longitude
        );
}

void connection_free(connection_t *connection) {
    if(NULL == connection){
        return ;
    }
    if(connection->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connection_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connection->created) {
        free(connection->created);
        connection->created = NULL;
    }
    if (connection->updated) {
        free(connection->updated);
        connection->updated = NULL;
    }
    if (connection->deleted) {
        free(connection->deleted);
        connection->deleted = NULL;
    }
    if (connection->object_type) {
        free(connection->object_type);
        connection->object_type = NULL;
    }
    if (connection->legacy_id) {
        free(connection->legacy_id);
        connection->legacy_id = NULL;
    }
    if (connection->search_tags) {
        free(connection->search_tags);
        connection->search_tags = NULL;
    }
    if (connection->account) {
        account_free(connection->account);
        connection->account = NULL;
    }
    if (connection->connection) {
        account_free(connection->connection);
        connection->connection = NULL;
    }
    if (connection->pending_connection) {
        connected_friend_free(connection->pending_connection);
        connection->pending_connection = NULL;
    }
    if (connection->friend_request_date) {
        free(connection->friend_request_date);
        connection->friend_request_date = NULL;
    }
    if (connection->friend_response_date) {
        free(connection->friend_response_date);
        connection->friend_response_date = NULL;
    }
    if (connection->display) {
        free(connection->display);
        connection->display = NULL;
    }
    if (connection->connection_viewed_date) {
        free(connection->connection_viewed_date);
        connection->connection_viewed_date = NULL;
    }
    if (connection->title) {
        free(connection->title);
        connection->title = NULL;
    }
    free(connection);
}

cJSON *connection_convertToJSON(connection_t *connection) {
    cJSON *item = cJSON_CreateObject();

    // connection->id
    if(connection->id) {
    if(cJSON_AddNumberToObject(item, "id", connection->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection->created
    if(connection->created) {
    if(cJSON_AddStringToObject(item, "created", connection->created) == NULL) {
    goto fail; //Date-Time
    }
    }


    // connection->updated
    if(connection->updated) {
    if(cJSON_AddStringToObject(item, "updated", connection->updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // connection->deleted
    if(connection->deleted) {
    if(cJSON_AddStringToObject(item, "deleted", connection->deleted) == NULL) {
    goto fail; //Date-Time
    }
    }


    // connection->object_type
    if(connection->object_type) {
    if(cJSON_AddStringToObject(item, "objectType", connection->object_type) == NULL) {
    goto fail; //String
    }
    }


    // connection->legacy_id
    if(connection->legacy_id) {
    if(cJSON_AddStringToObject(item, "legacyId", connection->legacy_id) == NULL) {
    goto fail; //String
    }
    }


    // connection->search_tags
    if(connection->search_tags) {
    if(cJSON_AddStringToObject(item, "searchTags", connection->search_tags) == NULL) {
    goto fail; //String
    }
    }


    // connection->active
    if(connection->active) {
    if(cJSON_AddBoolToObject(item, "active", connection->active) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->valid
    if(connection->valid) {
    if(cJSON_AddBoolToObject(item, "valid", connection->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->account
    if(connection->account) {
    cJSON *account_local_JSON = account_convertToJSON(connection->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connection->connection
    if(connection->connection) {
    cJSON *connection_local_JSON = account_convertToJSON(connection->connection);
    if(connection_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "connection", connection_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connection->pending_connection
    if(connection->pending_connection) {
    cJSON *pending_connection_local_JSON = connected_friend_convertToJSON(connection->pending_connection);
    if(pending_connection_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pendingConnection", pending_connection_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connection->_friend
    if(connection->_friend) {
    if(cJSON_AddBoolToObject(item, "friend", connection->_friend) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->friend_requested
    if(connection->friend_requested) {
    if(cJSON_AddBoolToObject(item, "friendRequested", connection->friend_requested) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->friend_request_pending
    if(connection->friend_request_pending) {
    if(cJSON_AddBoolToObject(item, "friendRequestPending", connection->friend_request_pending) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->following
    if(connection->following) {
    if(cJSON_AddBoolToObject(item, "following", connection->following) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->follower
    if(connection->follower) {
    if(cJSON_AddBoolToObject(item, "follower", connection->follower) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->trusted
    if(connection->trusted) {
    if(cJSON_AddBoolToObject(item, "trusted", connection->trusted) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->blocked
    if(connection->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", connection->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // connection->friend_request_date
    if(connection->friend_request_date) {
    if(cJSON_AddStringToObject(item, "friendRequestDate", connection->friend_request_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // connection->friend_response_date
    if(connection->friend_response_date) {
    if(cJSON_AddStringToObject(item, "friendResponseDate", connection->friend_response_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // connection->display
    if(connection->display) {
    if(cJSON_AddStringToObject(item, "display", connection->display) == NULL) {
    goto fail; //String
    }
    }


    // connection->connection_viewed_date
    if(connection->connection_viewed_date) {
    if(cJSON_AddStringToObject(item, "connectionViewedDate", connection->connection_viewed_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // connection->connection_type
    if(connection->connection_type != sirqul_iot_platform_connection_CONNECTIONTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "connectionType", connection_connection_type_ToString(connection->connection_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // connection->title
    if(connection->title) {
    if(cJSON_AddStringToObject(item, "title", connection->title) == NULL) {
    goto fail; //String
    }
    }


    // connection->pending_connection_id
    if(connection->pending_connection_id) {
    if(cJSON_AddNumberToObject(item, "pendingConnection_id", connection->pending_connection_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection->latitude
    if(connection->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", connection->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection->longitude
    if(connection->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", connection->longitude) == NULL) {
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

connection_t *connection_parseFromJSON(cJSON *connectionJSON){

    connection_t *connection_local_var = NULL;

    // define the local variable for connection->account
    account_t *account_local_nonprim = NULL;

    // define the local variable for connection->connection
    account_t *connection_local_nonprim = NULL;

    // define the local variable for connection->pending_connection
    connected_friend_t *pending_connection_local_nonprim = NULL;

    // connection->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(connectionJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // connection->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(connectionJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //DateTime
    }
    }

    // connection->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(connectionJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsString(updated) && !cJSON_IsNull(updated))
    {
    goto end; //DateTime
    }
    }

    // connection->deleted
    cJSON *deleted = cJSON_GetObjectItemCaseSensitive(connectionJSON, "deleted");
    if (cJSON_IsNull(deleted)) {
        deleted = NULL;
    }
    if (deleted) { 
    if(!cJSON_IsString(deleted) && !cJSON_IsNull(deleted))
    {
    goto end; //DateTime
    }
    }

    // connection->object_type
    cJSON *object_type = cJSON_GetObjectItemCaseSensitive(connectionJSON, "objectType");
    if (cJSON_IsNull(object_type)) {
        object_type = NULL;
    }
    if (object_type) { 
    if(!cJSON_IsString(object_type) && !cJSON_IsNull(object_type))
    {
    goto end; //String
    }
    }

    // connection->legacy_id
    cJSON *legacy_id = cJSON_GetObjectItemCaseSensitive(connectionJSON, "legacyId");
    if (cJSON_IsNull(legacy_id)) {
        legacy_id = NULL;
    }
    if (legacy_id) { 
    if(!cJSON_IsString(legacy_id) && !cJSON_IsNull(legacy_id))
    {
    goto end; //String
    }
    }

    // connection->search_tags
    cJSON *search_tags = cJSON_GetObjectItemCaseSensitive(connectionJSON, "searchTags");
    if (cJSON_IsNull(search_tags)) {
        search_tags = NULL;
    }
    if (search_tags) { 
    if(!cJSON_IsString(search_tags) && !cJSON_IsNull(search_tags))
    {
    goto end; //String
    }
    }

    // connection->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(connectionJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // connection->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(connectionJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // connection->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(connectionJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_parseFromJSON(account); //nonprimitive
    }

    // connection->connection
    cJSON *connection = cJSON_GetObjectItemCaseSensitive(connectionJSON, "connection");
    if (cJSON_IsNull(connection)) {
        connection = NULL;
    }
    if (connection) { 
    connection_local_nonprim = account_parseFromJSON(connection); //nonprimitive
    }

    // connection->pending_connection
    cJSON *pending_connection = cJSON_GetObjectItemCaseSensitive(connectionJSON, "pendingConnection");
    if (cJSON_IsNull(pending_connection)) {
        pending_connection = NULL;
    }
    if (pending_connection) { 
    pending_connection_local_nonprim = connected_friend_parseFromJSON(pending_connection); //nonprimitive
    }

    // connection->_friend
    cJSON *_friend = cJSON_GetObjectItemCaseSensitive(connectionJSON, "friend");
    if (cJSON_IsNull(_friend)) {
        _friend = NULL;
    }
    if (_friend) { 
    if(!cJSON_IsBool(_friend))
    {
    goto end; //Bool
    }
    }

    // connection->friend_requested
    cJSON *friend_requested = cJSON_GetObjectItemCaseSensitive(connectionJSON, "friendRequested");
    if (cJSON_IsNull(friend_requested)) {
        friend_requested = NULL;
    }
    if (friend_requested) { 
    if(!cJSON_IsBool(friend_requested))
    {
    goto end; //Bool
    }
    }

    // connection->friend_request_pending
    cJSON *friend_request_pending = cJSON_GetObjectItemCaseSensitive(connectionJSON, "friendRequestPending");
    if (cJSON_IsNull(friend_request_pending)) {
        friend_request_pending = NULL;
    }
    if (friend_request_pending) { 
    if(!cJSON_IsBool(friend_request_pending))
    {
    goto end; //Bool
    }
    }

    // connection->following
    cJSON *following = cJSON_GetObjectItemCaseSensitive(connectionJSON, "following");
    if (cJSON_IsNull(following)) {
        following = NULL;
    }
    if (following) { 
    if(!cJSON_IsBool(following))
    {
    goto end; //Bool
    }
    }

    // connection->follower
    cJSON *follower = cJSON_GetObjectItemCaseSensitive(connectionJSON, "follower");
    if (cJSON_IsNull(follower)) {
        follower = NULL;
    }
    if (follower) { 
    if(!cJSON_IsBool(follower))
    {
    goto end; //Bool
    }
    }

    // connection->trusted
    cJSON *trusted = cJSON_GetObjectItemCaseSensitive(connectionJSON, "trusted");
    if (cJSON_IsNull(trusted)) {
        trusted = NULL;
    }
    if (trusted) { 
    if(!cJSON_IsBool(trusted))
    {
    goto end; //Bool
    }
    }

    // connection->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(connectionJSON, "blocked");
    if (cJSON_IsNull(blocked)) {
        blocked = NULL;
    }
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // connection->friend_request_date
    cJSON *friend_request_date = cJSON_GetObjectItemCaseSensitive(connectionJSON, "friendRequestDate");
    if (cJSON_IsNull(friend_request_date)) {
        friend_request_date = NULL;
    }
    if (friend_request_date) { 
    if(!cJSON_IsString(friend_request_date) && !cJSON_IsNull(friend_request_date))
    {
    goto end; //DateTime
    }
    }

    // connection->friend_response_date
    cJSON *friend_response_date = cJSON_GetObjectItemCaseSensitive(connectionJSON, "friendResponseDate");
    if (cJSON_IsNull(friend_response_date)) {
        friend_response_date = NULL;
    }
    if (friend_response_date) { 
    if(!cJSON_IsString(friend_response_date) && !cJSON_IsNull(friend_response_date))
    {
    goto end; //DateTime
    }
    }

    // connection->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(connectionJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // connection->connection_viewed_date
    cJSON *connection_viewed_date = cJSON_GetObjectItemCaseSensitive(connectionJSON, "connectionViewedDate");
    if (cJSON_IsNull(connection_viewed_date)) {
        connection_viewed_date = NULL;
    }
    if (connection_viewed_date) { 
    if(!cJSON_IsString(connection_viewed_date) && !cJSON_IsNull(connection_viewed_date))
    {
    goto end; //DateTime
    }
    }

    // connection->connection_type
    cJSON *connection_type = cJSON_GetObjectItemCaseSensitive(connectionJSON, "connectionType");
    if (cJSON_IsNull(connection_type)) {
        connection_type = NULL;
    }
    sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_typeVariable;
    if (connection_type) { 
    if(!cJSON_IsString(connection_type))
    {
    goto end; //Enum
    }
    connection_typeVariable = connection_connection_type_FromString(connection_type->valuestring);
    }

    // connection->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(connectionJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // connection->pending_connection_id
    cJSON *pending_connection_id = cJSON_GetObjectItemCaseSensitive(connectionJSON, "pendingConnection_id");
    if (cJSON_IsNull(pending_connection_id)) {
        pending_connection_id = NULL;
    }
    if (pending_connection_id) { 
    if(!cJSON_IsNumber(pending_connection_id))
    {
    goto end; //Numeric
    }
    }

    // connection->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(connectionJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // connection->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(connectionJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }


    connection_local_var = connection_create_internal (
        id ? id->valuedouble : 0,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        updated && !cJSON_IsNull(updated) ? strdup(updated->valuestring) : NULL,
        deleted && !cJSON_IsNull(deleted) ? strdup(deleted->valuestring) : NULL,
        object_type && !cJSON_IsNull(object_type) ? strdup(object_type->valuestring) : NULL,
        legacy_id && !cJSON_IsNull(legacy_id) ? strdup(legacy_id->valuestring) : NULL,
        search_tags && !cJSON_IsNull(search_tags) ? strdup(search_tags->valuestring) : NULL,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        account ? account_local_nonprim : NULL,
        connection ? connection_local_nonprim : NULL,
        pending_connection ? pending_connection_local_nonprim : NULL,
        _friend ? _friend->valueint : 0,
        friend_requested ? friend_requested->valueint : 0,
        friend_request_pending ? friend_request_pending->valueint : 0,
        following ? following->valueint : 0,
        follower ? follower->valueint : 0,
        trusted ? trusted->valueint : 0,
        blocked ? blocked->valueint : 0,
        friend_request_date && !cJSON_IsNull(friend_request_date) ? strdup(friend_request_date->valuestring) : NULL,
        friend_response_date && !cJSON_IsNull(friend_response_date) ? strdup(friend_response_date->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        connection_viewed_date && !cJSON_IsNull(connection_viewed_date) ? strdup(connection_viewed_date->valuestring) : NULL,
        connection_type ? connection_typeVariable : sirqul_iot_platform_connection_CONNECTIONTYPE_NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        pending_connection_id ? pending_connection_id->valuedouble : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0
        );

    return connection_local_var;
end:
    if (account_local_nonprim) {
        account_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    if (connection_local_nonprim) {
        account_free(connection_local_nonprim);
        connection_local_nonprim = NULL;
    }
    if (pending_connection_local_nonprim) {
        connected_friend_free(pending_connection_local_nonprim);
        pending_connection_local_nonprim = NULL;
    }
    return NULL;

}
