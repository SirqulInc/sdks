#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "category_tree_response.h"



static category_tree_response_t *category_tree_response_create_internal(
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
    char *external_type,
    list_t *children
    ) {
    category_tree_response_t *category_tree_response_local_var = malloc(sizeof(category_tree_response_t));
    if (!category_tree_response_local_var) {
        return NULL;
    }
    category_tree_response_local_var->category_id = category_id;
    category_tree_response_local_var->name = name;
    category_tree_response_local_var->display = display;
    category_tree_response_local_var->sub_category_count = sub_category_count;
    category_tree_response_local_var->parent_id = parent_id;
    category_tree_response_local_var->parent_name = parent_name;
    category_tree_response_local_var->description = description;
    category_tree_response_local_var->active = active;
    category_tree_response_local_var->asset = asset;
    category_tree_response_local_var->favorite_id = favorite_id;
    category_tree_response_local_var->favorite = favorite;
    category_tree_response_local_var->application_id = application_id;
    category_tree_response_local_var->type = type;
    category_tree_response_local_var->external_id = external_id;
    category_tree_response_local_var->external_type = external_type;
    category_tree_response_local_var->children = children;

    category_tree_response_local_var->_library_owned = 1;
    return category_tree_response_local_var;
}

__attribute__((deprecated)) category_tree_response_t *category_tree_response_create(
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
    char *external_type,
    list_t *children
    ) {
    return category_tree_response_create_internal (
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
        external_type,
        children
        );
}

void category_tree_response_free(category_tree_response_t *category_tree_response) {
    if(NULL == category_tree_response){
        return ;
    }
    if(category_tree_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "category_tree_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (category_tree_response->name) {
        free(category_tree_response->name);
        category_tree_response->name = NULL;
    }
    if (category_tree_response->display) {
        free(category_tree_response->display);
        category_tree_response->display = NULL;
    }
    if (category_tree_response->parent_name) {
        free(category_tree_response->parent_name);
        category_tree_response->parent_name = NULL;
    }
    if (category_tree_response->description) {
        free(category_tree_response->description);
        category_tree_response->description = NULL;
    }
    if (category_tree_response->asset) {
        asset_short_response_free(category_tree_response->asset);
        category_tree_response->asset = NULL;
    }
    if (category_tree_response->type) {
        free(category_tree_response->type);
        category_tree_response->type = NULL;
    }
    if (category_tree_response->external_id) {
        free(category_tree_response->external_id);
        category_tree_response->external_id = NULL;
    }
    if (category_tree_response->external_type) {
        free(category_tree_response->external_type);
        category_tree_response->external_type = NULL;
    }
    if (category_tree_response->children) {
        list_ForEach(listEntry, category_tree_response->children) {
            category_tree_response_free(listEntry->data);
        }
        list_freeList(category_tree_response->children);
        category_tree_response->children = NULL;
    }
    free(category_tree_response);
}

