#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "duration_field.h"



static duration_field_t *duration_field_create_internal(
    char *name,
    duration_field_type_t *type,
    int supported,
    int precise,
    long unit_millis
    ) {
    duration_field_t *duration_field_local_var = malloc(sizeof(duration_field_t));
    if (!duration_field_local_var) {
        return NULL;
    }
    duration_field_local_var->name = name;
    duration_field_local_var->type = type;
    duration_field_local_var->supported = supported;
    duration_field_local_var->precise = precise;
    duration_field_local_var->unit_millis = unit_millis;

    duration_field_local_var->_library_owned = 1;
    return duration_field_local_var;
}

__attribute__((deprecated)) duration_field_t *duration_field_create(
    char *name,
    duration_field_type_t *type,
    int supported,
    int precise,
    long unit_millis
    ) {
    return duration_field_create_internal (
        name,
        type,
        supported,
        precise,
        unit_millis
        );
}

void duration_field_free(duration_field_t *duration_field) {
    if(NULL == duration_field){
        return ;
    }
    if(duration_field->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "duration_field_free");
        return ;
    }
    listEntry_t *listEntry;
    if (duration_field->name) {
        free(duration_field->name);
        duration_field->name = NULL;
    }
    if (duration_field->type) {
        duration_field_type_free(duration_field->type);
        duration_field->type = NULL;
    }
    free(duration_field);
}

cJSON *duration_field_convertToJSON(duration_field_t *duration_field) {
    cJSON *item = cJSON_CreateObject();

    // duration_field->name
    if(duration_field->name) {
    if(cJSON_AddStringToObject(item, "name", duration_field->name) == NULL) {
    goto fail; //String
    }
    }


    // duration_field->type
    if(duration_field->type) {
    cJSON *type_local_JSON = duration_field_type_convertToJSON(duration_field->type);
    if(type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "type", type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // duration_field->supported
    if(duration_field->supported) {
    if(cJSON_AddBoolToObject(item, "supported", duration_field->supported) == NULL) {
    goto fail; //Bool
    }
    }


    // duration_field->precise
    if(duration_field->precise) {
    if(cJSON_AddBoolToObject(item, "precise", duration_field->precise) == NULL) {
    goto fail; //Bool
    }
    }


    // duration_field->unit_millis
    if(duration_field->unit_millis) {
    if(cJSON_AddNumberToObject(item, "unitMillis", duration_field->unit_millis) == NULL) {
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

duration_field_t *duration_field_parseFromJSON(cJSON *duration_fieldJSON){

    duration_field_t *duration_field_local_var = NULL;

    // define the local variable for duration_field->type
    duration_field_type_t *type_local_nonprim = NULL;

    // duration_field->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(duration_fieldJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // duration_field->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(duration_fieldJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    type_local_nonprim = duration_field_type_parseFromJSON(type); //nonprimitive
    }

    // duration_field->supported
    cJSON *supported = cJSON_GetObjectItemCaseSensitive(duration_fieldJSON, "supported");
    if (cJSON_IsNull(supported)) {
        supported = NULL;
    }
    if (supported) { 
    if(!cJSON_IsBool(supported))
    {
    goto end; //Bool
    }
    }

    // duration_field->precise
    cJSON *precise = cJSON_GetObjectItemCaseSensitive(duration_fieldJSON, "precise");
    if (cJSON_IsNull(precise)) {
        precise = NULL;
    }
    if (precise) { 
    if(!cJSON_IsBool(precise))
    {
    goto end; //Bool
    }
    }

    // duration_field->unit_millis
    cJSON *unit_millis = cJSON_GetObjectItemCaseSensitive(duration_fieldJSON, "unitMillis");
    if (cJSON_IsNull(unit_millis)) {
        unit_millis = NULL;
    }
    if (unit_millis) { 
    if(!cJSON_IsNumber(unit_millis))
    {
    goto end; //Numeric
    }
    }


    duration_field_local_var = duration_field_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        type ? type_local_nonprim : NULL,
        supported ? supported->valueint : 0,
        precise ? precise->valueint : 0,
        unit_millis ? unit_millis->valuedouble : 0
        );

    return duration_field_local_var;
end:
    if (type_local_nonprim) {
        duration_field_type_free(type_local_nonprim);
        type_local_nonprim = NULL;
    }
    return NULL;

}
