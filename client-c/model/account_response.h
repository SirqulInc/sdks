/*
 * account_response.h
 *
 * 
 */

#ifndef _account_response_H_
#define _account_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_response_t account_response_t;

#include "account_mini_response.h"
#include "contact_response.h"

// Enum GENDER for account_response

typedef enum  { sirqul_iot_platform_account_response_GENDER_NULL = 0, sirqul_iot_platform_account_response_GENDER_MALE, sirqul_iot_platform_account_response_GENDER_FEMALE, sirqul_iot_platform_account_response_GENDER_ANY } sirqul_iot_platform_account_response_GENDER_e;

char* account_response_gender_ToString(sirqul_iot_platform_account_response_GENDER_e gender);

sirqul_iot_platform_account_response_GENDER_e account_response_gender_FromString(char* gender);



typedef struct account_response_t {
    long account_id; //numeric
    char *location_display; // string
    char *display; // string
    char *username; // string
    char *account_type; // string
    char *profile_image; // string
    sirqul_iot_platform_account_response_GENDER_e gender; //enum
    char *contact_email; // string
    struct contact_response_t *contact; //model
    struct account_mini_response_t *manager; //model
    int active; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} account_response_t;

__attribute__((deprecated)) account_response_t *account_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_account_response_GENDER_e gender,
    char *contact_email,
    contact_response_t *contact,
    account_mini_response_t *manager,
    int active
);

void account_response_free(account_response_t *account_response);

account_response_t *account_response_parseFromJSON(cJSON *account_responseJSON);

cJSON *account_response_convertToJSON(account_response_t *account_response);

#endif /* _account_response_H_ */

