/*
 * notification_recipient_response.h
 *
 * 
 */

#ifndef _notification_recipient_response_H_
#define _notification_recipient_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct notification_recipient_response_t notification_recipient_response_t;


// Enum GENDER for notification_recipient_response

typedef enum  { sirqul_iot_platform_notification_recipient_response_GENDER_NULL = 0, sirqul_iot_platform_notification_recipient_response_GENDER_MALE, sirqul_iot_platform_notification_recipient_response_GENDER_FEMALE, sirqul_iot_platform_notification_recipient_response_GENDER_ANY } sirqul_iot_platform_notification_recipient_response_GENDER_e;

char* notification_recipient_response_gender_ToString(sirqul_iot_platform_notification_recipient_response_GENDER_e gender);

sirqul_iot_platform_notification_recipient_response_GENDER_e notification_recipient_response_gender_FromString(char* gender);



typedef struct notification_recipient_response_t {
    long account_id; //numeric
    char *location_display; // string
    char *display; // string
    char *username; // string
    char *account_type; // string
    char *profile_image; // string
    sirqul_iot_platform_notification_recipient_response_GENDER_e gender; //enum
    char *contact_email; // string
    long application_id; //numeric
    char *app_name; // string
    int has_apns; //boolean
    int has_gcm; //boolean
    int has_email; //boolean
    int has_sms; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} notification_recipient_response_t;

__attribute__((deprecated)) notification_recipient_response_t *notification_recipient_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_notification_recipient_response_GENDER_e gender,
    char *contact_email,
    long application_id,
    char *app_name,
    int has_apns,
    int has_gcm,
    int has_email,
    int has_sms
);

void notification_recipient_response_free(notification_recipient_response_t *notification_recipient_response);

notification_recipient_response_t *notification_recipient_response_parseFromJSON(cJSON *notification_recipient_responseJSON);

cJSON *notification_recipient_response_convertToJSON(notification_recipient_response_t *notification_recipient_response);

#endif /* _notification_recipient_response_H_ */

