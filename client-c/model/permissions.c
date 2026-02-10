#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "permissions.h"



static permissions_t *permissions_create_internal(
    int read,
    int write,
    int _delete,
    int add
    ) {
    permissions_t *permissions_local_var = malloc(sizeof(permissions_t));
    if (!permissions_local_var) {
        return NULL;
    }
    permissions_local_var->read = read;
    permissions_local_var->write = write;
    permissions_local_var->_delete = _delete;
    permissions_local_var->add = add;

    permissions_local_var->_library_owned = 1;
    return permissions_local_var;
}

__attribute__((deprecated)) permissions_t *permissions_create(
    int read,
    int write,
    int _delete,
    int add
    ) {
    return permissions_create_internal (
        read,
        write,
        _delete,
        add
        );
}

void permissions_free(permissions_t *permissions) {
    if(NULL == permissions){
        return ;
    }
    if(permissions->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "permissions_free");
        return ;
    }
    listEntry_t *listEntry;
    free(permissions);
}

cJSON *permissions_convertToJSON(permissions_t *permissions) {
    cJSON *item = cJSON_CreateObject();

    // permissions->read
    if(permissions->read) {
    if(cJSON_AddBoolToObject(item, "read", permissions->read) == NULL) {
    goto fail; //Bool
    }
    }


    // permissions->write
    if(permissions->write) {
    if(cJSON_AddBoolToObject(item, "write", permissions->write) == NULL) {
    goto fail; //Bool
    }
    }


    // permissions->_delete
    if(permissions->_delete) {
    if(cJSON_AddBoolToObject(item, "delete", permissions->_delete) == NULL) {
    goto fail; //Bool
    }
    }


    // permissions->add
    if(permissions->add) {
    if(cJSON_AddBoolToObject(item, "add", permissions->add) == NULL) {
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

permissions_t *permissions_parseFromJSON(cJSON *permissionsJSON){

    permissions_t *permissions_local_var = NULL;

    // permissions->read
    cJSON *read = cJSON_GetObjectItemCaseSensitive(permissionsJSON, "read");
    if (cJSON_IsNull(read)) {
        read = NULL;
    }
    if (read) { 
    if(!cJSON_IsBool(read))
    {
    goto end; //Bool
    }
    }

    // permissions->write
    cJSON *write = cJSON_GetObjectItemCaseSensitive(permissionsJSON, "write");
    if (cJSON_IsNull(write)) {
        write = NULL;
    }
    if (write) { 
    if(!cJSON_IsBool(write))
    {
    goto end; //Bool
    }
    }

    // permissions->_delete
    cJSON *_delete = cJSON_GetObjectItemCaseSensitive(permissionsJSON, "delete");
    if (cJSON_IsNull(_delete)) {
        _delete = NULL;
    }
    if (_delete) { 
    if(!cJSON_IsBool(_delete))
    {
    goto end; //Bool
    }
    }

    // permissions->add
    cJSON *add = cJSON_GetObjectItemCaseSensitive(permissionsJSON, "add");
    if (cJSON_IsNull(add)) {
        add = NULL;
    }
    if (add) { 
    if(!cJSON_IsBool(add))
    {
    goto end; //Bool
    }
    }


    permissions_local_var = permissions_create_internal (
        read ? read->valueint : 0,
        write ? write->valueint : 0,
        _delete ? _delete->valueint : 0,
        add ? add->valueint : 0
        );

    return permissions_local_var;
end:
    return NULL;

}
