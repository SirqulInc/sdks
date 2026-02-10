#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "assignment_status.h"


char* assignment_status_to_do_ToString(sirqul_iot_platform_assignment_status_TODO_e to_do) {
    char* to_doArray[] =  { "NULL", "SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT" };
    return to_doArray[to_do];
}

sirqul_iot_platform_assignment_status_TODO_e assignment_status_to_do_FromString(char* to_do){
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
char* assignment_status_connection_ToString(sirqul_iot_platform_assignment_status_CONNECTION_e connection) {
    char* connectionArray[] =  { "NULL", "INITIAL", "FOLLOW_UP", "DECLINED" };
    return connectionArray[connection];
}

sirqul_iot_platform_assignment_status_CONNECTION_e assignment_status_connection_FromString(char* connection){
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
char* assignment_status_method_ToString(sirqul_iot_platform_assignment_status_METHOD_e method) {
    char* methodArray[] =  { "NULL", "PHONE", "SITE_VISIT", "EMAIL" };
    return methodArray[method];
}

sirqul_iot_platform_assignment_status_METHOD_e assignment_status_method_FromString(char* method){
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
char* assignment_status_status_ToString(sirqul_iot_platform_assignment_status_STATUS_e status) {
    char* statusArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    return statusArray[status];
}

sirqul_iot_platform_assignment_status_STATUS_e assignment_status_status_FromString(char* status){
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
char* assignment_status_closure_ToString(sirqul_iot_platform_assignment_status_CLOSURE_e closure) {
    char* closureArray[] =  { "NULL", "PHONE", "SITE_VISIT", "PHONE_SITE", "WEB" };
    return closureArray[closure];
}

sirqul_iot_platform_assignment_status_CLOSURE_e assignment_status_closure_FromString(char* closure){
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

static assignment_status_t *assignment_status_create_internal(
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
    ) {
    assignment_status_t *assignment_status_local_var = malloc(sizeof(assignment_status_t));
    if (!assignment_status_local_var) {
        return NULL;
    }
    assignment_status_local_var->id = id;
    assignment_status_local_var->active = active;
    assignment_status_local_var->valid = valid;
    assignment_status_local_var->assignment = assignment;
    assignment_status_local_var->creator = creator;
    assignment_status_local_var->to_do = to_do;
    assignment_status_local_var->connection = connection;
    assignment_status_local_var->method = method;
    assignment_status_local_var->status = status;
    assignment_status_local_var->closure = closure;
    assignment_status_local_var->message = message;
    assignment_status_local_var->follow_up = follow_up;
    assignment_status_local_var->notification = notification;

    assignment_status_local_var->_library_owned = 1;
    return assignment_status_local_var;
}

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
    ) {
    return assignment_status_create_internal (
        id,
        active,
        valid,
        assignment,
        creator,
        to_do,
        connection,
        method,
        status,
        closure,
        message,
        follow_up,
        notification
        );
}

void assignment_status_free(assignment_status_t *assignment_status) {
    if(NULL == assignment_status){
        return ;
    }
    if(assignment_status->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "assignment_status_free");
        return ;
    }
    listEntry_t *listEntry;
    if (assignment_status->assignment) {
        assignment_free(assignment_status->assignment);
        assignment_status->assignment = NULL;
    }
    if (assignment_status->creator) {
        account_free(assignment_status->creator);
        assignment_status->creator = NULL;
    }
    if (assignment_status->message) {
        free(assignment_status->message);
        assignment_status->message = NULL;
    }
    if (assignment_status->follow_up) {
        free(assignment_status->follow_up);
        assignment_status->follow_up = NULL;
    }
    if (assignment_status->notification) {
        scheduled_notification_free(assignment_status->notification);
        assignment_status->notification = NULL;
    }
    free(assignment_status);
}

cJSON *assignment_status_convertToJSON(assignment_status_t *assignment_status) {
    cJSON *item = cJSON_CreateObject();

    // assignment_status->id
    if(assignment_status->id) {
    if(cJSON_AddNumberToObject(item, "id", assignment_status->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_status->active
    if(assignment_status->active) {
    if(cJSON_AddBoolToObject(item, "active", assignment_status->active) == NULL) {
    goto fail; //Bool
    }
    }


    // assignment_status->valid
    if(assignment_status->valid) {
    if(cJSON_AddBoolToObject(item, "valid", assignment_status->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // assignment_status->assignment
    if(assignment_status->assignment) {
    cJSON *assignment_local_JSON = assignment_convertToJSON(assignment_status->assignment);
    if(assignment_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "assignment", assignment_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment_status->creator
    if(assignment_status->creator) {
    cJSON *creator_local_JSON = account_convertToJSON(assignment_status->creator);
    if(creator_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "creator", creator_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment_status->to_do
    if(assignment_status->to_do != sirqul_iot_platform_assignment_status_TODO_NULL) {
    if(cJSON_AddStringToObject(item, "toDo", assignment_status_to_do_ToString(assignment_status->to_do)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status->connection
    if(assignment_status->connection != sirqul_iot_platform_assignment_status_CONNECTION_NULL) {
    if(cJSON_AddStringToObject(item, "connection", assignment_status_connection_ToString(assignment_status->connection)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status->method
    if(assignment_status->method != sirqul_iot_platform_assignment_status_METHOD_NULL) {
    if(cJSON_AddStringToObject(item, "method", assignment_status_method_ToString(assignment_status->method)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status->status
    if(assignment_status->status != sirqul_iot_platform_assignment_status_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", assignment_status_status_ToString(assignment_status->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status->closure
    if(assignment_status->closure != sirqul_iot_platform_assignment_status_CLOSURE_NULL) {
    if(cJSON_AddStringToObject(item, "closure", assignment_status_closure_ToString(assignment_status->closure)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment_status->message
    if(assignment_status->message) {
    if(cJSON_AddStringToObject(item, "message", assignment_status->message) == NULL) {
    goto fail; //String
    }
    }


    // assignment_status->follow_up
    if(assignment_status->follow_up) {
    if(cJSON_AddStringToObject(item, "followUp", assignment_status->follow_up) == NULL) {
    goto fail; //Date-Time
    }
    }


    // assignment_status->notification
    if(assignment_status->notification) {
    cJSON *notification_local_JSON = scheduled_notification_convertToJSON(assignment_status->notification);
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

assignment_status_t *assignment_status_parseFromJSON(cJSON *assignment_statusJSON){

    assignment_status_t *assignment_status_local_var = NULL;

    // define the local variable for assignment_status->assignment
    assignment_t *assignment_local_nonprim = NULL;

    // define the local variable for assignment_status->creator
    account_t *creator_local_nonprim = NULL;

    // define the local variable for assignment_status->notification
    scheduled_notification_t *notification_local_nonprim = NULL;

    // assignment_status->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // assignment_status->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // assignment_status->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // assignment_status->assignment
    cJSON *assignment = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "assignment");
    if (cJSON_IsNull(assignment)) {
        assignment = NULL;
    }
    if (assignment) { 
    assignment_local_nonprim = assignment_parseFromJSON(assignment); //nonprimitive
    }

    // assignment_status->creator
    cJSON *creator = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "creator");
    if (cJSON_IsNull(creator)) {
        creator = NULL;
    }
    if (creator) { 
    creator_local_nonprim = account_parseFromJSON(creator); //nonprimitive
    }

    // assignment_status->to_do
    cJSON *to_do = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "toDo");
    if (cJSON_IsNull(to_do)) {
        to_do = NULL;
    }
    sirqul_iot_platform_assignment_status_TODO_e to_doVariable;
    if (to_do) { 
    if(!cJSON_IsString(to_do))
    {
    goto end; //Enum
    }
    to_doVariable = assignment_status_to_do_FromString(to_do->valuestring);
    }

    // assignment_status->connection
    cJSON *connection = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "connection");
    if (cJSON_IsNull(connection)) {
        connection = NULL;
    }
    sirqul_iot_platform_assignment_status_CONNECTION_e connectionVariable;
    if (connection) { 
    if(!cJSON_IsString(connection))
    {
    goto end; //Enum
    }
    connectionVariable = assignment_status_connection_FromString(connection->valuestring);
    }

    // assignment_status->method
    cJSON *method = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "method");
    if (cJSON_IsNull(method)) {
        method = NULL;
    }
    sirqul_iot_platform_assignment_status_METHOD_e methodVariable;
    if (method) { 
    if(!cJSON_IsString(method))
    {
    goto end; //Enum
    }
    methodVariable = assignment_status_method_FromString(method->valuestring);
    }

    // assignment_status->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_assignment_status_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = assignment_status_status_FromString(status->valuestring);
    }

    // assignment_status->closure
    cJSON *closure = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "closure");
    if (cJSON_IsNull(closure)) {
        closure = NULL;
    }
    sirqul_iot_platform_assignment_status_CLOSURE_e closureVariable;
    if (closure) { 
    if(!cJSON_IsString(closure))
    {
    goto end; //Enum
    }
    closureVariable = assignment_status_closure_FromString(closure->valuestring);
    }

    // assignment_status->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // assignment_status->follow_up
    cJSON *follow_up = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "followUp");
    if (cJSON_IsNull(follow_up)) {
        follow_up = NULL;
    }
    if (follow_up) { 
    if(!cJSON_IsString(follow_up) && !cJSON_IsNull(follow_up))
    {
    goto end; //DateTime
    }
    }

    // assignment_status->notification
    cJSON *notification = cJSON_GetObjectItemCaseSensitive(assignment_statusJSON, "notification");
    if (cJSON_IsNull(notification)) {
        notification = NULL;
    }
    if (notification) { 
    notification_local_nonprim = scheduled_notification_parseFromJSON(notification); //nonprimitive
    }


    assignment_status_local_var = assignment_status_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        assignment ? assignment_local_nonprim : NULL,
        creator ? creator_local_nonprim : NULL,
        to_do ? to_doVariable : sirqul_iot_platform_assignment_status_TODO_NULL,
        connection ? connectionVariable : sirqul_iot_platform_assignment_status_CONNECTION_NULL,
        method ? methodVariable : sirqul_iot_platform_assignment_status_METHOD_NULL,
        status ? statusVariable : sirqul_iot_platform_assignment_status_STATUS_NULL,
        closure ? closureVariable : sirqul_iot_platform_assignment_status_CLOSURE_NULL,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        follow_up && !cJSON_IsNull(follow_up) ? strdup(follow_up->valuestring) : NULL,
        notification ? notification_local_nonprim : NULL
        );

    return assignment_status_local_var;
end:
    if (assignment_local_nonprim) {
        assignment_free(assignment_local_nonprim);
        assignment_local_nonprim = NULL;
    }
    if (creator_local_nonprim) {
        account_free(creator_local_nonprim);
        creator_local_nonprim = NULL;
    }
    if (notification_local_nonprim) {
        scheduled_notification_free(notification_local_nonprim);
        notification_local_nonprim = NULL;
    }
    return NULL;

}
