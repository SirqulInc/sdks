#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "filter_response.h"



static filter_response_t *filter_response_create_internal(
    long filter_id,
    char *name,
    char *display,
    int sub_filter_count,
    long parent_id,
    char *description,
    int active,
    char *external_id,
    char *external_type
    ) {
    filter_response_t *filter_response_local_var = malloc(sizeof(filter_response_t));
    if (!filter_response_local_var) {
        return NULL;
    }
    filter_response_local_var->filter_id = filter_id;
    filter_response_local_var->name = name;
    filter_response_local_var->display = display;
    filter_response_local_var->sub_filter_count = sub_filter_count;
    filter_response_local_var->parent_id = parent_id;
    filter_response_local_var->description = description;
    filter_response_local_var->active = active;
    filter_response_local_var->external_id = external_id;
    filter_response_local_var->external_type = external_type;

    filter_response_local_var->_library_owned = 1;
    return filter_response_local_var;
}

__attribute__((deprecated)) filter_response_t *filter_response_create(
    long filter_id,
    char *name,
    char *display,
    int sub_filter_count,
    long parent_id,
    char *description,
    int active,
    char *external_id,
    char *external_type
    ) {
    return filter_response_create_internal (
        filter_id,
        name,
        display,
        sub_filter_count,
        parent_id,
        description,
        active,
        external_id,
        external_type
        );
}

void filter_response_free(filter_response_t *filter_response) {
    if(NULL == filter_response){
        return ;
    }
    if(filter_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "filter_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (filter_response->name) {
        free(filter_response->name);
        filter_response->name = NULL;
    }
    if (filter_response->display) {
        free(filter_response->display);
        filter_response->display = NULL;
    }
    if (filter_response->description) {
        free(filter_response->description);
        filter_response->description = NULL;
    }
    if (filter_response->external_id) {
        free(filter_response->external_id);
        filter_response->external_id = NULL;
    }
    if (filter_response->external_type) {
        free(filter_response->external_type);
        filter_response->external_type = NULL;
    }
    free(filter_response);
}

cJSON *filter_response_convertToJSON(filter_response_t *filter_response) {
    cJSON *item = cJSON_CreateObject();

    // filter_response->filter_id
    if(filter_response->filter_id) {
    if(cJSON_AddNumberToObject(item, "filterId", filter_response->filter_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // filter_response->name
    if(filter_response->name) {
    if(cJSON_AddStringToObject(item, "name", filter_response->name) == NULL) {
    goto fail; //String
    }
    }


    // filter_response->display
    if(filter_response->display) {
    if(cJSON_AddStringToObject(item, "display", filter_response->display) == NULL) {
    goto fail; //String
    }
    }


    // filter_response->sub_filter_count
    if(filter_response->sub_filter_count) {
    if(cJSON_AddNumberToObject(item, "subFilterCount", filter_response->sub_filter_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // filter_response->parent_id
    if(filter_response->parent_id) {
    if(cJSON_AddNumberToObject(item, "parentId", filter_response->parent_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // filter_response->description
    if(filter_response->description) {
    if(cJSON_AddStringToObject(item, "description", filter_response->description) == NULL) {
    goto fail; //String
    }
    }


    // filter_response->active
    if(filter_response->active) {
    if(cJSON_AddBoolToObject(item, "active", filter_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // filter_response->external_id
    if(filter_response->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", filter_response->external_id) == NULL) {
    goto fail; //String
    }
    }


    // filter_response->external_type
    if(filter_response->external_type) {
    if(cJSON_AddStringToObject(item, "externalType", filter_response->external_type) == NULL) {
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

filter_response_t *filter_response_parseFromJSON(cJSON *filter_responseJSON){

    filter_response_t *filter_response_local_var = NULL;

    // filter_response->filter_id
    cJSON *filter_id = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "filterId");
    if (cJSON_IsNull(filter_id)) {
        filter_id = NULL;
    }
    if (filter_id) { 
    if(!cJSON_IsNumber(filter_id))
    {
    goto end; //Numeric
    }
    }

    // filter_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // filter_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // filter_response->sub_filter_count
    cJSON *sub_filter_count = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "subFilterCount");
    if (cJSON_IsNull(sub_filter_count)) {
        sub_filter_count = NULL;
    }
    if (sub_filter_count) { 
    if(!cJSON_IsNumber(sub_filter_count))
    {
    goto end; //Numeric
    }
    }

    // filter_response->parent_id
    cJSON *parent_id = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "parentId");
    if (cJSON_IsNull(parent_id)) {
        parent_id = NULL;
    }
    if (parent_id) { 
    if(!cJSON_IsNumber(parent_id))
    {
    goto end; //Numeric
    }
    }

    // filter_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // filter_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // filter_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // filter_response->external_type
    cJSON *external_type = cJSON_GetObjectItemCaseSensitive(filter_responseJSON, "externalType");
    if (cJSON_IsNull(external_type)) {
        external_type = NULL;
    }
    if (external_type) { 
    if(!cJSON_IsString(external_type) && !cJSON_IsNull(external_type))
    {
    goto end; //String
    }
    }


    filter_response_local_var = filter_response_create_internal (
        filter_id ? filter_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        sub_filter_count ? sub_filter_count->valuedouble : 0,
        parent_id ? parent_id->valuedouble : 0,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        active ? active->valueint : 0,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        external_type && !cJSON_IsNull(external_type) ? strdup(external_type->valuestring) : NULL
        );

    return filter_response_local_var;
end:
    return NULL;

}
