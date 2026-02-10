/*
 * third_party_network.h
 *
 * 
 */

#ifndef _third_party_network_H_
#define _third_party_network_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct third_party_network_t third_party_network_t;

#include "billable_entity.h"

// Enum INTROSPECTIONMETHOD for third_party_network

typedef enum  { sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_NULL = 0, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_GET, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_HEAD, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_POST, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_PUT, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_PATCH, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD__DELETE, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_OPTIONS, sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_TRACE } sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e;

char* third_party_network_introspection_method_ToString(sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e introspection_method);

sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e third_party_network_introspection_method_FromString(char* introspection_method);

// Enum SUPPORTEDNETWORK for third_party_network

typedef enum  { sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_NULL = 0, sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_FACEBOOK, sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_TWITTER, sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_CLEAR, sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_USERNAME, sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_PHONE, sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_UNKNOWN, sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_CUSTOM } sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e;

char* third_party_network_supported_network_ToString(sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e supported_network);

sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e third_party_network_supported_network_FromString(char* supported_network);



typedef struct third_party_network_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *network_uid; // string
    char *name; // string
    char *description; // string
    sirqul_iot_platform_third_party_network_INTROSPECTIONMETHOD_e introspection_method; //enum
    char *introspection_url; // string
    char *introspection_params; // string
    char *required_root_field; // string
    struct billable_entity_t *billable_entity; //model
    sirqul_iot_platform_third_party_network_SUPPORTEDNETWORK_e supported_network; //enum
    int enable_introspection; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} third_party_network_t;

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
);

void third_party_network_free(third_party_network_t *third_party_network);

third_party_network_t *third_party_network_parseFromJSON(cJSON *third_party_networkJSON);

cJSON *third_party_network_convertToJSON(third_party_network_t *third_party_network);

#endif /* _third_party_network_H_ */

