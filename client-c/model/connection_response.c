#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connection_response.h"



static connection_response_t *connection_response_create_internal(
    long connection_id,
    char *connection_account_id,
    char *connection_pending_id,
    char *display,
    char *location_display,
    long connection_viewed_date,
    char *profile_image,
    char *title,
    char *connection_account_type,
    int trusted,
    int following,
    int friend_requested,
    int friend_request_pending,
    int blocked,
    int _friend
    ) {
    connection_response_t *connection_response_local_var = malloc(sizeof(connection_response_t));
    if (!connection_response_local_var) {
        return NULL;
    }
    connection_response_local_var->connection_id = connection_id;
    connection_response_local_var->connection_account_id = connection_account_id;
    connection_response_local_var->connection_pending_id = connection_pending_id;
    connection_response_local_var->display = display;
    connection_response_local_var->location_display = location_display;
    connection_response_local_var->connection_viewed_date = connection_viewed_date;
    connection_response_local_var->profile_image = profile_image;
    connection_response_local_var->title = title;
    connection_response_local_var->connection_account_type = connection_account_type;
    connection_response_local_var->trusted = trusted;
    connection_response_local_var->following = following;
    connection_response_local_var->friend_requested = friend_requested;
    connection_response_local_var->friend_request_pending = friend_request_pending;
    connection_response_local_var->blocked = blocked;
    connection_response_local_var->_friend = _friend;

    connection_response_local_var->_library_owned = 1;
    return connection_response_local_var;
}

__attribute__((deprecated)) connection_response_t *connection_response_create(
    long connection_id,
    char *connection_account_id,
    char *connection_pending_id,
    char *display,
    char *location_display,
    long connection_viewed_date,
    char *profile_image,
    char *title,
    char *connection_account_type,
    int trusted,
    int following,
    int friend_requested,
    int friend_request_pending,
    int blocked,
    int _friend
    ) {
    return connection_response_create_internal (
        connection_id,
        connection_account_id,
        connection_pending_id,
        display,
        location_display,
        connection_viewed_date,
        profile_image,
        title,
        connection_account_type,
        trusted,
        following,
        friend_requested,
        friend_request_pending,
        blocked,
        _friend
        );
}

void connection_response_free(connection_response_t *connection_response) {
    if(NULL == connection_response){
        return ;
    }
    if(connection_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connection_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connection_response->connection_account_id) {
        free(connection_response->connection_account_id);
        connection_response->connection_account_id = NULL;
    }
    if (connection_response->connection_pending_id) {
        free(connection_response->connection_pending_id);
        connection_response->connection_pending_id = NULL;
    }
    if (connection_response->display) {
        free(connection_response->display);
        connection_response->display = NULL;
    }
    if (connection_response->location_display) {
        free(connection_response->location_display);
        connection_response->location_display = NULL;
    }
    if (connection_response->profile_image) {
        free(connection_response->profile_image);
        connection_response->profile_image = NULL;
    }
    if (connection_response->title) {
        free(connection_response->title);
        connection_response->title = NULL;
    }
    if (connection_response->connection_account_type) {
        free(connection_response->connection_account_type);
        connection_response->connection_account_type = NULL;
    }
    free(connection_response);
}

