/*
 * third_party_network_response.h
 *
 * 
 */

#ifndef _third_party_network_response_H_
#define _third_party_network_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct third_party_network_response_t third_party_network_response_t;


// Enum NETWORK for third_party_network_response

typedef enum  { sirqul_iot_platform_third_party_network_response_NETWORK_NULL = 0, sirqul_iot_platform_third_party_network_response_NETWORK_FACEBOOK, sirqul_iot_platform_third_party_network_response_NETWORK_TWITTER, sirqul_iot_platform_third_party_network_response_NETWORK_CLEAR, sirqul_iot_platform_third_party_network_response_NETWORK_USERNAME, sirqul_iot_platform_third_party_network_response_NETWORK_PHONE, sirqul_iot_platform_third_party_network_response_NETWORK_UNKNOWN, sirqul_iot_platform_third_party_network_response_NETWORK_CUSTOM } sirqul_iot_platform_third_party_network_response_NETWORK_e;

char* third_party_network_response_network_ToString(sirqul_iot_platform_third_party_network_response_NETWORK_e network);

sirqul_iot_platform_third_party_network_response_NETWORK_e third_party_network_response_network_FromString(char* network);

// Enum INTROSPECTIONMETHOD for third_party_network_response

typedef enum  { sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_NULL = 0, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_GET, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_HEAD, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_POST, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_PUT, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_PATCH, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD__DELETE, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_OPTIONS, sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_TRACE } sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e;

char* third_party_network_response_introspection_method_ToString(sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e introspection_method);

sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e third_party_network_response_introspection_method_FromString(char* introspection_method);



typedef struct third_party_network_response_t {
    long updated; //numeric
    long created; //numeric
    int active; //boolean
    char *name; // string
    char *description; // string
    char *network_uid; // string
    sirqul_iot_platform_third_party_network_response_NETWORK_e network; //enum
    sirqul_iot_platform_third_party_network_response_INTROSPECTIONMETHOD_e introspection_method; //enum
    int enable_introspection; //boolean
    char *introspection_url; // string
    char *introspection_params; // string
    char *required_root_field; // string

    int _library_owned; // Is the library responsible for freeing this object?
} third_party_network_response_t;

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
);

void third_party_network_response_free(third_party_network_response_t *third_party_network_response);

third_party_network_response_t *third_party_network_response_parseFromJSON(cJSON *third_party_network_responseJSON);

cJSON *third_party_network_response_convertToJSON(third_party_network_response_t *third_party_network_response);

#endif /* _third_party_network_response_H_ */

