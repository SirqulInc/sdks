#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "building.h"



static building_t *building_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *building_type
    ) {
    building_t *building_local_var = malloc(sizeof(building_t));
    if (!building_local_var) {
        return NULL;
    }
    building_local_var->id = id;
    building_local_var->active = active;
    building_local_var->valid = valid;
    building_local_var->name = name;
    building_local_var->building_type = building_type;

    building_local_var->_library_owned = 1;
    return building_local_var;
}

__attribute__((deprecated)) building_t *building_create(
    long id,
    int active,
    int valid,
    char *name,
    char *building_type
    ) {
    return building_create_internal (
        id,
        active,
        valid,
        name,
        building_type
        );
}

void building_free(building_t *building) {
    if(NULL == building){
        return ;
    }
    if(building->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "building_free");
        return ;
    }
    listEntry_t *listEntry;
    if (building->name) {
        free(building->name);
        building->name = NULL;
    }
    if (building->building_type) {
        free(building->building_type);
        building->building_type = NULL;
    }
    free(building);
}

cJSON *building_convertToJSON(building_t *building) {
    cJSON *item = cJSON_CreateObject();

    // building->id
    if(building->id) {
    if(cJSON_AddNumberToObject(item, "id", building->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // building->active
    if(building->active) {
    if(cJSON_AddBoolToObject(item, "active", building->active) == NULL) {
    goto fail; //Bool
    }
    }


    // building->valid
    if(building->valid) {
    if(cJSON_AddBoolToObject(item, "valid", building->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // building->name
    if(building->name) {
    if(cJSON_AddStringToObject(item, "name", building->name) == NULL) {
    goto fail; //String
    }
    }


    // building->building_type
    if(building->building_type) {
    if(cJSON_AddStringToObject(item, "buildingType", building->building_type) == NULL) {
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

building_t *building_parseFromJSON(cJSON *buildingJSON){

    building_t *building_local_var = NULL;

    // building->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(buildingJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // building->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(buildingJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // building->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(buildingJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // building->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(buildingJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // building->building_type
    cJSON *building_type = cJSON_GetObjectItemCaseSensitive(buildingJSON, "buildingType");
    if (cJSON_IsNull(building_type)) {
        building_type = NULL;
    }
    if (building_type) { 
    if(!cJSON_IsString(building_type) && !cJSON_IsNull(building_type))
    {
    goto end; //String
    }
    }


    building_local_var = building_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        building_type && !cJSON_IsNull(building_type) ? strdup(building_type->valuestring) : NULL
        );

    return building_local_var;
end:
    return NULL;

}
