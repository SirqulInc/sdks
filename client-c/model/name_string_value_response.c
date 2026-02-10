#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "name_string_value_response.h"



static name_string_value_response_t *name_string_value_response_create_internal(
    char *name,
    char *value_string
    ) {
    name_string_value_response_t *name_string_value_response_local_var = malloc(sizeof(name_string_value_response_t));
    if (!name_string_value_response_local_var) {
        return NULL;
    }
    name_string_value_response_local_var->name = name;
    name_string_value_response_local_var->value_string = value_string;

    name_string_value_response_local_var->_library_owned = 1;
    return name_string_value_response_local_var;
}

__attribute__((deprecated)) name_string_value_response_t *name_string_value_response_create(
    char *name,
    char *value_string
    ) {
    return name_string_value_response_create_internal (
        name,
        value_string
        );
}

void name_string_value_response_free(name_string_value_response_t *name_string_value_response) {
    if(NULL == name_string_value_response){
        return ;
    }
    if(name_string_value_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "name_string_value_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (name_string_value_response->name) {
        free(name_string_value_response->name);
        name_string_value_response->name = NULL;
    }
    if (name_string_value_response->value_string) {
        free(name_string_value_response->value_string);
        name_string_value_response->value_string = NULL;
    }
    free(name_string_value_response);
}

cJSON *name_string_value_response_convertToJSON(name_string_value_response_t *name_string_value_response) {
    cJSON *item = cJSON_CreateObject();

    // name_string_value_response->name
    if(name_string_value_response->name) {
    if(cJSON_AddStringToObject(item, "name", name_string_value_response->name) == NULL) {
    goto fail; //String
    }
    }


    // name_string_value_response->value_string
    if(name_string_value_response->value_string) {
    if(cJSON_AddStringToObject(item, "valueString", name_string_value_response->value_string) == NULL) {
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

name_string_value_response_t *name_string_value_response_parseFromJSON(cJSON *name_string_value_responseJSON){

    name_string_value_response_t *name_string_value_response_local_var = NULL;

    // name_string_value_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(name_string_value_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // name_string_value_response->value_string
    cJSON *value_string = cJSON_GetObjectItemCaseSensitive(name_string_value_responseJSON, "valueString");
    if (cJSON_IsNull(value_string)) {
        value_string = NULL;
    }
    if (value_string) { 
    if(!cJSON_IsString(value_string) && !cJSON_IsNull(value_string))
    {
    goto end; //String
    }
    }


    name_string_value_response_local_var = name_string_value_response_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        value_string && !cJSON_IsNull(value_string) ? strdup(value_string->valuestring) : NULL
        );

    return name_string_value_response_local_var;
end:
    return NULL;

}
