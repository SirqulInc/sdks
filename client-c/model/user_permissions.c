#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user_permissions.h"



static user_permissions_t *user_permissions_create_internal(
    long id,
    int active,
    int valid,
    char *permissionable_type,
    long permissionable_id,
    connection_group_t *connection_group,
    int friend_group,
    connection_t *connection,
    permissions_t *permissions,
    int exclude,
    int blocked,
    account_t *owner
    ) {
    user_permissions_t *user_permissions_local_var = malloc(sizeof(user_permissions_t));
    if (!user_permissions_local_var) {
        return NULL;
    }
    user_permissions_local_var->id = id;
    user_permissions_local_var->active = active;
    user_permissions_local_var->valid = valid;
    user_permissions_local_var->permissionable_type = permissionable_type;
    user_permissions_local_var->permissionable_id = permissionable_id;
    user_permissions_local_var->connection_group = connection_group;
    user_permissions_local_var->friend_group = friend_group;
    user_permissions_local_var->connection = connection;
    user_permissions_local_var->permissions = permissions;
    user_permissions_local_var->exclude = exclude;
    user_permissions_local_var->blocked = blocked;
    user_permissions_local_var->owner = owner;

    user_permissions_local_var->_library_owned = 1;
    return user_permissions_local_var;
}

__attribute__((deprecated)) user_permissions_t *user_permissions_create(
    long id,
    int active,
    int valid,
    char *permissionable_type,
    long permissionable_id,
    connection_group_t *connection_group,
    int friend_group,
    connection_t *connection,
    permissions_t *permissions,
    int exclude,
    int blocked,
    account_t *owner
    ) {
    return user_permissions_create_internal (
        id,
        active,
        valid,
        permissionable_type,
        permissionable_id,
        connection_group,
        friend_group,
        connection,
        permissions,
        exclude,
        blocked,
        owner
        );
}

void user_permissions_free(user_permissions_t *user_permissions) {
    if(NULL == user_permissions){
        return ;
    }
    if(user_permissions->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "user_permissions_free");
        return ;
    }
    listEntry_t *listEntry;
    if (user_permissions->permissionable_type) {
        free(user_permissions->permissionable_type);
        user_permissions->permissionable_type = NULL;
    }
    if (user_permissions->connection_group) {
        connection_group_free(user_permissions->connection_group);
        user_permissions->connection_group = NULL;
    }
    if (user_permissions->connection) {
        connection_free(user_permissions->connection);
        user_permissions->connection = NULL;
    }
    if (user_permissions->permissions) {
        permissions_free(user_permissions->permissions);
        user_permissions->permissions = NULL;
    }
    if (user_permissions->owner) {
        account_free(user_permissions->owner);
        user_permissions->owner = NULL;
    }
    free(user_permissions);
}

