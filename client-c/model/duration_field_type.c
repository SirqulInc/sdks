#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "duration_field_type.h"



static duration_field_type_t *duration_field_type_create_internal(
    char *name
    ) {
    duration_field_type_t *duration_field_type_local_var = malloc(sizeof(duration_field_type_t));
    if (!duration_field_type_local_var) {
        return NULL;
    }
    duration_field_type_local_var->name = name;

    duration_field_type_local_var->_library_owned = 1;
    return duration_field_type_local_var;
}

__attribute__((deprecated)) duration_field_type_t *duration_field_type_create(
    char *name
    ) {
    return duration_field_type_create_internal (
        name
        );
}

void duration_field_type_free(duration_field_type_t *duration_field_type) {
    if(NULL == duration_field_type){
        return ;
    }
    if(duration_field_type->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "duration_field_type_free");
        return ;
    }
    listEntry_t *listEntry;
    if (duration_field_type->name) {
        free(duration_field_type->name);
        duration_field_type->name = NULL;
    }
    free(duration_field_type);
}

cJSON *duration_field_type_convertToJSON(duration_field_type_t *duration_field_type) {
    cJSON *item = cJSON_CreateObject();

    // duration_field_type->name
    if(duration_field_type->name) {
    if(cJSON_AddStringToObject(item, "name", duration_field_type->name) == NULL) {
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

duration_field_type_t *duration_field_type_parseFromJSON(cJSON *duration_field_typeJSON){

    duration_field_type_t *duration_field_type_local_var = NULL;

    // duration_field_type->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(duration_field_typeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }


    duration_field_type_local_var = duration_field_type_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL
        );

    return duration_field_type_local_var;
end:
    return NULL;

}
