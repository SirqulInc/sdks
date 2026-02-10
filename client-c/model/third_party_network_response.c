#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "third_party_network_response.h"


char* third_party_network_response_network_ToString(sirqul_iot_platform_third_party_network_response_NETWORK_e network) {
    char* networkArray[] =  { "NULL", "FACEBOOK", "TWITTER", "CLEAR", "USERNAME", "PHONE", "UNKNOWN", "CUSTOM" };
    return networkArray[network];
}

sirqul_iot_platform_third_party_network_response_NETWORK_e third_party_network_response_network_FromString(char* network){
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
char* third_party_network_response_introspection_method_ToString(sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e introspection_method) {
    char* introspection_methodArray[] =  { "NULL", "GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE" };
    return introspection_methodArray[introspection_method];
}

sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e third_party_network_response_introspection_method_FromString(char* introspection_method){
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

static third_party_network_response_t *third_party_network_response_create_internal(
    long updated,
    long created,
    int active,
    char *name,
    char *description,
    char *network_uid,
    sirqul_iot_platform_third_party_network_response_NETWORK_e network,
    sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e introspection_method,
    int enable_introspection,
    char *introspection_url,
    char *introspection_params,
    char *required_root_field
    ) {
    third_party_network_response_t *third_party_network_response_local_var = malloc(sizeof(third_party_network_response_t));
    if (!third_party_network_response_local_var) {
        return NULL;
    }
    third_party_network_response_local_var->updated = updated;
    third_party_network_response_local_var->created = created;
    third_party_network_response_local_var->active = active;
    third_party_network_response_local_var->name = name;
    third_party_network_response_local_var->description = description;
    third_party_network_response_local_var->network_uid = network_uid;
    third_party_network_response_local_var->network = network;
    third_party_network_response_local_var->introspection_method = introspection_method;
    third_party_network_response_local_var->enable_introspection = enable_introspection;
    third_party_network_response_local_var->introspection_url = introspection_url;
    third_party_network_response_local_var->introspection_params = introspection_params;
    third_party_network_response_local_var->required_root_field = required_root_field;

    third_party_network_response_local_var->_library_owned = 1;
    return third_party_network_response_local_var;
}

__attribute__((deprecated)) third_party_network_response_t *third_party_network_response_create(
    long updated,
    long created,
    int active,
    char *name,
    char *description,
    char *network_uid,
    sirqul_iot_platform_third_party_network_response_NETWORK_e network,
    sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e introspection_method,
    int enable_introspection,
    char *introspection_url,
    char *introspection_params,
    char *required_root_field
    ) {
    return third_party_network_response_create_internal (
        updated,
        created,
        active,
        name,
        description,
        network_uid,
        network,
        introspection_method,
        enable_introspection,
        introspection_url,
        introspection_params,
        required_root_field
        );
}

void third_party_network_response_free(third_party_network_response_t *third_party_network_response) {
    if(NULL == third_party_network_response){
        return ;
    }
    if(third_party_network_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "third_party_network_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (third_party_network_response->name) {
        free(third_party_network_response->name);
        third_party_network_response->name = NULL;
    }
    if (third_party_network_response->description) {
        free(third_party_network_response->description);
        third_party_network_response->description = NULL;
    }
    if (third_party_network_response->network_uid) {
        free(third_party_network_response->network_uid);
        third_party_network_response->network_uid = NULL;
    }
    if (third_party_network_response->introspection_url) {
        free(third_party_network_response->introspection_url);
        third_party_network_response->introspection_url = NULL;
    }
    if (third_party_network_response->introspection_params) {
        free(third_party_network_response->introspection_params);
        third_party_network_response->introspection_params = NULL;
    }
    if (third_party_network_response->required_root_field) {
        free(third_party_network_response->required_root_field);
        third_party_network_response->required_root_field = NULL;
    }
    free(third_party_network_response);
}

cJSON *third_party_network_response_convertToJSON(third_party_network_response_t *third_party_network_response) {
    cJSON *item = cJSON_CreateObject();

    // third_party_network_response->updated
    if(third_party_network_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", third_party_network_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_network_response->created
    if(third_party_network_response->created) {
    if(cJSON_AddNumberToObject(item, "created", third_party_network_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_network_response->active
    if(third_party_network_response->active) {
    if(cJSON_AddBoolToObject(item, "active", third_party_network_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // third_party_network_response->name
    if(third_party_network_response->name) {
    if(cJSON_AddStringToObject(item, "name", third_party_network_response->name) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_response->description
    if(third_party_network_response->description) {
    if(cJSON_AddStringToObject(item, "description", third_party_network_response->description) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_response->network_uid
    if(third_party_network_response->network_uid) {
    if(cJSON_AddStringToObject(item, "networkUID", third_party_network_response->network_uid) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_response->network
    if(third_party_network_response->network != sirqul_iot_platform_third_party_network_response_NETWORK_NULL) {
    if(cJSON_AddStringToObject(item, "network", third_party_network_response_network_ToString(third_party_network_response->network)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // third_party_network_response->introspection_method
    if(third_party_network_response->introspection_method != sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_NULL) {
    if(cJSON_AddStringToObject(item, "introspectionMethod", third_party_network_response_introspection_method_ToString(third_party_network_response->introspection_method)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // third_party_network_response->enable_introspection
    if(third_party_network_response->enable_introspection) {
    if(cJSON_AddBoolToObject(item, "enableIntrospection", third_party_network_response->enable_introspection) == NULL) {
    goto fail; //Bool
    }
    }


    // third_party_network_response->introspection_url
    if(third_party_network_response->introspection_url) {
    if(cJSON_AddStringToObject(item, "introspectionURL", third_party_network_response->introspection_url) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_response->introspection_params
    if(third_party_network_response->introspection_params) {
    if(cJSON_AddStringToObject(item, "introspectionParams", third_party_network_response->introspection_params) == NULL) {
    goto fail; //String
    }
    }


    // third_party_network_response->required_root_field
    if(third_party_network_response->required_root_field) {
    if(cJSON_AddStringToObject(item, "requiredRootField", third_party_network_response->required_root_field) == NULL) {
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

third_party_network_response_t *third_party_network_response_parseFromJSON(cJSON *third_party_network_responseJSON){

    third_party_network_response_t *third_party_network_response_local_var = NULL;

    // third_party_network_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // third_party_network_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // third_party_network_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // third_party_network_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // third_party_network_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // third_party_network_response->network_uid
    cJSON *network_uid = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "networkUID");
    if (cJSON_IsNull(network_uid)) {
        network_uid = NULL;
    }
    if (network_uid) { 
    if(!cJSON_IsString(network_uid) && !cJSON_IsNull(network_uid))
    {
    goto end; //String
    }
    }

    // third_party_network_response->network
    cJSON *network = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "network");
    if (cJSON_IsNull(network)) {
        network = NULL;
    }
    sirqul_iot_platform_third_party_network_response_NETWORK_e networkVariable;
    if (network) { 
    if(!cJSON_IsString(network))
    {
    goto end; //Enum
    }
    networkVariable = third_party_network_response_network_FromString(network->valuestring);
    }

    // third_party_network_response->introspection_method
    cJSON *introspection_method = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "introspectionMethod");
    if (cJSON_IsNull(introspection_method)) {
        introspection_method = NULL;
    }
    sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e introspection_methodVariable;
    if (introspection_method) { 
    if(!cJSON_IsString(introspection_method))
    {
    goto end; //Enum
    }
    introspection_methodVariable = third_party_network_response_introspection_method_FromString(introspection_method->valuestring);
    }

    // third_party_network_response->enable_introspection
    cJSON *enable_introspection = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "enableIntrospection");
    if (cJSON_IsNull(enable_introspection)) {
        enable_introspection = NULL;
    }
    if (enable_introspection) { 
    if(!cJSON_IsBool(enable_introspection))
    {
    goto end; //Bool
    }
    }

    // third_party_network_response->introspection_url
    cJSON *introspection_url = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "introspectionURL");
    if (cJSON_IsNull(introspection_url)) {
        introspection_url = NULL;
    }
    if (introspection_url) { 
    if(!cJSON_IsString(introspection_url) && !cJSON_IsNull(introspection_url))
    {
    goto end; //String
    }
    }

    // third_party_network_response->introspection_params
    cJSON *introspection_params = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "introspectionParams");
    if (cJSON_IsNull(introspection_params)) {
        introspection_params = NULL;
    }
    if (introspection_params) { 
    if(!cJSON_IsString(introspection_params) && !cJSON_IsNull(introspection_params))
    {
    goto end; //String
    }
    }

    // third_party_network_response->required_root_field
    cJSON *required_root_field = cJSON_GetObjectItemCaseSensitive(third_party_network_responseJSON, "requiredRootField");
    if (cJSON_IsNull(required_root_field)) {
        required_root_field = NULL;
    }
    if (required_root_field) { 
    if(!cJSON_IsString(required_root_field) && !cJSON_IsNull(required_root_field))
    {
    goto end; //String
    }
    }


    third_party_network_response_local_var = third_party_network_response_create_internal (
        updated ? updated->valuedouble : 0,
        created ? created->valuedouble : 0,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        network_uid && !cJSON_IsNull(network_uid) ? strdup(network_uid->valuestring) : NULL,
        network ? networkVariable : sirqul_iot_platform_third_party_network_response_NETWORK_NULL,
        introspection_method ? introspection_methodVariable : sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_NULL,
        enable_introspection ? enable_introspection->valueint : 0,
        introspection_url && !cJSON_IsNull(introspection_url) ? strdup(introspection_url->valuestring) : NULL,
        introspection_params && !cJSON_IsNull(introspection_params) ? strdup(introspection_params->valuestring) : NULL,
        required_root_field && !cJSON_IsNull(required_root_field) ? strdup(required_root_field->valuestring) : NULL
        );

    return third_party_network_response_local_var;
end:
    return NULL;

}