cJSON *user_permissions_convertToJSON(user_permissions_t *user_permissions) {
    cJSON *item = cJSON_CreateObject();

    // user_permissions->id
    if(user_permissions->id) {
    if(cJSON_AddNumberToObject(item, "id", user_permissions->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_permissions->active
    if(user_permissions->active) {
    if(cJSON_AddBoolToObject(item, "active", user_permissions->active) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions->valid
    if(user_permissions->valid) {
    if(cJSON_AddBoolToObject(item, "valid", user_permissions->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions->permissionable_type
    if(user_permissions->permissionable_type) {
    if(cJSON_AddStringToObject(item, "permissionableType", user_permissions->permissionable_type) == NULL) {
    goto fail; //String
    }
    }


    // user_permissions->permissionable_id
    if(user_permissions->permissionable_id) {
    if(cJSON_AddNumberToObject(item, "permissionableId", user_permissions->permissionable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_permissions->connection_group
    if(user_permissions->connection_group) {
    cJSON *connection_group_local_JSON = connection_group_convertToJSON(user_permissions->connection_group);
    if(connection_group_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "connectionGroup", connection_group_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_permissions->friend_group
    if(user_permissions->friend_group) {
    if(cJSON_AddBoolToObject(item, "friendGroup", user_permissions->friend_group) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions->connection
    if(user_permissions->connection) {
    cJSON *connection_local_JSON = connection_convertToJSON(user_permissions->connection);
    if(connection_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "connection", connection_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_permissions->permissions
    if(user_permissions->permissions) {
    cJSON *permissions_local_JSON = permissions_convertToJSON(user_permissions->permissions);
    if(permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "permissions", permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_permissions->exclude
    if(user_permissions->exclude) {
    if(cJSON_AddBoolToObject(item, "exclude", user_permissions->exclude) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions->blocked
    if(user_permissions->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", user_permissions->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // user_permissions->owner
    if(user_permissions->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(user_permissions->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

user_permissions_t *user_permissions_parseFromJSON(cJSON *user_permissionsJSON){

    user_permissions_t *user_permissions_local_var = NULL;

    // define the local variable for user_permissions->connection_group
    connection_group_t *connection_group_local_nonprim = NULL;

    // define the local variable for user_permissions->connection
    connection_t *connection_local_nonprim = NULL;

    // define the local variable for user_permissions->permissions
    permissions_t *permissions_local_nonprim = NULL;

    // define the local variable for user_permissions->owner
    account_t *owner_local_nonprim = NULL;

    // user_permissions->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // user_permissions->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // user_permissions->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // user_permissions->permissionable_type
    cJSON *permissionable_type = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "permissionableType");
    if (cJSON_IsNull(permissionable_type)) {
        permissionable_type = NULL;
    }
    if (permissionable_type) { 
    if(!cJSON_IsString(permissionable_type) && !cJSON_IsNull(permissionable_type))
    {
    goto end; //String
    }
    }

    // user_permissions->permissionable_id
    cJSON *permissionable_id = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "permissionableId");
    if (cJSON_IsNull(permissionable_id)) {
        permissionable_id = NULL;
    }
    if (permissionable_id) { 
    if(!cJSON_IsNumber(permissionable_id))
    {
    goto end; //Numeric
    }
    }

    // user_permissions->connection_group
    cJSON *connection_group = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "connectionGroup");
    if (cJSON_IsNull(connection_group)) {
        connection_group = NULL;
    }
    if (connection_group) { 
    connection_group_local_nonprim = connection_group_parseFromJSON(connection_group); //nonprimitive
    }

    // user_permissions->friend_group
    cJSON *friend_group = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "friendGroup");
    if (cJSON_IsNull(friend_group)) {
        friend_group = NULL;
    }
    if (friend_group) { 
    if(!cJSON_IsBool(friend_group))
    {
    goto end; //Bool
    }
    }

    // user_permissions->connection
    cJSON *connection = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "connection");
    if (cJSON_IsNull(connection)) {
        connection = NULL;
    }
    if (connection) { 
    connection_local_nonprim = connection_parseFromJSON(connection); //nonprimitive
    }

    // user_permissions->permissions
    cJSON *permissions = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "permissions");
    if (cJSON_IsNull(permissions)) {
        permissions = NULL;
    }
    if (permissions) { 
    permissions_local_nonprim = permissions_parseFromJSON(permissions); //nonprimitive
    }

    // user_permissions->exclude
    cJSON *exclude = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "exclude");
    if (cJSON_IsNull(exclude)) {
        exclude = NULL;
    }
    if (exclude) { 
    if(!cJSON_IsBool(exclude))
    {
    goto end; //Bool
    }
    }

    // user_permissions->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "blocked");
    if (cJSON_IsNull(blocked)) {
        blocked = NULL;
    }
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // user_permissions->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(user_permissionsJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }


    user_permissions_local_var = user_permissions_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        permissionable_type && !cJSON_IsNull(permissionable_type) ? strdup(permissionable_type->valuestring) : NULL,
        permissionable_id ? permissionable_id->valuedouble : 0,
        connection_group ? connection_group_local_nonprim : NULL,
        friend_group ? friend_group->valueint : 0,
        connection ? connection_local_nonprim : NULL,
        permissions ? permissions_local_nonprim : NULL,
        exclude ? exclude->valueint : 0,
        blocked ? blocked->valueint : 0,
        owner ? owner_local_nonprim : NULL
        );

    return user_permissions_local_var;
end:
    if (connection_group_local_nonprim) {
        connection_group_free(connection_group_local_nonprim);
        connection_group_local_nonprim = NULL;
    }
    if (connection_local_nonprim) {
        connection_free(connection_local_nonprim);
        connection_local_nonprim = NULL;
    }
    if (permissions_local_nonprim) {
        permissions_free(permissions_local_nonprim);
        permissions_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
