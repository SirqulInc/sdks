#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "load_short_response.h"



static load_short_response_t *load_short_response_create_internal(
    char *id,
    char *name,
    long size,
    long loading_time,
    int separate_payloads,
    stop_response_t *pickup,
    stop_response_t *dropoff
    ) {
    load_short_response_t *load_short_response_local_var = malloc(sizeof(load_short_response_t));
    if (!load_short_response_local_var) {
        return NULL;
    }
    load_short_response_local_var->id = id;
    load_short_response_local_var->name = name;
    load_short_response_local_var->size = size;
    load_short_response_local_var->loading_time = loading_time;
    load_short_response_local_var->separate_payloads = separate_payloads;
    load_short_response_local_var->pickup = pickup;
    load_short_response_local_var->dropoff = dropoff;

    load_short_response_local_var->_library_owned = 1;
    return load_short_response_local_var;
}

__attribute__((deprecated)) load_short_response_t *load_short_response_create(
    char *id,
    char *name,
    long size,
    long loading_time,
    int separate_payloads,
    stop_response_t *pickup,
    stop_response_t *dropoff
    ) {
    return load_short_response_create_internal (
        id,
        name,
        size,
        loading_time,
        separate_payloads,
        pickup,
        dropoff
        );
}

void load_short_response_free(load_short_response_t *load_short_response) {
    if(NULL == load_short_response){
        return ;
    }
    if(load_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "load_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (load_short_response->id) {
        free(load_short_response->id);
        load_short_response->id = NULL;
    }
    if (load_short_response->name) {
        free(load_short_response->name);
        load_short_response->name = NULL;
    }
    if (load_short_response->pickup) {
        stop_response_free(load_short_response->pickup);
        load_short_response->pickup = NULL;
    }
    if (load_short_response->dropoff) {
        stop_response_free(load_short_response->dropoff);
        load_short_response->dropoff = NULL;
    }
    free(load_short_response);
}

cJSON *load_short_response_convertToJSON(load_short_response_t *load_short_response) {
    cJSON *item = cJSON_CreateObject();

    // load_short_response->id
    if(load_short_response->id) {
    if(cJSON_AddStringToObject(item, "id", load_short_response->id) == NULL) {
    goto fail; //String
    }
    }


    // load_short_response->name
    if(load_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", load_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // load_short_response->size
    if(load_short_response->size) {
    if(cJSON_AddNumberToObject(item, "size", load_short_response->size) == NULL) {
    goto fail; //Numeric
    }
    }


    // load_short_response->loading_time
    if(load_short_response->loading_time) {
    if(cJSON_AddNumberToObject(item, "loadingTime", load_short_response->loading_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // load_short_response->separate_payloads
    if(load_short_response->separate_payloads) {
    if(cJSON_AddBoolToObject(item, "separatePayloads", load_short_response->separate_payloads) == NULL) {
    goto fail; //Bool
    }
    }


    // load_short_response->pickup
    if(load_short_response->pickup) {
    cJSON *pickup_local_JSON = stop_response_convertToJSON(load_short_response->pickup);
    if(pickup_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pickup", pickup_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // load_short_response->dropoff
    if(load_short_response->dropoff) {
    cJSON *dropoff_local_JSON = stop_response_convertToJSON(load_short_response->dropoff);
    if(dropoff_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "dropoff", dropoff_local_JSON);
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

load_short_response_t *load_short_response_parseFromJSON(cJSON *load_short_responseJSON){

    load_short_response_t *load_short_response_local_var = NULL;

    // define the local variable for load_short_response->pickup
    stop_response_t *pickup_local_nonprim = NULL;

    // define the local variable for load_short_response->dropoff
    stop_response_t *dropoff_local_nonprim = NULL;

    // load_short_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(load_short_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // load_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(load_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // load_short_response->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(load_short_responseJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    if(!cJSON_IsNumber(size))
    {
    goto end; //Numeric
    }
    }

    // load_short_response->loading_time
    cJSON *loading_time = cJSON_GetObjectItemCaseSensitive(load_short_responseJSON, "loadingTime");
    if (cJSON_IsNull(loading_time)) {
        loading_time = NULL;
    }
    if (loading_time) { 
    if(!cJSON_IsNumber(loading_time))
    {
    goto end; //Numeric
    }
    }

    // load_short_response->separate_payloads
    cJSON *separate_payloads = cJSON_GetObjectItemCaseSensitive(load_short_responseJSON, "separatePayloads");
    if (cJSON_IsNull(separate_payloads)) {
        separate_payloads = NULL;
    }
    if (separate_payloads) { 
    if(!cJSON_IsBool(separate_payloads))
    {
    goto end; //Bool
    }
    }

    // load_short_response->pickup
    cJSON *pickup = cJSON_GetObjectItemCaseSensitive(load_short_responseJSON, "pickup");
    if (cJSON_IsNull(pickup)) {
        pickup = NULL;
    }
    if (pickup) { 
    pickup_local_nonprim = stop_response_parseFromJSON(pickup); //nonprimitive
    }

    // load_short_response->dropoff
    cJSON *dropoff = cJSON_GetObjectItemCaseSensitive(load_short_responseJSON, "dropoff");
    if (cJSON_IsNull(dropoff)) {
        dropoff = NULL;
    }
    if (dropoff) { 
    dropoff_local_nonprim = stop_response_parseFromJSON(dropoff); //nonprimitive
    }


    load_short_response_local_var = load_short_response_create_internal (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        size ? size->valuedouble : 0,
        loading_time ? loading_time->valuedouble : 0,
        separate_payloads ? separate_payloads->valueint : 0,
        pickup ? pickup_local_nonprim : NULL,
        dropoff ? dropoff_local_nonprim : NULL
        );

    return load_short_response_local_var;
end:
    if (pickup_local_nonprim) {
        stop_response_free(pickup_local_nonprim);
        pickup_local_nonprim = NULL;
    }
    if (dropoff_local_nonprim) {
        stop_response_free(dropoff_local_nonprim);
        dropoff_local_nonprim = NULL;
    }
    return NULL;

}
