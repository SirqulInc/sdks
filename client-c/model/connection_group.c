#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "connection_group.h"



static connection_group_t *connection_group_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *name,
    char *description,
    list_t *connections,
    group_permissions_t *permissions,
    asset_t *image,
    list_t *sub_groups
    ) {
    connection_group_t *connection_group_local_var = malloc(sizeof(connection_group_t));
    if (!connection_group_local_var) {
        return NULL;
    }
    connection_group_local_var->id = id;
    connection_group_local_var->active = active;
    connection_group_local_var->valid = valid;
    connection_group_local_var->owner = owner;
    connection_group_local_var->name = name;
    connection_group_local_var->description = description;
    connection_group_local_var->connections = connections;
    connection_group_local_var->permissions = permissions;
    connection_group_local_var->image = image;
    connection_group_local_var->sub_groups = sub_groups;

    connection_group_local_var->_library_owned = 1;
    return connection_group_local_var;
}

__attribute__((deprecated)) connection_group_t *connection_group_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *name,
    char *description,
    list_t *connections,
    group_permissions_t *permissions,
    asset_t *image,
    list_t *sub_groups
    ) {
    return connection_group_create_internal (
        id,
        active,
        valid,
        owner,
        name,
        description,
        connections,
        permissions,
        image,
        sub_groups
        );
}

void connection_group_free(connection_group_t *connection_group) {
    if(NULL == connection_group){
        return ;
    }
    if(connection_group->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "connection_group_free");
        return ;
    }
    listEntry_t *listEntry;
    if (connection_group->owner) {
        account_free(connection_group->owner);
        connection_group->owner = NULL;
    }
    if (connection_group->name) {
        free(connection_group->name);
        connection_group->name = NULL;
    }
    if (connection_group->description) {
        free(connection_group->description);
        connection_group->description = NULL;
    }
    if (connection_group->connections) {
        list_ForEach(listEntry, connection_group->connections) {
            connection_free(listEntry->data);
        }
        list_freeList(connection_group->connections);
        connection_group->connections = NULL;
    }
    if (connection_group->permissions) {
        group_permissions_free(connection_group->permissions);
        connection_group->permissions = NULL;
    }
    if (connection_group->image) {
        asset_free(connection_group->image);
        connection_group->image = NULL;
    }
    if (connection_group->sub_groups) {
        list_ForEach(listEntry, connection_group->sub_groups) {
            connection_group_free(listEntry->data);
        }
        list_freeList(connection_group->sub_groups);
        connection_group->sub_groups = NULL;
    }
    free(connection_group);
}

cJSON *connection_group_convertToJSON(connection_group_t *connection_group) {
    cJSON *item = cJSON_CreateObject();

    // connection_group->id
    if(connection_group->id) {
    if(cJSON_AddNumberToObject(item, "id", connection_group->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // connection_group->active
    if(connection_group->active) {
    if(cJSON_AddBoolToObject(item, "active", connection_group->active) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_group->valid
    if(connection_group->valid) {
    if(cJSON_AddBoolToObject(item, "valid", connection_group->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // connection_group->owner
    if(connection_group->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(connection_group->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connection_group->name
    if(connection_group->name) {
    if(cJSON_AddStringToObject(item, "name", connection_group->name) == NULL) {
    goto fail; //String
    }
    }


    // connection_group->description
    if(connection_group->description) {
    if(cJSON_AddStringToObject(item, "description", connection_group->description) == NULL) {
    goto fail; //String
    }
    }


    // connection_group->connections
    if(connection_group->connections) {
    cJSON *connections = cJSON_AddArrayToObject(item, "connections");
    if(connections == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connectionsListEntry;
    if (connection_group->connections) {
    list_ForEach(connectionsListEntry, connection_group->connections) {
    cJSON *itemLocal = connection_convertToJSON(connectionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connections, itemLocal);
    }
    }
    }


    // connection_group->permissions
    if(connection_group->permissions) {
    cJSON *permissions_local_JSON = group_permissions_convertToJSON(connection_group->permissions);
    if(permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "permissions", permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connection_group->image
    if(connection_group->image) {
    cJSON *image_local_JSON = asset_convertToJSON(connection_group->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // connection_group->sub_groups
    if(connection_group->sub_groups) {
    cJSON *sub_groups = cJSON_AddArrayToObject(item, "subGroups");
    if(sub_groups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sub_groupsListEntry;
    if (connection_group->sub_groups) {
    list_ForEach(sub_groupsListEntry, connection_group->sub_groups) {
    cJSON *itemLocal = connection_group_convertToJSON(sub_groupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sub_groups, itemLocal);
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

connection_group_t *connection_group_parseFromJSON(cJSON *connection_groupJSON){

    connection_group_t *connection_group_local_var = NULL;

    // define the local variable for connection_group->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for connection_group->connections
    list_t *connectionsList = NULL;

    // define the local variable for connection_group->permissions
    group_permissions_t *permissions_local_nonprim = NULL;

    // define the local variable for connection_group->image
    asset_t *image_local_nonprim = NULL;

    // define the local list for connection_group->sub_groups
    list_t *sub_groupsList = NULL;

    // connection_group->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // connection_group->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // connection_group->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // connection_group->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // connection_group->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // connection_group->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // connection_group->connections
    cJSON *connections = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "connections");
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
        connection_t *connectionsItem = connection_parseFromJSON(connections_local_nonprimitive);

        list_addElement(connectionsList, connectionsItem);
    }
    }

    // connection_group->permissions
    cJSON *permissions = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "permissions");
    if (cJSON_IsNull(permissions)) {
        permissions = NULL;
    }
    if (permissions) { 
    permissions_local_nonprim = group_permissions_parseFromJSON(permissions); //nonprimitive
    }

    // connection_group->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }

    // connection_group->sub_groups
    cJSON *sub_groups = cJSON_GetObjectItemCaseSensitive(connection_groupJSON, "subGroups");
    if (cJSON_IsNull(sub_groups)) {
        sub_groups = NULL;
    }
    if (sub_groups) { 
    cJSON *sub_groups_local_nonprimitive = NULL;
    if(!cJSON_IsArray(sub_groups)){
        goto end; //nonprimitive container
    }

    sub_groupsList = list_createList();

    cJSON_ArrayForEach(sub_groups_local_nonprimitive,sub_groups )
    {
        if(!cJSON_IsObject(sub_groups_local_nonprimitive)){
            goto end;
        }
        connection_group_t *sub_groupsItem = connection_group_parseFromJSON(sub_groups_local_nonprimitive);

        list_addElement(sub_groupsList, sub_groupsItem);
    }
    }


    connection_group_local_var = connection_group_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        connections ? connectionsList : NULL,
        permissions ? permissions_local_nonprim : NULL,
        image ? image_local_nonprim : NULL,
        sub_groups ? sub_groupsList : NULL
        );

    return connection_group_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (connectionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, connectionsList) {
            connection_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(connectionsList);
        connectionsList = NULL;
    }
    if (permissions_local_nonprim) {
        group_permissions_free(permissions_local_nonprim);
        permissions_local_nonprim = NULL;
    }
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (sub_groupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sub_groupsList) {
            connection_group_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sub_groupsList);
        sub_groupsList = NULL;
    }
    return NULL;

}
