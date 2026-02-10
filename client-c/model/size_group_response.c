#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "size_group_response.h"



static size_group_response_t *size_group_response_create_internal(
    long id,
    char *name,
    char *description
    ) {
    size_group_response_t *size_group_response_local_var = malloc(sizeof(size_group_response_t));
    if (!size_group_response_local_var) {
        return NULL;
    }
    size_group_response_local_var->id = id;
    size_group_response_local_var->name = name;
    size_group_response_local_var->description = description;

    size_group_response_local_var->_library_owned = 1;
    return size_group_response_local_var;
}

__attribute__((deprecated)) size_group_response_t *size_group_response_create(
    long id,
    char *name,
    char *description
    ) {
    return size_group_response_create_internal (
        id,
        name,
        description
        );
}

void size_group_response_free(size_group_response_t *size_group_response) {
    if(NULL == size_group_response){
        return ;
    }
    if(size_group_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "size_group_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (size_group_response->name) {
        free(size_group_response->name);
        size_group_response->name = NULL;
    }
    if (size_group_response->description) {
        free(size_group_response->description);
        size_group_response->description = NULL;
    }
    free(size_group_response);
}

cJSON *size_group_response_convertToJSON(size_group_response_t *size_group_response) {
    cJSON *item = cJSON_CreateObject();

    // size_group_response->id
    if(size_group_response->id) {
    if(cJSON_AddNumberToObject(item, "id", size_group_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // size_group_response->name
    if(size_group_response->name) {
    if(cJSON_AddStringToObject(item, "name", size_group_response->name) == NULL) {
    goto fail; //String
    }
    }


    // size_group_response->description
    if(size_group_response->description) {
    if(cJSON_AddStringToObject(item, "description", size_group_response->description) == NULL) {
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

size_group_response_t *size_group_response_parseFromJSON(cJSON *size_group_responseJSON){

    size_group_response_t *size_group_response_local_var = NULL;

    // size_group_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(size_group_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // size_group_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(size_group_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // size_group_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(size_group_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }


    size_group_response_local_var = size_group_response_create_internal (
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL
        );

    return size_group_response_local_var;
end:
    return NULL;

}
