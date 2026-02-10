#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "category_response.h"



static category_response_t *category_response_create_internal(
    long category_id,
    char *name,
    char *display,
    long sub_category_count,
    long parent_id,
    char *parent_name,
    char *description,
    int active,
    asset_short_response_t *asset,
    long favorite_id,
    int favorite,
    long application_id,
    char *type,
    char *external_id,
    char *external_type
    ) {
    category_response_t *category_response_local_var = malloc(sizeof(category_response_t));
    if (!category_response_local_var) {
        return NULL;
    }
    category_response_local_var->category_id = category_id;
    category_response_local_var->name = name;
    category_response_local_var->display = display;
    category_response_local_var->sub_category_count = sub_category_count;
    category_response_local_var->parent_id = parent_id;
    category_response_local_var->parent_name = parent_name;
    category_response_local_var->description = description;
    category_response_local_var->active = active;
    category_response_local_var->asset = asset;
    category_response_local_var->favorite_id = favorite_id;
    category_response_local_var->favorite = favorite;
    category_response_local_var->application_id = application_id;
    category_response_local_var->type = type;
    category_response_local_var->external_id = external_id;
    category_response_local_var->external_type = external_type;

    category_response_local_var->_library_owned = 1;
    return category_response_local_var;
}

__attribute__((deprecated)) category_response_t *category_response_create(
    long category_id,
    char *name,
    char *display,
    long sub_category_count,
    long parent_id,
    char *parent_name,
    char *description,
    int active,
    asset_short_response_t *asset,
    long favorite_id,
    int favorite,
    long application_id,
    char *type,
    char *external_id,
    char *external_type
    ) {
    return category_response_create_internal (
        category_id,
        name,
        display,
        sub_category_count,
        parent_id,
        parent_name,
        description,
        active,
        asset,
        favorite_id,
        favorite,
        application_id,
        type,
        external_id,
        external_type
        );
}

void category_response_free(category_response_t *category_response) {
    if(NULL == category_response){
        return ;
    }
    if(category_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "category_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (category_response->name) {
        free(category_response->name);
        category_response->name = NULL;
    }
    if (category_response->display) {
        free(category_response->display);
        category_response->display = NULL;
    }
    if (category_response->parent_name) {
        free(category_response->parent_name);
        category_response->parent_name = NULL;
    }
    if (category_response->description) {
        free(category_response->description);
        category_response->description = NULL;
    }
    if (category_response->asset) {
        asset_short_response_free(category_response->asset);
        category_response->asset = NULL;
    }
    if (category_response->type) {
        free(category_response->type);
        category_response->type = NULL;
    }
    if (category_response->external_id) {
        free(category_response->external_id);
        category_response->external_id = NULL;
    }
    if (category_response->external_type) {
        free(category_response->external_type);
        category_response->external_type = NULL;
    }
    free(category_response);
}

