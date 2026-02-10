#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connected_friend.h"



static connected_friend_t *connected_friend_create_internal(
    long id,
    int active,
    int valid,
    char *display,
    asset_t *avatar,
    char *avatar_url,
    char *platform,
    char *platform_id,
    int invited,
    char *location_description
    ) {
    connected_friend_t *connected_friend_local_var = malloc(sizeof(connected_friend_t));
    if (!connected_friend_local_var) {
        return NULL;
    }
    connected_friend_local_var->id = id;
    connected_friend_local_var->active = active;
    connected_friend_local_var->valid = valid;
    connected_friend_local_var->display = display;
    connected_friend_local_var->avatar = avatar;
    connected_friend_local_var->avatar_url = avatar_url;
    connected_friend_local_var->platform = platform;
    connected_friend_local_var->platform_id = platform_id;
    connected_friend_local_var->invited = invited;
    connected_friend_local_var->location_description = location_description;

    connected_friend_local_var->_library_owned = 1;
    return connected_friend_local_var;
}

__attribute__((deprecated)) connected_friend_t *connected_friend_create(
    long id,
    int active,
    int valid,
    char *display,
    asset_t *avatar,
    char *avatar_url,
    char *platform,
    char *platform_id,
    int invited,
    char *location_description
    ) {
    return connected_friend_create_internal (
        id,
        active,
        valid,
        display,
        avatar,
        avatar_url,
        platform,
        platform_id,
        invited,
        location_description
        );
}

void connected_friend_free(connected_friend_t *connected_friend) {
    if(NULL == connected_friend){
        return ;
    }
    if(connected_friend->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connected_friend_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connected_friend->display) {
        free(connected_friend->display);
        connected_friend->display = NULL;
    }
    if (connected_friend->avatar) {
        asset_free(connected_friend->avatar);
        connected_friend->avatar = NULL;
    }
    if (connected_friend->avatar_url) {
        free(connected_friend->avatar_url);
        connected_friend->avatar_url = NULL;
    }
    if (connected_friend->platform) {
        free(connected_friend->platform);
        connected_friend->platform = NULL;
    }
    if (connected_friend->platform_id) {
        free(connected_friend->platform_id);
        connected_friend->platform_id = NULL;
    }
    if (connected_friend->location_description) {
        free(connected_friend->location_description);
        connected_friend->location_description = NULL;
    }
    free(connected_friend);
}

cJSON *connected_friend_convertToJSON(connected_friend_t *connected_friend) {
    cJSON *item = cJSON_CreateObject();

    // connected_friend->id
    if(connected_friend->id) {
    if(cJSON_AddNumberToObject(item, "id", connected_friend->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connected_friend->active
    if(connected_friend->active) {
    if(cJSON_AddBoolToObject(item, "active", connected_friend->active) == NULL) {
    goto fail; //Bool
    }
    }


    // connected_friend->valid
    if(connected_friend->valid) {
    if(cJSON_AddBoolToObject(item, "valid", connected_friend->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // connected_friend->display
    if(connected_friend->display) {
    if(cJSON_AddStringToObject(item, "display", connected_friend->display) == NULL) {
    goto fail; //String
    }
    }


    // connected_friend->avatar
    if(connected_friend->avatar) {
    cJSON *avatar_local_JSON = asset_convertToJSON(connected_friend->avatar);
    if(avatar_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "avatar", avatar_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connected_friend->avatar_url
    if(connected_friend->avatar_url) {
    if(cJSON_AddStringToObject(item, "avatarURL", connected_friend->avatar_url) == NULL) {
    goto fail; //String
    }
    }


    // connected_friend->platform
    if(connected_friend->platform) {
    if(cJSON_AddStringToObject(item, "platform", connected_friend->platform) == NULL) {
    goto fail; //String
    }
    }


    // connected_friend->platform_id
    if(connected_friend->platform_id) {
    if(cJSON_AddStringToObject(item, "platformId", connected_friend->platform_id) == NULL) {
    goto fail; //String
    }
    }


    // connected_friend->invited
    if(connected_friend->invited) {
    if(cJSON_AddBoolToObject(item, "invited", connected_friend->invited) == NULL) {
    goto fail; //Bool
    }
    }


    // connected_friend->location_description
    if(connected_friend->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", connected_friend->location_description) == NULL) {
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

connected_friend_t *connected_friend_parseFromJSON(cJSON *connected_friendJSON){

    connected_friend_t *connected_friend_local_var = NULL;

    // define the local variable for connected_friend->avatar
    asset_t *avatar_local_nonprim = NULL;

    // connected_friend->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // connected_friend->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // connected_friend->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // connected_friend->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // connected_friend->avatar
    cJSON *avatar = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "avatar");
    if (cJSON_IsNull(avatar)) {
        avatar = NULL;
    }
    if (avatar) { 
    avatar_local_nonprim = asset_parseFromJSON(avatar); //nonprimitive
    }

    // connected_friend->avatar_url
    cJSON *avatar_url = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "avatarURL");
    if (cJSON_IsNull(avatar_url)) {
        avatar_url = NULL;
    }
    if (avatar_url) { 
    if(!cJSON_IsString(avatar_url) && !cJSON_IsNull(avatar_url))
    {
    goto end; //String
    }
    }

    // connected_friend->platform
    cJSON *platform = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "platform");
    if (cJSON_IsNull(platform)) {
        platform = NULL;
    }
    if (platform) { 
    if(!cJSON_IsString(platform) && !cJSON_IsNull(platform))
    {
    goto end; //String
    }
    }

    // connected_friend->platform_id
    cJSON *platform_id = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "platformId");
    if (cJSON_IsNull(platform_id)) {
        platform_id = NULL;
    }
    if (platform_id) { 
    if(!cJSON_IsString(platform_id) && !cJSON_IsNull(platform_id))
    {
    goto end; //String
    }
    }

    // connected_friend->invited
    cJSON *invited = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "invited");
    if (cJSON_IsNull(invited)) {
        invited = NULL;
    }
    if (invited) { 
    if(!cJSON_IsBool(invited))
    {
    goto end; //Bool
    }
    }

    // connected_friend->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(connected_friendJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }


    connected_friend_local_var = connected_friend_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        avatar ? avatar_local_nonprim : NULL,
        avatar_url && !cJSON_IsNull(avatar_url) ? strdup(avatar_url->valuestring) : NULL,
        platform && !cJSON_IsNull(platform) ? strdup(platform->valuestring) : NULL,
        platform_id && !cJSON_IsNull(platform_id) ? strdup(platform_id->valuestring) : NULL,
        invited ? invited->valueint : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL
        );

    return connected_friend_local_var;
end:
    if (avatar_local_nonprim) {
        asset_free(avatar_local_nonprim);
        avatar_local_nonprim = NULL;
    }
    return NULL;

}
