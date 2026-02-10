/*
 * account_short_response.h
 *
 * 
 */

#ifndef _account_short_response_H_
#define _account_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_short_response_t account_short_response_t;


// Enum GENDER for account_short_response

typedef enum  { sirqul_iot_platform_account_short_response_GENDER_NULL = 0, sirqul_iot_platform_account_short_response_GENDER_MALE, sirqul_iot_platform_account_short_response_GENDER_FEMALE, sirqul_iot_platform_account_short_response_GENDER_ANY } sirqul_iot_platform_account_short_response_GENDER_e;

char* account_short_response_gender_ToString(sirqul_iot_platform_account_short_response_GENDER_e gender);

sirqul_iot_platform_account_short_response_GENDER_e account_short_response_gender_FromString(char* gender);



typedef struct account_short_response_t {
    long account_id; //numeric
    char *location_display; // string
    char *display; // string
    char *username; // string
    char *account_type; // string
    char *profile_image; // string
    sirqul_iot_platform_account_short_response_GENDER_e gender; //enum
    char *contact_email; // string

    int _library_owned; // Is the library responsible for freeing this object?
} account_short_response_t;

__attribute__((deprecated)) account_short_response_t *account_short_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_account_short_response_GENDER_e gender,
    char *contact_email
);

void account_short_response_free(account_short_response_t *account_short_response);

account_short_response_t *account_short_response_parseFromJSON(cJSON *account_short_responseJSON);

cJSON *account_short_response_convertToJSON(account_short_response_t *account_short_response);

#endif /* _account_short_response_H_ */

