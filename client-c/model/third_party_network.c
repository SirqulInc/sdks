#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "third_party_network.h"


char* third_party_network_introspection_method_ToString(sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e introspection_method) {
    char* introspection_methodArray[] =  { "NULL", "GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE" };
    return introspection_methodArray[introspection_method];
}

sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e third_party_network_introspection_method_FromString(char* introspection_method){
    int stringToReturn = 0;
    char *introspection_methodArray[] =  { "NULL", "GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE" };
    size_t sizeofArray = sizeof(introspection_methodArray) / sizeof(introspection_methodArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(introspection_method, introspection_methodArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* third_party_network_supported_network_ToString(sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e supported_network) {
    char* supported_networkArray[] =  { "NULL", "FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM" };
    return supported_networkArray[supported_network];
}

sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e third_party_network_supported_network_FromString(char* supported_network){
    int stringToReturn = 0;
    char *supported_networkArray[] =  { "NULL", "FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM" };
    size_t sizeofArray = sizeof(supported_networkArray) / sizeof(supported_networkArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(supported_network, supported_networkArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static third_party_network_t *third_party_network_create_internal(
    long id,
    int active,
    int valid,
    char *network_uid,
    char *name,
    char *description,
    sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e introspection_method,
    char *introspection_url,
    char *introspection_params,
    char *required_root_field,
    billable_entity_t *billable_entity,
    sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e supported_network,
    int enable_introspection
    ) {
    third_party_network_t *third_party_network_local_var = malloc(sizeof(third_party_network_t));
    if (!third_party_network_local_var) {
        return NULL;
    }
    third_party_network_local_var->id = id;
    third_party_network_local_var->active = active;
    third_party_network_local_var->valid = valid;
    third_party_network_local_var->network_uid = network_uid;
    third_party_network_local_var->name = name;
    third_party_network_local_var->description = description;
    third_party_network_local_var->introspection_method = introspection_method;
    third_party_network_local_var->introspection_url = introspection_url;
    third_party_network_local_var->introspection_params = introspection_params;
    third_party_network_local_var->required_root_field = required_root_field;
    third_party_network_local_var->billable_entity = billable_entity;
    third_party_network_local_var->supported_network = supported_network;
    third_party_network_local_var->enable_introspection = enable_introspection;

    third_party_network_local_var->_library_owned = 1;
    return third_party_network_local_var;
}

__attribute__((deprecated)) third_party_network_t *third_party_network_create(
    long id,
    int active,
    int valid,
    char *network_uid,
    char *name,
    char *description,
    sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e introspection_method,
    char *introspection_url,
    char *introspection_params,
    char *required_root_field,
    billable_entity_t *billable_entity,
    sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e supported_network,
    int enable_introspection
    ) {
    return third_party_network_create_internal (
        id,
        active,
        valid,
        network_uid,
        name,
        description,
        introspection_method,
        introspection_url,
        introspection_params,
        required_root_field,
        billable_entity,
        supported_network,
        enable_introspection
        );
}

void third_party_network_free(third_party_network_t *third_party_network) {
    if(NULL == third_party_network){
        return ;
    }
    if(third_party_network->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "third_party_network_free");
        return ;
    }
    listEntry_t *listEntry;
    if (third_party_network->network_uid) {
        free(third_party_network->network_uid);
        third_party_network->network_uid = NULL;
    }
    if (third_party_network->name) {
        free(third_party_network->name);
        third_party_network->name = NULL;
    }
    if (third_party_network->description) {
        free(third_party_network->description);
        third_party_network->description = NULL;
    }
    if (third_party_network->introspection_url) {
        free(third_party_network->introspection_url);
        third_party_network->introspection_url = NULL;
    }
    if (third_party_network->introspection_params) {
        free(third_party_network->introspection_params);
        third_party_network->introspection_params = NULL;
    }
    if (third_party_network->required_root_field) {
        free(third_party_network->required_root_field);
        third_party_network->required_root_field = NULL;
    }
    if (third_party_network->billable_entity) {
        billable_entity_free(third_party_network->billable_entity);
        third_party_network->billable_entity = NULL;
    }
    free(third_party_network);
}

cJSON *third_party_network_convertToJSON(third_party_network_t *third_party_network) {
    cJSON *item = cJSON_CreateObject();

    // third_party_network->id
    if(third_party_network->id) {
    if(cJSON_AddNumberToObject(item, "id", third_party_network->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_network->active
    if(third_party_network->active) {
    if(cJSON_AddBoolToObject(item, "active", third_party_network->active) == NULL) {
    goto fail; //Bool
    }
    }


    // third_party_network->valid
    if(third_party_network->valid) {
    if(cJSON_AddBoolToObject(item, "valid", third_party_network->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // third_party_network->network_uid
    if(third_party_network->network_uid) {
    if(cJSON_AddStringToObject(item, "networkUID", third_party_network->network_uid) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network->name
    if(third_party_network->name) {
    if(cJSON_AddStringToObject(item, "name", third_party_network->name) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network->description
    if(third_party_network->description) {
    if(cJSON_AddStringToObject(item, "description", third_party_network->description) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network->introspection_method
    if(third_party_network->introspection_method != sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_NULL) {
    if(cJSON_AddStringToObject(item, "introspectionMethod", third_party_network_introspection_method_ToString(third_party_network->introspection_method)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // third_party_network->introspection_url
    if(third_party_network->introspection_url) {
    if(cJSON_AddStringToObject(item, "introspectionURL", third_party_network->introspection_url) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network->introspection_params
    if(third_party_network->introspection_params) {
    if(cJSON_AddStringToObject(item, "introspectionParams", third_party_network->introspection_params) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network->required_root_field
    if(third_party_network->required_root_field) {
    if(cJSON_AddStringToObject(item, "requiredRootField", third_party_network->required_root_field) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network->billable_entity
    if(third_party_network->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_convertToJSON(third_party_network->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // third_party_network->supported_network
    if(third_party_network->supported_network != sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_NULL) {
    if(cJSON_AddStringToObject(item, "supportedNetwork", third_party_network_supported_network_ToString(third_party_network->supported_network)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // third_party_network->enable_introspection
    if(third_party_network->enable_introspection) {
    if(cJSON_AddBoolToObject(item, "enableIntrospection", third_party_network->enable_introspection) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

third_party_network_t *third_party_network_parseFromJSON(cJSON *third_party_networkJSON){

    third_party_network_t *third_party_network_local_var = NULL;

    // define the local variable for third_party_network->billable_entity
    billable_entity_t *billable_entity_local_nonprim = NULL;

    // third_party_network->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // third_party_network->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // third_party_network->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // third_party_network->network_uid
    cJSON *network_uid = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "networkUID");
    if (cJSON_IsNull(network_uid)) {
        network_uid = NULL;
    }
    if (network_uid) { 
    if(!cJSON_IsString(network_uid) && !cJSON_IsNull(network_uid))
    {
    goto end; //String
    }
    }

    // third_party_network->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // third_party_network->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // third_party_network->introspection_method
    cJSON *introspection_method = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "introspectionMethod");
    if (cJSON_IsNull(introspection_method)) {
        introspection_method = NULL;
    }
    sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e introspection_methodVariable;
    if (introspection_method) { 
    if(!cJSON_IsString(introspection_method))
    {
    goto end; //Enum
    }
    introspection_methodVariable = third_party_network_introspection_method_FromString(introspection_method->valuestring);
    }

    // third_party_network->introspection_url
    cJSON *introspection_url = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "introspectionURL");
    if (cJSON_IsNull(introspection_url)) {
        introspection_url = NULL;
    }
    if (introspection_url) { 
    if(!cJSON_IsString(introspection_url) && !cJSON_IsNull(introspection_url))
    {
    goto end; //String
    }
    }

    // third_party_network->introspection_params
    cJSON *introspection_params = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "introspectionParams");
    if (cJSON_IsNull(introspection_params)) {
        introspection_params = NULL;
    }
    if (introspection_params) { 
    if(!cJSON_IsString(introspection_params) && !cJSON_IsNull(introspection_params))
    {
    goto end; //String
    }
    }

    // third_party_network->required_root_field
    cJSON *required_root_field = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "requiredRootField");
    if (cJSON_IsNull(required_root_field)) {
        required_root_field = NULL;
    }
    if (required_root_field) { 
    if(!cJSON_IsString(required_root_field) && !cJSON_IsNull(required_root_field))
    {
    goto end; //String
    }
    }

    // third_party_network->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_parseFromJSON(billable_entity); //nonprimitive
    }

    // third_party_network->supported_network
    cJSON *supported_network = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "supportedNetwork");
    if (cJSON_IsNull(supported_network)) {
        supported_network = NULL;
    }
    sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e supported_networkVariable;
    if (supported_network) { 
    if(!cJSON_IsString(supported_network))
    {
    goto end; //Enum
    }
    supported_networkVariable = third_party_network_supported_network_FromString(supported_network->valuestring);
    }

    // third_party_network->enable_introspection
    cJSON *enable_introspection = cJSON_GetObjectItemCaseSensitive(third_party_networkJSON, "enableIntrospection");
    if (cJSON_IsNull(enable_introspection)) {
        enable_introspection = NULL;
    }
    if (enable_introspection) { 
    if(!cJSON_IsBool(enable_introspection))
    {
    goto end; //Bool
    }
    }


    third_party_network_local_var = third_party_network_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        network_uid && !cJSON_IsNull(network_uid) ? strdup(network_uid->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        introspection_method ? introspection_methodVariable : sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_NULL,
        introspection_url && !cJSON_IsNull(introspection_url) ? strdup(introspection_url->valuestring) : NULL,
        introspection_params && !cJSON_IsNull(introspection_params) ? strdup(introspection_params->valuestring) : NULL,
        required_root_field && !cJSON_IsNull(required_root_field) ? strdup(required_root_field->valuestring) : NULL,
        billable_entity ? billable_entity_local_nonprim : NULL,
        supported_network ? supported_networkVariable : sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_NULL,
        enable_introspection ? enable_introspection->valueint : 0
        );

    return third_party_network_local_var;
end:
    if (billable_entity_local_nonprim) {
        billable_entity_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    return NULL;

}
