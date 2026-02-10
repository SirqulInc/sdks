#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "date_time_field_type.h"



static date_time_field_type_t *date_time_field_type_create_internal(
    char *name,
    duration_field_type_t *range_duration_type,
    duration_field_type_t *duration_type
    ) {
    date_time_field_type_t *date_time_field_type_local_var = malloc(sizeof(date_time_field_type_t));
    if (!date_time_field_type_local_var) {
        return NULL;
    }
    date_time_field_type_local_var->name = name;
    date_time_field_type_local_var->range_duration_type = range_duration_type;
    date_time_field_type_local_var->duration_type = duration_type;

    date_time_field_type_local_var->_library_owned = 1;
    return date_time_field_type_local_var;
}

__attribute__((deprecated)) date_time_field_type_t *date_time_field_type_create(
    char *name,
    duration_field_type_t *range_duration_type,
    duration_field_type_t *duration_type
    ) {
    return date_time_field_type_create_internal (
        name,
        range_duration_type,
        duration_type
        );
}

void date_time_field_type_free(date_time_field_type_t *date_time_field_type) {
    if(NULL == date_time_field_type){
        return ;
    }
    if(date_time_field_type->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "date_time_field_type_free");
        return ;
    }
    listEntry_t *listEntry;
    if (date_time_field_type->name) {
        free(date_time_field_type->name);
        date_time_field_type->name = NULL;
    }
    if (date_time_field_type->range_duration_type) {
        duration_field_type_free(date_time_field_type->range_duration_type);
        date_time_field_type->range_duration_type = NULL;
    }
    if (date_time_field_type->duration_type) {
        duration_field_type_free(date_time_field_type->duration_type);
        date_time_field_type->duration_type = NULL;
    }
    free(date_time_field_type);
}

cJSON *date_time_field_type_convertToJSON(date_time_field_type_t *date_time_field_type) {
    cJSON *item = cJSON_CreateObject();

    // date_time_field_type->name
    if(date_time_field_type->name) {
    if(cJSON_AddStringToObject(item, "name", date_time_field_type->name) == NULL) {
    goto fail; //String
    }
    }


    // date_time_field_type->range_duration_type
    if(date_time_field_type->range_duration_type) {
    cJSON *range_duration_type_local_JSON = duration_field_type_convertToJSON(date_time_field_type->range_duration_type);
    if(range_duration_type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rangeDurationType", range_duration_type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // date_time_field_type->duration_type
    if(date_time_field_type->duration_type) {
    cJSON *duration_type_local_JSON = duration_field_type_convertToJSON(date_time_field_type->duration_type);
    if(duration_type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "durationType", duration_type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

date_time_field_type_t *date_time_field_type_parseFromJSON(cJSON *date_time_field_typeJSON){

    date_time_field_type_t *date_time_field_type_local_var = NULL;

    // define the local variable for date_time_field_type->range_duration_type
    duration_field_type_t *range_duration_type_local_nonprim = NULL;

    // define the local variable for date_time_field_type->duration_type
    duration_field_type_t *duration_type_local_nonprim = NULL;

    // date_time_field_type->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(date_time_field_typeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // date_time_field_type->range_duration_type
    cJSON *range_duration_type = cJSON_GetObjectItemCaseSensitive(date_time_field_typeJSON, "rangeDurationType");
    if (cJSON_IsNull(range_duration_type)) {
        range_duration_type = NULL;
    }
    if (range_duration_type) { 
    range_duration_type_local_nonprim = duration_field_type_parseFromJSON(range_duration_type); //nonprimitive
    }

    // date_time_field_type->duration_type
    cJSON *duration_type = cJSON_GetObjectItemCaseSensitive(date_time_field_typeJSON, "durationType");
    if (cJSON_IsNull(duration_type)) {
        duration_type = NULL;
    }
    if (duration_type) { 
    duration_type_local_nonprim = duration_field_type_parseFromJSON(duration_type); //nonprimitive
    }


    date_time_field_type_local_var = date_time_field_type_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        range_duration_type ? range_duration_type_local_nonprim : NULL,
        duration_type ? duration_type_local_nonprim : NULL
        );

    return date_time_field_type_local_var;
end:
    if (range_duration_type_local_nonprim) {
        duration_field_type_free(range_duration_type_local_nonprim);
        range_duration_type_local_nonprim = NULL;
    }
    if (duration_type_local_nonprim) {
        duration_field_type_free(duration_type_local_nonprim);
        duration_type_local_nonprim = NULL;
    }
    return NULL;

}
