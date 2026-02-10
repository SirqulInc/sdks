#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "shipment_import_status.h"



static shipment_import_status_t *shipment_import_status_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *batch_id,
    char *message,
    shipment_t *shipment,
    char *started,
    char *completed
    ) {
    shipment_import_status_t *shipment_import_status_local_var = malloc(sizeof(shipment_import_status_t));
    if (!shipment_import_status_local_var) {
        return NULL;
    }
    shipment_import_status_local_var->id = id;
    shipment_import_status_local_var->active = active;
    shipment_import_status_local_var->valid = valid;
    shipment_import_status_local_var->name = name;
    shipment_import_status_local_var->batch_id = batch_id;
    shipment_import_status_local_var->message = message;
    shipment_import_status_local_var->shipment = shipment;
    shipment_import_status_local_var->started = started;
    shipment_import_status_local_var->completed = completed;

    shipment_import_status_local_var->_library_owned = 1;
    return shipment_import_status_local_var;
}

__attribute__((deprecated)) shipment_import_status_t *shipment_import_status_create(
    long id,
    int active,
    int valid,
    char *name,
    char *batch_id,
    char *message,
    shipment_t *shipment,
    char *started,
    char *completed
    ) {
    return shipment_import_status_create_internal (
        id,
        active,
        valid,
        name,
        batch_id,
        message,
        shipment,
        started,
        completed
        );
}

void shipment_import_status_free(shipment_import_status_t *shipment_import_status) {
    if(NULL == shipment_import_status){
        return ;
    }
    if(shipment_import_status->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "shipment_import_status_free");
        return ;
    }
    listEntry_t *listEntry;
    if (shipment_import_status->name) {
        free(shipment_import_status->name);
        shipment_import_status->name = NULL;
    }
    if (shipment_import_status->batch_id) {
        free(shipment_import_status->batch_id);
        shipment_import_status->batch_id = NULL;
    }
    if (shipment_import_status->message) {
        free(shipment_import_status->message);
        shipment_import_status->message = NULL;
    }
    if (shipment_import_status->shipment) {
        shipment_free(shipment_import_status->shipment);
        shipment_import_status->shipment = NULL;
    }
    if (shipment_import_status->started) {
        free(shipment_import_status->started);
        shipment_import_status->started = NULL;
    }
    if (shipment_import_status->completed) {
        free(shipment_import_status->completed);
        shipment_import_status->completed = NULL;
    }
    free(shipment_import_status);
}

cJSON *shipment_import_status_convertToJSON(shipment_import_status_t *shipment_import_status) {
    cJSON *item = cJSON_CreateObject();

    // shipment_import_status->id
    if(shipment_import_status->id) {
    if(cJSON_AddNumberToObject(item, "id", shipment_import_status->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_import_status->active
    if(shipment_import_status->active) {
    if(cJSON_AddBoolToObject(item, "active", shipment_import_status->active) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment_import_status->valid
    if(shipment_import_status->valid) {
    if(cJSON_AddBoolToObject(item, "valid", shipment_import_status->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment_import_status->name
    if(shipment_import_status->name) {
    if(cJSON_AddStringToObject(item, "name", shipment_import_status->name) == NULL) {
    goto fail; //String
    }
    }


    // shipment_import_status->batch_id
    if(shipment_import_status->batch_id) {
    if(cJSON_AddStringToObject(item, "batchId", shipment_import_status->batch_id) == NULL) {
    goto fail; //String
    }
    }


    // shipment_import_status->message
    if(shipment_import_status->message) {
    if(cJSON_AddStringToObject(item, "message", shipment_import_status->message) == NULL) {
    goto fail; //String
    }
    }


    // shipment_import_status->shipment
    if(shipment_import_status->shipment) {
    cJSON *shipment_local_JSON = shipment_convertToJSON(shipment_import_status->shipment);
    if(shipment_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "shipment", shipment_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment_import_status->started
    if(shipment_import_status->started) {
    if(cJSON_AddStringToObject(item, "started", shipment_import_status->started) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_import_status->completed
    if(shipment_import_status->completed) {
    if(cJSON_AddStringToObject(item, "completed", shipment_import_status->completed) == NULL) {
    goto fail; //Date-Time
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

shipment_import_status_t *shipment_import_status_parseFromJSON(cJSON *shipment_import_statusJSON){

    shipment_import_status_t *shipment_import_status_local_var = NULL;

    // define the local variable for shipment_import_status->shipment
    shipment_t *shipment_local_nonprim = NULL;

    // shipment_import_status->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // shipment_import_status->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // shipment_import_status->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // shipment_import_status->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // shipment_import_status->batch_id
    cJSON *batch_id = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "batchId");
    if (cJSON_IsNull(batch_id)) {
        batch_id = NULL;
    }
    if (batch_id) { 
    if(!cJSON_IsString(batch_id) && !cJSON_IsNull(batch_id))
    {
    goto end; //String
    }
    }

    // shipment_import_status->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // shipment_import_status->shipment
    cJSON *shipment = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "shipment");
    if (cJSON_IsNull(shipment)) {
        shipment = NULL;
    }
    if (shipment) { 
    shipment_local_nonprim = shipment_parseFromJSON(shipment); //nonprimitive
    }

    // shipment_import_status->started
    cJSON *started = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "started");
    if (cJSON_IsNull(started)) {
        started = NULL;
    }
    if (started) { 
    if(!cJSON_IsString(started) && !cJSON_IsNull(started))
    {
    goto end; //DateTime
    }
    }

    // shipment_import_status->completed
    cJSON *completed = cJSON_GetObjectItemCaseSensitive(shipment_import_statusJSON, "completed");
    if (cJSON_IsNull(completed)) {
        completed = NULL;
    }
    if (completed) { 
    if(!cJSON_IsString(completed) && !cJSON_IsNull(completed))
    {
    goto end; //DateTime
    }
    }


    shipment_import_status_local_var = shipment_import_status_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        batch_id && !cJSON_IsNull(batch_id) ? strdup(batch_id->valuestring) : NULL,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        shipment ? shipment_local_nonprim : NULL,
        started && !cJSON_IsNull(started) ? strdup(started->valuestring) : NULL,
        completed && !cJSON_IsNull(completed) ? strdup(completed->valuestring) : NULL
        );

    return shipment_import_status_local_var;
end:
    if (shipment_local_nonprim) {
        shipment_free(shipment_local_nonprim);
        shipment_local_nonprim = NULL;
    }
    return NULL;

}
