/*
 * third_party_network_short_response.h
 *
 * 
 */

#ifndef _third_party_network_short_response_H_
#define _third_party_network_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct third_party_network_short_response_t third_party_network_short_response_t;


// Enum NETWORK for third_party_network_short_response

typedef enum  { sirqul_iot_platform_third_party_network_short_response_NETWORK_NULL = 0, sirqul_iot_platform_third_party_network_short_response_NETWORK_FACEBOOK, sirqul_iot_platform_third_party_network_short_response_NETWORK_TWITTER, sirqul_iot_platform_third_party_network_short_response_NETWORK_CLEAR, sirqul_iot_platform_third_party_network_short_response_NETWORK_USERNAME, sirqul_iot_platform_third_party_network_short_response_NETWORK_PHONE, sirqul_iot_platform_third_party_network_short_response_NETWORK_UNKNOWN, sirqul_iot_platform_third_party_network_short_response_NETWORK_CUSTOM } sirqul_iot_platform_third_party_network_short_response_NETWORK_e;

char* third_party_network_short_response_network_ToString(sirqul_iot_platform_third_party_network_short_response_NETWORK_e network);

sirqul_iot_platform_third_party_network_short_response_NETWORK_e third_party_network_short_response_network_FromString(char* network);



typedef struct third_party_network_short_response_t {
    long updated; //numeric
    long created; //numeric
    int active; //boolean
    char *name; // string
    char *description; // string
    char *network_uid; // string
    sirqul_iot_platform_third_party_network_short_response_NETWORK_e network; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} third_party_network_short_response_t;

__attribute__((deprecated)) third_party_network_short_response_t *third_party_network_short_response_create(
    long updated,
    long created,
    int active,
    char *name,
    char *description,
    char *network_uid,
    sirqul_iot_platform_third_party_network_short_response_NETWORK_e network
);

void third_party_network_short_response_free(third_party_network_short_response_t *third_party_network_short_response);

third_party_network_short_response_t *third_party_network_short_response_parseFromJSON(cJSON *third_party_network_short_responseJSON);

cJSON *third_party_network_short_response_convertToJSON(third_party_network_short_response_t *third_party_network_short_response);

#endif /* _third_party_network_short_response_H_ */

