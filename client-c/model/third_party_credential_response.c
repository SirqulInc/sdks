#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "third_party_credential_response.h"



static third_party_credential_response_t *third_party_credential_response_create_internal(
    long third_party_credential_id,
    char *third_party_id,
    char *third_party_name,
    third_party_network_short_response_t *network,
    long updated,
    long created
    ) {
    third_party_credential_response_t *third_party_credential_response_local_var = malloc(sizeof(third_party_credential_response_t));
    if (!third_party_credential_response_local_var) {
        return NULL;
    }
    third_party_credential_response_local_var->third_party_credential_id = third_party_credential_id;
    third_party_credential_response_local_var->third_party_id = third_party_id;
    third_party_credential_response_local_var->third_party_name = third_party_name;
    third_party_credential_response_local_var->network = network;
    third_party_credential_response_local_var->updated = updated;
    third_party_credential_response_local_var->created = created;

    third_party_credential_response_local_var->_library_owned = 1;
    return third_party_credential_response_local_var;
}

__attribute__((deprecated)) third_party_credential_response_t *third_party_credential_response_create(
    long third_party_credential_id,
    char *third_party_id,
    char *third_party_name,
    third_party_network_short_response_t *network,
    long updated,
    long created
    ) {
    return third_party_credential_response_create_internal (
        third_party_credential_id,
        third_party_id,
        third_party_name,
        network,
        updated,
        created
        );
}

void third_party_credential_response_free(third_party_credential_response_t *third_party_credential_response) {
    if(NULL == third_party_credential_response){
        return ;
    }
    if(third_party_credential_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "third_party_credential_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (third_party_credential_response->third_party_id) {
        free(third_party_credential_response->third_party_id);
        third_party_credential_response->third_party_id = NULL;
    }
    if (third_party_credential_response->third_party_name) {
        free(third_party_credential_response->third_party_name);
        third_party_credential_response->third_party_name = NULL;
    }
    if (third_party_credential_response->network) {
        third_party_network_short_response_free(third_party_credential_response->network);
        third_party_credential_response->network = NULL;
    }
    free(third_party_credential_response);
}

cJSON *third_party_credential_response_convertToJSON(third_party_credential_response_t *third_party_credential_response) {
    cJSON *item = cJSON_CreateObject();

    // third_party_credential_response->third_party_credential_id
    if(third_party_credential_response->third_party_credential_id) {
    if(cJSON_AddNumberToObject(item, "thirdPartyCredentialId", third_party_credential_response->third_party_credential_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_credential_response->third_party_id
    if(third_party_credential_response->third_party_id) {
    if(cJSON_AddStringToObject(item, "thirdPartyId", third_party_credential_response->third_party_id) == NULL) {
    goto fail; //String
    }
    }


    // third_party_credential_response->third_party_name
    if(third_party_credential_response->third_party_name) {
    if(cJSON_AddStringToObject(item, "thirdPartyName", third_party_credential_response->third_party_name) == NULL) {
    goto fail; //String
    }
    }


    // third_party_credential_response->network
    if(third_party_credential_response->network) {
    cJSON *network_local_JSON = third_party_network_short_response_convertToJSON(third_party_credential_response->network);
    if(network_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "network", network_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // third_party_credential_response->updated
    if(third_party_credential_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", third_party_credential_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_credential_response->created
    if(third_party_credential_response->created) {
    if(cJSON_AddNumberToObject(item, "created", third_party_credential_response->created) == NULL) {
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

third_party_credential_response_t *third_party_credential_response_parseFromJSON(cJSON *third_party_credential_responseJSON){

    third_party_credential_response_t *third_party_credential_response_local_var = NULL;

    // define the local variable for third_party_credential_response->network
    third_party_network_short_response_t *network_local_nonprim = NULL;

    // third_party_credential_response->third_party_credential_id
    cJSON *third_party_credential_id = cJSON_GetObjectItemCaseSensitive(third_party_credential_responseJSON, "thirdPartyCredentialId");
    if (cJSON_IsNull(third_party_credential_id)) {
        third_party_credential_id = NULL;
    }
    if (third_party_credential_id) { 
    if(!cJSON_IsNumber(third_party_credential_id))
    {
    goto end; //Numeric
    }
    }

    // third_party_credential_response->third_party_id
    cJSON *third_party_id = cJSON_GetObjectItemCaseSensitive(third_party_credential_responseJSON, "thirdPartyId");
    if (cJSON_IsNull(third_party_id)) {
        third_party_id = NULL;
    }
    if (third_party_id) { 
    if(!cJSON_IsString(third_party_id) && !cJSON_IsNull(third_party_id))
    {
    goto end; //String
    }
    }

    // third_party_credential_response->third_party_name
    cJSON *third_party_name = cJSON_GetObjectItemCaseSensitive(third_party_credential_responseJSON, "thirdPartyName");
    if (cJSON_IsNull(third_party_name)) {
        third_party_name = NULL;
    }
    if (third_party_name) { 
    if(!cJSON_IsString(third_party_name) && !cJSON_IsNull(third_party_name))
    {
    goto end; //String
    }
    }

    // third_party_credential_response->network
    cJSON *network = cJSON_GetObjectItemCaseSensitive(third_party_credential_responseJSON, "network");
    if (cJSON_IsNull(network)) {
        network = NULL;
    }
    if (network) { 
    network_local_nonprim = third_party_network_short_response_parseFromJSON(network); //nonprimitive
    }

    // third_party_credential_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(third_party_credential_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // third_party_credential_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(third_party_credential_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }


    third_party_credential_response_local_var = third_party_credential_response_create_internal (
        third_party_credential_id ? third_party_credential_id->valuedouble : 0,
        third_party_id && !cJSON_IsNull(third_party_id) ? strdup(third_party_id->valuestring) : NULL,
        third_party_name && !cJSON_IsNull(third_party_name) ? strdup(third_party_name->valuestring) : NULL,
        network ? network_local_nonprim : NULL,
        updated ? updated->valuedouble : 0,
        created ? created->valuedouble : 0
        );

    return third_party_credential_response_local_var;
end:
    if (network_local_nonprim) {
        third_party_network_short_response_free(network_local_nonprim);
        network_local_nonprim = NULL;
    }
    return NULL;

}