cJSON *connection_response_convertToJSON(connection_response_t *connection_response) {
    cJSON *item = cJSON_CreateObject();

    // connection_response->connection_id
    if(connection_response->connection_id) {
    if(cJSON_AddNumberToObject(item, "connectionId", connection_response->connection_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_response->connection_account_id
    if(connection_response->connection_account_id) {
    if(cJSON_AddStringToObject(item, "connectionAccountId", connection_response->connection_account_id) == NULL) {
    goto fail; //String
    }
    }


    // connection_response->connection_pending_id
    if(connection_response->connection_pending_id) {
    if(cJSON_AddStringToObject(item, "connectionPendingId", connection_response->connection_pending_id) == NULL) {
    goto fail; //String
    }
    }


    // connection_response->display
    if(connection_response->display) {
    if(cJSON_AddStringToObject(item, "display", connection_response->display) == NULL) {
    goto fail; //String
    }
    }


    // connection_response->location_display
    if(connection_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", connection_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // connection_response->connection_viewed_date
    if(connection_response->connection_viewed_date) {
    if(cJSON_AddNumberToObject(item, "connectionViewedDate", connection_response->connection_viewed_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_response->profile_image
    if(connection_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", connection_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // connection_response->title
    if(connection_response->title) {
    if(cJSON_AddStringToObject(item, "title", connection_response->title) == NULL) {
    goto fail; //String
    }
    }


    // connection_response->connection_account_type
    if(connection_response->connection_account_type) {
    if(cJSON_AddStringToObject(item, "connectionAccountType", connection_response->connection_account_type) == NULL) {
    goto fail; //String
    }
    }


    // connection_response->trusted
    if(connection_response->trusted) {
    if(cJSON_AddBoolToObject(item, "trusted", connection_response->trusted) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_response->following
    if(connection_response->following) {
    if(cJSON_AddBoolToObject(item, "following", connection_response->following) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_response->friend_requested
    if(connection_response->friend_requested) {
    if(cJSON_AddBoolToObject(item, "friendRequested", connection_response->friend_requested) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_response->friend_request_pending
    if(connection_response->friend_request_pending) {
    if(cJSON_AddBoolToObject(item, "friendRequestPending", connection_response->friend_request_pending) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_response->blocked
    if(connection_response->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", connection_response->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_response->_friend
    if(connection_response->_friend) {
    if(cJSON_AddBoolToObject(item, "friend", connection_response->_friend) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

connection_response_t *connection_response_parseFromJSON(cJSON *connection_responseJSON){

    connection_response_t *connection_response_local_var = NULL;

    // connection_response->connection_id
    cJSON *connection_id = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "connectionId");
    if (cJSON_IsNull(connection_id)) {
        connection_id = NULL;
    }
    if (connection_id) { 
    if(!cJSON_IsNumber(connection_id))
    {
    goto end; //Numeric
    }
    }

    // connection_response->connection_account_id
    cJSON *connection_account_id = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "connectionAccountId");
    if (cJSON_IsNull(connection_account_id)) {
        connection_account_id = NULL;
    }
    if (connection_account_id) { 
    if(!cJSON_IsString(connection_account_id) && !cJSON_IsNull(connection_account_id))
    {
    goto end; //String
    }
    }

    // connection_response->connection_pending_id
    cJSON *connection_pending_id = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "connectionPendingId");
    if (cJSON_IsNull(connection_pending_id)) {
        connection_pending_id = NULL;
    }
    if (connection_pending_id) { 
    if(!cJSON_IsString(connection_pending_id) && !cJSON_IsNull(connection_pending_id))
    {
    goto end; //String
    }
    }

    // connection_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // connection_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // connection_response->connection_viewed_date
    cJSON *connection_viewed_date = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "connectionViewedDate");
    if (cJSON_IsNull(connection_viewed_date)) {
        connection_viewed_date = NULL;
    }
    if (connection_viewed_date) { 
    if(!cJSON_IsNumber(connection_viewed_date))
    {
    goto end; //Numeric
    }
    }

    // connection_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // connection_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // connection_response->connection_account_type
    cJSON *connection_account_type = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "connectionAccountType");
    if (cJSON_IsNull(connection_account_type)) {
        connection_account_type = NULL;
    }
    if (connection_account_type) { 
    if(!cJSON_IsString(connection_account_type) && !cJSON_IsNull(connection_account_type))
    {
    goto end; //String
    }
    }

    // connection_response->trusted
    cJSON *trusted = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "trusted");
    if (cJSON_IsNull(trusted)) {
        trusted = NULL;
    }
    if (trusted) { 
    if(!cJSON_IsBool(trusted))
    {
    goto end; //Bool
    }
    }

    // connection_response->following
    cJSON *following = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "following");
    if (cJSON_IsNull(following)) {
        following = NULL;
    }
    if (following) { 
    if(!cJSON_IsBool(following))
    {
    goto end; //Bool
    }
    }

    // connection_response->friend_requested
    cJSON *friend_requested = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "friendRequested");
    if (cJSON_IsNull(friend_requested)) {
        friend_requested = NULL;
    }
    if (friend_requested) { 
    if(!cJSON_IsBool(friend_requested))
    {
    goto end; //Bool
    }
    }

    // connection_response->friend_request_pending
    cJSON *friend_request_pending = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "friendRequestPending");
    if (cJSON_IsNull(friend_request_pending)) {
        friend_request_pending = NULL;
    }
    if (friend_request_pending) { 
    if(!cJSON_IsBool(friend_request_pending))
    {
    goto end; //Bool
    }
    }

    // connection_response->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "blocked");
    if (cJSON_IsNull(blocked)) {
        blocked = NULL;
    }
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // connection_response->_friend
    cJSON *_friend = cJSON_GetObjectItemCaseSensitive(connection_responseJSON, "friend");
    if (cJSON_IsNull(_friend)) {
        _friend = NULL;
    }
    if (_friend) { 
    if(!cJSON_IsBool(_friend))
    {
    goto end; //Bool
    }
    }


    connection_response_local_var = connection_response_create_internal (
        connection_id ? connection_id->valuedouble : 0,
        connection_account_id && !cJSON_IsNull(connection_account_id) ? strdup(connection_account_id->valuestring) : NULL,
        connection_pending_id && !cJSON_IsNull(connection_pending_id) ? strdup(connection_pending_id->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        connection_viewed_date ? connection_viewed_date->valuedouble : 0,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        connection_account_type && !cJSON_IsNull(connection_account_type) ? strdup(connection_account_type->valuestring) : NULL,
        trusted ? trusted->valueint : 0,
        following ? following->valueint : 0,
        friend_requested ? friend_requested->valueint : 0,
        friend_request_pending ? friend_request_pending->valueint : 0,
        blocked ? blocked->valueint : 0,
        _friend ? _friend->valueint : 0
        );

    return connection_response_local_var;
end:
    return NULL;

}
