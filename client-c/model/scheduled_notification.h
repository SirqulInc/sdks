/*
 * scheduled_notification.h
 *
 * 
 */

#ifndef _scheduled_notification_H_
#define _scheduled_notification_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct scheduled_notification_t scheduled_notification_t;

#include "account.h"
#include "application.h"
#include "asset.h"
#include "audience.h"
#include "billable_entity.h"
#include "connection_group.h"
#include "permissions.h"
#include "report_definition.h"
#include "user_permissions.h"

// Enum TYPE for scheduled_notification

typedef enum  { sirqul_iot_platform_scheduled_notification_TYPE_NULL = 0, sirqul_iot_platform_scheduled_notification_TYPE_HTTP, sirqul_iot_platform_scheduled_notification_TYPE_SAVE, sirqul_iot_platform_scheduled_notification_TYPE_EMAIL, sirqul_iot_platform_scheduled_notification_TYPE_SMS, sirqul_iot_platform_scheduled_notification_TYPE_APNS, sirqul_iot_platform_scheduled_notification_TYPE_GCM, sirqul_iot_platform_scheduled_notification_TYPE_PUSH, sirqul_iot_platform_scheduled_notification_TYPE_MOBILE_NOTIFICATION } sirqul_iot_platform_scheduled_notification_TYPE_e;

char* scheduled_notification_type_ToString(sirqul_iot_platform_scheduled_notification_TYPE_e type);

sirqul_iot_platform_scheduled_notification_TYPE_e scheduled_notification_type_FromString(char* type);

// Enum STATUS for scheduled_notification

typedef enum  { sirqul_iot_platform_scheduled_notification_STATUS_NULL = 0, sirqul_iot_platform_scheduled_notification_STATUS__NEW, sirqul_iot_platform_scheduled_notification_STATUS_ERROR, sirqul_iot_platform_scheduled_notification_STATUS_COMPLETE, sirqul_iot_platform_scheduled_notification_STATUS_PROCESSING, sirqul_iot_platform_scheduled_notification_STATUS__TEMPLATE } sirqul_iot_platform_scheduled_notification_STATUS_e;

char* scheduled_notification_status_ToString(sirqul_iot_platform_scheduled_notification_STATUS_e status);

sirqul_iot_platform_scheduled_notification_STATUS_e scheduled_notification_status_FromString(char* status);

// Enum TEMPLATETYPE for scheduled_notification

typedef enum  { sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_NULL = 0, sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_REPORTING, sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_ACHIEVEMENT_OWNER, sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_ACHIEVEMENT_TRIGGER, sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_GEOFENCE_OWNER, sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_GEOFENCE_TARGET, sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_GEOFENCE_TRIGGER, sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_GEOFENCE_HTTP_CALL } sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e;

char* scheduled_notification_template_type_ToString(sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e template_type);

sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e scheduled_notification_template_type_FromString(char* template_type);

// Enum VISIBILITY for scheduled_notification

typedef enum  { sirqul_iot_platform_scheduled_notification_VISIBILITY_NULL = 0, sirqul_iot_platform_scheduled_notification_VISIBILITY__PUBLIC, sirqul_iot_platform_scheduled_notification_VISIBILITY__PRIVATE, sirqul_iot_platform_scheduled_notification_VISIBILITY_FRIENDS } sirqul_iot_platform_scheduled_notification_VISIBILITY_e;

char* scheduled_notification_visibility_ToString(sirqul_iot_platform_scheduled_notification_VISIBILITY_e visibility);

sirqul_iot_platform_scheduled_notification_VISIBILITY_e scheduled_notification_visibility_FromString(char* visibility);

// Enum APPROVALSTATUS for scheduled_notification

typedef enum  { sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_PENDING, sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_REJECTED, sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_APPROVED, sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_FEATURED } sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e;

char* scheduled_notification_approval_status_ToString(sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e approval_status);

sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e scheduled_notification_approval_status_FromString(char* approval_status);



typedef struct scheduled_notification_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    struct billable_entity_t *billable_entity; //model
    sirqul_iot_platform_scheduled_notification_TYPE_e type; //enum
    sirqul_iot_platform_scheduled_notification_STATUS_e status; //enum
    sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e template_type; //enum
    char *name; // string
    char *error_message; // string
    char *message; // string
    char *payload; // string
    char *content_name; // string
    long content_id; //numeric
    char *content_type; // string
    long parent_id; //numeric
    char *parent_type; // string
    struct application_t *application; //model
    list_t *connection_groups; //nonprimitive container
    list_t *account_ids; //primitive container
    list_t *audiences; //nonprimitive container
    struct report_definition_t *report; //model
    char *report_params; // string
    char *endpoint_url; // string
    char *last_action_date; //date time
    char *scheduled_date; //date time
    char *start_date; //date time
    char *end_date; //date time
    char *cron_expression; // string
    long deliver_estimate; //numeric
    long deliver_count; //numeric
    long deliver_failed; //numeric
    long deliver_total; //numeric
    long deliver_start; //numeric
    long deliver_limit; //numeric
    long processing_time; //numeric
    long sending_time; //numeric
    char *grouping_id; // string
    char *conditional_input; // string
    char *conditional_code; // string
    struct permissions_t *public_permissions; //model
    list_t *user_permissions; //nonprimitive container
    sirqul_iot_platform_scheduled_notification_VISIBILITY_e visibility; //enum
    sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e approval_status; //enum
    struct asset_t *content_asset; //model

    int _library_owned; // Is the library responsible for freeing this object?
} scheduled_notification_t;

__attribute__((deprecated)) scheduled_notification_t *scheduled_notification_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    billable_entity_t *billable_entity,
    sirqul_iot_platform_scheduled_notification_TYPE_e type,
    sirqul_iot_platform_scheduled_notification_STATUS_e status,
    sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e template_type,
    char *name,
    char *error_message,
    char *message,
    char *payload,
    char *content_name,
    long content_id,
    char *content_type,
    long parent_id,
    char *parent_type,
    application_t *application,
    list_t *connection_groups,
    list_t *account_ids,
    list_t *audiences,
    report_definition_t *report,
    char *report_params,
    char *endpoint_url,
    char *last_action_date,
    char *scheduled_date,
    char *start_date,
    char *end_date,
    char *cron_expression,
    long deliver_estimate,
    long deliver_count,
    long deliver_failed,
    long deliver_total,
    long deliver_start,
    long deliver_limit,
    long processing_time,
    long sending_time,
    char *grouping_id,
    char *conditional_input,
    char *conditional_code,
    permissions_t *public_permissions,
    list_t *user_permissions,
    sirqul_iot_platform_scheduled_notification_VISIBILITY_e visibility,
    sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e approval_status,
    asset_t *content_asset
);

void scheduled_notification_free(scheduled_notification_t *scheduled_notification);

scheduled_notification_t *scheduled_notification_parseFromJSON(cJSON *scheduled_notificationJSON);

cJSON *scheduled_notification_convertToJSON(scheduled_notification_t *scheduled_notification);

#endif /* _scheduled_notification_H_ */

