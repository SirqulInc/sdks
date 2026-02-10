#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "program.h"



static program_t *program_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    int cost_per_ride
    ) {
    program_t *program_local_var = malloc(sizeof(program_t));
    if (!program_local_var) {
        return NULL;
    }
    program_local_var->id = id;
    program_local_var->active = active;
    program_local_var->valid = valid;
    program_local_var->name = name;
    program_local_var->description = description;
    program_local_var->cost_per_ride = cost_per_ride;

    program_local_var->_library_owned = 1;
    return program_local_var;
}

__attribute__((deprecated)) program_t *program_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    int cost_per_ride
    ) {
    return program_create_internal (
        id,
        active,
        valid,
        name,
        description,
        cost_per_ride
        );
}

void program_free(program_t *program) {
    if(NULL == program){
        return ;
    }
    if(program->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "program_free");
        return ;
    }
    listEntry_t *listEntry;
    if (program->name) {
        free(program->name);
        program->name = NULL;
    }
    if (program->description) {
        free(program->description);
        program->description = NULL;
    }
    free(program);
}

cJSON *program_convertToJSON(program_t *program) {
    cJSON *item = cJSON_CreateObject();

    // program->id
    if(program->id) {
    if(cJSON_AddNumberToObject(item, "id", program->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // program->active
    if(program->active) {
    if(cJSON_AddBoolToObject(item, "active", program->active) == NULL) {
    goto fail; //Bool
    }
    }


    // program->valid
    if(program->valid) {
    if(cJSON_AddBoolToObject(item, "valid", program->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // program->name
    if(program->name) {
    if(cJSON_AddStringToObject(item, "name", program->name) == NULL) {
    goto fail; //String
    }
    }


    // program->description
    if(program->description) {
    if(cJSON_AddStringToObject(item, "description", program->description) == NULL) {
    goto fail; //String
    }
    }


    // program->cost_per_ride
    if(program->cost_per_ride) {
    if(cJSON_AddNumberToObject(item, "costPerRide", program->cost_per_ride) == NULL) {
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

program_t *program_parseFromJSON(cJSON *programJSON){

    program_t *program_local_var = NULL;

    // program->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(programJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // program->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(programJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // program->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(programJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // program->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(programJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // program->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(programJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // program->cost_per_ride
    cJSON *cost_per_ride = cJSON_GetObjectItemCaseSensitive(programJSON, "costPerRide");
    if (cJSON_IsNull(cost_per_ride)) {
        cost_per_ride = NULL;
    }
    if (cost_per_ride) { 
    if(!cJSON_IsNumber(cost_per_ride))
    {
    goto end; //Numeric
    }
    }


    program_local_var = program_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        cost_per_ride ? cost_per_ride->valuedouble : 0
        );

    return program_local_var;
end:
    return NULL;

}
