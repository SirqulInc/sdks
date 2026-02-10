/*
 * assignment_status.h
 *
 * 
 */

#ifndef _assignment_status_H_
#define _assignment_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct assignment_status_t assignment_status_t;

#include "account.h"
#include "assignment.h"
#include "scheduled_notification.h"

// Enum TODO for assignment_status

typedef enum  { sirqul_iot_platform_assignment_status_TODO_NULL = 0, sirqul_iot_platform_assignment_status_TODO_SITE_VISIT, sirqul_iot_platform_assignment_status_TODO_PHONE, sirqul_iot_platform_assignment_status_TODO_RECONTACT, sirqul_iot_platform_assignment_status_TODO_RENEWAL, sirqul_iot_platform_assignment_status_TODO_CREDIT } sirqul_iot_platform_assignment_status_TODO_e;

char* assignment_status_to_do_ToString(sirqul_iot_platform_assignment_status_TODO_e to_do);

sirqul_iot_platform_assignment_status_TODO_e assignment_status_to_do_FromString(char* to_do);

// Enum CONNECTION for assignment_status

typedef enum  { sirqul_iot_platform_assignment_status_CONNECTION_NULL = 0, sirqul_iot_platform_assignment_status_CONNECTION_INITIAL, sirqul_iot_platform_assignment_status_CONNECTION_FOLLOW_UP, sirqul_iot_platform_assignment_status_CONNECTION_DECLINED } sirqul_iot_platform_assignment_status_CONNECTION_e;

char* assignment_status_connection_ToString(sirqul_iot_platform_assignment_status_CONNECTION_e connection);

sirqul_iot_platform_assignment_status_CONNECTION_e assignment_status_connection_FromString(char* connection);

// Enum METHOD for assignment_status

typedef enum  { sirqul_iot_platform_assignment_status_METHOD_NULL = 0, sirqul_iot_platform_assignment_status_METHOD_PHONE, sirqul_iot_platform_assignment_status_METHOD_SITE_VISIT, sirqul_iot_platform_assignment_status_METHOD_EMAIL } sirqul_iot_platform_assignment_status_METHOD_e;

char* assignment_status_method_ToString(sirqul_iot_platform_assignment_status_METHOD_e method);

sirqul_iot_platform_assignment_status_METHOD_e assignment_status_method_FromString(char* method);

// Enum STATUS for assignment_status

typedef enum  { sirqul_iot_platform_assignment_status_STATUS_NULL = 0, sirqul_iot_platform_assignment_status_STATUS_ARCHIVED, sirqul_iot_platform_assignment_status_STATUS_SUBSCRIBED, sirqul_iot_platform_assignment_status_STATUS_UNSUBSCRIBED, sirqul_iot_platform_assignment_status_STATUS_CONTACTED, sirqul_iot_platform_assignment_status_STATUS_DECLINED, sirqul_iot_platform_assignment_status_STATUS_NOT_CONTACTED } sirqul_iot_platform_assignment_status_STATUS_e;

char* assignment_status_status_ToString(sirqul_iot_platform_assignment_status_STATUS_e status);

sirqul_iot_platform_assignment_status_STATUS_e assignment_status_status_FromString(char* status);

// Enum CLOSURE for assignment_status

typedef enum  { sirqul_iot_platform_assignment_status_CLOSURE_NULL = 0, sirqul_iot_platform_assignment_status_CLOSURE_PHONE, sirqul_iot_platform_assignment_status_CLOSURE_SITE_VISIT, sirqul_iot_platform_assignment_status_CLOSURE_PHONE_SITE, sirqul_iot_platform_assignment_status_CLOSURE_WEB } sirqul_iot_platform_assignment_status_CLOSURE_e;

char* assignment_status_closure_ToString(sirqul_iot_platform_assignment_status_CLOSURE_e closure);

sirqul_iot_platform_assignment_status_CLOSURE_e assignment_status_closure_FromString(char* closure);



typedef struct assignment_status_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct assignment_t *assignment; //model
    struct account_t *creator; //model
    sirqul_iot_platform_assignment_status_TODO_e to_do; //enum
    sirqul_iot_platform_assignment_status_CONNECTION_e connection; //enum
    sirqul_iot_platform_assignment_status_METHOD_e method; //enum
    sirqul_iot_platform_assignment_status_STATUS_e status; //enum
    sirqul_iot_platform_assignment_status_CLOSURE_e closure; //enum
    char *message; // string
    char *follow_up; //date time
    struct scheduled_notification_t *notification; //model

    int _library_owned; // Is the library responsible for freeing this object?
} assignment_status_t;

__attribute__((deprecated)) assignment_status_t *assignment_status_create(
    long id,
    int active,
    int valid,
    assignment_t *assignment,
    account_t *creator,
    sirqul_iot_platform_assignment_status_TODO_e to_do,
    sirqul_iot_platform_assignment_status_CONNECTION_e connection,
    sirqul_iot_platform_assignment_status_METHOD_e method,
    sirqul_iot_platform_assignment_status_STATUS_e status,
    sirqul_iot_platform_assignment_status_CLOSURE_e closure,
    char *message,
    char *follow_up,
    scheduled_notification_t *notification
);

void assignment_status_free(assignment_status_t *assignment_status);

assignment_status_t *assignment_status_parseFromJSON(cJSON *assignment_statusJSON);

cJSON *assignment_status_convertToJSON(assignment_status_t *assignment_status);

#endif /* _assignment_status_H_ */

