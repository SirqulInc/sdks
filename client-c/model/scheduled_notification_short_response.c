#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "scheduled_notification_short_response.h"


char* scheduled_notification_short_response_status_ToString(sirqul_iot_platform_scheduled_notification_short_response_STATUS_e status) {
    char* statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE" };
    return statusArray[status];
}

sirqul_iot_platform_scheduled_notification_short_response_STATUS_e scheduled_notification_short_response_status_FromString(char* status){
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
char* scheduled_notification_short_response_type_ToString(sirqul_iot_platform_scheduled_notification_short_response_TYPE_e type) {
    char* typeArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    return typeArray[type];
}

sirqul_iot_platform_scheduled_notification_short_response_TYPE_e scheduled_notification_short_response_type_FromString(char* type){
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

static scheduled_notification_short_response_t *scheduled_notification_short_response_create_internal(
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
    ) {
    scheduled_notification_short_response_t *scheduled_notification_short_response_local_var = malloc(sizeof(scheduled_notification_short_response_t));
    if (!scheduled_notification_short_response_local_var) {
        return NULL;
    }
    scheduled_notification_short_response_local_var->scheduled_notification_id = scheduled_notification_id;
    scheduled_notification_short_response_local_var->active = active;
    scheduled_notification_short_response_local_var->status = status;
    scheduled_notification_short_response_local_var->type = type;
    scheduled_notification_short_response_local_var->name = name;
    scheduled_notification_short_response_local_var->message = message;
    scheduled_notification_short_response_local_var->grouping_id = grouping_id;
    scheduled_notification_short_response_local_var->scheduled_date = scheduled_date;
    scheduled_notification_short_response_local_var->start_date = start_date;
    scheduled_notification_short_response_local_var->end_date = end_date;

    scheduled_notification_short_response_local_var->_library_owned = 1;
    return scheduled_notification_short_response_local_var;
}

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
    ) {
    return scheduled_notification_short_response_create_internal (
        scheduled_notification_id,
        active,
        status,
        type,
        name,
        message,
        grouping_id,
        scheduled_date,
        start_date,
        end_date
        );
}

void scheduled_notification_short_response_free(scheduled_notification_short_response_t *scheduled_notification_short_response) {
    if(NULL == scheduled_notification_short_response){
        return ;
    }
    if(scheduled_notification_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "scheduled_notification_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (scheduled_notification_short_response->name) {
        free(scheduled_notification_short_response->name);
        scheduled_notification_short_response->name = NULL;
    }
    if (scheduled_notification_short_response->message) {
        free(scheduled_notification_short_response->message);
        scheduled_notification_short_response->message = NULL;
    }
    if (scheduled_notification_short_response->grouping_id) {
        free(scheduled_notification_short_response->grouping_id);
        scheduled_notification_short_response->grouping_id = NULL;
    }
    free(scheduled_notification_short_response);
}

cJSON *scheduled_notification_short_response_convertToJSON(scheduled_notification_short_response_t *scheduled_notification_short_response) {
    cJSON *item = cJSON_CreateObject();

    // scheduled_notification_short_response->scheduled_notification_id
    if(scheduled_notification_short_response->scheduled_notification_id) {
    if(cJSON_AddNumberToObject(item, "scheduledNotificationId", scheduled_notification_short_response->scheduled_notification_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification_short_response->active
    if(scheduled_notification_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", scheduled_notification_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // scheduled_notification_short_response->status
    if(scheduled_notification_short_response->status != sirqul_iot_platform_scheduled_notification_short_response_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", scheduled_notification_short_response_status_ToString(scheduled_notification_short_response->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // scheduled_notification_short_response->type
    if(scheduled_notification_short_response->type != sirqul_iot_platform_scheduled_notification_short_response_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", scheduled_notification_short_response_type_ToString(scheduled_notification_short_response->type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // scheduled_notification_short_response->name
    if(scheduled_notification_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", scheduled_notification_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification_short_response->message
    if(scheduled_notification_short_response->message) {
    if(cJSON_AddStringToObject(item, "message", scheduled_notification_short_response->message) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification_short_response->grouping_id
    if(scheduled_notification_short_response->grouping_id) {
    if(cJSON_AddStringToObject(item, "groupingId", scheduled_notification_short_response->grouping_id) == NULL) {
    goto fail; //String
    }
    }


    // scheduled_notification_short_response->scheduled_date
    if(scheduled_notification_short_response->scheduled_date) {
    if(cJSON_AddNumberToObject(item, "scheduledDate", scheduled_notification_short_response->scheduled_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification_short_response->start_date
    if(scheduled_notification_short_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", scheduled_notification_short_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // scheduled_notification_short_response->end_date
    if(scheduled_notification_short_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", scheduled_notification_short_response->end_date) == NULL) {
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

scheduled_notification_short_response_t *scheduled_notification_short_response_parseFromJSON(cJSON *scheduled_notification_short_responseJSON){

    scheduled_notification_short_response_t *scheduled_notification_short_response_local_var = NULL;

    // scheduled_notification_short_response->scheduled_notification_id
    cJSON *scheduled_notification_id = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "scheduledNotificationId");
    if (cJSON_IsNull(scheduled_notification_id)) {
        scheduled_notification_id = NULL;
    }
    if (scheduled_notification_id) { 
    if(!cJSON_IsNumber(scheduled_notification_id))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // scheduled_notification_short_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_scheduled_notification_short_response_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = scheduled_notification_short_response_status_FromString(status->valuestring);
    }

    // scheduled_notification_short_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    sirqul_iot_platform_scheduled_notification_short_response_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = scheduled_notification_short_response_type_FromString(type->valuestring);
    }

    // scheduled_notification_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // scheduled_notification_short_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // scheduled_notification_short_response->grouping_id
    cJSON *grouping_id = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "groupingId");
    if (cJSON_IsNull(grouping_id)) {
        grouping_id = NULL;
    }
    if (grouping_id) { 
    if(!cJSON_IsString(grouping_id) && !cJSON_IsNull(grouping_id))
    {
    goto end; //String
    }
    }

    // scheduled_notification_short_response->scheduled_date
    cJSON *scheduled_date = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "scheduledDate");
    if (cJSON_IsNull(scheduled_date)) {
        scheduled_date = NULL;
    }
    if (scheduled_date) { 
    if(!cJSON_IsNumber(scheduled_date))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification_short_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // scheduled_notification_short_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(scheduled_notification_short_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }


    scheduled_notification_short_response_local_var = scheduled_notification_short_response_create_internal (
        scheduled_notification_id ? scheduled_notification_id->valuedouble : 0,
        active ? active->valueint : 0,
        status ? statusVariable : sirqul_iot_platform_scheduled_notification_short_response_STATUS_NULL,
        type ? typeVariable : sirqul_iot_platform_scheduled_notification_short_response_TYPE_NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        grouping_id && !cJSON_IsNull(grouping_id) ? strdup(grouping_id->valuestring) : NULL,
        scheduled_date ? scheduled_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0
        );

    return scheduled_notification_short_response_local_var;
end:
    return NULL;

}
