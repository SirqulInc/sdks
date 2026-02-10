/*
 * assignment_status_response.h
 *
 * 
 */

#ifndef _assignment_status_response_H_
#define _assignment_status_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct assignment_status_response_t assignment_status_response_t;

#include "scheduled_notification_short_response.h"

// Enum TODO for assignment_status_response

typedef enum  { sirqul_iot_platform_assignment_status_response_TODO_NULL = 0, sirqul_iot_platform_assignment_status_response_TODO_SITE_VISIT, sirqul_iot_platform_assignment_status_response_TODO_PHONE, sirqul_iot_platform_assignment_status_response_TODO_RECONTACT, sirqul_iot_platform_assignment_status_response_TODO_RENEWAL, sirqul_iot_platform_assignment_status_response_TODO_CREDIT } sirqul_iot_platform_assignment_status_response_TODO_e;

char* assignment_status_response_to_do_ToString(sirqul_iot_platform_assignment_status_response_TODO_e to_do);

sirqul_iot_platform_assignment_status_response_TODO_e assignment_status_response_to_do_FromString(char* to_do);

// Enum CONNECTION for assignment_status_response

typedef enum  { sirqul_iot_platform_assignment_status_response_CONNECTION_NULL = 0, sirqul_iot_platform_assignment_status_response_CONNECTION_INITIAL, sirqul_iot_platform_assignment_status_response_CONNECTION_FOLLOW_UP, sirqul_iot_platform_assignment_status_response_CONNECTION_DECLINED } sirqul_iot_platform_assignment_status_response_CONNECTION_e;

char* assignment_status_response_connection_ToString(sirqul_iot_platform_assignment_status_response_CONNECTION_e connection);

sirqul_iot_platform_assignment_status_response_CONNECTION_e assignment_status_response_connection_FromString(char* connection);

// Enum METHOD for assignment_status_response

typedef enum  { sirqul_iot_platform_assignment_status_response_METHOD_NULL = 0, sirqul_iot_platform_assignment_status_response_METHOD_PHONE, sirqul_iot_platform_assignment_status_response_METHOD_SITE_VISIT, sirqul_iot_platform_assignment_status_response_METHOD_EMAIL } sirqul_iot_platform_assignment_status_response_METHOD_e;

char* assignment_status_response_method_ToString(sirqul_iot_platform_assignment_status_response_METHOD_e method);

sirqul_iot_platform_assignment_status_response_METHOD_e assignment_status_response_method_FromString(char* method);

// Enum STATUS for assignment_status_response

typedef enum  { sirqul_iot_platform_assignment_status_response_STATUS_NULL = 0, sirqul_iot_platform_assignment_status_response_STATUS_ARCHIVED, sirqul_iot_platform_assignment_status_response_STATUS_SUBSCRIBED, sirqul_iot_platform_assignment_status_response_STATUS_UNSUBSCRIBED, sirqul_iot_platform_assignment_status_response_STATUS_CONTACTED, sirqul_iot_platform_assignment_status_response_STATUS_DECLINED, sirqul_iot_platform_assignment_status_response_STATUS_NOT_CONTACTED } sirqul_iot_platform_assignment_status_response_STATUS_e;

char* assignment_status_response_status_ToString(sirqul_iot_platform_assignment_status_response_STATUS_e status);

sirqul_iot_platform_assignment_status_response_STATUS_e assignment_status_response_status_FromString(char* status);

// Enum CLOSURE for assignment_status_response

typedef enum  { sirqul_iot_platform_assignment_status_response_CLOSURE_NULL = 0, sirqul_iot_platform_assignment_status_response_CLOSURE_PHONE, sirqul_iot_platform_assignment_status_response_CLOSURE_SITE_VISIT, sirqul_iot_platform_assignment_status_response_CLOSURE_PHONE_SITE, sirqul_iot_platform_assignment_status_response_CLOSURE_WEB } sirqul_iot_platform_assignment_status_response_CLOSURE_e;

char* assignment_status_response_closure_ToString(sirqul_iot_platform_assignment_status_response_CLOSURE_e closure);

sirqul_iot_platform_assignment_status_response_CLOSURE_e assignment_status_response_closure_FromString(char* closure);



typedef struct assignment_status_response_t {
    long assignment_status_id; //numeric
    int active; //boolean
    sirqul_iot_platform_assignment_status_response_TODO_e to_do; //enum
    sirqul_iot_platform_assignment_status_response_CONNECTION_e connection; //enum
    sirqul_iot_platform_assignment_status_response_METHOD_e method; //enum
    sirqul_iot_platform_assignment_status_response_STATUS_e status; //enum
    sirqul_iot_platform_assignment_status_response_CLOSURE_e closure; //enum
    char *message; // string
    long follow_up; //numeric
    long created; //numeric
    long updated; //numeric
    struct scheduled_notification_short_response_t *notification; //model

    int _library_owned; // Is the library responsible for freeing this object?
} assignment_status_response_t;

__attribute__((deprecated)) assignment_status_response_t *assignment_status_response_create(
    long assignment_status_id,
    int active,
    sirqul_iot_platform_assignment_status_response_TODO_e to_do,
    sirqul_iot_platform_assignment_status_response_CONNECTION_e connection,
    sirqul_iot_platform_assignment_status_response_METHOD_e method,
    sirqul_iot_platform_assignment_status_response_STATUS_e status,
    sirqul_iot_platform_assignment_status_response_CLOSURE_e closure,
    char *message,
    long follow_up,
    long created,
    long updated,
    scheduled_notification_short_response_t *notification
);

void assignment_status_response_free(assignment_status_response_t *assignment_status_response);

assignment_status_response_t *assignment_status_response_parseFromJSON(cJSON *assignment_status_responseJSON);

cJSON *assignment_status_response_convertToJSON(assignment_status_response_t *assignment_status_response);

#endif /* _assignment_status_response_H_ */

