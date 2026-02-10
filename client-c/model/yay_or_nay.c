#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "yay_or_nay.h"



static yay_or_nay_t *yay_or_nay_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    int yay_or_nay,
    char *likable_object_type,
    long likable_object_id
    ) {
    yay_or_nay_t *yay_or_nay_local_var = malloc(sizeof(yay_or_nay_t));
    if (!yay_or_nay_local_var) {
        return NULL;
    }
    yay_or_nay_local_var->id = id;
    yay_or_nay_local_var->active = active;
    yay_or_nay_local_var->valid = valid;
    yay_or_nay_local_var->owner = owner;
    yay_or_nay_local_var->yay_or_nay = yay_or_nay;
    yay_or_nay_local_var->likable_object_type = likable_object_type;
    yay_or_nay_local_var->likable_object_id = likable_object_id;

    yay_or_nay_local_var->_library_owned = 1;
    return yay_or_nay_local_var;
}

__attribute__((deprecated)) yay_or_nay_t *yay_or_nay_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    int yay_or_nay,
    char *likable_object_type,
    long likable_object_id
    ) {
    return yay_or_nay_create_internal (
        id,
        active,
        valid,
        owner,
        yay_or_nay,
        likable_object_type,
        likable_object_id
        );
}

void yay_or_nay_free(yay_or_nay_t *yay_or_nay) {
    if(NULL == yay_or_nay){
        return ;
    }
    if(yay_or_nay->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "yay_or_nay_free");
        return ;
    }
    listEntry_t *listEntry;
    if (yay_or_nay->owner) {
        account_free(yay_or_nay->owner);
        yay_or_nay->owner = NULL;
    }
    if (yay_or_nay->likable_object_type) {
        free(yay_or_nay->likable_object_type);
        yay_or_nay->likable_object_type = NULL;
    }
    free(yay_or_nay);
}

cJSON *yay_or_nay_convertToJSON(yay_or_nay_t *yay_or_nay) {
    cJSON *item = cJSON_CreateObject();

    // yay_or_nay->id
    if(yay_or_nay->id) {
    if(cJSON_AddNumberToObject(item, "id", yay_or_nay->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // yay_or_nay->active
    if(yay_or_nay->active) {
    if(cJSON_AddBoolToObject(item, "active", yay_or_nay->active) == NULL) {
    goto fail; //Bool
    }
    }


    // yay_or_nay->valid
    if(yay_or_nay->valid) {
    if(cJSON_AddBoolToObject(item, "valid", yay_or_nay->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // yay_or_nay->owner
    if(yay_or_nay->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(yay_or_nay->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // yay_or_nay->yay_or_nay
    if(yay_or_nay->yay_or_nay) {
    if(cJSON_AddBoolToObject(item, "yayOrNay", yay_or_nay->yay_or_nay) == NULL) {
    goto fail; //Bool
    }
    }


    // yay_or_nay->likable_object_type
    if(yay_or_nay->likable_object_type) {
    if(cJSON_AddStringToObject(item, "likableObjectType", yay_or_nay->likable_object_type) == NULL) {
    goto fail; //String
    }
    }


    // yay_or_nay->likable_object_id
    if(yay_or_nay->likable_object_id) {
    if(cJSON_AddNumberToObject(item, "likableObjectId", yay_or_nay->likable_object_id) == NULL) {
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

yay_or_nay_t *yay_or_nay_parseFromJSON(cJSON *yay_or_nayJSON){

    yay_or_nay_t *yay_or_nay_local_var = NULL;

    // define the local variable for yay_or_nay->owner
    account_t *owner_local_nonprim = NULL;

    // yay_or_nay->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(yay_or_nayJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // yay_or_nay->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(yay_or_nayJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // yay_or_nay->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(yay_or_nayJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // yay_or_nay->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(yay_or_nayJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // yay_or_nay->yay_or_nay
    cJSON *yay_or_nay = cJSON_GetObjectItemCaseSensitive(yay_or_nayJSON, "yayOrNay");
    if (cJSON_IsNull(yay_or_nay)) {
        yay_or_nay = NULL;
    }
    if (yay_or_nay) { 
    if(!cJSON_IsBool(yay_or_nay))
    {
    goto end; //Bool
    }
    }

    // yay_or_nay->likable_object_type
    cJSON *likable_object_type = cJSON_GetObjectItemCaseSensitive(yay_or_nayJSON, "likableObjectType");
    if (cJSON_IsNull(likable_object_type)) {
        likable_object_type = NULL;
    }
    if (likable_object_type) { 
    if(!cJSON_IsString(likable_object_type) && !cJSON_IsNull(likable_object_type))
    {
    goto end; //String
    }
    }

    // yay_or_nay->likable_object_id
    cJSON *likable_object_id = cJSON_GetObjectItemCaseSensitive(yay_or_nayJSON, "likableObjectId");
    if (cJSON_IsNull(likable_object_id)) {
        likable_object_id = NULL;
    }
    if (likable_object_id) { 
    if(!cJSON_IsNumber(likable_object_id))
    {
    goto end; //Numeric
    }
    }


    yay_or_nay_local_var = yay_or_nay_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        yay_or_nay ? yay_or_nay->valueint : 0,
        likable_object_type && !cJSON_IsNull(likable_object_type) ? strdup(likable_object_type->valuestring) : NULL,
        likable_object_id ? likable_object_id->valuedouble : 0
        );

    return yay_or_nay_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
