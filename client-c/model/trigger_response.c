#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "trigger_response.h"


char* trigger_response_status_ToString(sirqul_iot_platform_trigger_response_STATUS_e status) {
    char* statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE" };
    return statusArray[status];
}

sirqul_iot_platform_trigger_response_STATUS_e trigger_response_status_FromString(char* status){
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
char* trigger_response_type_ToString(sirqul_iot_platform_trigger_response_TYPE_e type) {
    char* typeArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    return typeArray[type];
}

sirqul_iot_platform_trigger_response_TYPE_e trigger_response_type_FromString(char* type){
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
char* trigger_response_template_type_ToString(sirqul_iot_platform_trigger_response_TEMPLATETYPE_e template_type) {
    char* template_typeArray[] =  { "NULL", "REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL" };
    return template_typeArray[template_type];
}

sirqul_iot_platform_trigger_response_TEMPLATETYPE_e trigger_response_template_type_FromString(char* template_type){
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
char* trigger_response_grouped_types_ToString(sirqul_iot_platform_trigger_response_GROUPEDTYPES_e grouped_types) {
    char *grouped_typesArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    return grouped_typesArray[grouped_types - 1];
}

sirqul_iot_platform_trigger_response_GROUPEDTYPES_e trigger_response_grouped_types_FromString(char* grouped_types) {
    int stringToReturn = 0;
    char *grouped_typesArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    size_t sizeofArray = sizeof(grouped_typesArray) / sizeof(grouped_typesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(grouped_types, grouped_typesArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

static trigger_response_t *trigger_response_create_internal(
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
    ) {
    trigger_response_t *trigger_response_local_var = malloc(sizeof(trigger_response_t));
    if (!trigger_response_local_var) {
        return NULL;
    }
    trigger_response_local_var->scheduled_notification_id = scheduled_notification_id;
    trigger_response_local_var->active = active;
    trigger_response_local_var->status = status;
    trigger_response_local_var->type = type;
    trigger_response_local_var->name = name;
    trigger_response_local_var->message = message;
    trigger_response_local_var->grouping_id = grouping_id;
    trigger_response_local_var->scheduled_date = scheduled_date;
    trigger_response_local_var->start_date = start_date;
    trigger_response_local_var->end_date = end_date;
    trigger_response_local_var->owner = owner;
    trigger_response_local_var->billable_entity = billable_entity;
    trigger_response_local_var->content_id = content_id;
    trigger_response_local_var->content_name = content_name;
    trigger_response_local_var->content_type = content_type;
    trigger_response_local_var->parent_id = parent_id;
    trigger_response_local_var->parent_type = parent_type;
    trigger_response_local_var->application = application;
    trigger_response_local_var->target_id = target_id;
    trigger_response_local_var->target_name = target_name;
    trigger_response_local_var->target_type = target_type;
    trigger_response_local_var->target_params = target_params;
    trigger_response_local_var->deliver_estimate = deliver_estimate;
    trigger_response_local_var->deliver_count = deliver_count;
    trigger_response_local_var->deliver_total = deliver_total;
    trigger_response_local_var->deliver_failed = deliver_failed;
    trigger_response_local_var->processing_time = processing_time;
    trigger_response_local_var->sending_time = sending_time;
    trigger_response_local_var->updated = updated;
    trigger_response_local_var->created = created;
    trigger_response_local_var->cron_expression = cron_expression;
    trigger_response_local_var->endpoint_url = endpoint_url;
    trigger_response_local_var->payload = payload;
    trigger_response_local_var->conditional_input = conditional_input;
    trigger_response_local_var->connection_account_ids = connection_account_ids;
    trigger_response_local_var->template_type = template_type;
    trigger_response_local_var->grouped_types = grouped_types;
    trigger_response_local_var->trigger_id = trigger_id;

    trigger_response_local_var->_library_owned = 1;
    return trigger_response_local_var;
}

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
    ) {
    return trigger_response_create_internal (
        scheduled_notification_id,
        active,
        status,
        type,
        name,
        message,
        grouping_id,
        scheduled_date,
        start_date,
        end_date,
        owner,
        billable_entity,
        content_id,
        content_name,
        content_type,
        parent_id,
        parent_type,
        application,
        target_id,
        target_name,
        target_type,
        target_params,
        deliver_estimate,
        deliver_count,
        deliver_total,
        deliver_failed,
        processing_time,
        sending_time,
        updated,
        created,
        cron_expression,
        endpoint_url,
        payload,
        conditional_input,
        connection_account_ids,
        template_type,
        grouped_types,
        trigger_id
        );
}

void trigger_response_free(trigger_response_t *trigger_response) {
    if(NULL == trigger_response){
        return ;
    }
    if(trigger_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "trigger_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (trigger_response->name) {
        free(trigger_response->name);
        trigger_response->name = NULL;
    }
    if (trigger_response->message) {
        free(trigger_response->message);
        trigger_response->message = NULL;
    }
    if (trigger_response->grouping_id) {
        free(trigger_response->grouping_id);
        trigger_response->grouping_id = NULL;
    }
    if (trigger_response->owner) {
        account_short_response_free(trigger_response->owner);
        trigger_response->owner = NULL;
    }
    if (trigger_response->billable_entity) {
        billable_entity_short_response_free(trigger_response->billable_entity);
        trigger_response->billable_entity = NULL;
    }
    if (trigger_response->content_name) {
        free(trigger_response->content_name);
        trigger_response->content_name = NULL;
    }
    if (trigger_response->content_type) {
        free(trigger_response->content_type);
        trigger_response->content_type = NULL;
    }
    if (trigger_response->parent_type) {
        free(trigger_response->parent_type);
        trigger_response->parent_type = NULL;
    }
    if (trigger_response->application) {
        application_mini_response_free(trigger_response->application);
        trigger_response->application = NULL;
    }
    if (trigger_response->target_name) {
        free(trigger_response->target_name);
        trigger_response->target_name = NULL;
    }
    if (trigger_response->target_type) {
        free(trigger_response->target_type);
        trigger_response->target_type = NULL;
    }
    if (trigger_response->target_params) {
        free(trigger_response->target_params);
        trigger_response->target_params = NULL;
    }
    if (trigger_response->cron_expression) {
        free(trigger_response->cron_expression);
        trigger_response->cron_expression = NULL;
    }
    if (trigger_response->endpoint_url) {
        free(trigger_response->endpoint_url);
        trigger_response->endpoint_url = NULL;
    }
    if (trigger_response->payload) {
        free(trigger_response->payload);
        trigger_response->payload = NULL;
    }
    if (trigger_response->conditional_input) {
        free(trigger_response->conditional_input);
        trigger_response->conditional_input = NULL;
    }
    if (trigger_response->connection_account_ids) {
        list_ForEach(listEntry, trigger_response->connection_account_ids) {
            free(listEntry->data);
        }
        list_freeList(trigger_response->connection_account_ids);
        trigger_response->connection_account_ids = NULL;
    }
    if (trigger_response->grouped_types) {
        list_ForEach(listEntry, trigger_response->grouped_types) {
            free(listEntry->data);
        }
        list_freeList(trigger_response->grouped_types);
        trigger_response->grouped_types = NULL;
    }
    free(trigger_response);
}

cJSON *trigger_response_convertToJSON(trigger_response_t *trigger_response) {
    cJSON *item = cJSON_CreateObject();

    // trigger_response->scheduled_notification_id
    if(trigger_response->scheduled_notification_id) {
    if(cJSON_AddNumberToObject(item, "scheduledNotificationId", trigger_response->scheduled_notification_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->active
    if(trigger_response->active) {
    if(cJSON_AddBoolToObject(item, "active", trigger_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // trigger_response->status
    if(trigger_response->status != sirqul_iot_platform_trigger_response_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", trigger_response_status_ToString(trigger_response->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // trigger_response->type
    if(trigger_response->type != sirqul_iot_platform_trigger_response_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", trigger_response_type_ToString(trigger_response->type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // trigger_response->name
    if(trigger_response->name) {
    if(cJSON_AddStringToObject(item, "name", trigger_response->name) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->message
    if(trigger_response->message) {
    if(cJSON_AddStringToObject(item, "message", trigger_response->message) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->grouping_id
    if(trigger_response->grouping_id) {
    if(cJSON_AddStringToObject(item, "groupingId", trigger_response->grouping_id) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->scheduled_date
    if(trigger_response->scheduled_date) {
    if(cJSON_AddNumberToObject(item, "scheduledDate", trigger_response->scheduled_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->start_date
    if(trigger_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", trigger_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->end_date
    if(trigger_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", trigger_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->owner
    if(trigger_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(trigger_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trigger_response->billable_entity
    if(trigger_response->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_short_response_convertToJSON(trigger_response->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trigger_response->content_id
    if(trigger_response->content_id) {
    if(cJSON_AddNumberToObject(item, "contentId", trigger_response->content_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->content_name
    if(trigger_response->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", trigger_response->content_name) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->content_type
    if(trigger_response->content_type) {
    if(cJSON_AddStringToObject(item, "contentType", trigger_response->content_type) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->parent_id
    if(trigger_response->parent_id) {
    if(cJSON_AddNumberToObject(item, "parentId", trigger_response->parent_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->parent_type
    if(trigger_response->parent_type) {
    if(cJSON_AddStringToObject(item, "parentType", trigger_response->parent_type) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->application
    if(trigger_response->application) {
    cJSON *application_local_JSON = application_mini_response_convertToJSON(trigger_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trigger_response->target_id
    if(trigger_response->target_id) {
    if(cJSON_AddNumberToObject(item, "targetId", trigger_response->target_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->target_name
    if(trigger_response->target_name) {
    if(cJSON_AddStringToObject(item, "targetName", trigger_response->target_name) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->target_type
    if(trigger_response->target_type) {
    if(cJSON_AddStringToObject(item, "targetType", trigger_response->target_type) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->target_params
    if(trigger_response->target_params) {
    if(cJSON_AddStringToObject(item, "targetParams", trigger_response->target_params) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->deliver_estimate
    if(trigger_response->deliver_estimate) {
    if(cJSON_AddNumberToObject(item, "deliverEstimate", trigger_response->deliver_estimate) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->deliver_count
    if(trigger_response->deliver_count) {
    if(cJSON_AddNumberToObject(item, "deliverCount", trigger_response->deliver_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->deliver_total
    if(trigger_response->deliver_total) {
    if(cJSON_AddNumberToObject(item, "deliverTotal", trigger_response->deliver_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->deliver_failed
    if(trigger_response->deliver_failed) {
    if(cJSON_AddNumberToObject(item, "deliverFailed", trigger_response->deliver_failed) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->processing_time
    if(trigger_response->processing_time) {
    if(cJSON_AddNumberToObject(item, "processingTime", trigger_response->processing_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->sending_time
    if(trigger_response->sending_time) {
    if(cJSON_AddNumberToObject(item, "sendingTime", trigger_response->sending_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->updated
    if(trigger_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", trigger_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->created
    if(trigger_response->created) {
    if(cJSON_AddNumberToObject(item, "created", trigger_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // trigger_response->cron_expression
    if(trigger_response->cron_expression) {
    if(cJSON_AddStringToObject(item, "cronExpression", trigger_response->cron_expression) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->endpoint_url
    if(trigger_response->endpoint_url) {
    if(cJSON_AddStringToObject(item, "endpointURL", trigger_response->endpoint_url) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->payload
    if(trigger_response->payload) {
    if(cJSON_AddStringToObject(item, "payload", trigger_response->payload) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->conditional_input
    if(trigger_response->conditional_input) {
    if(cJSON_AddStringToObject(item, "conditionalInput", trigger_response->conditional_input) == NULL) {
    goto fail; //String
    }
    }


    // trigger_response->connection_account_ids
    if(trigger_response->connection_account_ids) {
    cJSON *connection_account_ids = cJSON_AddArrayToObject(item, "connectionAccountIds");
    if(connection_account_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *connection_account_idsListEntry;
    list_ForEach(connection_account_idsListEntry, trigger_response->connection_account_ids) {
    if(cJSON_AddNumberToObject(connection_account_ids, "", *(double *)connection_account_idsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // trigger_response->template_type
    if(trigger_response->template_type != sirqul_iot_platform_trigger_response_TEMPLATETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "templateType", trigger_response_template_type_ToString(trigger_response->template_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // trigger_response->grouped_types
    if(trigger_response->grouped_types != sirqul_iot_platform_trigger_response_GROUPEDTYPES_NULL) {
    cJSON *grouped_types = cJSON_AddArrayToObject(item, "groupedTypes");
    if(grouped_types == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *grouped_typesListEntry;
    list_ForEach(grouped_typesListEntry, trigger_response->grouped_types) {
    if(cJSON_AddStringToObject(grouped_types, "", grouped_typesListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // trigger_response->trigger_id
    if(trigger_response->trigger_id) {
    if(cJSON_AddNumberToObject(item, "triggerId", trigger_response->trigger_id) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

trigger_response_t *trigger_response_parseFromJSON(cJSON *trigger_responseJSON){

    trigger_response_t *trigger_response_local_var = NULL;

    // define the local variable for trigger_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for trigger_response->billable_entity
    billable_entity_short_response_t *billable_entity_local_nonprim = NULL;

    // define the local variable for trigger_response->application
    application_mini_response_t *application_local_nonprim = NULL;

    // define the local list for trigger_response->connection_account_ids
    list_t *connection_account_idsList = NULL;

    // define the local list for trigger_response->grouped_types
    list_t *grouped_typesList = NULL;

    // trigger_response->scheduled_notification_id
    cJSON *scheduled_notification_id = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "scheduledNotificationId");
    if (cJSON_IsNull(scheduled_notification_id)) {
        scheduled_notification_id = NULL;
    }
    if (scheduled_notification_id) { 
    if(!cJSON_IsNumber(scheduled_notification_id))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // trigger_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_trigger_response_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = trigger_response_status_FromString(status->valuestring);
    }

    // trigger_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    sirqul_iot_platform_trigger_response_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = trigger_response_type_FromString(type->valuestring);
    }

    // trigger_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // trigger_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // trigger_response->grouping_id
    cJSON *grouping_id = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "groupingId");
    if (cJSON_IsNull(grouping_id)) {
        grouping_id = NULL;
    }
    if (grouping_id) { 
    if(!cJSON_IsString(grouping_id) && !cJSON_IsNull(grouping_id))
    {
    goto end; //String
    }
    }

    // trigger_response->scheduled_date
    cJSON *scheduled_date = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "scheduledDate");
    if (cJSON_IsNull(scheduled_date)) {
        scheduled_date = NULL;
    }
    if (scheduled_date) { 
    if(!cJSON_IsNumber(scheduled_date))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // trigger_response->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_short_response_parseFromJSON(billable_entity); //nonprimitive
    }

    // trigger_response->content_id
    cJSON *content_id = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "contentId");
    if (cJSON_IsNull(content_id)) {
        content_id = NULL;
    }
    if (content_id) { 
    if(!cJSON_IsNumber(content_id))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // trigger_response->content_type
    cJSON *content_type = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "contentType");
    if (cJSON_IsNull(content_type)) {
        content_type = NULL;
    }
    if (content_type) { 
    if(!cJSON_IsString(content_type) && !cJSON_IsNull(content_type))
    {
    goto end; //String
    }
    }

    // trigger_response->parent_id
    cJSON *parent_id = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "parentId");
    if (cJSON_IsNull(parent_id)) {
        parent_id = NULL;
    }
    if (parent_id) { 
    if(!cJSON_IsNumber(parent_id))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->parent_type
    cJSON *parent_type = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "parentType");
    if (cJSON_IsNull(parent_type)) {
        parent_type = NULL;
    }
    if (parent_type) { 
    if(!cJSON_IsString(parent_type) && !cJSON_IsNull(parent_type))
    {
    goto end; //String
    }
    }

    // trigger_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_mini_response_parseFromJSON(application); //nonprimitive
    }

    // trigger_response->target_id
    cJSON *target_id = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "targetId");
    if (cJSON_IsNull(target_id)) {
        target_id = NULL;
    }
    if (target_id) { 
    if(!cJSON_IsNumber(target_id))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->target_name
    cJSON *target_name = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "targetName");
    if (cJSON_IsNull(target_name)) {
        target_name = NULL;
    }
    if (target_name) { 
    if(!cJSON_IsString(target_name) && !cJSON_IsNull(target_name))
    {
    goto end; //String
    }
    }

    // trigger_response->target_type
    cJSON *target_type = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "targetType");
    if (cJSON_IsNull(target_type)) {
        target_type = NULL;
    }
    if (target_type) { 
    if(!cJSON_IsString(target_type) && !cJSON_IsNull(target_type))
    {
    goto end; //String
    }
    }

    // trigger_response->target_params
    cJSON *target_params = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "targetParams");
    if (cJSON_IsNull(target_params)) {
        target_params = NULL;
    }
    if (target_params) { 
    if(!cJSON_IsString(target_params) && !cJSON_IsNull(target_params))
    {
    goto end; //String
    }
    }

    // trigger_response->deliver_estimate
    cJSON *deliver_estimate = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "deliverEstimate");
    if (cJSON_IsNull(deliver_estimate)) {
        deliver_estimate = NULL;
    }
    if (deliver_estimate) { 
    if(!cJSON_IsNumber(deliver_estimate))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->deliver_count
    cJSON *deliver_count = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "deliverCount");
    if (cJSON_IsNull(deliver_count)) {
        deliver_count = NULL;
    }
    if (deliver_count) { 
    if(!cJSON_IsNumber(deliver_count))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->deliver_total
    cJSON *deliver_total = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "deliverTotal");
    if (cJSON_IsNull(deliver_total)) {
        deliver_total = NULL;
    }
    if (deliver_total) { 
    if(!cJSON_IsNumber(deliver_total))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->deliver_failed
    cJSON *deliver_failed = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "deliverFailed");
    if (cJSON_IsNull(deliver_failed)) {
        deliver_failed = NULL;
    }
    if (deliver_failed) { 
    if(!cJSON_IsNumber(deliver_failed))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->processing_time
    cJSON *processing_time = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "processingTime");
    if (cJSON_IsNull(processing_time)) {
        processing_time = NULL;
    }
    if (processing_time) { 
    if(!cJSON_IsNumber(processing_time))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->sending_time
    cJSON *sending_time = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "sendingTime");
    if (cJSON_IsNull(sending_time)) {
        sending_time = NULL;
    }
    if (sending_time) { 
    if(!cJSON_IsNumber(sending_time))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // trigger_response->cron_expression
    cJSON *cron_expression = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "cronExpression");
    if (cJSON_IsNull(cron_expression)) {
        cron_expression = NULL;
    }
    if (cron_expression) { 
    if(!cJSON_IsString(cron_expression) && !cJSON_IsNull(cron_expression))
    {
    goto end; //String
    }
    }

    // trigger_response->endpoint_url
    cJSON *endpoint_url = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "endpointURL");
    if (cJSON_IsNull(endpoint_url)) {
        endpoint_url = NULL;
    }
    if (endpoint_url) { 
    if(!cJSON_IsString(endpoint_url) && !cJSON_IsNull(endpoint_url))
    {
    goto end; //String
    }
    }

    // trigger_response->payload
    cJSON *payload = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "payload");
    if (cJSON_IsNull(payload)) {
        payload = NULL;
    }
    if (payload) { 
    if(!cJSON_IsString(payload) && !cJSON_IsNull(payload))
    {
    goto end; //String
    }
    }

    // trigger_response->conditional_input
    cJSON *conditional_input = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "conditionalInput");
    if (cJSON_IsNull(conditional_input)) {
        conditional_input = NULL;
    }
    if (conditional_input) { 
    if(!cJSON_IsString(conditional_input) && !cJSON_IsNull(conditional_input))
    {
    goto end; //String
    }
    }

    // trigger_response->connection_account_ids
    cJSON *connection_account_ids = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "connectionAccountIds");
    if (cJSON_IsNull(connection_account_ids)) {
        connection_account_ids = NULL;
    }
    if (connection_account_ids) { 
    cJSON *connection_account_ids_local = NULL;
    if(!cJSON_IsArray(connection_account_ids)) {
        goto end;//primitive container
    }
    connection_account_idsList = list_createList();

    cJSON_ArrayForEach(connection_account_ids_local, connection_account_ids)
    {
        if(!cJSON_IsNumber(connection_account_ids_local))
        {
            goto end;
        }
        double *connection_account_ids_local_value = calloc(1, sizeof(double));
        if(!connection_account_ids_local_value)
        {
            goto end;
        }
        *connection_account_ids_local_value = connection_account_ids_local->valuedouble;
        list_addElement(connection_account_idsList , connection_account_ids_local_value);
    }
    }

    // trigger_response->template_type
    cJSON *template_type = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "templateType");
    if (cJSON_IsNull(template_type)) {
        template_type = NULL;
    }
    sirqul_iot_platform_trigger_response_TEMPLATETYPE_e template_typeVariable;
    if (template_type) { 
    if(!cJSON_IsString(template_type))
    {
    goto end; //Enum
    }
    template_typeVariable = trigger_response_template_type_FromString(template_type->valuestring);
    }

    // trigger_response->grouped_types
    cJSON *grouped_types = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "groupedTypes");
    if (cJSON_IsNull(grouped_types)) {
        grouped_types = NULL;
    }
    if (grouped_types) { 
    cJSON *grouped_types_local = NULL;
    if(!cJSON_IsArray(grouped_types)) {
        goto end;//primitive container
    }
    grouped_typesList = list_createList();

    cJSON_ArrayForEach(grouped_types_local, grouped_types)
    {
        if(!cJSON_IsString(grouped_types_local))
        {
            goto end;
        }
        list_addElement(grouped_typesList , strdup(grouped_types_local->valuestring));
    }
    }

    // trigger_response->trigger_id
    cJSON *trigger_id = cJSON_GetObjectItemCaseSensitive(trigger_responseJSON, "triggerId");
    if (cJSON_IsNull(trigger_id)) {
        trigger_id = NULL;
    }
    if (trigger_id) { 
    if(!cJSON_IsNumber(trigger_id))
    {
    goto end; //Numeric
    }
    }


    trigger_response_local_var = trigger_response_create_internal (
        scheduled_notification_id ? scheduled_notification_id->valuedouble : 0,
        active ? active->valueint : 0,
        status ? statusVariable : sirqul_iot_platform_trigger_response_STATUS_NULL,
        type ? typeVariable : sirqul_iot_platform_trigger_response_TYPE_NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        grouping_id && !cJSON_IsNull(grouping_id) ? strdup(grouping_id->valuestring) : NULL,
        scheduled_date ? scheduled_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        owner ? owner_local_nonprim : NULL,
        billable_entity ? billable_entity_local_nonprim : NULL,
        content_id ? content_id->valuedouble : 0,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        content_type && !cJSON_IsNull(content_type) ? strdup(content_type->valuestring) : NULL,
        parent_id ? parent_id->valuedouble : 0,
        parent_type && !cJSON_IsNull(parent_type) ? strdup(parent_type->valuestring) : NULL,
        application ? application_local_nonprim : NULL,
        target_id ? target_id->valuedouble : 0,
        target_name && !cJSON_IsNull(target_name) ? strdup(target_name->valuestring) : NULL,
        target_type && !cJSON_IsNull(target_type) ? strdup(target_type->valuestring) : NULL,
        target_params && !cJSON_IsNull(target_params) ? strdup(target_params->valuestring) : NULL,
        deliver_estimate ? deliver_estimate->valuedouble : 0,
        deliver_count ? deliver_count->valuedouble : 0,
        deliver_total ? deliver_total->valuedouble : 0,
        deliver_failed ? deliver_failed->valuedouble : 0,
        processing_time ? processing_time->valuedouble : 0,
        sending_time ? sending_time->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        created ? created->valuedouble : 0,
        cron_expression && !cJSON_IsNull(cron_expression) ? strdup(cron_expression->valuestring) : NULL,
        endpoint_url && !cJSON_IsNull(endpoint_url) ? strdup(endpoint_url->valuestring) : NULL,
        payload && !cJSON_IsNull(payload) ? strdup(payload->valuestring) : NULL,
        conditional_input && !cJSON_IsNull(conditional_input) ? strdup(conditional_input->valuestring) : NULL,
        connection_account_ids ? connection_account_idsList : NULL,
        template_type ? template_typeVariable : sirqul_iot_platform_trigger_response_TEMPLATETYPE_NULL,
        grouped_types ? grouped_typesList : NULL,
        trigger_id ? trigger_id->valuedouble : 0
        );

    return trigger_response_local_var;
end:
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (billable_entity_local_nonprim) {
        billable_entity_short_response_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_mini_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (connection_account_idsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, connection_account_idsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(connection_account_idsList);
        connection_account_idsList = NULL;
    }
    if (grouped_typesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, grouped_typesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(grouped_typesList);
        grouped_typesList = NULL;
    }
    return NULL;

}
