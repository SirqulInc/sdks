#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "third_party_network_short_response.h"


char* third_party_network_short_response_network_ToString(sirqul_iot_platform_third_party_network_short_response_NETWORK_e network) {
    char* networkArray[] =  { "NULL", "FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM" };
    return networkArray[network];
}

sirqul_iot_platform_third_party_network_short_response_NETWORK_e third_party_network_short_response_network_FromString(char* network){
    int stringToReturn = 0;
    char *networkArray[] =  { "NULL", "FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM" };
    size_t sizeofArray = sizeof(networkArray) / sizeof(networkArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(network, networkArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static third_party_network_short_response_t *third_party_network_short_response_create_internal(
    long updated,
    long created,
    int active,
    char *name,
    char *description,
    char *network_uid,
    sirqul_iot_platform_third_party_network_short_response_NETWORK_e network
    ) {
    third_party_network_short_response_t *third_party_network_short_response_local_var = malloc(sizeof(third_party_network_short_response_t));
    if (!third_party_network_short_response_local_var) {
        return NULL;
    }
    third_party_network_short_response_local_var->updated = updated;
    third_party_network_short_response_local_var->created = created;
    third_party_network_short_response_local_var->active = active;
    third_party_network_short_response_local_var->name = name;
    third_party_network_short_response_local_var->description = description;
    third_party_network_short_response_local_var->network_uid = network_uid;
    third_party_network_short_response_local_var->network = network;

    third_party_network_short_response_local_var->_library_owned = 1;
    return third_party_network_short_response_local_var;
}

__attribute__((deprecated)) third_party_network_short_response_t *third_party_network_short_response_create(
    long updated,
    long created,
    int active,
    char *name,
    char *description,
    char *network_uid,
    sirqul_iot_platform_third_party_network_short_response_NETWORK_e network
    ) {
    return third_party_network_short_response_create_internal (
        updated,
        created,
        active,
        name,
        description,
        network_uid,
        network
        );
}

void third_party_network_short_response_free(third_party_network_short_response_t *third_party_network_short_response) {
    if(NULL == third_party_network_short_response){
        return ;
    }
    if(third_party_network_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "third_party_network_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (third_party_network_short_response->name) {
        free(third_party_network_short_response->name);
        third_party_network_short_response->name = NULL;
    }
    if (third_party_network_short_response->description) {
        free(third_party_network_short_response->description);
        third_party_network_short_response->description = NULL;
    }
    if (third_party_network_short_response->network_uid) {
        free(third_party_network_short_response->network_uid);
        third_party_network_short_response->network_uid = NULL;
    }
    free(third_party_network_short_response);
}

cJSON *third_party_network_short_response_convertToJSON(third_party_network_short_response_t *third_party_network_short_response) {
    cJSON *item = cJSON_CreateObject();

    // third_party_network_short_response->updated
    if(third_party_network_short_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", third_party_network_short_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_network_short_response->created
    if(third_party_network_short_response->created) {
    if(cJSON_AddNumberToObject(item, "created", third_party_network_short_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_network_short_response->active
    if(third_party_network_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", third_party_network_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // third_party_network_short_response->name
    if(third_party_network_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", third_party_network_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_short_response->description
    if(third_party_network_short_response->description) {
    if(cJSON_AddStringToObject(item, "description", third_party_network_short_response->description) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_short_response->network_uid
    if(third_party_network_short_response->network_uid) {
    if(cJSON_AddStringToObject(item, "networkUID", third_party_network_short_response->network_uid) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_short_response->network
    if(third_party_network_short_response->network != sirqul_iot_platform_third_party_network_short_response_NETWORK_NULL) {
    if(cJSON_AddStringToObject(item, "network", third_party_network_short_response_network_ToString(third_party_network_short_response->network)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

third_party_network_short_response_t *third_party_network_short_response_parseFromJSON(cJSON *third_party_network_short_responseJSON){

    third_party_network_short_response_t *third_party_network_short_response_local_var = NULL;

    // third_party_network_short_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(third_party_network_short_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // third_party_network_short_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(third_party_network_short_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // third_party_network_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(third_party_network_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // third_party_network_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(third_party_network_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // third_party_network_short_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(third_party_network_short_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // third_party_network_short_response->network_uid
    cJSON *network_uid = cJSON_GetObjectItemCaseSensitive(third_party_network_short_responseJSON, "networkUID");
    if (cJSON_IsNull(network_uid)) {
        network_uid = NULL;
    }
    if (network_uid) { 
    if(!cJSON_IsString(network_uid) && !cJSON_IsNull(network_uid))
    {
    goto end; //String
    }
    }

    // third_party_network_short_response->network
    cJSON *network = cJSON_GetObjectItemCaseSensitive(third_party_network_short_responseJSON, "network");
    if (cJSON_IsNull(network)) {
        network = NULL;
    }
    sirqul_iot_platform_third_party_network_short_response_NETWORK_e networkVariable;
    if (network) { 
    if(!cJSON_IsString(network))
    {
    goto end; //Enum
    }
    networkVariable = third_party_network_short_response_network_FromString(network->valuestring);
    }


    third_party_network_short_response_local_var = third_party_network_short_response_create_internal (
        updated ? updated->valuedouble : 0,
        created ? created->valuedouble : 0,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        network_uid && !cJSON_IsNull(network_uid) ? strdup(network_uid->valuestring) : NULL,
        network ? networkVariable : sirqul_iot_platform_third_party_network_short_response_NETWORK_NULL
        );

    return third_party_network_short_response_local_var;
end:
    return NULL;

}
