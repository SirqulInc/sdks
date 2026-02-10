#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "territory_response.h"



static territory_response_t *territory_response_create_internal(
    long id,
    char *name
    ) {
    territory_response_t *territory_response_local_var = malloc(sizeof(territory_response_t));
    if (!territory_response_local_var) {
        return NULL;
    }
    territory_response_local_var->id = id;
    territory_response_local_var->name = name;

    territory_response_local_var->_library_owned = 1;
    return territory_response_local_var;
}

__attribute__((deprecated)) territory_response_t *territory_response_create(
    long id,
    char *name
    ) {
    return territory_response_create_internal (
        id,
        name
        );
}

void territory_response_free(territory_response_t *territory_response) {
    if(NULL == territory_response){
        return ;
    }
    if(territory_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "territory_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (territory_response->name) {
        free(territory_response->name);
        territory_response->name = NULL;
    }
    free(territory_response);
}

cJSON *territory_response_convertToJSON(territory_response_t *territory_response) {
    cJSON *item = cJSON_CreateObject();

    // territory_response->id
    if(territory_response->id) {
    if(cJSON_AddNumberToObject(item, "id", territory_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // territory_response->name
    if(territory_response->name) {
    if(cJSON_AddStringToObject(item, "name", territory_response->name) == NULL) {
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

territory_response_t *territory_response_parseFromJSON(cJSON *territory_responseJSON){

    territory_response_t *territory_response_local_var = NULL;

    // territory_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(territory_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // territory_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(territory_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }


    territory_response_local_var = territory_response_create_internal (
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL
        );

    return territory_response_local_var;
end:
    return NULL;

}
