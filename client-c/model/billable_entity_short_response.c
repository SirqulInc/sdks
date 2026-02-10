#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "billable_entity_short_response.h"



static billable_entity_short_response_t *billable_entity_short_response_create_internal(
    long billable_entity_id,
    char *name,
    profile_short_response_t *responsible
    ) {
    billable_entity_short_response_t *billable_entity_short_response_local_var = malloc(sizeof(billable_entity_short_response_t));
    if (!billable_entity_short_response_local_var) {
        return NULL;
    }
    billable_entity_short_response_local_var->billable_entity_id = billable_entity_id;
    billable_entity_short_response_local_var->name = name;
    billable_entity_short_response_local_var->responsible = responsible;

    billable_entity_short_response_local_var->_library_owned = 1;
    return billable_entity_short_response_local_var;
}

__attribute__((deprecated)) billable_entity_short_response_t *billable_entity_short_response_create(
    long billable_entity_id,
    char *name,
    profile_short_response_t *responsible
    ) {
    return billable_entity_short_response_create_internal (
        billable_entity_id,
        name,
        responsible
        );
}

void billable_entity_short_response_free(billable_entity_short_response_t *billable_entity_short_response) {
    if(NULL == billable_entity_short_response){
        return ;
    }
    if(billable_entity_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "billable_entity_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (billable_entity_short_response->name) {
        free(billable_entity_short_response->name);
        billable_entity_short_response->name = NULL;
    }
    if (billable_entity_short_response->responsible) {
        profile_short_response_free(billable_entity_short_response->responsible);
        billable_entity_short_response->responsible = NULL;
    }
    free(billable_entity_short_response);
}

cJSON *billable_entity_short_response_convertToJSON(billable_entity_short_response_t *billable_entity_short_response) {
    cJSON *item = cJSON_CreateObject();

    // billable_entity_short_response->billable_entity_id
    if(billable_entity_short_response->billable_entity_id) {
    if(cJSON_AddNumberToObject(item, "billableEntityId", billable_entity_short_response->billable_entity_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // billable_entity_short_response->name
    if(billable_entity_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", billable_entity_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // billable_entity_short_response->responsible
    if(billable_entity_short_response->responsible) {
    cJSON *responsible_local_JSON = profile_short_response_convertToJSON(billable_entity_short_response->responsible);
    if(responsible_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "responsible", responsible_local_JSON);
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

billable_entity_short_response_t *billable_entity_short_response_parseFromJSON(cJSON *billable_entity_short_responseJSON){

    billable_entity_short_response_t *billable_entity_short_response_local_var = NULL;

    // define the local variable for billable_entity_short_response->responsible
    profile_short_response_t *responsible_local_nonprim = NULL;

    // billable_entity_short_response->billable_entity_id
    cJSON *billable_entity_id = cJSON_GetObjectItemCaseSensitive(billable_entity_short_responseJSON, "billableEntityId");
    if (cJSON_IsNull(billable_entity_id)) {
        billable_entity_id = NULL;
    }
    if (billable_entity_id) { 
    if(!cJSON_IsNumber(billable_entity_id))
    {
    goto end; //Numeric
    }
    }

    // billable_entity_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(billable_entity_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // billable_entity_short_response->responsible
    cJSON *responsible = cJSON_GetObjectItemCaseSensitive(billable_entity_short_responseJSON, "responsible");
    if (cJSON_IsNull(responsible)) {
        responsible = NULL;
    }
    if (responsible) { 
    responsible_local_nonprim = profile_short_response_parseFromJSON(responsible); //nonprimitive
    }


    billable_entity_short_response_local_var = billable_entity_short_response_create_internal (
        billable_entity_id ? billable_entity_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        responsible ? responsible_local_nonprim : NULL
        );

    return billable_entity_short_response_local_var;
end:
    if (responsible_local_nonprim) {
        profile_short_response_free(responsible_local_nonprim);
        responsible_local_nonprim = NULL;
    }
    return NULL;

}
