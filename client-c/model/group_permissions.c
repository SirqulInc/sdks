#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "group_permissions.h"



static group_permissions_t *group_permissions_create_internal(
    int can_view_profile_info,
    int can_view_game_info,
    int can_view_friend_info
    ) {
    group_permissions_t *group_permissions_local_var = malloc(sizeof(group_permissions_t));
    if (!group_permissions_local_var) {
        return NULL;
    }
    group_permissions_local_var->can_view_profile_info = can_view_profile_info;
    group_permissions_local_var->can_view_game_info = can_view_game_info;
    group_permissions_local_var->can_view_friend_info = can_view_friend_info;

    group_permissions_local_var->_library_owned = 1;
    return group_permissions_local_var;
}

__attribute__((deprecated)) group_permissions_t *group_permissions_create(
    int can_view_profile_info,
    int can_view_game_info,
    int can_view_friend_info
    ) {
    return group_permissions_create_internal (
        can_view_profile_info,
        can_view_game_info,
        can_view_friend_info
        );
}

void group_permissions_free(group_permissions_t *group_permissions) {
    if(NULL == group_permissions){
        return ;
    }
    if(group_permissions->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "group_permissions_free");
        return ;
    }
    listEntry_t *listEntry;
    free(group_permissions);
}

cJSON *group_permissions_convertToJSON(group_permissions_t *group_permissions) {
    cJSON *item = cJSON_CreateObject();

    // group_permissions->can_view_profile_info
    if(group_permissions->can_view_profile_info) {
    if(cJSON_AddBoolToObject(item, "canViewProfileInfo", group_permissions->can_view_profile_info) == NULL) {
    goto fail; //Bool
    }
    }


    // group_permissions->can_view_game_info
    if(group_permissions->can_view_game_info) {
    if(cJSON_AddBoolToObject(item, "canViewGameInfo", group_permissions->can_view_game_info) == NULL) {
    goto fail; //Bool
    }
    }


    // group_permissions->can_view_friend_info
    if(group_permissions->can_view_friend_info) {
    if(cJSON_AddBoolToObject(item, "canViewFriendInfo", group_permissions->can_view_friend_info) == NULL) {
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

group_permissions_t *group_permissions_parseFromJSON(cJSON *group_permissionsJSON){

    group_permissions_t *group_permissions_local_var = NULL;

    // group_permissions->can_view_profile_info
    cJSON *can_view_profile_info = cJSON_GetObjectItemCaseSensitive(group_permissionsJSON, "canViewProfileInfo");
    if (cJSON_IsNull(can_view_profile_info)) {
        can_view_profile_info = NULL;
    }
    if (can_view_profile_info) { 
    if(!cJSON_IsBool(can_view_profile_info))
    {
    goto end; //Bool
    }
    }

    // group_permissions->can_view_game_info
    cJSON *can_view_game_info = cJSON_GetObjectItemCaseSensitive(group_permissionsJSON, "canViewGameInfo");
    if (cJSON_IsNull(can_view_game_info)) {
        can_view_game_info = NULL;
    }
    if (can_view_game_info) { 
    if(!cJSON_IsBool(can_view_game_info))
    {
    goto end; //Bool
    }
    }

    // group_permissions->can_view_friend_info
    cJSON *can_view_friend_info = cJSON_GetObjectItemCaseSensitive(group_permissionsJSON, "canViewFriendInfo");
    if (cJSON_IsNull(can_view_friend_info)) {
        can_view_friend_info = NULL;
    }
    if (can_view_friend_info) { 
    if(!cJSON_IsBool(can_view_friend_info))
    {
    goto end; //Bool
    }
    }


    group_permissions_local_var = group_permissions_create_internal (
        can_view_profile_info ? can_view_profile_info->valueint : 0,
        can_view_game_info ? can_view_game_info->valueint : 0,
        can_view_friend_info ? can_view_friend_info->valueint : 0
        );

    return group_permissions_local_var;
end:
    return NULL;

}
