#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "assignment_status_response.h"


char* assignment_status_response_to_do_ToString(sirqul_iot_platform_assignment_status_response_TODO_e to_do) {
    char* to_doArray[] =  { "NULL", "SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT" };
    return to_doArray[to_do];
}

sirqul_iot_platform_assignment_status_response_TODO_e assignment_status_response_to_do_FromString(char* to_do){
    int stringToReturn = 0;
    char *to_doArray[] =  { "NULL", "SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT" };
    size_t sizeofArray = sizeof(to_doArray) / sizeof(to_doArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(to_do, to_doArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* assignment_status_response_connection_ToString(sirqul_iot_platform_assignment_status_response_CONNECTION_e connection) {
    char* connectionArray[] =  { "NULL", "INITIAL", "FOLLOW_UP", "DECLINED" };
    return connectionArray[connection];
}

sirqul_iot_platform_assignment_status_response_CONNECTION_e assignment_status_response_connection_FromString(char* connection){
    int stringToReturn = 0;
    char *connectionArray[] =  { "NULL", "INITIAL", "FOLLOW_UP", "DECLINED" };
    size_t sizeofArray = sizeof(connectionArray) / sizeof(connectionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(connection, connectionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* assignment_status_response_method_ToString(sirqul_iot_platform_assignment_status_response_METHOD_e method) {
    char* methodArray[] =  { "NULL", "PHONE", "SITE_VISIT", "EMAIL" };
    return methodArray[method];
}

sirqul_iot_platform_assignment_status_response_METHOD_e assignment_status_response_method_FromString(char* method){
    int stringToReturn = 0;
    char *methodArray[] =  { "NULL", "PHONE", "SITE_VISIT", "EMAIL" };
    size_t sizeofArray = sizeof(methodArray) / sizeof(methodArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(method, methodArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* assignment_status_response_status_ToString(sirqul_iot_platform_assignment_status_response_STATUS_e status) {
    char* statusArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    return statusArray[status];
}

sirqul_iot_platform_assignment_status_response_STATUS_e assignment_status_response_status_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* assignment_status_response_closure_ToString(sirqul_iot_platform_assignment_status_response_CLOSURE_e closure) {
    char* closureArray[] =  { "NULL", "PHONE", "SITE_VISIT", "PHONE_SITE", "WEB" };
    return closureArray[closure];
}

sirqul_iot_platform_assignment_status_response_CLOSURE_e assignment_status_response_closure_FromString(char* closure){
    int stringToReturn = 0;
    char *closureArray[] =  { "NULL", "PHONE", "SITE_VISIT", "PHONE_SITE", "WEB" };
    size_t sizeofArray = sizeof(closureArray) / sizeof(closureArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(closure, closureArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static assignment_status_response_t *assignment_status_response_create_internal(
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
    ) {
    assignment_status_response_t *assignment_status_response_local_var = malloc(sizeof(assignment_status_response_t));
    if (!assignment_status_response_local_var) {
        return NULL;
    }
    assignment_status_response_local_var->assignment_status_id = assignment_status_id;
    assignment_status_response_local_var->active = active;
    assignment_status_response_local_var->to_do = to_do;
    assignment_status_response_local_var->connection = connection;
    assignment_status_response_local_var->method = method;
    assignment_status_response_local_var->status = status;
    assignment_status_response_local_var->closure = closure;
    assignment_status_response_local_var->message = message;
    assignment_status_response_local_var->follow_up = follow_up;
    assignment_status_response_local_var->created = created;
    assignment_status_response_local_var->updated = updated;
    assignment_status_response_local_var->notification = notification;

    assignment_status_response_local_var->_library_owned = 1;
    return assignment_status_response_local_var;
}

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
    ) {
    return assignment_status_response_create_internal (
        assignment_status_id,
        active,
        to_do,
        connection,
        method,
        status,
        closure,
        message,
        follow_up,
        created,
        updated,
        notification
        );
}

void assignment_status_response_free(assignment_status_response_t *assignment_status_response) {
    if(NULL == assignment_status_response){
        return ;
    }
    if(assignment_status_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "assignment_status_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (assignment_status_response->message) {
        free(assignment_status_response->message);
        assignment_status_response->message = NULL;
    }
    if (assignment_status_response->notification) {
        scheduled_notification_short_response_free(assignment_status_response->notification);
        assignment_status_response->notification = NULL;
    }
    free(assignment_status_response);
}

cJSON *assignment_status_response_convertToJSON(assignment_status_response_t *assignment_status_response) {
    cJSON *item = cJSON_CreateObject();

    // assignment_status_response->assignment_status_id
    if(assignment_status_response->assignment_status_id) {
    if(cJSON_AddNumberToObject(item, "assignmentStatusId", assignment_status_response->assignment_status_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_status_response->active
    if(assignment_status_response->active) {
    if(cJSON_AddBoolToObject(item, "active", assignment_status_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // assignment_status_response->to_do
    if(assignment_status_response->to_do != sirqul_iot_platform_assignment_status_response_TODO_NULL) {
    if(cJSON_AddStringToObject(item, "toDo", assignment_status_response_to_do_ToString(assignment_status_response->to_do)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status_response->connection
    if(assignment_status_response->connection != sirqul_iot_platform_assignment_status_response_CONNECTION_NULL) {
    if(cJSON_AddStringToObject(item, "connection", assignment_status_response_connection_ToString(assignment_status_response->connection)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status_response->method
    if(assignment_status_response->method != sirqul_iot_platform_assignment_status_response_METHOD_NULL) {
    if(cJSON_AddStringToObject(item, "method", assignment_status_response_method_ToString(assignment_status_response->method)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status_response->status
    if(assignment_status_response->status != sirqul_iot_platform_assignment_status_response_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", assignment_status_response_status_ToString(assignment_status_response->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status_response->closure
    if(assignment_status_response->closure != sirqul_iot_platform_assignment_status_response_CLOSURE_NULL) {
    if(cJSON_AddStringToObject(item, "closure", assignment_status_response_closure_ToString(assignment_status_response->closure)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status_response->message
    if(assignment_status_response->message) {
    if(cJSON_AddStringToObject(item, "message", assignment_status_response->message) == NULL) {
    goto fail; //String
    }
    }


    // assignment_status_response->follow_up
    if(assignment_status_response->follow_up) {
    if(cJSON_AddNumberToObject(item, "followUp", assignment_status_response->follow_up) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_status_response->created
    if(assignment_status_response->created) {
    if(cJSON_AddNumberToObject(item, "created", assignment_status_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_status_response->updated
    if(assignment_status_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", assignment_status_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_status_response->notification
    if(assignment_status_response->notification) {
    cJSON *notification_local_JSON = scheduled_notification_short_response_convertToJSON(assignment_status_response->notification);
    if(notification_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "notification", notification_local_JSON);
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

assignment_status_response_t *assignment_status_response_parseFromJSON(cJSON *assignment_status_responseJSON){

    assignment_status_response_t *assignment_status_response_local_var = NULL;

    // define the local variable for assignment_status_response->notification
    scheduled_notification_short_response_t *notification_local_nonprim = NULL;

    // assignment_status_response->assignment_status_id
    cJSON *assignment_status_id = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "assignmentStatusId");
    if (cJSON_IsNull(assignment_status_id)) {
        assignment_status_id = NULL;
    }
    if (assignment_status_id) { 
    if(!cJSON_IsNumber(assignment_status_id))
    {
    goto end; //Numeric
    }
    }

    // assignment_status_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // assignment_status_response->to_do
    cJSON *to_do = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "toDo");
    if (cJSON_IsNull(to_do)) {
        to_do = NULL;
    }
    sirqul_iot_platform_assignment_status_response_TODO_e to_doVariable;
    if (to_do) { 
    if(!cJSON_IsString(to_do))
    {
    goto end; //Enum
    }
    to_doVariable = assignment_status_response_to_do_FromString(to_do->valuestring);
    }

    // assignment_status_response->connection
    cJSON *connection = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "connection");
    if (cJSON_IsNull(connection)) {
        connection = NULL;
    }
    sirqul_iot_platform_assignment_status_response_CONNECTION_e connectionVariable;
    if (connection) { 
    if(!cJSON_IsString(connection))
    {
    goto end; //Enum
    }
    connectionVariable = assignment_status_response_connection_FromString(connection->valuestring);
    }

    // assignment_status_response->method
    cJSON *method = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "method");
    if (cJSON_IsNull(method)) {
        method = NULL;
    }
    sirqul_iot_platform_assignment_status_response_METHOD_e methodVariable;
    if (method) { 
    if(!cJSON_IsString(method))
    {
    goto end; //Enum
    }
    methodVariable = assignment_status_response_method_FromString(method->valuestring);
    }

    // assignment_status_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_assignment_status_response_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = assignment_status_response_status_FromString(status->valuestring);
    }

    // assignment_status_response->closure
    cJSON *closure = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "closure");
    if (cJSON_IsNull(closure)) {
        closure = NULL;
    }
    sirqul_iot_platform_assignment_status_response_CLOSURE_e closureVariable;
    if (closure) { 
    if(!cJSON_IsString(closure))
    {
    goto end; //Enum
    }
    closureVariable = assignment_status_response_closure_FromString(closure->valuestring);
    }

    // assignment_status_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // assignment_status_response->follow_up
    cJSON *follow_up = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "followUp");
    if (cJSON_IsNull(follow_up)) {
        follow_up = NULL;
    }
    if (follow_up) { 
    if(!cJSON_IsNumber(follow_up))
    {
    goto end; //Numeric
    }
    }

    // assignment_status_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // assignment_status_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // assignment_status_response->notification
    cJSON *notification = cJSON_GetObjectItemCaseSensitive(assignment_status_responseJSON, "notification");
    if (cJSON_IsNull(notification)) {
        notification = NULL;
    }
    if (notification) { 
    notification_local_nonprim = scheduled_notification_short_response_parseFromJSON(notification); //nonprimitive
    }


    assignment_status_response_local_var = assignment_status_response_create_internal (
        assignment_status_id ? assignment_status_id->valuedouble : 0,
        active ? active->valueint : 0,
        to_do ? to_doVariable : sirqul_iot_platform_assignment_status_response_TODO_NULL,
        connection ? connectionVariable : sirqul_iot_platform_assignment_status_response_CONNECTION_NULL,
        method ? methodVariable : sirqul_iot_platform_assignment_status_response_METHOD_NULL,
        status ? statusVariable : sirqul_iot_platform_assignment_status_response_STATUS_NULL,
        closure ? closureVariable : sirqul_iot_platform_assignment_status_response_CLOSURE_NULL,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        follow_up ? follow_up->valuedouble : 0,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        notification ? notification_local_nonprim : NULL
        );

    return assignment_status_response_local_var;
end:
    if (notification_local_nonprim) {
        scheduled_notification_short_response_free(notification_local_nonprim);
        notification_local_nonprim = NULL;
    }
    return NULL;

}
