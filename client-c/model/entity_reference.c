#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "entity_reference.h"



static entity_reference_t *entity_reference_create_internal(
    long id,
    int active,
    int valid,
    char *entity_type,
    long master_entity_id,
    char *slave_uid,
    long slave_entity_id
    ) {
    entity_reference_t *entity_reference_local_var = malloc(sizeof(entity_reference_t));
    if (!entity_reference_local_var) {
        return NULL;
    }
    entity_reference_local_var->id = id;
    entity_reference_local_var->active = active;
    entity_reference_local_var->valid = valid;
    entity_reference_local_var->entity_type = entity_type;
    entity_reference_local_var->master_entity_id = master_entity_id;
    entity_reference_local_var->slave_uid = slave_uid;
    entity_reference_local_var->slave_entity_id = slave_entity_id;

    entity_reference_local_var->_library_owned = 1;
    return entity_reference_local_var;
}

__attribute__((deprecated)) entity_reference_t *entity_reference_create(
    long id,
    int active,
    int valid,
    char *entity_type,
    long master_entity_id,
    char *slave_uid,
    long slave_entity_id
    ) {
    return entity_reference_create_internal (
        id,
        active,
        valid,
        entity_type,
        master_entity_id,
        slave_uid,
        slave_entity_id
        );
}

void entity_reference_free(entity_reference_t *entity_reference) {
    if(NULL == entity_reference){
        return ;
    }
    if(entity_reference->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "entity_reference_free");
        return ;
    }
    listEntry_t *listEntry;
    if (entity_reference->entity_type) {
        free(entity_reference->entity_type);
        entity_reference->entity_type = NULL;
    }
    if (entity_reference->slave_uid) {
        free(entity_reference->slave_uid);
        entity_reference->slave_uid = NULL;
    }
    free(entity_reference);
}

cJSON *entity_reference_convertToJSON(entity_reference_t *entity_reference) {
    cJSON *item = cJSON_CreateObject();

    // entity_reference->id
    if(entity_reference->id) {
    if(cJSON_AddNumberToObject(item, "id", entity_reference->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // entity_reference->active
    if(entity_reference->active) {
    if(cJSON_AddBoolToObject(item, "active", entity_reference->active) == NULL) {
    goto fail; //Bool
    }
    }


    // entity_reference->valid
    if(entity_reference->valid) {
    if(cJSON_AddBoolToObject(item, "valid", entity_reference->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // entity_reference->entity_type
    if(entity_reference->entity_type) {
    if(cJSON_AddStringToObject(item, "entityType", entity_reference->entity_type) == NULL) {
    goto fail; //String
    }
    }


    // entity_reference->master_entity_id
    if(entity_reference->master_entity_id) {
    if(cJSON_AddNumberToObject(item, "masterEntityId", entity_reference->master_entity_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // entity_reference->slave_uid
    if(entity_reference->slave_uid) {
    if(cJSON_AddStringToObject(item, "slaveUID", entity_reference->slave_uid) == NULL) {
    goto fail; //String
    }
    }


    // entity_reference->slave_entity_id
    if(entity_reference->slave_entity_id) {
    if(cJSON_AddNumberToObject(item, "slaveEntityId", entity_reference->slave_entity_id) == NULL) {
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

entity_reference_t *entity_reference_parseFromJSON(cJSON *entity_referenceJSON){

    entity_reference_t *entity_reference_local_var = NULL;

    // entity_reference->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(entity_referenceJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // entity_reference->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(entity_referenceJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // entity_reference->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(entity_referenceJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // entity_reference->entity_type
    cJSON *entity_type = cJSON_GetObjectItemCaseSensitive(entity_referenceJSON, "entityType");
    if (cJSON_IsNull(entity_type)) {
        entity_type = NULL;
    }
    if (entity_type) { 
    if(!cJSON_IsString(entity_type) && !cJSON_IsNull(entity_type))
    {
    goto end; //String
    }
    }

    // entity_reference->master_entity_id
    cJSON *master_entity_id = cJSON_GetObjectItemCaseSensitive(entity_referenceJSON, "masterEntityId");
    if (cJSON_IsNull(master_entity_id)) {
        master_entity_id = NULL;
    }
    if (master_entity_id) { 
    if(!cJSON_IsNumber(master_entity_id))
    {
    goto end; //Numeric
    }
    }

    // entity_reference->slave_uid
    cJSON *slave_uid = cJSON_GetObjectItemCaseSensitive(entity_referenceJSON, "slaveUID");
    if (cJSON_IsNull(slave_uid)) {
        slave_uid = NULL;
    }
    if (slave_uid) { 
    if(!cJSON_IsString(slave_uid) && !cJSON_IsNull(slave_uid))
    {
    goto end; //String
    }
    }

    // entity_reference->slave_entity_id
    cJSON *slave_entity_id = cJSON_GetObjectItemCaseSensitive(entity_referenceJSON, "slaveEntityId");
    if (cJSON_IsNull(slave_entity_id)) {
        slave_entity_id = NULL;
    }
    if (slave_entity_id) { 
    if(!cJSON_IsNumber(slave_entity_id))
    {
    goto end; //Numeric
    }
    }


    entity_reference_local_var = entity_reference_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        entity_type && !cJSON_IsNull(entity_type) ? strdup(entity_type->valuestring) : NULL,
        master_entity_id ? master_entity_id->valuedouble : 0,
        slave_uid && !cJSON_IsNull(slave_uid) ? strdup(slave_uid->valuestring) : NULL,
        slave_entity_id ? slave_entity_id->valuedouble : 0
        );

    return entity_reference_local_var;
end:
    return NULL;

}
