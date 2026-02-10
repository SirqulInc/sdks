#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "size_group.h"



static size_group_t *size_group_create_internal(
    long id,
    int active,
    int valid,
    long grouping_id,
    char *name,
    char *description
    ) {
    size_group_t *size_group_local_var = malloc(sizeof(size_group_t));
    if (!size_group_local_var) {
        return NULL;
    }
    size_group_local_var->id = id;
    size_group_local_var->active = active;
    size_group_local_var->valid = valid;
    size_group_local_var->grouping_id = grouping_id;
    size_group_local_var->name = name;
    size_group_local_var->description = description;

    size_group_local_var->_library_owned = 1;
    return size_group_local_var;
}

__attribute__((deprecated)) size_group_t *size_group_create(
    long id,
    int active,
    int valid,
    long grouping_id,
    char *name,
    char *description
    ) {
    return size_group_create_internal (
        id,
        active,
        valid,
        grouping_id,
        name,
        description
        );
}

void size_group_free(size_group_t *size_group) {
    if(NULL == size_group){
        return ;
    }
    if(size_group->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "size_group_free");
        return ;
    }
    listEntry_t *listEntry;
    if (size_group->name) {
        free(size_group->name);
        size_group->name = NULL;
    }
    if (size_group->description) {
        free(size_group->description);
        size_group->description = NULL;
    }
    free(size_group);
}

cJSON *size_group_convertToJSON(size_group_t *size_group) {
    cJSON *item = cJSON_CreateObject();

    // size_group->id
    if(size_group->id) {
    if(cJSON_AddNumberToObject(item, "id", size_group->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // size_group->active
    if(size_group->active) {
    if(cJSON_AddBoolToObject(item, "active", size_group->active) == NULL) {
    goto fail; //Bool
    }
    }


    // size_group->valid
    if(size_group->valid) {
    if(cJSON_AddBoolToObject(item, "valid", size_group->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // size_group->grouping_id
    if(size_group->grouping_id) {
    if(cJSON_AddNumberToObject(item, "groupingId", size_group->grouping_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // size_group->name
    if(size_group->name) {
    if(cJSON_AddStringToObject(item, "name", size_group->name) == NULL) {
    goto fail; //String
    }
    }


    // size_group->description
    if(size_group->description) {
    if(cJSON_AddStringToObject(item, "description", size_group->description) == NULL) {
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

size_group_t *size_group_parseFromJSON(cJSON *size_groupJSON){

    size_group_t *size_group_local_var = NULL;

    // size_group->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(size_groupJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // size_group->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(size_groupJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // size_group->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(size_groupJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // size_group->grouping_id
    cJSON *grouping_id = cJSON_GetObjectItemCaseSensitive(size_groupJSON, "groupingId");
    if (cJSON_IsNull(grouping_id)) {
        grouping_id = NULL;
    }
    if (grouping_id) { 
    if(!cJSON_IsNumber(grouping_id))
    {
    goto end; //Numeric
    }
    }

    // size_group->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(size_groupJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // size_group->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(size_groupJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }


    size_group_local_var = size_group_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        grouping_id ? grouping_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL
        );

    return size_group_local_var;
end:
    return NULL;

}
