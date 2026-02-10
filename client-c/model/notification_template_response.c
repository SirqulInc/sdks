#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "notification_template_response.h"


char* notification_template_response_conduit_ToString(sirqul_iot_platform_notification_template_response_CONDUIT_e conduit) {
    char* conduitArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    return conduitArray[conduit];
}

sirqul_iot_platform_notification_template_response_CONDUIT_e notification_template_response_conduit_FromString(char* conduit){
    int stringToReturn = 0;
    char *conduitArray[] =  { "NULL", "HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION" };
    size_t sizeofArray = sizeof(conduitArray) / sizeof(conduitArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(conduit, conduitArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static notification_template_response_t *notification_template_response_create_internal(
    long notification_template_id,
    char *event,
    sirqul_iot_platform_notification_template_response_CONDUIT_e conduit,
    char *title,
    char *body,
    char *public_body,
    application_mini_response_t *application,
    long updated,
    long created,
    char *tags
    ) {
    notification_template_response_t *notification_template_response_local_var = malloc(sizeof(notification_template_response_t));
    if (!notification_template_response_local_var) {
        return NULL;
    }
    notification_template_response_local_var->notification_template_id = notification_template_id;
    notification_template_response_local_var->event = event;
    notification_template_response_local_var->conduit = conduit;
    notification_template_response_local_var->title = title;
    notification_template_response_local_var->body = body;
    notification_template_response_local_var->public_body = public_body;
    notification_template_response_local_var->application = application;
    notification_template_response_local_var->updated = updated;
    notification_template_response_local_var->created = created;
    notification_template_response_local_var->tags = tags;

    notification_template_response_local_var->_library_owned = 1;
    return notification_template_response_local_var;
}

__attribute__((deprecated)) notification_template_response_t *notification_template_response_create(
    long notification_template_id,
    char *event,
    sirqul_iot_platform_notification_template_response_CONDUIT_e conduit,
    char *title,
    char *body,
    char *public_body,
    application_mini_response_t *application,
    long updated,
    long created,
    char *tags
    ) {
    return notification_template_response_create_internal (
        notification_template_id,
        event,
        conduit,
        title,
        body,
        public_body,
        application,
        updated,
        created,
        tags
        );
}

void notification_template_response_free(notification_template_response_t *notification_template_response) {
    if(NULL == notification_template_response){
        return ;
    }
    if(notification_template_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "notification_template_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (notification_template_response->event) {
        free(notification_template_response->event);
        notification_template_response->event = NULL;
    }
    if (notification_template_response->title) {
        free(notification_template_response->title);
        notification_template_response->title = NULL;
    }
    if (notification_template_response->body) {
        free(notification_template_response->body);
        notification_template_response->body = NULL;
    }
    if (notification_template_response->public_body) {
        free(notification_template_response->public_body);
        notification_template_response->public_body = NULL;
    }
    if (notification_template_response->application) {
        application_mini_response_free(notification_template_response->application);
        notification_template_response->application = NULL;
    }
    if (notification_template_response->tags) {
        free(notification_template_response->tags);
        notification_template_response->tags = NULL;
    }
    free(notification_template_response);
}

cJSON *notification_template_response_convertToJSON(notification_template_response_t *notification_template_response) {
    cJSON *item = cJSON_CreateObject();

    // notification_template_response->notification_template_id
    if(notification_template_response->notification_template_id) {
    if(cJSON_AddNumberToObject(item, "notificationTemplateId", notification_template_response->notification_template_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_template_response->event
    if(notification_template_response->event) {
    if(cJSON_AddStringToObject(item, "event", notification_template_response->event) == NULL) {
    goto fail; //String
    }
    }


    // notification_template_response->conduit
    if(notification_template_response->conduit != sirqul_iot_platform_notification_template_response_CONDUIT_NULL) {
    if(cJSON_AddStringToObject(item, "conduit", notification_template_response_conduit_ToString(notification_template_response->conduit)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // notification_template_response->title
    if(notification_template_response->title) {
    if(cJSON_AddStringToObject(item, "title", notification_template_response->title) == NULL) {
    goto fail; //String
    }
    }


    // notification_template_response->body
    if(notification_template_response->body) {
    if(cJSON_AddStringToObject(item, "body", notification_template_response->body) == NULL) {
    goto fail; //String
    }
    }


    // notification_template_response->public_body
    if(notification_template_response->public_body) {
    if(cJSON_AddStringToObject(item, "publicBody", notification_template_response->public_body) == NULL) {
    goto fail; //String
    }
    }


    // notification_template_response->application
    if(notification_template_response->application) {
    cJSON *application_local_JSON = application_mini_response_convertToJSON(notification_template_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // notification_template_response->updated
    if(notification_template_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", notification_template_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_template_response->created
    if(notification_template_response->created) {
    if(cJSON_AddNumberToObject(item, "created", notification_template_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_template_response->tags
    if(notification_template_response->tags) {
    if(cJSON_AddStringToObject(item, "tags", notification_template_response->tags) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

notification_template_response_t *notification_template_response_parseFromJSON(cJSON *notification_template_responseJSON){

    notification_template_response_t *notification_template_response_local_var = NULL;

    // define the local variable for notification_template_response->application
    application_mini_response_t *application_local_nonprim = NULL;

    // notification_template_response->notification_template_id
    cJSON *notification_template_id = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "notificationTemplateId");
    if (cJSON_IsNull(notification_template_id)) {
        notification_template_id = NULL;
    }
    if (notification_template_id) { 
    if(!cJSON_IsNumber(notification_template_id))
    {
    goto end; //Numeric
    }
    }

    // notification_template_response->event
    cJSON *event = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "event");
    if (cJSON_IsNull(event)) {
        event = NULL;
    }
    if (event) { 
    if(!cJSON_IsString(event) && !cJSON_IsNull(event))
    {
    goto end; //String
    }
    }

    // notification_template_response->conduit
    cJSON *conduit = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "conduit");
    if (cJSON_IsNull(conduit)) {
        conduit = NULL;
    }
    sirqul_iot_platform_notification_template_response_CONDUIT_e conduitVariable;
    if (conduit) { 
    if(!cJSON_IsString(conduit))
    {
    goto end; //Enum
    }
    conduitVariable = notification_template_response_conduit_FromString(conduit->valuestring);
    }

    // notification_template_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // notification_template_response->body
    cJSON *body = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "body");
    if (cJSON_IsNull(body)) {
        body = NULL;
    }
    if (body) { 
    if(!cJSON_IsString(body) && !cJSON_IsNull(body))
    {
    goto end; //String
    }
    }

    // notification_template_response->public_body
    cJSON *public_body = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "publicBody");
    if (cJSON_IsNull(public_body)) {
        public_body = NULL;
    }
    if (public_body) { 
    if(!cJSON_IsString(public_body) && !cJSON_IsNull(public_body))
    {
    goto end; //String
    }
    }

    // notification_template_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_mini_response_parseFromJSON(application); //nonprimitive
    }

    // notification_template_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // notification_template_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // notification_template_response->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(notification_template_responseJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }


    notification_template_response_local_var = notification_template_response_create_internal (
        notification_template_id ? notification_template_id->valuedouble : 0,
        event && !cJSON_IsNull(event) ? strdup(event->valuestring) : NULL,
        conduit ? conduitVariable : sirqul_iot_platform_notification_template_response_CONDUIT_NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        body && !cJSON_IsNull(body) ? strdup(body->valuestring) : NULL,
        public_body && !cJSON_IsNull(public_body) ? strdup(public_body->valuestring) : NULL,
        application ? application_local_nonprim : NULL,
        updated ? updated->valuedouble : 0,
        created ? created->valuedouble : 0,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL
        );

    return notification_template_response_local_var;
end:
    if (application_local_nonprim) {
        application_mini_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    return NULL;

}
