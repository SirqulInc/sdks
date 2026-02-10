/*
 * trigger_response.h
 *
 * 
 */

#ifndef _trigger_response_H_
#define _trigger_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct trigger_response_t trigger_response_t;

#include "account_short_response.h"
#include "application_mini_response.h"
#include "billable_entity_short_response.h"

// Enum STATUS for trigger_response

typedef enum  { sirqul_iot_platform_trigger_response_STATUS_NULL = 0, sirqul_iot_platform_trigger_response_STATUS__NEW, sirqul_iot_platform_trigger_response_STATUS_ERROR, sirqul_iot_platform_trigger_response_STATUS_COMPLETE, sirqul_iot_platform_trigger_response_STATUS_PROCESSING, sirqul_iot_platform_trigger_response_STATUS__TEMPLATE } sirqul_iot_platform_trigger_response_STATUS_e;

char* trigger_response_status_ToString(sirqul_iot_platform_trigger_response_STATUS_e status);

sirqul_iot_platform_trigger_response_STATUS_e trigger_response_status_FromString(char* status);

// Enum TYPE for trigger_response

typedef enum  { sirqul_iot_platform_trigger_response_TYPE_NULL = 0, sirqul_iot_platform_trigger_response_TYPE_HTTP, sirqul_iot_platform_trigger_response_TYPE_SAVE, sirqul_iot_platform_trigger_response_TYPE_EMAIL, sirqul_iot_platform_trigger_response_TYPE_SMS, sirqul_iot_platform_trigger_response_TYPE_APNS, sirqul_iot_platform_trigger_response_TYPE_GCM, sirqul_iot_platform_trigger_response_TYPE_PUSH, sirqul_iot_platform_trigger_response_TYPE_MOBILE_NOTIFICATION } sirqul_iot_platform_trigger_response_TYPE_e;

char* trigger_response_type_ToString(sirqul_iot_platform_trigger_response_TYPE_e type);

sirqul_iot_platform_trigger_response_TYPE_e trigger_response_type_FromString(char* type);

// Enum TEMPLATETYPE for trigger_response

typedef enum  { sirqul_iot_platform_trigger_response_TEMPLATETYPE_NULL = 0, sirqul_iot_platform_trigger_response_TEMPLATETYPE_REPORTING, sirqul_iot_platform_trigger_response_TEMPLATETYPE_ACHIEVEMENT_OWNER, sirqul_iot_platform_trigger_response_TEMPLATETYPE_ACHIEVEMENT_TRIGGER, sirqul_iot_platform_trigger_response_TEMPLATETYPE_GEOFENCE_OWNER, sirqul_iot_platform_trigger_response_TEMPLATETYPE_GEOFENCE_TARGET, sirqul_iot_platform_trigger_response_TEMPLATETYPE_GEOFENCE_TRIGGER, sirqul_iot_platform_trigger_response_TEMPLATETYPE_GEOFENCE_HTTP_CALL } sirqul_iot_platform_trigger_response_TEMPLATETYPE_e;

char* trigger_response_template_type_ToString(sirqul_iot_platform_trigger_response_TEMPLATETYPE_e template_type);

sirqul_iot_platform_trigger_response_TEMPLATETYPE_e trigger_response_template_type_FromString(char* template_type);

// Enum GROUPEDTYPES for trigger_response

typedef enum  { sirqul_iot_platform_trigger_response_GROUPEDTYPES_NULL = 0, sirqul_iot_platform_trigger_response_GROUPEDTYPES_HTTP, sirqul_iot_platform_trigger_response_GROUPEDTYPES_SAVE, sirqul_iot_platform_trigger_response_GROUPEDTYPES_EMAIL, sirqul_iot_platform_trigger_response_GROUPEDTYPES_SMS, sirqul_iot_platform_trigger_response_GROUPEDTYPES_APNS, sirqul_iot_platform_trigger_response_GROUPEDTYPES_GCM, sirqul_iot_platform_trigger_response_GROUPEDTYPES_PUSH, sirqul_iot_platform_trigger_response_GROUPEDTYPES_MOBILE_NOTIFICATION } sirqul_iot_platform_trigger_response_GROUPEDTYPES_e;

char* trigger_response_grouped_types_ToString(sirqul_iot_platform_trigger_response_GROUPEDTYPES_e grouped_types);

sirqul_iot_platform_trigger_response_GROUPEDTYPES_e trigger_response_grouped_types_FromString(char* grouped_types);



typedef struct trigger_response_t {
    long scheduled_notification_id; //numeric
    int active; //boolean
    sirqul_iot_platform_trigger_response_STATUS_e status; //enum
    sirqul_iot_platform_trigger_response_TYPE_e type; //enum
    char *name; // string
    char *message; // string
    char *grouping_id; // string
    long scheduled_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    struct account_short_response_t *owner; //model
    struct billable_entity_short_response_t *billable_entity; //model
    long content_id; //numeric
    char *content_name; // string
    char *content_type; // string
    long parent_id; //numeric
    char *parent_type; // string
    struct application_mini_response_t *application; //model
    long target_id; //numeric
    char *target_name; // string
    char *target_type; // string
    char *target_params; // string
    long deliver_estimate; //numeric
    long deliver_count; //numeric
    long deliver_total; //numeric
    long deliver_failed; //numeric
    long processing_time; //numeric
    long sending_time; //numeric
    long updated; //numeric
    long created; //numeric
    char *cron_expression; // string
    char *endpoint_url; // string
    char *payload; // string
    char *conditional_input; // string
    list_t *connection_account_ids; //primitive container
    sirqul_iot_platform_trigger_response_TEMPLATETYPE_e template_type; //enum
    list_t *grouped_types; //primitive container
    long trigger_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} trigger_response_t;

__attribute__((deprecated)) trigger_response_t *trigger_response_create(
    long scheduled_notification_id,
    int active,
    sirqul_iot_platform_trigger_response_STATUS_e status,
    sirqul_iot_platform_trigger_response_TYPE_e type,
    char *name,
    char *message,
    char *grouping_id,
    long scheduled_date,
    long start_date,
    long end_date,
    account_short_response_t *owner,
    billable_entity_short_response_t *billable_entity,
    long content_id,
    char *content_name,
    char *content_type,
    long parent_id,
    char *parent_type,
    application_mini_response_t *application,
    long target_id,
    char *target_name,
    char *target_type,
    char *target_params,
    long deliver_estimate,
    long deliver_count,
    long deliver_total,
    long deliver_failed,
    long processing_time,
    long sending_time,
    long updated,
    long created,
    char *cron_expression,
    char *endpoint_url,
    char *payload,
    char *conditional_input,
    list_t *connection_account_ids,
    sirqul_iot_platform_trigger_response_TEMPLATETYPE_e template_type,
    list_t *grouped_types,
    long trigger_id
);

void trigger_response_free(trigger_response_t *trigger_response);

trigger_response_t *trigger_response_parseFromJSON(cJSON *trigger_responseJSON);

cJSON *trigger_response_convertToJSON(trigger_response_t *trigger_response);

#endif /* _trigger_response_H_ */

