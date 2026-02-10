#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "flag.h"



static flag_t *flag_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *flagable_object_type,
    long flagable_object_id,
    char *flag_description,
    char *app
    ) {
    flag_t *flag_local_var = malloc(sizeof(flag_t));
    if (!flag_local_var) {
        return NULL;
    }
    flag_local_var->id = id;
    flag_local_var->active = active;
    flag_local_var->valid = valid;
    flag_local_var->owner = owner;
    flag_local_var->flagable_object_type = flagable_object_type;
    flag_local_var->flagable_object_id = flagable_object_id;
    flag_local_var->flag_description = flag_description;
    flag_local_var->app = app;

    flag_local_var->_library_owned = 1;
    return flag_local_var;
}

__attribute__((deprecated)) flag_t *flag_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *flagable_object_type,
    long flagable_object_id,
    char *flag_description,
    char *app
    ) {
    return flag_create_internal (
        id,
        active,
        valid,
        owner,
        flagable_object_type,
        flagable_object_id,
        flag_description,
        app
        );
}

void flag_free(flag_t *flag) {
    if(NULL == flag){
        return ;
    }
    if(flag->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "flag_free");
        return ;
    }
    listEntry_t *listEntry;
    if (flag->owner) {
        account_free(flag->owner);
        flag->owner = NULL;
    }
    if (flag->flagable_object_type) {
        free(flag->flagable_object_type);
        flag->flagable_object_type = NULL;
    }
    if (flag->flag_description) {
        free(flag->flag_description);
        flag->flag_description = NULL;
    }
    if (flag->app) {
        free(flag->app);
        flag->app = NULL;
    }
    free(flag);
}

cJSON *flag_convertToJSON(flag_t *flag) {
    cJSON *item = cJSON_CreateObject();

    // flag->id
    if(flag->id) {
    if(cJSON_AddNumberToObject(item, "id", flag->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // flag->active
    if(flag->active) {
    if(cJSON_AddBoolToObject(item, "active", flag->active) == NULL) {
    goto fail; //Bool
    }
    }


    // flag->valid
    if(flag->valid) {
    if(cJSON_AddBoolToObject(item, "valid", flag->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // flag->owner
    if(flag->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(flag->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // flag->flagable_object_type
    if(flag->flagable_object_type) {
    if(cJSON_AddStringToObject(item, "flagableObjectType", flag->flagable_object_type) == NULL) {
    goto fail; //String
    }
    }


    // flag->flagable_object_id
    if(flag->flagable_object_id) {
    if(cJSON_AddNumberToObject(item, "flagableObjectId", flag->flagable_object_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // flag->flag_description
    if(flag->flag_description) {
    if(cJSON_AddStringToObject(item, "flagDescription", flag->flag_description) == NULL) {
    goto fail; //String
    }
    }


    // flag->app
    if(flag->app) {
    if(cJSON_AddStringToObject(item, "app", flag->app) == NULL) {
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

flag_t *flag_parseFromJSON(cJSON *flagJSON){

    flag_t *flag_local_var = NULL;

    // define the local variable for flag->owner
    account_t *owner_local_nonprim = NULL;

    // flag->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(flagJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // flag->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(flagJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // flag->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(flagJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // flag->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(flagJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // flag->flagable_object_type
    cJSON *flagable_object_type = cJSON_GetObjectItemCaseSensitive(flagJSON, "flagableObjectType");
    if (cJSON_IsNull(flagable_object_type)) {
        flagable_object_type = NULL;
    }
    if (flagable_object_type) { 
    if(!cJSON_IsString(flagable_object_type) && !cJSON_IsNull(flagable_object_type))
    {
    goto end; //String
    }
    }

    // flag->flagable_object_id
    cJSON *flagable_object_id = cJSON_GetObjectItemCaseSensitive(flagJSON, "flagableObjectId");
    if (cJSON_IsNull(flagable_object_id)) {
        flagable_object_id = NULL;
    }
    if (flagable_object_id) { 
    if(!cJSON_IsNumber(flagable_object_id))
    {
    goto end; //Numeric
    }
    }

    // flag->flag_description
    cJSON *flag_description = cJSON_GetObjectItemCaseSensitive(flagJSON, "flagDescription");
    if (cJSON_IsNull(flag_description)) {
        flag_description = NULL;
    }
    if (flag_description) { 
    if(!cJSON_IsString(flag_description) && !cJSON_IsNull(flag_description))
    {
    goto end; //String
    }
    }

    // flag->app
    cJSON *app = cJSON_GetObjectItemCaseSensitive(flagJSON, "app");
    if (cJSON_IsNull(app)) {
        app = NULL;
    }
    if (app) { 
    if(!cJSON_IsString(app) && !cJSON_IsNull(app))
    {
    goto end; //String
    }
    }


    flag_local_var = flag_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        flagable_object_type && !cJSON_IsNull(flagable_object_type) ? strdup(flagable_object_type->valuestring) : NULL,
        flagable_object_id ? flagable_object_id->valuedouble : 0,
        flag_description && !cJSON_IsNull(flag_description) ? strdup(flag_description->valuestring) : NULL,
        app && !cJSON_IsNull(app) ? strdup(app->valuestring) : NULL
        );

    return flag_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
