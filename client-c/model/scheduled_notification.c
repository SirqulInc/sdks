#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "scheduled_notification.h"


char* scheduled_notification_type_ToString(sirqul_iot_platform_scheduled_notification_TYPE_e type) {
    char* typeArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    return typeArray[type];
}

sirqul_iot_platform_scheduled_notification_TYPE_e scheduled_notification_type_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* scheduled_notification_status_ToString(sirqul_iot_platform_scheduled_notification_STATUS_e status) {
    char* statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE" };
    return statusArray[status];
}

sirqul_iot_platform_scheduled_notification_STATUS_e scheduled_notification_status_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* scheduled_notification_template_type_ToString(sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e template_type) {
    char* template_typeArray[] =  { "NULL", "REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL" };
    return template_typeArray[template_type];
}

sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e scheduled_notification_template_type_FromString(char* template_type){
    int stringToReturn = 0;
    char *template_typeArray[] =  { "NULL", "REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL" };
    size_t sizeofArray = sizeof(template_typeArray) / sizeof(template_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(template_type, template_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* scheduled_notification_visibility_ToString(sirqul_iot_platform_scheduled_notification_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_scheduled_notification_VISIBILITY_e scheduled_notification_visibility_FromString(char* visibility){
    int stringToReturn = 0;
    char *visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(visibilityArray) / sizeof(visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(visibility, visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* scheduled_notification_approval_status_ToString(sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e approval_status) {
    char* approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return approval_statusArray[approval_status];
}

sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e scheduled_notification_approval_status_FromString(char* approval_status){
    int stringToReturn = 0;
    char *approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    size_t sizeofArray = sizeof(approval_statusArray) / sizeof(approval_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(approval_status, approval_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static scheduled_notification_t *scheduled_notification_create_internal(
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
    ) {
    scheduled_notification_t *scheduled_notification_local_var = malloc(sizeof(scheduled_notification_t));
    if (!scheduled_notification_local_var) {
        return NULL;
    }
    scheduled_notification_local_var->id = id;
    scheduled_notification_local_var->active = active;
    scheduled_notification_local_var->valid = valid;
    scheduled_notification_local_var->owner = owner;
    scheduled_notification_local_var->billable_entity = billable_entity;
    scheduled_notification_local_var->type = type;
    scheduled_notification_local_var->status = status;
    scheduled_notification_local_var->template_type = template_type;
    scheduled_notification_local_var->name = name;
    scheduled_notification_local_var->error_message = error_message;
    scheduled_notification_local_var->message = message;
    scheduled_notification_local_var->payload = payload;
    scheduled_notification_local_var->content_name = content_name;
    scheduled_notification_local_var->content_id = content_id;
    scheduled_notification_local_var->content_type = content_type;
    scheduled_notification_local_var->parent_id = parent_id;
    scheduled_notification_local_var->parent_type = parent_type;
    scheduled_notification_local_var->application = application;
    scheduled_notification_local_var->connection_groups = connection_groups;
    scheduled_notification_local_var->account_ids = account_ids;
    scheduled_notification_local_var->audiences = audiences;
    scheduled_notification_local_var->report = report;
    scheduled_notification_local_var->report_params = report_params;
    scheduled_notification_local_var->endpoint_url = endpoint_url;
    scheduled_notification_local_var->last_action_date = last_action_date;
    scheduled_notification_local_var->scheduled_date = scheduled_date;
    scheduled_notification_local_var->start_date = start_date;
    scheduled_notification_local_var->end_date = end_date;
    scheduled_notification_local_var->cron_expression = cron_expression;
    scheduled_notification_local_var->deliver_estimate = deliver_estimate;
    scheduled_notification_local_var->deliver_count = deliver_count;
    scheduled_notification_local_var->deliver_failed = deliver_failed;
    scheduled_notification_local_var->deliver_total = deliver_total;
    scheduled_notification_local_var->deliver_start = deliver_start;
    scheduled_notification_local_var->deliver_limit = deliver_limit;
    scheduled_notification_local_var->processing_time = processing_time;
    scheduled_notification_local_var->sending_time = sending_time;
    scheduled_notification_local_var->grouping_id = grouping_id;
    scheduled_notification_local_var->conditional_input = conditional_input;
    scheduled_notification_local_var->conditional_code = conditional_code;
    scheduled_notification_local_var->public_permissions = public_permissions;
    scheduled_notification_local_var->user_permissions = user_permissions;
    scheduled_notification_local_var->visibility = visibility;
    scheduled_notification_local_var->approval_status = approval_status;
    scheduled_notification_local_var->content_asset = content_asset;

    scheduled_notification_local_var->_library_owned = 1;
    return scheduled_notification_local_var;
}

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
    ) {
    return scheduled_notification_create_internal (
        id,
        active,
        valid,
        owner,
        billable_entity,
        type,
        status,
        template_type,
        name,
        error_message,
        message,
        payload,
        content_name,
        content_id,
        content_type,
        parent_id,
        parent_type,
        application,
        connection_groups,
        account_ids,
        audiences,
        report,
        report_params,
        endpoint_url,
        last_action_date,
        scheduled_date,
        start_date,
        end_date,
        cron_expression,
        deliver_estimate,
        deliver_count,
        deliver_failed,
        deliver_total,
        deliver_start,
        deliver_limit,
        processing_time,
        sending_time,
        grouping_id,
        conditional_input,
        conditional_code,
        public_permissions,
        user_permissions,
        visibility,
        approval_status,
        content_asset
        );
}

void scheduled_notification_free(scheduled_notification_t *scheduled_notification) {
    if(NULL == scheduled_notification){
        return ;
    }
    if(scheduled_notification->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "scheduled_notification_free");
        return ;
    }
    listEntry_t *listEntry;
    if (scheduled_notification->owner) {
        account_free(scheduled_notification->owner);
        scheduled_notification->owner = NULL;
    }
    if (scheduled_notification->billable_entity) {
        billable_entity_free(scheduled_notification->billable_entity);
        scheduled_notification->billable_entity = NULL;
    }
    if (scheduled_notification->name) {
        free(scheduled_notification->name);
        scheduled_notification->name = NULL;
    }
    if (scheduled_notification->error_message) {
        free(scheduled_notification->error_message);
        scheduled_notification->error_message = NULL;
    }
    if (scheduled_notification->message) {
        free(scheduled_notification->message);
        scheduled_notification->message = NULL;
    }
    if (scheduled_notification->payload) {
        free(scheduled_notification->payload);
        scheduled_notification->payload = NULL;
    }
    if (scheduled_notification->content_name) {
        free(scheduled_notification->content_name);
        scheduled_notification->content_name = NULL;
    }
    if (scheduled_notification->content_type) {
        free(scheduled_notification->content_type);
        scheduled_notification->content_type = NULL;
    }
    if (scheduled_notification->parent_type) {
        free(scheduled_notification->parent_type);
        scheduled_notification->parent_type = NULL;
    }
    if (scheduled_notification->application) {
        application_free(scheduled_notification->application);
        scheduled_notification->application = NULL;
    }
    if (scheduled_notification->connection_groups) {
        list_ForEach(listEntry, scheduled_notification->connection_groups) {
            connection_group_free(listEntry->data);
        }
        list_freeList(scheduled_notification->connection_groups);
        scheduled_notification->connection_groups = NULL;
    }
    if (scheduled_notification->account_ids) {
        list_ForEach(listEntry, scheduled_notification->account_ids) {
            free(listEntry->data);
        }
        list_freeList(scheduled_notification->account_ids);
        scheduled_notification->account_ids = NULL;
    }
    if (scheduled_notification->audiences) {
        list_ForEach(listEntry, scheduled_notification->audiences) {
            audience_free(listEntry->data);
        }
        list_freeList(scheduled_notification->audiences);
        scheduled_notification->audiences = NULL;
    }
    if (scheduled_notification->report) {
        report_definition_free(scheduled_notification->report);
        scheduled_notification->report = NULL;
    }
    if (scheduled_notification->report_params) {
        free(scheduled_notification->report_params);
        scheduled_notification->report_params = NULL;
    }
    if (scheduled_notification->endpoint_url) {
        free(scheduled_notification->endpoint_url);
        scheduled_notification->endpoint_url = NULL;
    }
    if (scheduled_notification->last_action_date) {
        free(scheduled_notification->last_action_date);
        scheduled_notification->last_action_date = NULL;
    }
    if (scheduled_notification->scheduled_date) {
        free(scheduled_notification->scheduled_date);
        scheduled_notification->scheduled_date = NULL;
    }
    if (scheduled_notification->start_date) {
        free(scheduled_notification->start_date);
        scheduled_notification->start_date = NULL;
    }
    if (scheduled_notification->end_date) {
        free(scheduled_notification->end_date);
        scheduled_notification->end_date = NULL;
    }
    if (scheduled_notification->cron_expression) {
        free(scheduled_notification->cron_expression);
        scheduled_notification->cron_expression = NULL;
    }
    if (scheduled_notification->grouping_id) {
        free(scheduled_notification->grouping_id);
        scheduled_notification->grouping_id = NULL;
    }
    if (scheduled_notification->conditional_input) {
        free(scheduled_notification->conditional_input);
        scheduled_notification->conditional_input = NULL;
    }
    if (scheduled_notification->conditional_code) {
        free(scheduled_notification->conditional_code);
        scheduled_notification->conditional_code = NULL;
    }
    if (scheduled_notification->public_permissions) {
        permissions_free(scheduled_notification->public_permissions);
        scheduled_notification->public_permissions = NULL;
    }
    if (scheduled_notification->user_permissions) {
        list_ForEach(listEntry, scheduled_notification->user_permissions) {
            user_permissions_free(listEntry->data);
        }
        list_freeList(scheduled_notification->user_permissions);
        scheduled_notification->user_permissions = NULL;
    }
    if (scheduled_notification->content_asset) {
        asset_free(scheduled_notification->content_asset);
        scheduled_notification->content_asset = NULL;
    }
    free(scheduled_notification);
}

cJSON *scheduled_notification_convertToJSON(scheduled_notification_t *scheduled_notification) {
    cJSON *item = cJSON_CreateObject();

    // scheduled_notification->id
    if(scheduled_notification->id) {
    if(cJSON_AddNumberToObject(item, "id", scheduled_notification->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->active
    if(scheduled_notification->active) {
    if(cJSON_AddBoolToObject(item, "active", scheduled_notification->active) == NULL) {
    goto fail; //Bool
    }
    }


    // scheduled_notification->valid
    if(scheduled_notification->valid) {
    if(cJSON_AddBoolToObject(item, "valid", scheduled_notification->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // scheduled_notification->owner
    if(scheduled_notification->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(scheduled_notification->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // scheduled_notification->billable_entity
    if(scheduled_notification->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_convertToJSON(scheduled_notification->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // scheduled_notification->type
    if(scheduled_notification->type != sirqul_iot_platform_scheduled_notification_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", scheduled_notification_type_ToString(scheduled_notification->type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // scheduled_notification->status
    if(scheduled_notification->status != sirqul_iot_platform_scheduled_notification_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", scheduled_notification_status_ToString(scheduled_notification->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // scheduled_notification->template_type
    if(scheduled_notification->template_type != sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "templateType", scheduled_notification_template_type_ToString(scheduled_notification->template_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // scheduled_notification->name
    if(scheduled_notification->name) {
    if(cJSON_AddStringToObject(item, "name", scheduled_notification->name) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->error_message
    if(scheduled_notification->error_message) {
    if(cJSON_AddStringToObject(item, "errorMessage", scheduled_notification->error_message) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->message
    if(scheduled_notification->message) {
    if(cJSON_AddStringToObject(item, "message", scheduled_notification->message) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->payload
    if(scheduled_notification->payload) {
    if(cJSON_AddStringToObject(item, "payload", scheduled_notification->payload) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->content_name
    if(scheduled_notification->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", scheduled_notification->content_name) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->content_id
    if(scheduled_notification->content_id) {
    if(cJSON_AddNumberToObject(item, "contentId", scheduled_notification->content_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->content_type
    if(scheduled_notification->content_type) {
    if(cJSON_AddStringToObject(item, "contentType", scheduled_notification->content_type) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->parent_id
    if(scheduled_notification->parent_id) {
    if(cJSON_AddNumberToObject(item, "parentId", scheduled_notification->parent_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->parent_type
    if(scheduled_notification->parent_type) {
    if(cJSON_AddStringToObject(item, "parentType", scheduled_notification->parent_type) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->application
    if(scheduled_notification->application) {
    cJSON *application_local_JSON = application_convertToJSON(scheduled_notification->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // scheduled_notification->connection_groups
    if(scheduled_notification->connection_groups) {
    cJSON *connection_groups = cJSON_AddArrayToObject(item, "connectionGroups");
    if(connection_groups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *connection_groupsListEntry;
    if (scheduled_notification->connection_groups) {
    list_ForEach(connection_groupsListEntry, scheduled_notification->connection_groups) {
    cJSON *itemLocal = connection_group_convertToJSON(connection_groupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(connection_groups, itemLocal);
    }
    }
    }


    // scheduled_notification->account_ids
    if(scheduled_notification->account_ids) {
    cJSON *account_ids = cJSON_AddArrayToObject(item, "accountIds");
    if(account_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *account_idsListEntry;
    list_ForEach(account_idsListEntry, scheduled_notification->account_ids) {
    if(cJSON_AddNumberToObject(account_ids, "", *(double *)account_idsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // scheduled_notification->audiences
    if(scheduled_notification->audiences) {
    cJSON *audiences = cJSON_AddArrayToObject(item, "audiences");
    if(audiences == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *audiencesListEntry;
    if (scheduled_notification->audiences) {
    list_ForEach(audiencesListEntry, scheduled_notification->audiences) {
    cJSON *itemLocal = audience_convertToJSON(audiencesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(audiences, itemLocal);
    }
    }
    }


    // scheduled_notification->report
    if(scheduled_notification->report) {
    cJSON *report_local_JSON = report_definition_convertToJSON(scheduled_notification->report);
    if(report_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "report", report_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // scheduled_notification->report_params
    if(scheduled_notification->report_params) {
    if(cJSON_AddStringToObject(item, "reportParams", scheduled_notification->report_params) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->endpoint_url
    if(scheduled_notification->endpoint_url) {
    if(cJSON_AddStringToObject(item, "endpointURL", scheduled_notification->endpoint_url) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->last_action_date
    if(scheduled_notification->last_action_date) {
    if(cJSON_AddStringToObject(item, "lastActionDate", scheduled_notification->last_action_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // scheduled_notification->scheduled_date
    if(scheduled_notification->scheduled_date) {
    if(cJSON_AddStringToObject(item, "scheduledDate", scheduled_notification->scheduled_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // scheduled_notification->start_date
    if(scheduled_notification->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", scheduled_notification->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // scheduled_notification->end_date
    if(scheduled_notification->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", scheduled_notification->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // scheduled_notification->cron_expression
    if(scheduled_notification->cron_expression) {
    if(cJSON_AddStringToObject(item, "cronExpression", scheduled_notification->cron_expression) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->deliver_estimate
    if(scheduled_notification->deliver_estimate) {
    if(cJSON_AddNumberToObject(item, "deliverEstimate", scheduled_notification->deliver_estimate) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->deliver_count
    if(scheduled_notification->deliver_count) {
    if(cJSON_AddNumberToObject(item, "deliverCount", scheduled_notification->deliver_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->deliver_failed
    if(scheduled_notification->deliver_failed) {
    if(cJSON_AddNumberToObject(item, "deliverFailed", scheduled_notification->deliver_failed) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->deliver_total
    if(scheduled_notification->deliver_total) {
    if(cJSON_AddNumberToObject(item, "deliverTotal", scheduled_notification->deliver_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->deliver_start
    if(scheduled_notification->deliver_start) {
    if(cJSON_AddNumberToObject(item, "deliverStart", scheduled_notification->deliver_start) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->deliver_limit
    if(scheduled_notification->deliver_limit) {
    if(cJSON_AddNumberToObject(item, "deliverLimit", scheduled_notification->deliver_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->processing_time
    if(scheduled_notification->processing_time) {
    if(cJSON_AddNumberToObject(item, "processingTime", scheduled_notification->processing_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->sending_time
    if(scheduled_notification->sending_time) {
    if(cJSON_AddNumberToObject(item, "sendingTime", scheduled_notification->sending_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification->grouping_id
    if(scheduled_notification->grouping_id) {
    if(cJSON_AddStringToObject(item, "groupingId", scheduled_notification->grouping_id) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->conditional_input
    if(scheduled_notification->conditional_input) {
    if(cJSON_AddStringToObject(item, "conditionalInput", scheduled_notification->conditional_input) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->conditional_code
    if(scheduled_notification->conditional_code) {
    if(cJSON_AddStringToObject(item, "conditionalCode", scheduled_notification->conditional_code) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification->public_permissions
    if(scheduled_notification->public_permissions) {
    cJSON *public_permissions_local_JSON = permissions_convertToJSON(scheduled_notification->public_permissions);
    if(public_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "publicPermissions", public_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // scheduled_notification->user_permissions
    if(scheduled_notification->user_permissions) {
    cJSON *user_permissions = cJSON_AddArrayToObject(item, "userPermissions");
    if(user_permissions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *user_permissionsListEntry;
    if (scheduled_notification->user_permissions) {
    list_ForEach(user_permissionsListEntry, scheduled_notification->user_permissions) {
    cJSON *itemLocal = user_permissions_convertToJSON(user_permissionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(user_permissions, itemLocal);
    }
    }
    }


    // scheduled_notification->visibility
    if(scheduled_notification->visibility != sirqul_iot_platform_scheduled_notification_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", scheduled_notification_visibility_ToString(scheduled_notification->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // scheduled_notification->approval_status
    if(scheduled_notification->approval_status != sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "approvalStatus", scheduled_notification_approval_status_ToString(scheduled_notification->approval_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // scheduled_notification->content_asset
    if(scheduled_notification->content_asset) {
    cJSON *content_asset_local_JSON = asset_convertToJSON(scheduled_notification->content_asset);
    if(content_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contentAsset", content_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

scheduled_notification_t *scheduled_notification_parseFromJSON(cJSON *scheduled_notificationJSON){

    scheduled_notification_t *scheduled_notification_local_var = NULL;

    // define the local variable for scheduled_notification->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for scheduled_notification->billable_entity
    billable_entity_t *billable_entity_local_nonprim = NULL;

    // define the local variable for scheduled_notification->application
    application_t *application_local_nonprim = NULL;

    // define the local list for scheduled_notification->connection_groups
    list_t *connection_groupsList = NULL;

    // define the local list for scheduled_notification->account_ids
    list_t *account_idsList = NULL;

    // define the local list for scheduled_notification->audiences
    list_t *audiencesList = NULL;

    // define the local variable for scheduled_notification->report
    report_definition_t *report_local_nonprim = NULL;

    // define the local variable for scheduled_notification->public_permissions
    permissions_t *public_permissions_local_nonprim = NULL;

    // define the local list for scheduled_notification->user_permissions
    list_t *user_permissionsList = NULL;

    // define the local variable for scheduled_notification->content_asset
    asset_t *content_asset_local_nonprim = NULL;

    // scheduled_notification->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // scheduled_notification->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // scheduled_notification->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // scheduled_notification->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_parseFromJSON(billable_entity); //nonprimitive
    }

    // scheduled_notification->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    sirqul_iot_platform_scheduled_notification_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = scheduled_notification_type_FromString(type->valuestring);
    }

    // scheduled_notification->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_scheduled_notification_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = scheduled_notification_status_FromString(status->valuestring);
    }

    // scheduled_notification->template_type
    cJSON *template_type = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "templateType");
    if (cJSON_IsNull(template_type)) {
        template_type = NULL;
    }
    sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_e template_typeVariable;
    if (template_type) { 
    if(!cJSON_IsString(template_type))
    {
    goto end; //Enum
    }
    template_typeVariable = scheduled_notification_template_type_FromString(template_type->valuestring);
    }

    // scheduled_notification->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // scheduled_notification->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "errorMessage");
    if (cJSON_IsNull(error_message)) {
        error_message = NULL;
    }
    if (error_message) { 
    if(!cJSON_IsString(error_message) && !cJSON_IsNull(error_message))
    {
    goto end; //String
    }
    }

    // scheduled_notification->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // scheduled_notification->payload
    cJSON *payload = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "payload");
    if (cJSON_IsNull(payload)) {
        payload = NULL;
    }
    if (payload) { 
    if(!cJSON_IsString(payload) && !cJSON_IsNull(payload))
    {
    goto end; //String
    }
    }

    // scheduled_notification->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // scheduled_notification->content_id
    cJSON *content_id = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "contentId");
    if (cJSON_IsNull(content_id)) {
        content_id = NULL;
    }
    if (content_id) { 
    if(!cJSON_IsNumber(content_id))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->content_type
    cJSON *content_type = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "contentType");
    if (cJSON_IsNull(content_type)) {
        content_type = NULL;
    }
    if (content_type) { 
    if(!cJSON_IsString(content_type) && !cJSON_IsNull(content_type))
    {
    goto end; //String
    }
    }

    // scheduled_notification->parent_id
    cJSON *parent_id = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "parentId");
    if (cJSON_IsNull(parent_id)) {
        parent_id = NULL;
    }
    if (parent_id) { 
    if(!cJSON_IsNumber(parent_id))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->parent_type
    cJSON *parent_type = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "parentType");
    if (cJSON_IsNull(parent_type)) {
        parent_type = NULL;
    }
    if (parent_type) { 
    if(!cJSON_IsString(parent_type) && !cJSON_IsNull(parent_type))
    {
    goto end; //String
    }
    }

    // scheduled_notification->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // scheduled_notification->connection_groups
    cJSON *connection_groups = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "connectionGroups");
    if (cJSON_IsNull(connection_groups)) {
        connection_groups = NULL;
    }
    if (connection_groups) { 
    cJSON *connection_groups_local_nonprimitive = NULL;
    if(!cJSON_IsArray(connection_groups)){
        goto end; //nonprimitive container
    }

    connection_groupsList = list_createList();

    cJSON_ArrayForEach(connection_groups_local_nonprimitive,connection_groups )
    {
        if(!cJSON_IsObject(connection_groups_local_nonprimitive)){
            goto end;
        }
        connection_group_t *connection_groupsItem = connection_group_parseFromJSON(connection_groups_local_nonprimitive);

        list_addElement(connection_groupsList, connection_groupsItem);
    }
    }

    // scheduled_notification->account_ids
    cJSON *account_ids = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "accountIds");
    if (cJSON_IsNull(account_ids)) {
        account_ids = NULL;
    }
    if (account_ids) { 
    cJSON *account_ids_local = NULL;
    if(!cJSON_IsArray(account_ids)) {
        goto end;//primitive container
    }
    account_idsList = list_createList();

    cJSON_ArrayForEach(account_ids_local, account_ids)
    {
        if(!cJSON_IsNumber(account_ids_local))
        {
            goto end;
        }
        double *account_ids_local_value = calloc(1, sizeof(double));
        if(!account_ids_local_value)
        {
            goto end;
        }
        *account_ids_local_value = account_ids_local->valuedouble;
        list_addElement(account_idsList , account_ids_local_value);
    }
    }

    // scheduled_notification->audiences
    cJSON *audiences = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "audiences");
    if (cJSON_IsNull(audiences)) {
        audiences = NULL;
    }
    if (audiences) { 
    cJSON *audiences_local_nonprimitive = NULL;
    if(!cJSON_IsArray(audiences)){
        goto end; //nonprimitive container
    }

    audiencesList = list_createList();

    cJSON_ArrayForEach(audiences_local_nonprimitive,audiences )
    {
        if(!cJSON_IsObject(audiences_local_nonprimitive)){
            goto end;
        }
        audience_t *audiencesItem = audience_parseFromJSON(audiences_local_nonprimitive);

        list_addElement(audiencesList, audiencesItem);
    }
    }

    // scheduled_notification->report
    cJSON *report = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "report");
    if (cJSON_IsNull(report)) {
        report = NULL;
    }
    if (report) { 
    report_local_nonprim = report_definition_parseFromJSON(report); //nonprimitive
    }

    // scheduled_notification->report_params
    cJSON *report_params = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "reportParams");
    if (cJSON_IsNull(report_params)) {
        report_params = NULL;
    }
    if (report_params) { 
    if(!cJSON_IsString(report_params) && !cJSON_IsNull(report_params))
    {
    goto end; //String
    }
    }

    // scheduled_notification->endpoint_url
    cJSON *endpoint_url = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "endpointURL");
    if (cJSON_IsNull(endpoint_url)) {
        endpoint_url = NULL;
    }
    if (endpoint_url) { 
    if(!cJSON_IsString(endpoint_url) && !cJSON_IsNull(endpoint_url))
    {
    goto end; //String
    }
    }

    // scheduled_notification->last_action_date
    cJSON *last_action_date = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "lastActionDate");
    if (cJSON_IsNull(last_action_date)) {
        last_action_date = NULL;
    }
    if (last_action_date) { 
    if(!cJSON_IsString(last_action_date) && !cJSON_IsNull(last_action_date))
    {
    goto end; //DateTime
    }
    }

    // scheduled_notification->scheduled_date
    cJSON *scheduled_date = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "scheduledDate");
    if (cJSON_IsNull(scheduled_date)) {
        scheduled_date = NULL;
    }
    if (scheduled_date) { 
    if(!cJSON_IsString(scheduled_date) && !cJSON_IsNull(scheduled_date))
    {
    goto end; //DateTime
    }
    }

    // scheduled_notification->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // scheduled_notification->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // scheduled_notification->cron_expression
    cJSON *cron_expression = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "cronExpression");
    if (cJSON_IsNull(cron_expression)) {
        cron_expression = NULL;
    }
    if (cron_expression) { 
    if(!cJSON_IsString(cron_expression) && !cJSON_IsNull(cron_expression))
    {
    goto end; //String
    }
    }

    // scheduled_notification->deliver_estimate
    cJSON *deliver_estimate = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "deliverEstimate");
    if (cJSON_IsNull(deliver_estimate)) {
        deliver_estimate = NULL;
    }
    if (deliver_estimate) { 
    if(!cJSON_IsNumber(deliver_estimate))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->deliver_count
    cJSON *deliver_count = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "deliverCount");
    if (cJSON_IsNull(deliver_count)) {
        deliver_count = NULL;
    }
    if (deliver_count) { 
    if(!cJSON_IsNumber(deliver_count))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->deliver_failed
    cJSON *deliver_failed = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "deliverFailed");
    if (cJSON_IsNull(deliver_failed)) {
        deliver_failed = NULL;
    }
    if (deliver_failed) { 
    if(!cJSON_IsNumber(deliver_failed))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->deliver_total
    cJSON *deliver_total = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "deliverTotal");
    if (cJSON_IsNull(deliver_total)) {
        deliver_total = NULL;
    }
    if (deliver_total) { 
    if(!cJSON_IsNumber(deliver_total))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->deliver_start
    cJSON *deliver_start = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "deliverStart");
    if (cJSON_IsNull(deliver_start)) {
        deliver_start = NULL;
    }
    if (deliver_start) { 
    if(!cJSON_IsNumber(deliver_start))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->deliver_limit
    cJSON *deliver_limit = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "deliverLimit");
    if (cJSON_IsNull(deliver_limit)) {
        deliver_limit = NULL;
    }
    if (deliver_limit) { 
    if(!cJSON_IsNumber(deliver_limit))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->processing_time
    cJSON *processing_time = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "processingTime");
    if (cJSON_IsNull(processing_time)) {
        processing_time = NULL;
    }
    if (processing_time) { 
    if(!cJSON_IsNumber(processing_time))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->sending_time
    cJSON *sending_time = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "sendingTime");
    if (cJSON_IsNull(sending_time)) {
        sending_time = NULL;
    }
    if (sending_time) { 
    if(!cJSON_IsNumber(sending_time))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification->grouping_id
    cJSON *grouping_id = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "groupingId");
    if (cJSON_IsNull(grouping_id)) {
        grouping_id = NULL;
    }
    if (grouping_id) { 
    if(!cJSON_IsString(grouping_id) && !cJSON_IsNull(grouping_id))
    {
    goto end; //String
    }
    }

    // scheduled_notification->conditional_input
    cJSON *conditional_input = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "conditionalInput");
    if (cJSON_IsNull(conditional_input)) {
        conditional_input = NULL;
    }
    if (conditional_input) { 
    if(!cJSON_IsString(conditional_input) && !cJSON_IsNull(conditional_input))
    {
    goto end; //String
    }
    }

    // scheduled_notification->conditional_code
    cJSON *conditional_code = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "conditionalCode");
    if (cJSON_IsNull(conditional_code)) {
        conditional_code = NULL;
    }
    if (conditional_code) { 
    if(!cJSON_IsString(conditional_code) && !cJSON_IsNull(conditional_code))
    {
    goto end; //String
    }
    }

    // scheduled_notification->public_permissions
    cJSON *public_permissions = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "publicPermissions");
    if (cJSON_IsNull(public_permissions)) {
        public_permissions = NULL;
    }
    if (public_permissions) { 
    public_permissions_local_nonprim = permissions_parseFromJSON(public_permissions); //nonprimitive
    }

    // scheduled_notification->user_permissions
    cJSON *user_permissions = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "userPermissions");
    if (cJSON_IsNull(user_permissions)) {
        user_permissions = NULL;
    }
    if (user_permissions) { 
    cJSON *user_permissions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(user_permissions)){
        goto end; //nonprimitive container
    }

    user_permissionsList = list_createList();

    cJSON_ArrayForEach(user_permissions_local_nonprimitive,user_permissions )
    {
        if(!cJSON_IsObject(user_permissions_local_nonprimitive)){
            goto end;
        }
        user_permissions_t *user_permissionsItem = user_permissions_parseFromJSON(user_permissions_local_nonprimitive);

        list_addElement(user_permissionsList, user_permissionsItem);
    }
    }

    // scheduled_notification->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_scheduled_notification_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = scheduled_notification_visibility_FromString(visibility->valuestring);
    }

    // scheduled_notification->approval_status
    cJSON *approval_status = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "approvalStatus");
    if (cJSON_IsNull(approval_status)) {
        approval_status = NULL;
    }
    sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_e approval_statusVariable;
    if (approval_status) { 
    if(!cJSON_IsString(approval_status))
    {
    goto end; //Enum
    }
    approval_statusVariable = scheduled_notification_approval_status_FromString(approval_status->valuestring);
    }

    // scheduled_notification->content_asset
    cJSON *content_asset = cJSON_GetObjectItemCaseSensitive(scheduled_notificationJSON, "contentAsset");
    if (cJSON_IsNull(content_asset)) {
        content_asset = NULL;
    }
    if (content_asset) { 
    content_asset_local_nonprim = asset_parseFromJSON(content_asset); //nonprimitive
    }


    scheduled_notification_local_var = scheduled_notification_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        billable_entity ? billable_entity_local_nonprim : NULL,
        type ? typeVariable : sirqul_iot_platform_scheduled_notification_TYPE_NULL,
        status ? statusVariable : sirqul_iot_platform_scheduled_notification_STATUS_NULL,
        template_type ? template_typeVariable : sirqul_iot_platform_scheduled_notification_TEMPLATETYPE_NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        error_message && !cJSON_IsNull(error_message) ? strdup(error_message->valuestring) : NULL,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        payload && !cJSON_IsNull(payload) ? strdup(payload->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        content_id ? content_id->valuedouble : 0,
        content_type && !cJSON_IsNull(content_type) ? strdup(content_type->valuestring) : NULL,
        parent_id ? parent_id->valuedouble : 0,
        parent_type && !cJSON_IsNull(parent_type) ? strdup(parent_type->valuestring) : NULL,
        application ? application_local_nonprim : NULL,
        connection_groups ? connection_groupsList : NULL,
        account_ids ? account_idsList : NULL,
        audiences ? audiencesList : NULL,
        report ? report_local_nonprim : NULL,
        report_params && !cJSON_IsNull(report_params) ? strdup(report_params->valuestring) : NULL,
        endpoint_url && !cJSON_IsNull(endpoint_url) ? strdup(endpoint_url->valuestring) : NULL,
        last_action_date && !cJSON_IsNull(last_action_date) ? strdup(last_action_date->valuestring) : NULL,
        scheduled_date && !cJSON_IsNull(scheduled_date) ? strdup(scheduled_date->valuestring) : NULL,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        cron_expression && !cJSON_IsNull(cron_expression) ? strdup(cron_expression->valuestring) : NULL,
        deliver_estimate ? deliver_estimate->valuedouble : 0,
        deliver_count ? deliver_count->valuedouble : 0,
        deliver_failed ? deliver_failed->valuedouble : 0,
        deliver_total ? deliver_total->valuedouble : 0,
        deliver_start ? deliver_start->valuedouble : 0,
        deliver_limit ? deliver_limit->valuedouble : 0,
        processing_time ? processing_time->valuedouble : 0,
        sending_time ? sending_time->valuedouble : 0,
        grouping_id && !cJSON_IsNull(grouping_id) ? strdup(grouping_id->valuestring) : NULL,
        conditional_input && !cJSON_IsNull(conditional_input) ? strdup(conditional_input->valuestring) : NULL,
        conditional_code && !cJSON_IsNull(conditional_code) ? strdup(conditional_code->valuestring) : NULL,
        public_permissions ? public_permissions_local_nonprim : NULL,
        user_permissions ? user_permissionsList : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_scheduled_notification_VISIBILITY_NULL,
        approval_status ? approval_statusVariable : sirqul_iot_platform_scheduled_notification_APPROVALSTATUS_NULL,
        content_asset ? content_asset_local_nonprim : NULL
        );

    return scheduled_notification_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (billable_entity_local_nonprim) {
        billable_entity_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (connection_groupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, connection_groupsList) {
            connection_group_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(connection_groupsList);
        connection_groupsList = NULL;
    }
    if (account_idsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, account_idsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(account_idsList);
        account_idsList = NULL;
    }
    if (audiencesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, audiencesList) {
            audience_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(audiencesList);
        audiencesList = NULL;
    }
    if (report_local_nonprim) {
        report_definition_free(report_local_nonprim);
        report_local_nonprim = NULL;
    }
    if (public_permissions_local_nonprim) {
        permissions_free(public_permissions_local_nonprim);
        public_permissions_local_nonprim = NULL;
    }
    if (user_permissionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, user_permissionsList) {
            user_permissions_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(user_permissionsList);
        user_permissionsList = NULL;
    }
    if (content_asset_local_nonprim) {
        asset_free(content_asset_local_nonprim);
        content_asset_local_nonprim = NULL;
    }
    return NULL;

}
