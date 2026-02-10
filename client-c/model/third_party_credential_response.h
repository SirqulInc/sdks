/*
 * third_party_credential_response.h
 *
 * 
 */

#ifndef _third_party_credential_response_H_
#define _third_party_credential_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct third_party_credential_response_t third_party_credential_response_t;

#include "third_party_network_short_response.h"



typedef struct third_party_credential_response_t {
    long third_party_credential_id; //numeric
    char *third_party_id; // string
    char *third_party_name; // string
    struct third_party_network_short_response_t *network; //model
    long updated; //numeric
    long created; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} third_party_credential_response_t;

__attribute__((deprecated)) third_party_credential_response_t *third_party_credential_response_create(
    long third_party_credential_id,
    char *third_party_id,
    char *third_party_name,
    third_party_network_short_response_t *network,
    long updated,
    long created
);

void third_party_credential_response_free(third_party_credential_response_t *third_party_credential_response);

third_party_credential_response_t *third_party_credential_response_parseFromJSON(cJSON *third_party_credential_responseJSON);

cJSON *third_party_credential_response_convertToJSON(third_party_credential_response_t *third_party_credential_response);

#endif /* _third_party_credential_response_H_ */

