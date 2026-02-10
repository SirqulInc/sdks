#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user_permissions_list_response.h"


char* user_permissions_list_response_action_ToString(sirqul_iot_platform_user_permissions_list_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_user_permissions_list_response_ACTION_e user_permissions_list_response_action_FromString(char* action){
    int stringToReturn = 0;
    char *actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    size_t sizeofArray = sizeof(actionArray) / sizeof(actionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(action, actionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* user_permissions_list_response_visibility_ToString(sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e user_permissions_list_response_visibility_FromString(char* visibility){
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

static user_permissions_list_response_t *user_permissions_list_response_create_internal(
    sirqul_iot_platform_user_permissions_list_response_ACTION_e action,
    sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e visibility,
    permission_response_t *public_permissions,
    list_t *user_permissions
    ) {
    user_permissions_list_response_t *user_permissions_list_response_local_var = malloc(sizeof(user_permissions_list_response_t));
    if (!user_permissions_list_response_local_var) {
        return NULL;
    }
    user_permissions_list_response_local_var->action = action;
    user_permissions_list_response_local_var->visibility = visibility;
    user_permissions_list_response_local_var->public_permissions = public_permissions;
    user_permissions_list_response_local_var->user_permissions = user_permissions;

    user_permissions_list_response_local_var->_library_owned = 1;
    return user_permissions_list_response_local_var;
}

__attribute__((deprecated)) user_permissions_list_response_t *user_permissions_list_response_create(
    sirqul_iot_platform_user_permissions_list_response_ACTION_e action,
    sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e visibility,
    permission_response_t *public_permissions,
    list_t *user_permissions
    ) {
    return user_permissions_list_response_create_internal (
        action,
        visibility,
        public_permissions,
        user_permissions
        );
}

void user_permissions_list_response_free(user_permissions_list_response_t *user_permissions_list_response) {
    if(NULL == user_permissions_list_response){
        return ;
    }
    if(user_permissions_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "user_permissions_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (user_permissions_list_response->public_permissions) {
        permission_response_free(user_permissions_list_response->public_permissions);
        user_permissions_list_response->public_permissions = NULL;
    }
    if (user_permissions_list_response->user_permissions) {
        list_ForEach(listEntry, user_permissions_list_response->user_permissions) {
            user_permissions_response_free(listEntry->data);
        }
        list_freeList(user_permissions_list_response->user_permissions);
        user_permissions_list_response->user_permissions = NULL;
    }
    free(user_permissions_list_response);
}

cJSON *user_permissions_list_response_convertToJSON(user_permissions_list_response_t *user_permissions_list_response) {
    cJSON *item = cJSON_CreateObject();

    // user_permissions_list_response->action
    if(user_permissions_list_response->action != sirqul_iot_platform_user_permissions_list_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", user_permissions_list_response_action_ToString(user_permissions_list_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // user_permissions_list_response->visibility
    if(user_permissions_list_response->visibility != sirqul_iot_platform_user_permissions_list_response_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", user_permissions_list_response_visibility_ToString(user_permissions_list_response->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // user_permissions_list_response->public_permissions
    if(user_permissions_list_response->public_permissions) {
    cJSON *public_permissions_local_JSON = permission_response_convertToJSON(user_permissions_list_response->public_permissions);
    if(public_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "publicPermissions", public_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_permissions_list_response->user_permissions
    if(user_permissions_list_response->user_permissions) {
    cJSON *user_permissions = cJSON_AddArrayToObject(item, "userPermissions");
    if(user_permissions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *user_permissionsListEntry;
    if (user_permissions_list_response->user_permissions) {
    list_ForEach(user_permissionsListEntry, user_permissions_list_response->user_permissions) {
    cJSON *itemLocal = user_permissions_response_convertToJSON(user_permissionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(user_permissions, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

user_permissions_list_response_t *user_permissions_list_response_parseFromJSON(cJSON *user_permissions_list_responseJSON){

    user_permissions_list_response_t *user_permissions_list_response_local_var = NULL;

    // define the local variable for user_permissions_list_response->public_permissions
    permission_response_t *public_permissions_local_nonprim = NULL;

    // define the local list for user_permissions_list_response->user_permissions
    list_t *user_permissionsList = NULL;

    // user_permissions_list_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(user_permissions_list_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_user_permissions_list_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = user_permissions_list_response_action_FromString(action->valuestring);
    }

    // user_permissions_list_response->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(user_permissions_list_responseJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = user_permissions_list_response_visibility_FromString(visibility->valuestring);
    }

    // user_permissions_list_response->public_permissions
    cJSON *public_permissions = cJSON_GetObjectItemCaseSensitive(user_permissions_list_responseJSON, "publicPermissions");
    if (cJSON_IsNull(public_permissions)) {
        public_permissions = NULL;
    }
    if (public_permissions) { 
    public_permissions_local_nonprim = permission_response_parseFromJSON(public_permissions); //nonprimitive
    }

    // user_permissions_list_response->user_permissions
    cJSON *user_permissions = cJSON_GetObjectItemCaseSensitive(user_permissions_list_responseJSON, "userPermissions");
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
        user_permissions_response_t *user_permissionsItem = user_permissions_response_parseFromJSON(user_permissions_local_nonprimitive);

        list_addElement(user_permissionsList, user_permissionsItem);
    }
    }


    user_permissions_list_response_local_var = user_permissions_list_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_user_permissions_list_response_ACTION_NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_user_permissions_list_response_VISIBILITY_NULL,
        public_permissions ? public_permissions_local_nonprim : NULL,
        user_permissions ? user_permissionsList : NULL
        );

    return user_permissions_list_response_local_var;
end:
    if (public_permissions_local_nonprim) {
        permission_response_free(public_permissions_local_nonprim);
        public_permissions_local_nonprim = NULL;
    }
    if (user_permissionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, user_permissionsList) {
            user_permissions_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(user_permissionsList);
        user_permissionsList = NULL;
    }
    return NULL;

}