cJSON *category_response_convertToJSON(category_response_t *category_response) {
    cJSON *item = cJSON_CreateObject();

    // category_response->category_id
    if(category_response->category_id) {
    if(cJSON_AddNumberToObject(item, "categoryId", category_response->category_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_response->name
    if(category_response->name) {
    if(cJSON_AddStringToObject(item, "name", category_response->name) == NULL) {
    goto fail; //String
    }
    }


    // category_response->display
    if(category_response->display) {
    if(cJSON_AddStringToObject(item, "display", category_response->display) == NULL) {
    goto fail; //String
    }
    }


    // category_response->sub_category_count
    if(category_response->sub_category_count) {
    if(cJSON_AddNumberToObject(item, "subCategoryCount", category_response->sub_category_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_response->parent_id
    if(category_response->parent_id) {
    if(cJSON_AddNumberToObject(item, "parentId", category_response->parent_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_response->parent_name
    if(category_response->parent_name) {
    if(cJSON_AddStringToObject(item, "parentName", category_response->parent_name) == NULL) {
    goto fail; //String
    }
    }


    // category_response->description
    if(category_response->description) {
    if(cJSON_AddStringToObject(item, "description", category_response->description) == NULL) {
    goto fail; //String
    }
    }


    // category_response->active
    if(category_response->active) {
    if(cJSON_AddBoolToObject(item, "active", category_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // category_response->asset
    if(category_response->asset) {
    cJSON *asset_local_JSON = asset_short_response_convertToJSON(category_response->asset);
    if(asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asset", asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // category_response->favorite_id
    if(category_response->favorite_id) {
    if(cJSON_AddNumberToObject(item, "favoriteId", category_response->favorite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_response->favorite
    if(category_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", category_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }


    // category_response->application_id
    if(category_response->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", category_response->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_response->type
    if(category_response->type) {
    if(cJSON_AddStringToObject(item, "type", category_response->type) == NULL) {
    goto fail; //String
    }
    }


    // category_response->external_id
    if(category_response->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", category_response->external_id) == NULL) {
    goto fail; //String
    }
    }


    // category_response->external_type
    if(category_response->external_type) {
    if(cJSON_AddStringToObject(item, "externalType", category_response->external_type) == NULL) {
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

category_response_t *category_response_parseFromJSON(cJSON *category_responseJSON){

    category_response_t *category_response_local_var = NULL;

    // define the local variable for category_response->asset
    asset_short_response_t *asset_local_nonprim = NULL;

    // category_response->category_id
    cJSON *category_id = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "categoryId");
    if (cJSON_IsNull(category_id)) {
        category_id = NULL;
    }
    if (category_id) { 
    if(!cJSON_IsNumber(category_id))
    {
    goto end; //Numeric
    }
    }

    // category_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // category_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // category_response->sub_category_count
    cJSON *sub_category_count = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "subCategoryCount");
    if (cJSON_IsNull(sub_category_count)) {
        sub_category_count = NULL;
    }
    if (sub_category_count) { 
    if(!cJSON_IsNumber(sub_category_count))
    {
    goto end; //Numeric
    }
    }

    // category_response->parent_id
    cJSON *parent_id = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "parentId");
    if (cJSON_IsNull(parent_id)) {
        parent_id = NULL;
    }
    if (parent_id) { 
    if(!cJSON_IsNumber(parent_id))
    {
    goto end; //Numeric
    }
    }

    // category_response->parent_name
    cJSON *parent_name = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "parentName");
    if (cJSON_IsNull(parent_name)) {
        parent_name = NULL;
    }
    if (parent_name) { 
    if(!cJSON_IsString(parent_name) && !cJSON_IsNull(parent_name))
    {
    goto end; //String
    }
    }

    // category_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // category_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // category_response->asset
    cJSON *asset = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "asset");
    if (cJSON_IsNull(asset)) {
        asset = NULL;
    }
    if (asset) { 
    asset_local_nonprim = asset_short_response_parseFromJSON(asset); //nonprimitive
    }

    // category_response->favorite_id
    cJSON *favorite_id = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "favoriteId");
    if (cJSON_IsNull(favorite_id)) {
        favorite_id = NULL;
    }
    if (favorite_id) { 
    if(!cJSON_IsNumber(favorite_id))
    {
    goto end; //Numeric
    }
    }

    // category_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }

    // category_response->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // category_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // category_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // category_response->external_type
    cJSON *external_type = cJSON_GetObjectItemCaseSensitive(category_responseJSON, "externalType");
    if (cJSON_IsNull(external_type)) {
        external_type = NULL;
    }
    if (external_type) { 
    if(!cJSON_IsString(external_type) && !cJSON_IsNull(external_type))
    {
    goto end; //String
    }
    }


    category_response_local_var = category_response_create_internal (
        category_id ? category_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        sub_category_count ? sub_category_count->valuedouble : 0,
        parent_id ? parent_id->valuedouble : 0,
        parent_name && !cJSON_IsNull(parent_name) ? strdup(parent_name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        active ? active->valueint : 0,
        asset ? asset_local_nonprim : NULL,
        favorite_id ? favorite_id->valuedouble : 0,
        favorite ? favorite->valueint : 0,
        application_id ? application_id->valuedouble : 0,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        external_type && !cJSON_IsNull(external_type) ? strdup(external_type->valuestring) : NULL
        );

    return category_response_local_var;
end:
    if (asset_local_nonprim) {
        asset_short_response_free(asset_local_nonprim);
        asset_local_nonprim = NULL;
    }
    return NULL;

}
