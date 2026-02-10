#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "blob_file.h"



static blob_file_t *blob_file_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    application_t *application,
    char *folder_uri,
    char *file_name,
    list_t *file
    ) {
    blob_file_t *blob_file_local_var = malloc(sizeof(blob_file_t));
    if (!blob_file_local_var) {
        return NULL;
    }
    blob_file_local_var->id = id;
    blob_file_local_var->active = active;
    blob_file_local_var->valid = valid;
    blob_file_local_var->owner = owner;
    blob_file_local_var->application = application;
    blob_file_local_var->folder_uri = folder_uri;
    blob_file_local_var->file_name = file_name;
    blob_file_local_var->file = file;

    blob_file_local_var->_library_owned = 1;
    return blob_file_local_var;
}

__attribute__((deprecated)) blob_file_t *blob_file_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    application_t *application,
    char *folder_uri,
    char *file_name,
    list_t *file
    ) {
    return blob_file_create_internal (
        id,
        active,
        valid,
        owner,
        application,
        folder_uri,
        file_name,
        file
        );
}

void blob_file_free(blob_file_t *blob_file) {
    if(NULL == blob_file){
        return ;
    }
    if(blob_file->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "blob_file_free");
        return ;
    }
    listEntry_t *listEntry;
    if (blob_file->owner) {
        account_free(blob_file->owner);
        blob_file->owner = NULL;
    }
    if (blob_file->application) {
        application_free(blob_file->application);
        blob_file->application = NULL;
    }
    if (blob_file->folder_uri) {
        free(blob_file->folder_uri);
        blob_file->folder_uri = NULL;
    }
    if (blob_file->file_name) {
        free(blob_file->file_name);
        blob_file->file_name = NULL;
    }
    if (blob_file->file) {
        list_ForEach(listEntry, blob_file->file) {
            free(listEntry->data);
        }
        list_freeList(blob_file->file);
        blob_file->file = NULL;
    }
    free(blob_file);
}

cJSON *blob_file_convertToJSON(blob_file_t *blob_file) {
    cJSON *item = cJSON_CreateObject();

    // blob_file->id
    if(blob_file->id) {
    if(cJSON_AddNumberToObject(item, "id", blob_file->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // blob_file->active
    if(blob_file->active) {
    if(cJSON_AddBoolToObject(item, "active", blob_file->active) == NULL) {
    goto fail; //Bool
    }
    }


    // blob_file->valid
    if(blob_file->valid) {
    if(cJSON_AddBoolToObject(item, "valid", blob_file->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // blob_file->owner
    if(blob_file->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(blob_file->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // blob_file->application
    if(blob_file->application) {
    cJSON *application_local_JSON = application_convertToJSON(blob_file->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // blob_file->folder_uri
    if(blob_file->folder_uri) {
    if(cJSON_AddStringToObject(item, "folderUri", blob_file->folder_uri) == NULL) {
    goto fail; //String
    }
    }


    // blob_file->file_name
    if(blob_file->file_name) {
    if(cJSON_AddStringToObject(item, "fileName", blob_file->file_name) == NULL) {
    goto fail; //String
    }
    }


    // blob_file->file
    if(blob_file->file) {
    cJSON *file = cJSON_AddArrayToObject(item, "file");
    if(file == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *fileListEntry;
    list_ForEach(fileListEntry, blob_file->file) {
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

blob_file_t *blob_file_parseFromJSON(cJSON *blob_fileJSON){

    blob_file_t *blob_file_local_var = NULL;

    // define the local variable for blob_file->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for blob_file->application
    application_t *application_local_nonprim = NULL;

    // define the local list for blob_file->file
    list_t *fileList = NULL;

    // blob_file->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // blob_file->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // blob_file->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // blob_file->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // blob_file->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // blob_file->folder_uri
    cJSON *folder_uri = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "folderUri");
    if (cJSON_IsNull(folder_uri)) {
        folder_uri = NULL;
    }
    if (folder_uri) { 
    if(!cJSON_IsString(folder_uri) && !cJSON_IsNull(folder_uri))
    {
    goto end; //String
    }
    }

    // blob_file->file_name
    cJSON *file_name = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "fileName");
    if (cJSON_IsNull(file_name)) {
        file_name = NULL;
    }
    if (file_name) { 
    if(!cJSON_IsString(file_name) && !cJSON_IsNull(file_name))
    {
    goto end; //String
    }
    }

    // blob_file->file
    cJSON *file = cJSON_GetObjectItemCaseSensitive(blob_fileJSON, "file");
    if (cJSON_IsNull(file)) {
        file = NULL;
    }
    if (file) { 
    cJSON *file_local = NULL;
    if(!cJSON_IsArray(file)) {
        goto end;//primitive container
    }
    fileList = list_createList();

    cJSON_ArrayForEach(file_local, file)
    {
    }
    }


    blob_file_local_var = blob_file_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        application ? application_local_nonprim : NULL,
        folder_uri && !cJSON_IsNull(folder_uri) ? strdup(folder_uri->valuestring) : NULL,
        file_name && !cJSON_IsNull(file_name) ? strdup(file_name->valuestring) : NULL,
        file ? fileList : NULL
        );

    return blob_file_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (fileList) {
        list_freeList(fileList);
        fileList = NULL;
    }
    return NULL;

}