cJSON *category_tree_response_convertToJSON(category_tree_response_t *category_tree_response) {
    cJSON *item = cJSON_CreateObject();

    // category_tree_response->category_id
    if(category_tree_response->category_id) {
    if(cJSON_AddNumberToObject(item, "categoryId", category_tree_response->category_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_tree_response->name
    if(category_tree_response->name) {
    if(cJSON_AddStringToObject(item, "name", category_tree_response->name) == NULL) {
    goto fail; //String
    }
    }


    // category_tree_response->display
    if(category_tree_response->display) {
    if(cJSON_AddStringToObject(item, "display", category_tree_response->display) == NULL) {
    goto fail; //String
    }
    }


    // category_tree_response->sub_category_count
    if(category_tree_response->sub_category_count) {
    if(cJSON_AddNumberToObject(item, "subCategoryCount", category_tree_response->sub_category_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_tree_response->parent_id
    if(category_tree_response->parent_id) {
    if(cJSON_AddNumberToObject(item, "parentId", category_tree_response->parent_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_tree_response->parent_name
    if(category_tree_response->parent_name) {
    if(cJSON_AddStringToObject(item, "parentName", category_tree_response->parent_name) == NULL) {
    goto fail; //String
    }
    }


    // category_tree_response->description
    if(category_tree_response->description) {
    if(cJSON_AddStringToObject(item, "description", category_tree_response->description) == NULL) {
    goto fail; //String
    }
    }


    // category_tree_response->active
    if(category_tree_response->active) {
    if(cJSON_AddBoolToObject(item, "active", category_tree_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // category_tree_response->asset
    if(category_tree_response->asset) {
    cJSON *asset_local_JSON = asset_short_response_convertToJSON(category_tree_response->asset);
    if(asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asset", asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // category_tree_response->favorite_id
    if(category_tree_response->favorite_id) {
    if(cJSON_AddNumberToObject(item, "favoriteId", category_tree_response->favorite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_tree_response->favorite
    if(category_tree_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", category_tree_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }


    // category_tree_response->application_id
    if(category_tree_response->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", category_tree_response->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category_tree_response->type
    if(category_tree_response->type) {
    if(cJSON_AddStringToObject(item, "type", category_tree_response->type) == NULL) {
    goto fail; //String
    }
    }


    // category_tree_response->external_id
    if(category_tree_response->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", category_tree_response->external_id) == NULL) {
    goto fail; //String
    }
    }


    // category_tree_response->external_type
    if(category_tree_response->external_type) {
    if(cJSON_AddStringToObject(item, "externalType", category_tree_response->external_type) == NULL) {
    goto fail; //String
    }
    }


    // category_tree_response->children
    if(category_tree_response->children) {
    cJSON *children = cJSON_AddArrayToObject(item, "children");
    if(children == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *childrenListEntry;
    if (category_tree_response->children) {
    list_ForEach(childrenListEntry, category_tree_response->children) {
    cJSON *itemLocal = category_tree_response_convertToJSON(childrenListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(children, itemLocal);
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

category_tree_response_t *category_tree_response_parseFromJSON(cJSON *category_tree_responseJSON){

    category_tree_response_t *category_tree_response_local_var = NULL;

    // define the local variable for category_tree_response->asset
    asset_short_response_t *asset_local_nonprim = NULL;

    // define the local list for category_tree_response->children
    list_t *childrenList = NULL;

    // category_tree_response->category_id
    cJSON *category_id = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "categoryId");
    if (cJSON_IsNull(category_id)) {
        category_id = NULL;
    }
    if (category_id) { 
    if(!cJSON_IsNumber(category_id))
    {
    goto end; //Numeric
    }
    }

    // category_tree_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // category_tree_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // category_tree_response->sub_category_count
    cJSON *sub_category_count = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "subCategoryCount");
    if (cJSON_IsNull(sub_category_count)) {
        sub_category_count = NULL;
    }
    if (sub_category_count) { 
    if(!cJSON_IsNumber(sub_category_count))
    {
    goto end; //Numeric
    }
    }

    // category_tree_response->parent_id
    cJSON *parent_id = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "parentId");
    if (cJSON_IsNull(parent_id)) {
        parent_id = NULL;
    }
    if (parent_id) { 
    if(!cJSON_IsNumber(parent_id))
    {
    goto end; //Numeric
    }
    }

    // category_tree_response->parent_name
    cJSON *parent_name = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "parentName");
    if (cJSON_IsNull(parent_name)) {
        parent_name = NULL;
    }
    if (parent_name) { 
    if(!cJSON_IsString(parent_name) && !cJSON_IsNull(parent_name))
    {
    goto end; //String
    }
    }

    // category_tree_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // category_tree_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // category_tree_response->asset
    cJSON *asset = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "asset");
    if (cJSON_IsNull(asset)) {
        asset = NULL;
    }
    if (asset) { 
    asset_local_nonprim = asset_short_response_parseFromJSON(asset); //nonprimitive
    }

    // category_tree_response->favorite_id
    cJSON *favorite_id = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "favoriteId");
    if (cJSON_IsNull(favorite_id)) {
        favorite_id = NULL;
    }
    if (favorite_id) { 
    if(!cJSON_IsNumber(favorite_id))
    {
    goto end; //Numeric
    }
    }

    // category_tree_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }

    // category_tree_response->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // category_tree_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // category_tree_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // category_tree_response->external_type
    cJSON *external_type = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "externalType");
    if (cJSON_IsNull(external_type)) {
        external_type = NULL;
    }
    if (external_type) { 
    if(!cJSON_IsString(external_type) && !cJSON_IsNull(external_type))
    {
    goto end; //String
    }
    }

    // category_tree_response->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(category_tree_responseJSON, "children");
    if (cJSON_IsNull(children)) {
        children = NULL;
    }
    if (children) { 
    cJSON *children_local_nonprimitive = NULL;
    if(!cJSON_IsArray(children)){
        goto end; //nonprimitive container
    }

    childrenList = list_createList();

    cJSON_ArrayForEach(children_local_nonprimitive,children )
    {
        if(!cJSON_IsObject(children_local_nonprimitive)){
            goto end;
        }
        category_tree_response_t *childrenItem = category_tree_response_parseFromJSON(children_local_nonprimitive);

        list_addElement(childrenList, childrenItem);
    }
    }


    category_tree_response_local_var = category_tree_response_create_internal (
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
        external_type && !cJSON_IsNull(external_type) ? strdup(external_type->valuestring) : NULL,
        children ? childrenList : NULL
        );

    return category_tree_response_local_var;
end:
    if (asset_local_nonprim) {
        asset_short_response_free(asset_local_nonprim);
        asset_local_nonprim = NULL;
    }
    if (childrenList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, childrenList) {
            category_tree_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(childrenList);
        childrenList = NULL;
    }
    return NULL;

}
