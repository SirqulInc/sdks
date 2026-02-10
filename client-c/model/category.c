#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "category.h"



static category_t *category_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *short_name,
    char *description,
    char *type,
    application_t *application,
    category_t *parent,
    list_t *children,
    long children_count,
    char *display,
    char *sqoot_slug,
    asset_t *asset,
    char *external_id,
    char *external_type,
    long favorite_count,
    category_t *root,
    char *tree,
    char *parent_name,
    long parent_id,
    long application_id,
    char *secondary_type
    ) {
    category_t *category_local_var = malloc(sizeof(category_t));
    if (!category_local_var) {
        return NULL;
    }
    category_local_var->id = id;
    category_local_var->active = active;
    category_local_var->valid = valid;
    category_local_var->name = name;
    category_local_var->short_name = short_name;
    category_local_var->description = description;
    category_local_var->type = type;
    category_local_var->application = application;
    category_local_var->parent = parent;
    category_local_var->children = children;
    category_local_var->children_count = children_count;
    category_local_var->display = display;
    category_local_var->sqoot_slug = sqoot_slug;
    category_local_var->asset = asset;
    category_local_var->external_id = external_id;
    category_local_var->external_type = external_type;
    category_local_var->favorite_count = favorite_count;
    category_local_var->root = root;
    category_local_var->tree = tree;
    category_local_var->parent_name = parent_name;
    category_local_var->parent_id = parent_id;
    category_local_var->application_id = application_id;
    category_local_var->secondary_type = secondary_type;

    category_local_var->_library_owned = 1;
    return category_local_var;
}

__attribute__((deprecated)) category_t *category_create(
    long id,
    int active,
    int valid,
    char *name,
    char *short_name,
    char *description,
    char *type,
    application_t *application,
    category_t *parent,
    list_t *children,
    long children_count,
    char *display,
    char *sqoot_slug,
    asset_t *asset,
    char *external_id,
    char *external_type,
    long favorite_count,
    category_t *root,
    char *tree,
    char *parent_name,
    long parent_id,
    long application_id,
    char *secondary_type
    ) {
    return category_create_internal (
        id,
        active,
        valid,
        name,
        short_name,
        description,
        type,
        application,
        parent,
        children,
        children_count,
        display,
        sqoot_slug,
        asset,
        external_id,
        external_type,
        favorite_count,
        root,
        tree,
        parent_name,
        parent_id,
        application_id,
        secondary_type
        );
}

void category_free(category_t *category) {
    if(NULL == category){
        return ;
    }
    if(category->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "category_free");
        return ;
    }
    listEntry_t *listEntry;
    if (category->name) {
        free(category->name);
        category->name = NULL;
    }
    if (category->short_name) {
        free(category->short_name);
        category->short_name = NULL;
    }
    if (category->description) {
        free(category->description);
        category->description = NULL;
    }
    if (category->type) {
        free(category->type);
        category->type = NULL;
    }
    if (category->application) {
        application_free(category->application);
        category->application = NULL;
    }
    if (category->parent) {
        category_free(category->parent);
        category->parent = NULL;
    }
    if (category->children) {
        list_ForEach(listEntry, category->children) {
            category_free(listEntry->data);
        }
        list_freeList(category->children);
        category->children = NULL;
    }
    if (category->display) {
        free(category->display);
        category->display = NULL;
    }
    if (category->sqoot_slug) {
        free(category->sqoot_slug);
        category->sqoot_slug = NULL;
    }
    if (category->asset) {
        asset_free(category->asset);
        category->asset = NULL;
    }
    if (category->external_id) {
        free(category->external_id);
        category->external_id = NULL;
    }
    if (category->external_type) {
        free(category->external_type);
        category->external_type = NULL;
    }
    if (category->root) {
        category_free(category->root);
        category->root = NULL;
    }
    if (category->tree) {
        free(category->tree);
        category->tree = NULL;
    }
    if (category->parent_name) {
        free(category->parent_name);
        category->parent_name = NULL;
    }
    if (category->secondary_type) {
        free(category->secondary_type);
        category->secondary_type = NULL;
    }
    free(category);
}

