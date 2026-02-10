/*
 * third_party_credentials.h
 *
 * 
 */

#ifndef _third_party_credentials_H_
#define _third_party_credentials_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct third_party_credentials_t third_party_credentials_t;

#include "account.h"
#include "third_party_network.h"



typedef struct third_party_credentials_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *account; //model
    struct third_party_network_t *third_party_network; //model
    long third_party_uid; //numeric
    char *third_party_id; // string
    char *third_party_token; // string
    char *third_party_secret; // string
    char *third_party_name; // string
    char *third_party_unencrypted_token; // string

    int _library_owned; // Is the library responsible for freeing this object?
} third_party_credentials_t;

__attribute__((deprecated)) third_party_credentials_t *third_party_credentials_create(
    long id,
    int active,
    int valid,
    account_t *account,
    third_party_network_t *third_party_network,
    long third_party_uid,
    char *third_party_id,
    char *third_party_token,
    char *third_party_secret,
    char *third_party_name,
    char *third_party_unencrypted_token
);

void third_party_credentials_free(third_party_credentials_t *third_party_credentials);

third_party_credentials_t *third_party_credentials_parseFromJSON(cJSON *third_party_credentialsJSON);

cJSON *third_party_credentials_convertToJSON(third_party_credentials_t *third_party_credentials);

#endif /* _third_party_credentials_H_ */

