/*
 * notification_template_response.h
 *
 * 
 */

#ifndef _notification_template_response_H_
#define _notification_template_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct notification_template_response_t notification_template_response_t;

#include "application_mini_response.h"

// Enum CONDUIT for notification_template_response

typedef enum  { sirqul_iot_platform_notification_template_response_CONDUIT_NULL = 0, sirqul_iot_platform_notification_template_response_CONDUIT_HTTP, sirqul_iot_platform_notification_template_response_CONDUIT_SAVE, sirqul_iot_platform_notification_template_response_CONDUIT_EMAIL, sirqul_iot_platform_notification_template_response_CONDUIT_SMS, sirqul_iot_platform_notification_template_response_CONDUIT_APNS, sirqul_iot_platform_notification_template_response_CONDUIT_GCM, sirqul_iot_platform_notification_template_response_CONDUIT_PUSH, sirqul_iot_platform_notification_template_response_CONDUIT_MOBILE_NOTIFICATION } sirqul_iot_platform_notification_template_response_CONDUIT_e;

char* notification_template_response_conduit_ToString(sirqul_iot_platform_notification_template_response_CONDUIT_e conduit);

sirqul_iot_platform_notification_template_response_CONDUIT_e notification_template_response_conduit_FromString(char* conduit);



typedef struct notification_template_response_t {
    long notification_template_id; //numeric
    char *event; // string
    sirqul_iot_platform_notification_template_response_CONDUIT_e conduit; //enum
    char *title; // string
    char *body; // string
    char *public_body; // string
    struct application_mini_response_t *application; //model
    long updated; //numeric
    long created; //numeric
    char *tags; // string

    int _library_owned; // Is the library responsible for freeing this object?
} notification_template_response_t;

__attribute__((deprecated)) notification_template_response_t *notification_template_response_create(
    long notification_template_id,
    char *event,
    sirqul_iot_platform_notification_template_response_CONDUIT_e conduit,
    char *title,
    char *body,
    char *public_body,
    application_mini_response_t *application,
    long updated,
    long created,
    char *tags
);

void notification_template_response_free(notification_template_response_t *notification_template_response);

notification_template_response_t *notification_template_response_parseFromJSON(cJSON *notification_template_responseJSON);

cJSON *notification_template_response_convertToJSON(notification_template_response_t *notification_template_response);

#endif /* _notification_template_response_H_ */

