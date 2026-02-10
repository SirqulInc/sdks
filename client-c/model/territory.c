#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "territory.h"



static territory_t *territory_create_internal(
    long id,
    int active,
    int valid,
    char *name
    ) {
    territory_t *territory_local_var = malloc(sizeof(territory_t));
    if (!territory_local_var) {
        return NULL;
    }
    territory_local_var->id = id;
    territory_local_var->active = active;
    territory_local_var->valid = valid;
    territory_local_var->name = name;

    territory_local_var->_library_owned = 1;
    return territory_local_var;
}

__attribute__((deprecated)) territory_t *territory_create(
    long id,
    int active,
    int valid,
    char *name
    ) {
    return territory_create_internal (
        id,
        active,
        valid,
        name
        );
}

void territory_free(territory_t *territory) {
    if(NULL == territory){
        return ;
    }
    if(territory->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "territory_free");
        return ;
    }
    listEntry_t *listEntry;
    if (territory->name) {
        free(territory->name);
        territory->name = NULL;
    }
    free(territory);
}

cJSON *territory_convertToJSON(territory_t *territory) {
    cJSON *item = cJSON_CreateObject();

    // territory->id
    if(territory->id) {
    if(cJSON_AddNumberToObject(item, "id", territory->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // territory->active
    if(territory->active) {
    if(cJSON_AddBoolToObject(item, "active", territory->active) == NULL) {
    goto fail; //Bool
    }
    }


    // territory->valid
    if(territory->valid) {
    if(cJSON_AddBoolToObject(item, "valid", territory->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // territory->name
    if(territory->name) {
    if(cJSON_AddStringToObject(item, "name", territory->name) == NULL) {
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

territory_t *territory_parseFromJSON(cJSON *territoryJSON){

    territory_t *territory_local_var = NULL;

    // territory->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(territoryJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // territory->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(territoryJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // territory->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(territoryJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // territory->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(territoryJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }


    territory_local_var = territory_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL
        );

    return territory_local_var;
end:
    return NULL;

}
