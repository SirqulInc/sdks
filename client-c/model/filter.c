#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "filter.h"



static filter_t *filter_create_internal(
    long id,
    int active,
    int valid,
    application_t *application,
    char *name,
    char *description,
    filter_t *parent,
    list_t *children,
    char *display,
    char *external_id,
    char *external_type,
    char *tree
    ) {
    filter_t *filter_local_var = malloc(sizeof(filter_t));
    if (!filter_local_var) {
        return NULL;
    }
    filter_local_var->id = id;
    filter_local_var->active = active;
    filter_local_var->valid = valid;
    filter_local_var->application = application;
    filter_local_var->name = name;
    filter_local_var->description = description;
    filter_local_var->parent = parent;
    filter_local_var->children = children;
    filter_local_var->display = display;
    filter_local_var->external_id = external_id;
    filter_local_var->external_type = external_type;
    filter_local_var->tree = tree;

    filter_local_var->_library_owned = 1;
    return filter_local_var;
}

__attribute__((deprecated)) filter_t *filter_create(
    long id,
    int active,
    int valid,
    application_t *application,
    char *name,
    char *description,
    filter_t *parent,
    list_t *children,
    char *display,
    char *external_id,
    char *external_type,
    char *tree
    ) {
    return filter_create_internal (
        id,
        active,
        valid,
        application,
        name,
        description,
        parent,
        children,
        display,
        external_id,
        external_type,
        tree
        );
}

void filter_free(filter_t *filter) {
    if(NULL == filter){
        return ;
    }
    if(filter->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "filter_free");
        return ;
    }
    listEntry_t *listEntry;
    if (filter->application) {
        application_free(filter->application);
        filter->application = NULL;
    }
    if (filter->name) {
        free(filter->name);
        filter->name = NULL;
    }
    if (filter->description) {
        free(filter->description);
        filter->description = NULL;
    }
    if (filter->parent) {
        filter_free(filter->parent);
        filter->parent = NULL;
    }
    if (filter->children) {
        list_ForEach(listEntry, filter->children) {
            filter_free(listEntry->data);
        }
        list_freeList(filter->children);
        filter->children = NULL;
    }
    if (filter->display) {
        free(filter->display);
        filter->display = NULL;
    }
    if (filter->external_id) {
        free(filter->external_id);
        filter->external_id = NULL;
    }
    if (filter->external_type) {
        free(filter->external_type);
        filter->external_type = NULL;
    }
    if (filter->tree) {
        free(filter->tree);
        filter->tree = NULL;
    }
    free(filter);
}

cJSON *filter_convertToJSON(filter_t *filter) {
    cJSON *item = cJSON_CreateObject();

    // filter->id
    if(filter->id) {
    if(cJSON_AddNumberToObject(item, "id", filter->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // filter->active
    if(filter->active) {
    if(cJSON_AddBoolToObject(item, "active", filter->active) == NULL) {
    goto fail; //Bool
    }
    }


    // filter->valid
    if(filter->valid) {
    if(cJSON_AddBoolToObject(item, "valid", filter->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // filter->application
    if(filter->application) {
    cJSON *application_local_JSON = application_convertToJSON(filter->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // filter->name
    if(filter->name) {
    if(cJSON_AddStringToObject(item, "name", filter->name) == NULL) {
    goto fail; //String
    }
    }


    // filter->description
    if(filter->description) {
    if(cJSON_AddStringToObject(item, "description", filter->description) == NULL) {
    goto fail; //String
    }
    }


    // filter->parent
    if(filter->parent) {
    cJSON *parent_local_JSON = filter_convertToJSON(filter->parent);
    if(parent_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parent", parent_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // filter->children
    if(filter->children) {
    cJSON *children = cJSON_AddArrayToObject(item, "children");
    if(children == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *childrenListEntry;
    if (filter->children) {
    list_ForEach(childrenListEntry, filter->children) {
    cJSON *itemLocal = filter_convertToJSON(childrenListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(children, itemLocal);
    }
    }
    }


    // filter->display
    if(filter->display) {
    if(cJSON_AddStringToObject(item, "display", filter->display) == NULL) {
    goto fail; //String
    }
    }


    // filter->external_id
    if(filter->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", filter->external_id) == NULL) {
    goto fail; //String
    }
    }


    // filter->external_type
    if(filter->external_type) {
    if(cJSON_AddStringToObject(item, "externalType", filter->external_type) == NULL) {
    goto fail; //String
    }
    }


    // filter->tree
    if(filter->tree) {
    if(cJSON_AddStringToObject(item, "tree", filter->tree) == NULL) {
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

filter_t *filter_parseFromJSON(cJSON *filterJSON){

    filter_t *filter_local_var = NULL;

    // define the local variable for filter->application
    application_t *application_local_nonprim = NULL;

    // define the local variable for filter->parent
    filter_t *parent_local_nonprim = NULL;

    // define the local list for filter->children
    list_t *childrenList = NULL;

    // filter->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(filterJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // filter->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(filterJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // filter->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(filterJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // filter->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(filterJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // filter->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(filterJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // filter->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(filterJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // filter->parent
    cJSON *parent = cJSON_GetObjectItemCaseSensitive(filterJSON, "parent");
    if (cJSON_IsNull(parent)) {
        parent = NULL;
    }
    if (parent) { 
    parent_local_nonprim = filter_parseFromJSON(parent); //nonprimitive
    }

    // filter->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(filterJSON, "children");
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
        filter_t *childrenItem = filter_parseFromJSON(children_local_nonprimitive);

        list_addElement(childrenList, childrenItem);
    }
    }

    // filter->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(filterJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // filter->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(filterJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // filter->external_type
    cJSON *external_type = cJSON_GetObjectItemCaseSensitive(filterJSON, "externalType");
    if (cJSON_IsNull(external_type)) {
        external_type = NULL;
    }
    if (external_type) { 
    if(!cJSON_IsString(external_type) && !cJSON_IsNull(external_type))
    {
    goto end; //String
    }
    }

    // filter->tree
    cJSON *tree = cJSON_GetObjectItemCaseSensitive(filterJSON, "tree");
    if (cJSON_IsNull(tree)) {
        tree = NULL;
    }
    if (tree) { 
    if(!cJSON_IsString(tree) && !cJSON_IsNull(tree))
    {
    goto end; //String
    }
    }


    filter_local_var = filter_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        application ? application_local_nonprim : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        parent ? parent_local_nonprim : NULL,
        children ? childrenList : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        external_type && !cJSON_IsNull(external_type) ? strdup(external_type->valuestring) : NULL,
        tree && !cJSON_IsNull(tree) ? strdup(tree->valuestring) : NULL
        );

    return filter_local_var;
end:
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (parent_local_nonprim) {
        filter_free(parent_local_nonprim);
        parent_local_nonprim = NULL;
    }
    if (childrenList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, childrenList) {
            filter_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(childrenList);
        childrenList = NULL;
    }
    return NULL;

}