cJSON *category_convertToJSON(category_t *category) {
    cJSON *item = cJSON_CreateObject();

    // category->id
    if(category->id) {
    if(cJSON_AddNumberToObject(item, "id", category->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category->active
    if(category->active) {
    if(cJSON_AddBoolToObject(item, "active", category->active) == NULL) {
    goto fail; //Bool
    }
    }


    // category->valid
    if(category->valid) {
    if(cJSON_AddBoolToObject(item, "valid", category->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // category->name
    if(category->name) {
    if(cJSON_AddStringToObject(item, "name", category->name) == NULL) {
    goto fail; //String
    }
    }


    // category->short_name
    if(category->short_name) {
    if(cJSON_AddStringToObject(item, "shortName", category->short_name) == NULL) {
    goto fail; //String
    }
    }


    // category->description
    if(category->description) {
    if(cJSON_AddStringToObject(item, "description", category->description) == NULL) {
    goto fail; //String
    }
    }


    // category->type
    if(category->type) {
    if(cJSON_AddStringToObject(item, "type", category->type) == NULL) {
    goto fail; //String
    }
    }


    // category->application
    if(category->application) {
    cJSON *application_local_JSON = application_convertToJSON(category->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // category->parent
    if(category->parent) {
    cJSON *parent_local_JSON = category_convertToJSON(category->parent);
    if(parent_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parent", parent_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // category->children
    if(category->children) {
    cJSON *children = cJSON_AddArrayToObject(item, "children");
    if(children == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *childrenListEntry;
    if (category->children) {
    list_ForEach(childrenListEntry, category->children) {
    cJSON *itemLocal = category_convertToJSON(childrenListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(children, itemLocal);
    }
    }
    }


    // category->children_count
    if(category->children_count) {
    if(cJSON_AddNumberToObject(item, "childrenCount", category->children_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // category->display
    if(category->display) {
    if(cJSON_AddStringToObject(item, "display", category->display) == NULL) {
    goto fail; //String
    }
    }


    // category->sqoot_slug
    if(category->sqoot_slug) {
    if(cJSON_AddStringToObject(item, "sqootSlug", category->sqoot_slug) == NULL) {
    goto fail; //String
    }
    }


    // category->asset
    if(category->asset) {
    cJSON *asset_local_JSON = asset_convertToJSON(category->asset);
    if(asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asset", asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // category->external_id
    if(category->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", category->external_id) == NULL) {
    goto fail; //String
    }
    }


    // category->external_type
    if(category->external_type) {
    if(cJSON_AddStringToObject(item, "externalType", category->external_type) == NULL) {
    goto fail; //String
    }
    }


    // category->favorite_count
    if(category->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", category->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // category->root
    if(category->root) {
    cJSON *root_local_JSON = category_convertToJSON(category->root);
    if(root_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "root", root_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // category->tree
    if(category->tree) {
    if(cJSON_AddStringToObject(item, "tree", category->tree) == NULL) {
    goto fail; //String
    }
    }


    // category->parent_name
    if(category->parent_name) {
    if(cJSON_AddStringToObject(item, "parentName", category->parent_name) == NULL) {
    goto fail; //String
    }
    }


    // category->parent_id
    if(category->parent_id) {
    if(cJSON_AddNumberToObject(item, "parentId", category->parent_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category->application_id
    if(category->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", category->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // category->secondary_type
    if(category->secondary_type) {
    if(cJSON_AddStringToObject(item, "secondaryType", category->secondary_type) == NULL) {
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

category_t *category_parseFromJSON(cJSON *categoryJSON){

    category_t *category_local_var = NULL;

    // define the local variable for category->application
    application_t *application_local_nonprim = NULL;

    // define the local variable for category->parent
    category_t *parent_local_nonprim = NULL;

    // define the local list for category->children
    list_t *childrenList = NULL;

    // define the local variable for category->asset
    asset_t *asset_local_nonprim = NULL;

    // define the local variable for category->root
    category_t *root_local_nonprim = NULL;

    // category->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(categoryJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // category->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(categoryJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // category->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(categoryJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // category->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(categoryJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // category->short_name
    cJSON *short_name = cJSON_GetObjectItemCaseSensitive(categoryJSON, "shortName");
    if (cJSON_IsNull(short_name)) {
        short_name = NULL;
    }
    if (short_name) { 
    if(!cJSON_IsString(short_name) && !cJSON_IsNull(short_name))
    {
    goto end; //String
    }
    }

    // category->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(categoryJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // category->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(categoryJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // category->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(categoryJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // category->parent
    cJSON *parent = cJSON_GetObjectItemCaseSensitive(categoryJSON, "parent");
    if (cJSON_IsNull(parent)) {
        parent = NULL;
    }
    if (parent) { 
    parent_local_nonprim = category_parseFromJSON(parent); //nonprimitive
    }

    // category->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(categoryJSON, "children");
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
        category_t *childrenItem = category_parseFromJSON(children_local_nonprimitive);

        list_addElement(childrenList, childrenItem);
    }
    }

    // category->children_count
    cJSON *children_count = cJSON_GetObjectItemCaseSensitive(categoryJSON, "childrenCount");
    if (cJSON_IsNull(children_count)) {
        children_count = NULL;
    }
    if (children_count) { 
    if(!cJSON_IsNumber(children_count))
    {
    goto end; //Numeric
    }
    }

    // category->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(categoryJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // category->sqoot_slug
    cJSON *sqoot_slug = cJSON_GetObjectItemCaseSensitive(categoryJSON, "sqootSlug");
    if (cJSON_IsNull(sqoot_slug)) {
        sqoot_slug = NULL;
    }
    if (sqoot_slug) { 
    if(!cJSON_IsString(sqoot_slug) && !cJSON_IsNull(sqoot_slug))
    {
    goto end; //String
    }
    }

    // category->asset
    cJSON *asset = cJSON_GetObjectItemCaseSensitive(categoryJSON, "asset");
    if (cJSON_IsNull(asset)) {
        asset = NULL;
    }
    if (asset) { 
    asset_local_nonprim = asset_parseFromJSON(asset); //nonprimitive
    }

    // category->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(categoryJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // category->external_type
    cJSON *external_type = cJSON_GetObjectItemCaseSensitive(categoryJSON, "externalType");
    if (cJSON_IsNull(external_type)) {
        external_type = NULL;
    }
    if (external_type) { 
    if(!cJSON_IsString(external_type) && !cJSON_IsNull(external_type))
    {
    goto end; //String
    }
    }

    // category->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(categoryJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // category->root
    cJSON *root = cJSON_GetObjectItemCaseSensitive(categoryJSON, "root");
    if (cJSON_IsNull(root)) {
        root = NULL;
    }
    if (root) { 
    root_local_nonprim = category_parseFromJSON(root); //nonprimitive
    }

    // category->tree
    cJSON *tree = cJSON_GetObjectItemCaseSensitive(categoryJSON, "tree");
    if (cJSON_IsNull(tree)) {
        tree = NULL;
    }
    if (tree) { 
    if(!cJSON_IsString(tree) && !cJSON_IsNull(tree))
    {
    goto end; //String
    }
    }

    // category->parent_name
    cJSON *parent_name = cJSON_GetObjectItemCaseSensitive(categoryJSON, "parentName");
    if (cJSON_IsNull(parent_name)) {
        parent_name = NULL;
    }
    if (parent_name) { 
    if(!cJSON_IsString(parent_name) && !cJSON_IsNull(parent_name))
    {
    goto end; //String
    }
    }

    // category->parent_id
    cJSON *parent_id = cJSON_GetObjectItemCaseSensitive(categoryJSON, "parentId");
    if (cJSON_IsNull(parent_id)) {
        parent_id = NULL;
    }
    if (parent_id) { 
    if(!cJSON_IsNumber(parent_id))
    {
    goto end; //Numeric
    }
    }

    // category->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(categoryJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // category->secondary_type
    cJSON *secondary_type = cJSON_GetObjectItemCaseSensitive(categoryJSON, "secondaryType");
    if (cJSON_IsNull(secondary_type)) {
        secondary_type = NULL;
    }
    if (secondary_type) { 
    if(!cJSON_IsString(secondary_type) && !cJSON_IsNull(secondary_type))
    {
    goto end; //String
    }
    }


    category_local_var = category_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        short_name && !cJSON_IsNull(short_name) ? strdup(short_name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        application ? application_local_nonprim : NULL,
        parent ? parent_local_nonprim : NULL,
        children ? childrenList : NULL,
        children_count ? children_count->valuedouble : 0,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        sqoot_slug && !cJSON_IsNull(sqoot_slug) ? strdup(sqoot_slug->valuestring) : NULL,
        asset ? asset_local_nonprim : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        external_type && !cJSON_IsNull(external_type) ? strdup(external_type->valuestring) : NULL,
        favorite_count ? favorite_count->valuedouble : 0,
        root ? root_local_nonprim : NULL,
        tree && !cJSON_IsNull(tree) ? strdup(tree->valuestring) : NULL,
        parent_name && !cJSON_IsNull(parent_name) ? strdup(parent_name->valuestring) : NULL,
        parent_id ? parent_id->valuedouble : 0,
        application_id ? application_id->valuedouble : 0,
        secondary_type && !cJSON_IsNull(secondary_type) ? strdup(secondary_type->valuestring) : NULL
        );

    return category_local_var;
end:
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (parent_local_nonprim) {
        category_free(parent_local_nonprim);
        parent_local_nonprim = NULL;
    }
    if (childrenList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, childrenList) {
            category_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(childrenList);
        childrenList = NULL;
    }
    if (asset_local_nonprim) {
        asset_free(asset_local_nonprim);
        asset_local_nonprim = NULL;
    }
    if (root_local_nonprim) {
        category_free(root_local_nonprim);
        root_local_nonprim = NULL;
    }
    return NULL;

}
