/*
 * scheduled_notification_short_response.h
 *
 * 
 */

#ifndef _scheduled_notification_short_response_H_
#define _scheduled_notification_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct scheduled_notification_short_response_t scheduled_notification_short_response_t;


// Enum STATUS for scheduled_notification_short_response

typedef enum  { sirqul_iot_platform_scheduled_notification_short_response_STATUS_NULL = 0, sirqul_iot_platform_scheduled_notification_short_response_STATUS__NEW, sirqul_iot_platform_scheduled_notification_short_response_STATUS_ERROR, sirqul_iot_platform_scheduled_notification_short_response_STATUS_COMPLETE, sirqul_iot_platform_scheduled_notification_short_response_STATUS_PROCESSING, sirqul_iot_platform_scheduled_notification_short_response_STATUS__TEMPLATE } sirqul_iot_platform_scheduled_notification_short_response_STATUS_e;

char* scheduled_notification_short_response_status_ToString(sirqul_iot_platform_scheduled_notification_short_response_STATUS_e status);

sirqul_iot_platform_scheduled_notification_short_response_STATUS_e scheduled_notification_short_response_status_FromString(char* status);

// Enum TYPE for scheduled_notification_short_response

typedef enum  { sirqul_iot_platform_scheduled_notification_short_response_TYPE_NULL = 0, sirqul_iot_platform_scheduled_notification_short_response_TYPE_HTTP, sirqul_iot_platform_scheduled_notification_short_response_TYPE_SAVE, sirqul_iot_platform_scheduled_notification_short_response_TYPE_EMAIL, sirqul_iot_platform_scheduled_notification_short_response_TYPE_SMS, sirqul_iot_platform_scheduled_notification_short_response_TYPE_APNS, sirqul_iot_platform_scheduled_notification_short_response_TYPE_GCM, sirqul_iot_platform_scheduled_notification_short_response_TYPE_PUSH, sirqul_iot_platform_scheduled_notification_short_response_TYPE_MOBILE_NOTIFICATION } sirqul_iot_platform_scheduled_notification_short_response_TYPE_e;

char* scheduled_notification_short_response_type_ToString(sirqul_iot_platform_scheduled_notification_short_response_TYPE_e type);

sirqul_iot_platform_scheduled_notification_short_response_TYPE_e scheduled_notification_short_response_type_FromString(char* type);



typedef struct scheduled_notification_short_response_t {
    long scheduled_notification_id; //numeric
    int active; //boolean
    sirqul_iot_platform_scheduled_notification_short_response_STATUS_e status; //enum
    sirqul_iot_platform_scheduled_notification_short_response_TYPE_e type; //enum
    char *name; // string
    char *message; // string
    char *grouping_id; // string
    long scheduled_date; //numeric
    long start_date; //numeric
    long end_date; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} scheduled_notification_short_response_t;

__attribute__((deprecated)) scheduled_notification_short_response_t *scheduled_notification_short_response_create(
    long scheduled_notification_id,
    int active,
    sirqul_iot_platform_scheduled_notification_short_response_STATUS_e status,
    sirqul_iot_platform_scheduled_notification_short_response_TYPE_e type,
    char *name,
    char *message,
    char *grouping_id,
    long scheduled_date,
    long start_date,
    long end_date
);

void scheduled_notification_short_response_free(scheduled_notification_short_response_t *scheduled_notification_short_response);

scheduled_notification_short_response_t *scheduled_notification_short_response_parseFromJSON(cJSON *scheduled_notification_short_responseJSON);

cJSON *scheduled_notification_short_response_convertToJSON(scheduled_notification_short_response_t *scheduled_notification_short_response);

#endif /* _scheduled_notification_short_response_H_ */

