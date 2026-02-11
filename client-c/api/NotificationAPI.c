#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "NotificationAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum PUSHTYPE for NotificationAPI_registerNotificationToken

static char* registerNotificationToken_PUSHTYPE_ToString(sirqul_iot_platform_registerNotificationToken_pushType_e PUSHTYPE){
    char *PUSHTYPEArray[] =  { "NULL", "APNS", "GCM", "BAIDU", "XGPUSH", "JPUSH" };
    return PUSHTYPEArray[PUSHTYPE];
}

static sirqul_iot_platform_registerNotificationToken_pushType_e registerNotificationToken_PUSHTYPE_FromString(char* PUSHTYPE){
    int stringToReturn = 0;
    char *PUSHTYPEArray[] =  { "NULL", "APNS", "GCM", "BAIDU", "XGPUSH", "JPUSH" };
    size_t sizeofArray = sizeof(PUSHTYPEArray) / sizeof(PUSHTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PUSHTYPE, PUSHTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function registerNotificationToken_PUSHTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *registerNotificationToken_PUSHTYPE_convertToJSON(sirqul_iot_platform_registerNotificationToken_pushType_e PUSHTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "pushType", registerNotificationToken_PUSHTYPE_ToString(PUSHTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function registerNotificationToken_PUSHTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_registerNotificationToken_pushType_e registerNotificationToken_PUSHTYPE_parseFromJSON(cJSON* PUSHTYPEJSON) {
    sirqul_iot_platform_registerNotificationToken_pushType_e PUSHTYPEVariable = 0;
    cJSON *PUSHTYPEVar = cJSON_GetObjectItemCaseSensitive(PUSHTYPEJSON, "pushType");
    if(!cJSON_IsString(PUSHTYPEVar) || (PUSHTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PUSHTYPEVariable = registerNotificationToken_PUSHTYPE_FromString(PUSHTYPEVar->valuestring);
    return PUSHTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for NotificationAPI_searchRecipients

static char* searchRecipients_SORTFIELD_ToString(sirqul_iot_platform_searchRecipients_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "HAS_SMS", "HAS_EMAIL", "HAS_APNS", "HAS_GCM", "APPLICATION_ID", "APPLICATION_NAME", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_TYPE" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchRecipients_sortField_e searchRecipients_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "HAS_SMS", "HAS_EMAIL", "HAS_APNS", "HAS_GCM", "APPLICATION_ID", "APPLICATION_NAME", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_TYPE" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchRecipients_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRecipients_SORTFIELD_convertToJSON(sirqul_iot_platform_searchRecipients_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchRecipients_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRecipients_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRecipients_sortField_e searchRecipients_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchRecipients_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchRecipients_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Create Notification Template
//
// Create a notification template. Developers will only be able to create notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_createNotificationTemplate(apiClient_t *apiClient, long accountId, char *conduit, char *title, char *body, char *appKey, char *event, char *tags)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/template/create");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_event = NULL;
    char * valueQuery_event = NULL;
    keyValuePair_t *keyPairQuery_event = 0;
    if (event)
    {
        keyQuery_event = strdup("event");
        valueQuery_event = strdup((event));
        keyPairQuery_event = keyValuePair_create(keyQuery_event, valueQuery_event);
        list_addElement(localVarQueryParameters,keyPairQuery_event);
    }

    // query parameters
    char *keyQuery_conduit = NULL;
    char * valueQuery_conduit = NULL;
    keyValuePair_t *keyPairQuery_conduit = 0;
    if (conduit)
    {
        keyQuery_conduit = strdup("conduit");
        valueQuery_conduit = strdup((conduit));
        keyPairQuery_conduit = keyValuePair_create(keyQuery_conduit, valueQuery_conduit);
        list_addElement(localVarQueryParameters,keyPairQuery_conduit);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_body = NULL;
    char * valueQuery_body = NULL;
    keyValuePair_t *keyPairQuery_body = 0;
    if (body)
    {
        keyQuery_body = strdup("body");
        valueQuery_body = strdup((body));
        keyPairQuery_body = keyValuePair_create(keyQuery_body, valueQuery_body);
        list_addElement(localVarQueryParameters,keyPairQuery_body);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    notification_template_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = notification_template_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_event){
        free(keyQuery_event);
        keyQuery_event = NULL;
    }
    if(valueQuery_event){
        free(valueQuery_event);
        valueQuery_event = NULL;
    }
    if(keyPairQuery_event){
        keyValuePair_free(keyPairQuery_event);
        keyPairQuery_event = NULL;
    }
    if(keyQuery_conduit){
        free(keyQuery_conduit);
        keyQuery_conduit = NULL;
    }
    if(valueQuery_conduit){
        free(valueQuery_conduit);
        valueQuery_conduit = NULL;
    }
    if(keyPairQuery_conduit){
        keyValuePair_free(keyPairQuery_conduit);
        keyPairQuery_conduit = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_body){
        free(keyQuery_body);
        keyQuery_body = NULL;
    }
    if(valueQuery_body){
        free(valueQuery_body);
        valueQuery_body = NULL;
    }
    if(keyPairQuery_body){
        keyValuePair_free(keyPairQuery_body);
        keyPairQuery_body = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create or update blocked notification settings
//
// Create or update blocked notification settings
//
blocked_notification_response_t*
NotificationAPI_createOrUpdateBlockedNotifications(apiClient_t *apiClient, char *appKey, char *data, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/blocked/batch");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_data = NULL;
    char * valueQuery_data = NULL;
    keyValuePair_t *keyPairQuery_data = 0;
    if (data)
    {
        keyQuery_data = strdup("data");
        valueQuery_data = strdup((data));
        keyPairQuery_data = keyValuePair_create(keyQuery_data, valueQuery_data);
        list_addElement(localVarQueryParameters,keyPairQuery_data);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    blocked_notification_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = blocked_notification_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_data){
        free(keyQuery_data);
        keyQuery_data = NULL;
    }
    if(valueQuery_data){
        free(valueQuery_data);
        valueQuery_data = NULL;
    }
    if(keyPairQuery_data){
        keyValuePair_free(keyPairQuery_data);
        keyPairQuery_data = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Notification Template
//
// Deletes a notification template. Developers will only be able to delete notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_deleteNotificationTemplate(apiClient_t *apiClient, long accountId, long notificationTemplateId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/template/delete");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_notificationTemplateId = NULL;
    char * valueQuery_notificationTemplateId ;
    keyValuePair_t *keyPairQuery_notificationTemplateId = 0;
    {
        keyQuery_notificationTemplateId = strdup("notificationTemplateId");
        valueQuery_notificationTemplateId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_notificationTemplateId, MAX_NUMBER_LENGTH_LONG, "%d", notificationTemplateId);
        keyPairQuery_notificationTemplateId = keyValuePair_create(keyQuery_notificationTemplateId, valueQuery_notificationTemplateId);
        list_addElement(localVarQueryParameters,keyPairQuery_notificationTemplateId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    notification_template_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = notification_template_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_notificationTemplateId){
        free(keyQuery_notificationTemplateId);
        keyQuery_notificationTemplateId = NULL;
    }
    if(keyPairQuery_notificationTemplateId){
        keyValuePair_free(keyPairQuery_notificationTemplateId);
        keyPairQuery_notificationTemplateId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Notification Template
//
// Get the details of a notification template. Developers will only be able to see notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_getNotificationTemplate(apiClient_t *apiClient, long accountId, long notificationTemplateId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/template/get");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_notificationTemplateId = NULL;
    char * valueQuery_notificationTemplateId ;
    keyValuePair_t *keyPairQuery_notificationTemplateId = 0;
    {
        keyQuery_notificationTemplateId = strdup("notificationTemplateId");
        valueQuery_notificationTemplateId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_notificationTemplateId, MAX_NUMBER_LENGTH_LONG, "%d", notificationTemplateId);
        keyPairQuery_notificationTemplateId = keyValuePair_create(keyQuery_notificationTemplateId, valueQuery_notificationTemplateId);
        list_addElement(localVarQueryParameters,keyPairQuery_notificationTemplateId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    notification_template_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = notification_template_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_notificationTemplateId){
        free(keyQuery_notificationTemplateId);
        keyQuery_notificationTemplateId = NULL;
    }
    if(keyPairQuery_notificationTemplateId){
        keyValuePair_free(keyPairQuery_notificationTemplateId);
        keyPairQuery_notificationTemplateId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Notifications
//
// Get a list of notifications for a user. If the \"markAsRead\" parameter is set to true, the returned notifications will be marked as \"read\" after the response has been sent. By default, read messages will not be returned, so to see read messages, set \"returnReadMessages\" to true.
//
notification_message_list_response_t*
NotificationAPI_getNotifications(apiClient_t *apiClient, char *deviceId, long accountId, long connectionAccountId, char *appKey, char *eventType, char *contentIds, char *contentTypes, char *parentIds, char *parentTypes, char *actionCategory, char *conduits, char *keyword, int *returnReadMessages, int *markAsRead, long fromDate, double latitude, double longitude, int *returnSent, int *ignoreFlagged, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/search");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_eventType = NULL;
    char * valueQuery_eventType = NULL;
    keyValuePair_t *keyPairQuery_eventType = 0;
    if (eventType)
    {
        keyQuery_eventType = strdup("eventType");
        valueQuery_eventType = strdup((eventType));
        keyPairQuery_eventType = keyValuePair_create(keyQuery_eventType, valueQuery_eventType);
        list_addElement(localVarQueryParameters,keyPairQuery_eventType);
    }

    // query parameters
    char *keyQuery_contentIds = NULL;
    char * valueQuery_contentIds = NULL;
    keyValuePair_t *keyPairQuery_contentIds = 0;
    if (contentIds)
    {
        keyQuery_contentIds = strdup("contentIds");
        valueQuery_contentIds = strdup((contentIds));
        keyPairQuery_contentIds = keyValuePair_create(keyQuery_contentIds, valueQuery_contentIds);
        list_addElement(localVarQueryParameters,keyPairQuery_contentIds);
    }

    // query parameters
    char *keyQuery_contentTypes = NULL;
    char * valueQuery_contentTypes = NULL;
    keyValuePair_t *keyPairQuery_contentTypes = 0;
    if (contentTypes)
    {
        keyQuery_contentTypes = strdup("contentTypes");
        valueQuery_contentTypes = strdup((contentTypes));
        keyPairQuery_contentTypes = keyValuePair_create(keyQuery_contentTypes, valueQuery_contentTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_contentTypes);
    }

    // query parameters
    char *keyQuery_parentIds = NULL;
    char * valueQuery_parentIds = NULL;
    keyValuePair_t *keyPairQuery_parentIds = 0;
    if (parentIds)
    {
        keyQuery_parentIds = strdup("parentIds");
        valueQuery_parentIds = strdup((parentIds));
        keyPairQuery_parentIds = keyValuePair_create(keyQuery_parentIds, valueQuery_parentIds);
        list_addElement(localVarQueryParameters,keyPairQuery_parentIds);
    }

    // query parameters
    char *keyQuery_parentTypes = NULL;
    char * valueQuery_parentTypes = NULL;
    keyValuePair_t *keyPairQuery_parentTypes = 0;
    if (parentTypes)
    {
        keyQuery_parentTypes = strdup("parentTypes");
        valueQuery_parentTypes = strdup((parentTypes));
        keyPairQuery_parentTypes = keyValuePair_create(keyQuery_parentTypes, valueQuery_parentTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_parentTypes);
    }

    // query parameters
    char *keyQuery_actionCategory = NULL;
    char * valueQuery_actionCategory = NULL;
    keyValuePair_t *keyPairQuery_actionCategory = 0;
    if (actionCategory)
    {
        keyQuery_actionCategory = strdup("actionCategory");
        valueQuery_actionCategory = strdup((actionCategory));
        keyPairQuery_actionCategory = keyValuePair_create(keyQuery_actionCategory, valueQuery_actionCategory);
        list_addElement(localVarQueryParameters,keyPairQuery_actionCategory);
    }

    // query parameters
    char *keyQuery_conduits = NULL;
    char * valueQuery_conduits = NULL;
    keyValuePair_t *keyPairQuery_conduits = 0;
    if (conduits)
    {
        keyQuery_conduits = strdup("conduits");
        valueQuery_conduits = strdup((conduits));
        keyPairQuery_conduits = keyValuePair_create(keyQuery_conduits, valueQuery_conduits);
        list_addElement(localVarQueryParameters,keyPairQuery_conduits);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_returnReadMessages = NULL;
    char * valueQuery_returnReadMessages = NULL;
    keyValuePair_t *keyPairQuery_returnReadMessages = 0;
    if (returnReadMessages)
    {
        keyQuery_returnReadMessages = strdup("returnReadMessages");
        valueQuery_returnReadMessages = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnReadMessages, MAX_NUMBER_LENGTH, "%d", *returnReadMessages);
        keyPairQuery_returnReadMessages = keyValuePair_create(keyQuery_returnReadMessages, valueQuery_returnReadMessages);
        list_addElement(localVarQueryParameters,keyPairQuery_returnReadMessages);
    }

    // query parameters
    char *keyQuery_markAsRead = NULL;
    char * valueQuery_markAsRead = NULL;
    keyValuePair_t *keyPairQuery_markAsRead = 0;
    if (markAsRead)
    {
        keyQuery_markAsRead = strdup("markAsRead");
        valueQuery_markAsRead = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_markAsRead, MAX_NUMBER_LENGTH, "%d", *markAsRead);
        keyPairQuery_markAsRead = keyValuePair_create(keyQuery_markAsRead, valueQuery_markAsRead);
        list_addElement(localVarQueryParameters,keyPairQuery_markAsRead);
    }

    // query parameters
    char *keyQuery_fromDate = NULL;
    char * valueQuery_fromDate ;
    keyValuePair_t *keyPairQuery_fromDate = 0;
    {
        keyQuery_fromDate = strdup("fromDate");
        valueQuery_fromDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_fromDate, MAX_NUMBER_LENGTH_LONG, "%d", fromDate);
        keyPairQuery_fromDate = keyValuePair_create(keyQuery_fromDate, valueQuery_fromDate);
        list_addElement(localVarQueryParameters,keyPairQuery_fromDate);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }

    // query parameters
    char *keyQuery_returnSent = NULL;
    char * valueQuery_returnSent = NULL;
    keyValuePair_t *keyPairQuery_returnSent = 0;
    if (returnSent)
    {
        keyQuery_returnSent = strdup("returnSent");
        valueQuery_returnSent = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnSent, MAX_NUMBER_LENGTH, "%d", *returnSent);
        keyPairQuery_returnSent = keyValuePair_create(keyQuery_returnSent, valueQuery_returnSent);
        list_addElement(localVarQueryParameters,keyPairQuery_returnSent);
    }

    // query parameters
    char *keyQuery_ignoreFlagged = NULL;
    char * valueQuery_ignoreFlagged = NULL;
    keyValuePair_t *keyPairQuery_ignoreFlagged = 0;
    if (ignoreFlagged)
    {
        keyQuery_ignoreFlagged = strdup("ignoreFlagged");
        valueQuery_ignoreFlagged = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ignoreFlagged, MAX_NUMBER_LENGTH, "%d", *ignoreFlagged);
        keyPairQuery_ignoreFlagged = keyValuePair_create(keyQuery_ignoreFlagged, valueQuery_ignoreFlagged);
        list_addElement(localVarQueryParameters,keyPairQuery_ignoreFlagged);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    notification_message_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = notification_message_list_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_eventType){
        free(keyQuery_eventType);
        keyQuery_eventType = NULL;
    }
    if(valueQuery_eventType){
        free(valueQuery_eventType);
        valueQuery_eventType = NULL;
    }
    if(keyPairQuery_eventType){
        keyValuePair_free(keyPairQuery_eventType);
        keyPairQuery_eventType = NULL;
    }
    if(keyQuery_contentIds){
        free(keyQuery_contentIds);
        keyQuery_contentIds = NULL;
    }
    if(valueQuery_contentIds){
        free(valueQuery_contentIds);
        valueQuery_contentIds = NULL;
    }
    if(keyPairQuery_contentIds){
        keyValuePair_free(keyPairQuery_contentIds);
        keyPairQuery_contentIds = NULL;
    }
    if(keyQuery_contentTypes){
        free(keyQuery_contentTypes);
        keyQuery_contentTypes = NULL;
    }
    if(valueQuery_contentTypes){
        free(valueQuery_contentTypes);
        valueQuery_contentTypes = NULL;
    }
    if(keyPairQuery_contentTypes){
        keyValuePair_free(keyPairQuery_contentTypes);
        keyPairQuery_contentTypes = NULL;
    }
    if(keyQuery_parentIds){
        free(keyQuery_parentIds);
        keyQuery_parentIds = NULL;
    }
    if(valueQuery_parentIds){
        free(valueQuery_parentIds);
        valueQuery_parentIds = NULL;
    }
    if(keyPairQuery_parentIds){
        keyValuePair_free(keyPairQuery_parentIds);
        keyPairQuery_parentIds = NULL;
    }
    if(keyQuery_parentTypes){
        free(keyQuery_parentTypes);
        keyQuery_parentTypes = NULL;
    }
    if(valueQuery_parentTypes){
        free(valueQuery_parentTypes);
        valueQuery_parentTypes = NULL;
    }
    if(keyPairQuery_parentTypes){
        keyValuePair_free(keyPairQuery_parentTypes);
        keyPairQuery_parentTypes = NULL;
    }
    if(keyQuery_actionCategory){
        free(keyQuery_actionCategory);
        keyQuery_actionCategory = NULL;
    }
    if(valueQuery_actionCategory){
        free(valueQuery_actionCategory);
        valueQuery_actionCategory = NULL;
    }
    if(keyPairQuery_actionCategory){
        keyValuePair_free(keyPairQuery_actionCategory);
        keyPairQuery_actionCategory = NULL;
    }
    if(keyQuery_conduits){
        free(keyQuery_conduits);
        keyQuery_conduits = NULL;
    }
    if(valueQuery_conduits){
        free(valueQuery_conduits);
        valueQuery_conduits = NULL;
    }
    if(keyPairQuery_conduits){
        keyValuePair_free(keyPairQuery_conduits);
        keyPairQuery_conduits = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_returnReadMessages){
        free(keyQuery_returnReadMessages);
        keyQuery_returnReadMessages = NULL;
    }
    if(valueQuery_returnReadMessages){
        free(valueQuery_returnReadMessages);
        valueQuery_returnReadMessages = NULL;
    }
    if(keyPairQuery_returnReadMessages){
        keyValuePair_free(keyPairQuery_returnReadMessages);
        keyPairQuery_returnReadMessages = NULL;
    }
    if(keyQuery_markAsRead){
        free(keyQuery_markAsRead);
        keyQuery_markAsRead = NULL;
    }
    if(valueQuery_markAsRead){
        free(valueQuery_markAsRead);
        valueQuery_markAsRead = NULL;
    }
    if(keyPairQuery_markAsRead){
        keyValuePair_free(keyPairQuery_markAsRead);
        keyPairQuery_markAsRead = NULL;
    }
    if(keyQuery_fromDate){
        free(keyQuery_fromDate);
        keyQuery_fromDate = NULL;
    }
    if(keyPairQuery_fromDate){
        keyValuePair_free(keyPairQuery_fromDate);
        keyPairQuery_fromDate = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    if(keyQuery_returnSent){
        free(keyQuery_returnSent);
        keyQuery_returnSent = NULL;
    }
    if(valueQuery_returnSent){
        free(valueQuery_returnSent);
        valueQuery_returnSent = NULL;
    }
    if(keyPairQuery_returnSent){
        keyValuePair_free(keyPairQuery_returnSent);
        keyPairQuery_returnSent = NULL;
    }
    if(keyQuery_ignoreFlagged){
        free(keyQuery_ignoreFlagged);
        keyQuery_ignoreFlagged = NULL;
    }
    if(valueQuery_ignoreFlagged){
        free(valueQuery_ignoreFlagged);
        valueQuery_ignoreFlagged = NULL;
    }
    if(keyPairQuery_ignoreFlagged){
        keyValuePair_free(keyPairQuery_ignoreFlagged);
        keyPairQuery_ignoreFlagged = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Register Notification Token
//
// Register a token to send application dependent notifications like Google Cloud Messaging, or Apple Push Notifications.
//
sirqul_response_t*
NotificationAPI_registerNotificationToken(apiClient_t *apiClient, char *token, sirqul_iot_platform_registerNotificationToken_pushType_e pushType, char *deviceId, long accountId, char *environment, char *appKey, char *gameType, int *active, double latitude, double longitude)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/token");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_token = NULL;
    char * valueQuery_token = NULL;
    keyValuePair_t *keyPairQuery_token = 0;
    if (token)
    {
        keyQuery_token = strdup("token");
        valueQuery_token = strdup((token));
        keyPairQuery_token = keyValuePair_create(keyQuery_token, valueQuery_token);
        list_addElement(localVarQueryParameters,keyPairQuery_token);
    }

    // query parameters
    char *keyQuery_pushType = NULL;
    sirqul_iot_platform_registerNotificationToken_pushType_e valueQuery_pushType ;
    keyValuePair_t *keyPairQuery_pushType = 0;
    if (pushType)
    {
        keyQuery_pushType = strdup("pushType");
        valueQuery_pushType = (pushType);
        keyPairQuery_pushType = keyValuePair_create(keyQuery_pushType, strdup(registerNotificationToken_PUSHTYPE_ToString(
        valueQuery_pushType)));
        list_addElement(localVarQueryParameters,keyPairQuery_pushType);
    }

    // query parameters
    char *keyQuery_environment = NULL;
    char * valueQuery_environment = NULL;
    keyValuePair_t *keyPairQuery_environment = 0;
    if (environment)
    {
        keyQuery_environment = strdup("environment");
        valueQuery_environment = strdup((environment));
        keyPairQuery_environment = keyValuePair_create(keyQuery_environment, valueQuery_environment);
        list_addElement(localVarQueryParameters,keyPairQuery_environment);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_token){
        free(keyQuery_token);
        keyQuery_token = NULL;
    }
    if(valueQuery_token){
        free(valueQuery_token);
        valueQuery_token = NULL;
    }
    if(keyPairQuery_token){
        keyValuePair_free(keyPairQuery_token);
        keyPairQuery_token = NULL;
    }
    if(keyQuery_pushType){
        free(keyQuery_pushType);
        keyQuery_pushType = NULL;
    }
    if(keyPairQuery_pushType){
        keyValuePair_free(keyPairQuery_pushType);
        keyPairQuery_pushType = NULL;
    }
    if(keyQuery_environment){
        free(keyQuery_environment);
        keyQuery_environment = NULL;
    }
    if(valueQuery_environment){
        free(valueQuery_environment);
        valueQuery_environment = NULL;
    }
    if(keyPairQuery_environment){
        keyValuePair_free(keyPairQuery_environment);
        keyPairQuery_environment = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search on the user's blocked notification settings
//
// Search on the user's blocked notification settings
//
blocked_notification_response_t*
NotificationAPI_searchBlockedNotifications(apiClient_t *apiClient, char *appKey, long accountId, char *searchTags, char *events, char *conduits, char *customTypes, char *contentTypes, char *contentIds, char *sortField, int *descending, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/blocked/search");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_searchTags = NULL;
    char * valueQuery_searchTags = NULL;
    keyValuePair_t *keyPairQuery_searchTags = 0;
    if (searchTags)
    {
        keyQuery_searchTags = strdup("searchTags");
        valueQuery_searchTags = strdup((searchTags));
        keyPairQuery_searchTags = keyValuePair_create(keyQuery_searchTags, valueQuery_searchTags);
        list_addElement(localVarQueryParameters,keyPairQuery_searchTags);
    }

    // query parameters
    char *keyQuery_events = NULL;
    char * valueQuery_events = NULL;
    keyValuePair_t *keyPairQuery_events = 0;
    if (events)
    {
        keyQuery_events = strdup("events");
        valueQuery_events = strdup((events));
        keyPairQuery_events = keyValuePair_create(keyQuery_events, valueQuery_events);
        list_addElement(localVarQueryParameters,keyPairQuery_events);
    }

    // query parameters
    char *keyQuery_conduits = NULL;
    char * valueQuery_conduits = NULL;
    keyValuePair_t *keyPairQuery_conduits = 0;
    if (conduits)
    {
        keyQuery_conduits = strdup("conduits");
        valueQuery_conduits = strdup((conduits));
        keyPairQuery_conduits = keyValuePair_create(keyQuery_conduits, valueQuery_conduits);
        list_addElement(localVarQueryParameters,keyPairQuery_conduits);
    }

    // query parameters
    char *keyQuery_customTypes = NULL;
    char * valueQuery_customTypes = NULL;
    keyValuePair_t *keyPairQuery_customTypes = 0;
    if (customTypes)
    {
        keyQuery_customTypes = strdup("customTypes");
        valueQuery_customTypes = strdup((customTypes));
        keyPairQuery_customTypes = keyValuePair_create(keyQuery_customTypes, valueQuery_customTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_customTypes);
    }

    // query parameters
    char *keyQuery_contentTypes = NULL;
    char * valueQuery_contentTypes = NULL;
    keyValuePair_t *keyPairQuery_contentTypes = 0;
    if (contentTypes)
    {
        keyQuery_contentTypes = strdup("contentTypes");
        valueQuery_contentTypes = strdup((contentTypes));
        keyPairQuery_contentTypes = keyValuePair_create(keyQuery_contentTypes, valueQuery_contentTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_contentTypes);
    }

    // query parameters
    char *keyQuery_contentIds = NULL;
    char * valueQuery_contentIds = NULL;
    keyValuePair_t *keyPairQuery_contentIds = 0;
    if (contentIds)
    {
        keyQuery_contentIds = strdup("contentIds");
        valueQuery_contentIds = strdup((contentIds));
        keyPairQuery_contentIds = keyValuePair_create(keyQuery_contentIds, valueQuery_contentIds);
        list_addElement(localVarQueryParameters,keyPairQuery_contentIds);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    blocked_notification_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = blocked_notification_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_searchTags){
        free(keyQuery_searchTags);
        keyQuery_searchTags = NULL;
    }
    if(valueQuery_searchTags){
        free(valueQuery_searchTags);
        valueQuery_searchTags = NULL;
    }
    if(keyPairQuery_searchTags){
        keyValuePair_free(keyPairQuery_searchTags);
        keyPairQuery_searchTags = NULL;
    }
    if(keyQuery_events){
        free(keyQuery_events);
        keyQuery_events = NULL;
    }
    if(valueQuery_events){
        free(valueQuery_events);
        valueQuery_events = NULL;
    }
    if(keyPairQuery_events){
        keyValuePair_free(keyPairQuery_events);
        keyPairQuery_events = NULL;
    }
    if(keyQuery_conduits){
        free(keyQuery_conduits);
        keyQuery_conduits = NULL;
    }
    if(valueQuery_conduits){
        free(valueQuery_conduits);
        valueQuery_conduits = NULL;
    }
    if(keyPairQuery_conduits){
        keyValuePair_free(keyPairQuery_conduits);
        keyPairQuery_conduits = NULL;
    }
    if(keyQuery_customTypes){
        free(keyQuery_customTypes);
        keyQuery_customTypes = NULL;
    }
    if(valueQuery_customTypes){
        free(valueQuery_customTypes);
        valueQuery_customTypes = NULL;
    }
    if(keyPairQuery_customTypes){
        keyValuePair_free(keyPairQuery_customTypes);
        keyPairQuery_customTypes = NULL;
    }
    if(keyQuery_contentTypes){
        free(keyQuery_contentTypes);
        keyQuery_contentTypes = NULL;
    }
    if(valueQuery_contentTypes){
        free(valueQuery_contentTypes);
        valueQuery_contentTypes = NULL;
    }
    if(keyPairQuery_contentTypes){
        keyValuePair_free(keyPairQuery_contentTypes);
        keyPairQuery_contentTypes = NULL;
    }
    if(keyQuery_contentIds){
        free(keyQuery_contentIds);
        keyQuery_contentIds = NULL;
    }
    if(valueQuery_contentIds){
        free(valueQuery_contentIds);
        valueQuery_contentIds = NULL;
    }
    if(keyPairQuery_contentIds){
        keyValuePair_free(keyPairQuery_contentIds);
        keyPairQuery_contentIds = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Notification Templates
//
// Search for notification templates on owned applications.
//
notification_template_response_t*
NotificationAPI_searchNotificationTemplate(apiClient_t *apiClient, long accountId, char *sortField, int *descending, int *start, int *limit, char *appKey, char *event, char *conduit, int *globalOnly, int *reservedOnly, char *keyword)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/template/search");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_event = NULL;
    char * valueQuery_event = NULL;
    keyValuePair_t *keyPairQuery_event = 0;
    if (event)
    {
        keyQuery_event = strdup("event");
        valueQuery_event = strdup((event));
        keyPairQuery_event = keyValuePair_create(keyQuery_event, valueQuery_event);
        list_addElement(localVarQueryParameters,keyPairQuery_event);
    }

    // query parameters
    char *keyQuery_conduit = NULL;
    char * valueQuery_conduit = NULL;
    keyValuePair_t *keyPairQuery_conduit = 0;
    if (conduit)
    {
        keyQuery_conduit = strdup("conduit");
        valueQuery_conduit = strdup((conduit));
        keyPairQuery_conduit = keyValuePair_create(keyQuery_conduit, valueQuery_conduit);
        list_addElement(localVarQueryParameters,keyPairQuery_conduit);
    }

    // query parameters
    char *keyQuery_globalOnly = NULL;
    char * valueQuery_globalOnly = NULL;
    keyValuePair_t *keyPairQuery_globalOnly = 0;
    if (globalOnly)
    {
        keyQuery_globalOnly = strdup("globalOnly");
        valueQuery_globalOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_globalOnly, MAX_NUMBER_LENGTH, "%d", *globalOnly);
        keyPairQuery_globalOnly = keyValuePair_create(keyQuery_globalOnly, valueQuery_globalOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_globalOnly);
    }

    // query parameters
    char *keyQuery_reservedOnly = NULL;
    char * valueQuery_reservedOnly = NULL;
    keyValuePair_t *keyPairQuery_reservedOnly = 0;
    if (reservedOnly)
    {
        keyQuery_reservedOnly = strdup("reservedOnly");
        valueQuery_reservedOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_reservedOnly, MAX_NUMBER_LENGTH, "%d", *reservedOnly);
        keyPairQuery_reservedOnly = keyValuePair_create(keyQuery_reservedOnly, valueQuery_reservedOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_reservedOnly);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    notification_template_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = notification_template_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_event){
        free(keyQuery_event);
        keyQuery_event = NULL;
    }
    if(valueQuery_event){
        free(valueQuery_event);
        valueQuery_event = NULL;
    }
    if(keyPairQuery_event){
        keyValuePair_free(keyPairQuery_event);
        keyPairQuery_event = NULL;
    }
    if(keyQuery_conduit){
        free(keyQuery_conduit);
        keyQuery_conduit = NULL;
    }
    if(valueQuery_conduit){
        free(valueQuery_conduit);
        valueQuery_conduit = NULL;
    }
    if(keyPairQuery_conduit){
        keyValuePair_free(keyPairQuery_conduit);
        keyPairQuery_conduit = NULL;
    }
    if(keyQuery_globalOnly){
        free(keyQuery_globalOnly);
        keyQuery_globalOnly = NULL;
    }
    if(valueQuery_globalOnly){
        free(valueQuery_globalOnly);
        valueQuery_globalOnly = NULL;
    }
    if(keyPairQuery_globalOnly){
        keyValuePair_free(keyPairQuery_globalOnly);
        keyPairQuery_globalOnly = NULL;
    }
    if(keyQuery_reservedOnly){
        free(keyQuery_reservedOnly);
        keyQuery_reservedOnly = NULL;
    }
    if(valueQuery_reservedOnly){
        free(valueQuery_reservedOnly);
        valueQuery_reservedOnly = NULL;
    }
    if(keyPairQuery_reservedOnly){
        keyValuePair_free(keyPairQuery_reservedOnly);
        keyPairQuery_reservedOnly = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search for Recipients
//
// Search for application users to send notifications.
//
list_t*
NotificationAPI_searchRecipients(apiClient_t *apiClient, sirqul_iot_platform_searchRecipients_sortField_e sortField, char *deviceId, long accountId, char *appKey, char *conduit, char *keyword, long audienceId, char *audienceIds, char *connectionGroupIds, char *recipientAccountIds, int *descending, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/recipient/search");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_conduit = NULL;
    char * valueQuery_conduit = NULL;
    keyValuePair_t *keyPairQuery_conduit = 0;
    if (conduit)
    {
        keyQuery_conduit = strdup("conduit");
        valueQuery_conduit = strdup((conduit));
        keyPairQuery_conduit = keyValuePair_create(keyQuery_conduit, valueQuery_conduit);
        list_addElement(localVarQueryParameters,keyPairQuery_conduit);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_audienceId = NULL;
    char * valueQuery_audienceId ;
    keyValuePair_t *keyPairQuery_audienceId = 0;
    {
        keyQuery_audienceId = strdup("audienceId");
        valueQuery_audienceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_audienceId, MAX_NUMBER_LENGTH_LONG, "%d", audienceId);
        keyPairQuery_audienceId = keyValuePair_create(keyQuery_audienceId, valueQuery_audienceId);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceId);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }

    // query parameters
    char *keyQuery_connectionGroupIds = NULL;
    char * valueQuery_connectionGroupIds = NULL;
    keyValuePair_t *keyPairQuery_connectionGroupIds = 0;
    if (connectionGroupIds)
    {
        keyQuery_connectionGroupIds = strdup("connectionGroupIds");
        valueQuery_connectionGroupIds = strdup((connectionGroupIds));
        keyPairQuery_connectionGroupIds = keyValuePair_create(keyQuery_connectionGroupIds, valueQuery_connectionGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupIds);
    }

    // query parameters
    char *keyQuery_recipientAccountIds = NULL;
    char * valueQuery_recipientAccountIds = NULL;
    keyValuePair_t *keyPairQuery_recipientAccountIds = 0;
    if (recipientAccountIds)
    {
        keyQuery_recipientAccountIds = strdup("recipientAccountIds");
        valueQuery_recipientAccountIds = strdup((recipientAccountIds));
        keyPairQuery_recipientAccountIds = keyValuePair_create(keyQuery_recipientAccountIds, valueQuery_recipientAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_recipientAccountIds);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchRecipients_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchRecipients_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NotificationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NotificationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NotificationAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_conduit){
        free(keyQuery_conduit);
        keyQuery_conduit = NULL;
    }
    if(valueQuery_conduit){
        free(valueQuery_conduit);
        valueQuery_conduit = NULL;
    }
    if(keyPairQuery_conduit){
        keyValuePair_free(keyPairQuery_conduit);
        keyPairQuery_conduit = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_audienceId){
        free(keyQuery_audienceId);
        keyQuery_audienceId = NULL;
    }
    if(keyPairQuery_audienceId){
        keyValuePair_free(keyPairQuery_audienceId);
        keyPairQuery_audienceId = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_connectionGroupIds){
        free(keyQuery_connectionGroupIds);
        keyQuery_connectionGroupIds = NULL;
    }
    if(valueQuery_connectionGroupIds){
        free(valueQuery_connectionGroupIds);
        valueQuery_connectionGroupIds = NULL;
    }
    if(keyPairQuery_connectionGroupIds){
        keyValuePair_free(keyPairQuery_connectionGroupIds);
        keyPairQuery_connectionGroupIds = NULL;
    }
    if(keyQuery_recipientAccountIds){
        free(keyQuery_recipientAccountIds);
        keyQuery_recipientAccountIds = NULL;
    }
    if(valueQuery_recipientAccountIds){
        free(valueQuery_recipientAccountIds);
        valueQuery_recipientAccountIds = NULL;
    }
    if(keyPairQuery_recipientAccountIds){
        keyValuePair_free(keyPairQuery_recipientAccountIds);
        keyPairQuery_recipientAccountIds = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search for Recipients (Counts/Grouped)
//
// Search for application users to send notifications (count/grouped variant).
//
notification_recipient_response_list_response_t*
NotificationAPI_searchRecipientsCount(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, char *conduit, char *keyword, long audienceId, char *audienceIds, char *connectionGroupIds, char *sortField, int *descending, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/recipient/search/count");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_conduit = NULL;
    char * valueQuery_conduit = NULL;
    keyValuePair_t *keyPairQuery_conduit = 0;
    if (conduit)
    {
        keyQuery_conduit = strdup("conduit");
        valueQuery_conduit = strdup((conduit));
        keyPairQuery_conduit = keyValuePair_create(keyQuery_conduit, valueQuery_conduit);
        list_addElement(localVarQueryParameters,keyPairQuery_conduit);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_audienceId = NULL;
    char * valueQuery_audienceId ;
    keyValuePair_t *keyPairQuery_audienceId = 0;
    {
        keyQuery_audienceId = strdup("audienceId");
        valueQuery_audienceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_audienceId, MAX_NUMBER_LENGTH_LONG, "%d", audienceId);
        keyPairQuery_audienceId = keyValuePair_create(keyQuery_audienceId, valueQuery_audienceId);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceId);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }

    // query parameters
    char *keyQuery_connectionGroupIds = NULL;
    char * valueQuery_connectionGroupIds = NULL;
    keyValuePair_t *keyPairQuery_connectionGroupIds = 0;
    if (connectionGroupIds)
    {
        keyQuery_connectionGroupIds = strdup("connectionGroupIds");
        valueQuery_connectionGroupIds = strdup((connectionGroupIds));
        keyPairQuery_connectionGroupIds = keyValuePair_create(keyQuery_connectionGroupIds, valueQuery_connectionGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupIds);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    notification_recipient_response_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = notification_recipient_response_list_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_conduit){
        free(keyQuery_conduit);
        keyQuery_conduit = NULL;
    }
    if(valueQuery_conduit){
        free(valueQuery_conduit);
        valueQuery_conduit = NULL;
    }
    if(keyPairQuery_conduit){
        keyValuePair_free(keyPairQuery_conduit);
        keyPairQuery_conduit = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_audienceId){
        free(keyQuery_audienceId);
        keyQuery_audienceId = NULL;
    }
    if(keyPairQuery_audienceId){
        keyValuePair_free(keyPairQuery_audienceId);
        keyPairQuery_audienceId = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_connectionGroupIds){
        free(keyQuery_connectionGroupIds);
        keyQuery_connectionGroupIds = NULL;
    }
    if(valueQuery_connectionGroupIds){
        free(valueQuery_connectionGroupIds);
        valueQuery_connectionGroupIds = NULL;
    }
    if(keyPairQuery_connectionGroupIds){
        keyValuePair_free(keyPairQuery_connectionGroupIds);
        keyPairQuery_connectionGroupIds = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Send Batch Notifications
//
// Send notifications to all users of an application. Only someone with permissions to the application can do this.
//
sirqul_response_t*
NotificationAPI_sendBatchNotifications(apiClient_t *apiClient, long accountId, char *appKey, char *customMessage, char *conduit, long contentId, char *contentName, char *contentType, long parentId, char *parentType)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/batch");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_conduit = NULL;
    char * valueQuery_conduit = NULL;
    keyValuePair_t *keyPairQuery_conduit = 0;
    if (conduit)
    {
        keyQuery_conduit = strdup("conduit");
        valueQuery_conduit = strdup((conduit));
        keyPairQuery_conduit = keyValuePair_create(keyQuery_conduit, valueQuery_conduit);
        list_addElement(localVarQueryParameters,keyPairQuery_conduit);
    }

    // query parameters
    char *keyQuery_customMessage = NULL;
    char * valueQuery_customMessage = NULL;
    keyValuePair_t *keyPairQuery_customMessage = 0;
    if (customMessage)
    {
        keyQuery_customMessage = strdup("customMessage");
        valueQuery_customMessage = strdup((customMessage));
        keyPairQuery_customMessage = keyValuePair_create(keyQuery_customMessage, valueQuery_customMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_customMessage);
    }

    // query parameters
    char *keyQuery_contentId = NULL;
    char * valueQuery_contentId ;
    keyValuePair_t *keyPairQuery_contentId = 0;
    {
        keyQuery_contentId = strdup("contentId");
        valueQuery_contentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_contentId, MAX_NUMBER_LENGTH_LONG, "%d", contentId);
        keyPairQuery_contentId = keyValuePair_create(keyQuery_contentId, valueQuery_contentId);
        list_addElement(localVarQueryParameters,keyPairQuery_contentId);
    }

    // query parameters
    char *keyQuery_contentName = NULL;
    char * valueQuery_contentName = NULL;
    keyValuePair_t *keyPairQuery_contentName = 0;
    if (contentName)
    {
        keyQuery_contentName = strdup("contentName");
        valueQuery_contentName = strdup((contentName));
        keyPairQuery_contentName = keyValuePair_create(keyQuery_contentName, valueQuery_contentName);
        list_addElement(localVarQueryParameters,keyPairQuery_contentName);
    }

    // query parameters
    char *keyQuery_contentType = NULL;
    char * valueQuery_contentType = NULL;
    keyValuePair_t *keyPairQuery_contentType = 0;
    if (contentType)
    {
        keyQuery_contentType = strdup("contentType");
        valueQuery_contentType = strdup((contentType));
        keyPairQuery_contentType = keyValuePair_create(keyQuery_contentType, valueQuery_contentType);
        list_addElement(localVarQueryParameters,keyPairQuery_contentType);
    }

    // query parameters
    char *keyQuery_parentId = NULL;
    char * valueQuery_parentId ;
    keyValuePair_t *keyPairQuery_parentId = 0;
    {
        keyQuery_parentId = strdup("parentId");
        valueQuery_parentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentId, MAX_NUMBER_LENGTH_LONG, "%d", parentId);
        keyPairQuery_parentId = keyValuePair_create(keyQuery_parentId, valueQuery_parentId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentId);
    }

    // query parameters
    char *keyQuery_parentType = NULL;
    char * valueQuery_parentType = NULL;
    keyValuePair_t *keyPairQuery_parentType = 0;
    if (parentType)
    {
        keyQuery_parentType = strdup("parentType");
        valueQuery_parentType = strdup((parentType));
        keyPairQuery_parentType = keyValuePair_create(keyQuery_parentType, valueQuery_parentType);
        list_addElement(localVarQueryParameters,keyPairQuery_parentType);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_conduit){
        free(keyQuery_conduit);
        keyQuery_conduit = NULL;
    }
    if(valueQuery_conduit){
        free(valueQuery_conduit);
        valueQuery_conduit = NULL;
    }
    if(keyPairQuery_conduit){
        keyValuePair_free(keyPairQuery_conduit);
        keyPairQuery_conduit = NULL;
    }
    if(keyQuery_customMessage){
        free(keyQuery_customMessage);
        keyQuery_customMessage = NULL;
    }
    if(valueQuery_customMessage){
        free(valueQuery_customMessage);
        valueQuery_customMessage = NULL;
    }
    if(keyPairQuery_customMessage){
        keyValuePair_free(keyPairQuery_customMessage);
        keyPairQuery_customMessage = NULL;
    }
    if(keyQuery_contentId){
        free(keyQuery_contentId);
        keyQuery_contentId = NULL;
    }
    if(keyPairQuery_contentId){
        keyValuePair_free(keyPairQuery_contentId);
        keyPairQuery_contentId = NULL;
    }
    if(keyQuery_contentName){
        free(keyQuery_contentName);
        keyQuery_contentName = NULL;
    }
    if(valueQuery_contentName){
        free(valueQuery_contentName);
        valueQuery_contentName = NULL;
    }
    if(keyPairQuery_contentName){
        keyValuePair_free(keyPairQuery_contentName);
        keyPairQuery_contentName = NULL;
    }
    if(keyQuery_contentType){
        free(keyQuery_contentType);
        keyQuery_contentType = NULL;
    }
    if(valueQuery_contentType){
        free(valueQuery_contentType);
        valueQuery_contentType = NULL;
    }
    if(keyPairQuery_contentType){
        keyValuePair_free(keyPairQuery_contentType);
        keyPairQuery_contentType = NULL;
    }
    if(keyQuery_parentId){
        free(keyQuery_parentId);
        keyQuery_parentId = NULL;
    }
    if(keyPairQuery_parentId){
        keyValuePair_free(keyPairQuery_parentId);
        keyPairQuery_parentId = NULL;
    }
    if(keyQuery_parentType){
        free(keyQuery_parentType);
        keyQuery_parentType = NULL;
    }
    if(valueQuery_parentType){
        free(valueQuery_parentType);
        valueQuery_parentType = NULL;
    }
    if(keyPairQuery_parentType){
        keyValuePair_free(keyPairQuery_parentType);
        keyPairQuery_parentType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Send Custom Notifications
//
// Send your own custom notification to a user. NOTE: the EventType of these notifications will be CUSTOM. Notifications sent to yourself will currently be ignored.
//
sirqul_response_t*
NotificationAPI_sendCustomNotifications(apiClient_t *apiClient, char *deviceId, long accountId, char *receiverAccountIds, int *includeFriendGroup, char *appKey, char *gameType, char *conduit, long contentId, char *contentName, char *contentType, long parentId, char *parentType, char *actionCategory, char *subject, char *customMessage, int *friendOnlyAPNS, double latitude, double longitude)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/custom");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_receiverAccountIds = NULL;
    char * valueQuery_receiverAccountIds = NULL;
    keyValuePair_t *keyPairQuery_receiverAccountIds = 0;
    if (receiverAccountIds)
    {
        keyQuery_receiverAccountIds = strdup("receiverAccountIds");
        valueQuery_receiverAccountIds = strdup((receiverAccountIds));
        keyPairQuery_receiverAccountIds = keyValuePair_create(keyQuery_receiverAccountIds, valueQuery_receiverAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_receiverAccountIds);
    }

    // query parameters
    char *keyQuery_includeFriendGroup = NULL;
    char * valueQuery_includeFriendGroup = NULL;
    keyValuePair_t *keyPairQuery_includeFriendGroup = 0;
    if (includeFriendGroup)
    {
        keyQuery_includeFriendGroup = strdup("includeFriendGroup");
        valueQuery_includeFriendGroup = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFriendGroup, MAX_NUMBER_LENGTH, "%d", *includeFriendGroup);
        keyPairQuery_includeFriendGroup = keyValuePair_create(keyQuery_includeFriendGroup, valueQuery_includeFriendGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFriendGroup);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
    }

    // query parameters
    char *keyQuery_conduit = NULL;
    char * valueQuery_conduit = NULL;
    keyValuePair_t *keyPairQuery_conduit = 0;
    if (conduit)
    {
        keyQuery_conduit = strdup("conduit");
        valueQuery_conduit = strdup((conduit));
        keyPairQuery_conduit = keyValuePair_create(keyQuery_conduit, valueQuery_conduit);
        list_addElement(localVarQueryParameters,keyPairQuery_conduit);
    }

    // query parameters
    char *keyQuery_contentId = NULL;
    char * valueQuery_contentId ;
    keyValuePair_t *keyPairQuery_contentId = 0;
    {
        keyQuery_contentId = strdup("contentId");
        valueQuery_contentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_contentId, MAX_NUMBER_LENGTH_LONG, "%d", contentId);
        keyPairQuery_contentId = keyValuePair_create(keyQuery_contentId, valueQuery_contentId);
        list_addElement(localVarQueryParameters,keyPairQuery_contentId);
    }

    // query parameters
    char *keyQuery_contentName = NULL;
    char * valueQuery_contentName = NULL;
    keyValuePair_t *keyPairQuery_contentName = 0;
    if (contentName)
    {
        keyQuery_contentName = strdup("contentName");
        valueQuery_contentName = strdup((contentName));
        keyPairQuery_contentName = keyValuePair_create(keyQuery_contentName, valueQuery_contentName);
        list_addElement(localVarQueryParameters,keyPairQuery_contentName);
    }

    // query parameters
    char *keyQuery_contentType = NULL;
    char * valueQuery_contentType = NULL;
    keyValuePair_t *keyPairQuery_contentType = 0;
    if (contentType)
    {
        keyQuery_contentType = strdup("contentType");
        valueQuery_contentType = strdup((contentType));
        keyPairQuery_contentType = keyValuePair_create(keyQuery_contentType, valueQuery_contentType);
        list_addElement(localVarQueryParameters,keyPairQuery_contentType);
    }

    // query parameters
    char *keyQuery_parentId = NULL;
    char * valueQuery_parentId ;
    keyValuePair_t *keyPairQuery_parentId = 0;
    {
        keyQuery_parentId = strdup("parentId");
        valueQuery_parentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentId, MAX_NUMBER_LENGTH_LONG, "%d", parentId);
        keyPairQuery_parentId = keyValuePair_create(keyQuery_parentId, valueQuery_parentId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentId);
    }

    // query parameters
    char *keyQuery_parentType = NULL;
    char * valueQuery_parentType = NULL;
    keyValuePair_t *keyPairQuery_parentType = 0;
    if (parentType)
    {
        keyQuery_parentType = strdup("parentType");
        valueQuery_parentType = strdup((parentType));
        keyPairQuery_parentType = keyValuePair_create(keyQuery_parentType, valueQuery_parentType);
        list_addElement(localVarQueryParameters,keyPairQuery_parentType);
    }

    // query parameters
    char *keyQuery_actionCategory = NULL;
    char * valueQuery_actionCategory = NULL;
    keyValuePair_t *keyPairQuery_actionCategory = 0;
    if (actionCategory)
    {
        keyQuery_actionCategory = strdup("actionCategory");
        valueQuery_actionCategory = strdup((actionCategory));
        keyPairQuery_actionCategory = keyValuePair_create(keyQuery_actionCategory, valueQuery_actionCategory);
        list_addElement(localVarQueryParameters,keyPairQuery_actionCategory);
    }

    // query parameters
    char *keyQuery_subject = NULL;
    char * valueQuery_subject = NULL;
    keyValuePair_t *keyPairQuery_subject = 0;
    if (subject)
    {
        keyQuery_subject = strdup("subject");
        valueQuery_subject = strdup((subject));
        keyPairQuery_subject = keyValuePair_create(keyQuery_subject, valueQuery_subject);
        list_addElement(localVarQueryParameters,keyPairQuery_subject);
    }

    // query parameters
    char *keyQuery_customMessage = NULL;
    char * valueQuery_customMessage = NULL;
    keyValuePair_t *keyPairQuery_customMessage = 0;
    if (customMessage)
    {
        keyQuery_customMessage = strdup("customMessage");
        valueQuery_customMessage = strdup((customMessage));
        keyPairQuery_customMessage = keyValuePair_create(keyQuery_customMessage, valueQuery_customMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_customMessage);
    }

    // query parameters
    char *keyQuery_friendOnlyAPNS = NULL;
    char * valueQuery_friendOnlyAPNS = NULL;
    keyValuePair_t *keyPairQuery_friendOnlyAPNS = 0;
    if (friendOnlyAPNS)
    {
        keyQuery_friendOnlyAPNS = strdup("friendOnlyAPNS");
        valueQuery_friendOnlyAPNS = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_friendOnlyAPNS, MAX_NUMBER_LENGTH, "%d", *friendOnlyAPNS);
        keyPairQuery_friendOnlyAPNS = keyValuePair_create(keyQuery_friendOnlyAPNS, valueQuery_friendOnlyAPNS);
        list_addElement(localVarQueryParameters,keyPairQuery_friendOnlyAPNS);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_receiverAccountIds){
        free(keyQuery_receiverAccountIds);
        keyQuery_receiverAccountIds = NULL;
    }
    if(valueQuery_receiverAccountIds){
        free(valueQuery_receiverAccountIds);
        valueQuery_receiverAccountIds = NULL;
    }
    if(keyPairQuery_receiverAccountIds){
        keyValuePair_free(keyPairQuery_receiverAccountIds);
        keyPairQuery_receiverAccountIds = NULL;
    }
    if(keyQuery_includeFriendGroup){
        free(keyQuery_includeFriendGroup);
        keyQuery_includeFriendGroup = NULL;
    }
    if(valueQuery_includeFriendGroup){
        free(valueQuery_includeFriendGroup);
        valueQuery_includeFriendGroup = NULL;
    }
    if(keyPairQuery_includeFriendGroup){
        keyValuePair_free(keyPairQuery_includeFriendGroup);
        keyPairQuery_includeFriendGroup = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
    }
    if(keyQuery_conduit){
        free(keyQuery_conduit);
        keyQuery_conduit = NULL;
    }
    if(valueQuery_conduit){
        free(valueQuery_conduit);
        valueQuery_conduit = NULL;
    }
    if(keyPairQuery_conduit){
        keyValuePair_free(keyPairQuery_conduit);
        keyPairQuery_conduit = NULL;
    }
    if(keyQuery_contentId){
        free(keyQuery_contentId);
        keyQuery_contentId = NULL;
    }
    if(keyPairQuery_contentId){
        keyValuePair_free(keyPairQuery_contentId);
        keyPairQuery_contentId = NULL;
    }
    if(keyQuery_contentName){
        free(keyQuery_contentName);
        keyQuery_contentName = NULL;
    }
    if(valueQuery_contentName){
        free(valueQuery_contentName);
        valueQuery_contentName = NULL;
    }
    if(keyPairQuery_contentName){
        keyValuePair_free(keyPairQuery_contentName);
        keyPairQuery_contentName = NULL;
    }
    if(keyQuery_contentType){
        free(keyQuery_contentType);
        keyQuery_contentType = NULL;
    }
    if(valueQuery_contentType){
        free(valueQuery_contentType);
        valueQuery_contentType = NULL;
    }
    if(keyPairQuery_contentType){
        keyValuePair_free(keyPairQuery_contentType);
        keyPairQuery_contentType = NULL;
    }
    if(keyQuery_parentId){
        free(keyQuery_parentId);
        keyQuery_parentId = NULL;
    }
    if(keyPairQuery_parentId){
        keyValuePair_free(keyPairQuery_parentId);
        keyPairQuery_parentId = NULL;
    }
    if(keyQuery_parentType){
        free(keyQuery_parentType);
        keyQuery_parentType = NULL;
    }
    if(valueQuery_parentType){
        free(valueQuery_parentType);
        valueQuery_parentType = NULL;
    }
    if(keyPairQuery_parentType){
        keyValuePair_free(keyPairQuery_parentType);
        keyPairQuery_parentType = NULL;
    }
    if(keyQuery_actionCategory){
        free(keyQuery_actionCategory);
        keyQuery_actionCategory = NULL;
    }
    if(valueQuery_actionCategory){
        free(valueQuery_actionCategory);
        valueQuery_actionCategory = NULL;
    }
    if(keyPairQuery_actionCategory){
        keyValuePair_free(keyPairQuery_actionCategory);
        keyPairQuery_actionCategory = NULL;
    }
    if(keyQuery_subject){
        free(keyQuery_subject);
        keyQuery_subject = NULL;
    }
    if(valueQuery_subject){
        free(valueQuery_subject);
        valueQuery_subject = NULL;
    }
    if(keyPairQuery_subject){
        keyValuePair_free(keyPairQuery_subject);
        keyPairQuery_subject = NULL;
    }
    if(keyQuery_customMessage){
        free(keyQuery_customMessage);
        keyQuery_customMessage = NULL;
    }
    if(valueQuery_customMessage){
        free(valueQuery_customMessage);
        valueQuery_customMessage = NULL;
    }
    if(keyPairQuery_customMessage){
        keyValuePair_free(keyPairQuery_customMessage);
        keyPairQuery_customMessage = NULL;
    }
    if(keyQuery_friendOnlyAPNS){
        free(keyQuery_friendOnlyAPNS);
        keyQuery_friendOnlyAPNS = NULL;
    }
    if(valueQuery_friendOnlyAPNS){
        free(valueQuery_friendOnlyAPNS);
        valueQuery_friendOnlyAPNS = NULL;
    }
    if(keyPairQuery_friendOnlyAPNS){
        keyValuePair_free(keyPairQuery_friendOnlyAPNS);
        keyPairQuery_friendOnlyAPNS = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Notification Template
//
// Update a notification template. Developers will only be able to update notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_updateNotificationTemplate(apiClient_t *apiClient, long accountId, long notificationTemplateId, char *title, char *body, char *tags)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/notification/template/update");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_notificationTemplateId = NULL;
    char * valueQuery_notificationTemplateId ;
    keyValuePair_t *keyPairQuery_notificationTemplateId = 0;
    {
        keyQuery_notificationTemplateId = strdup("notificationTemplateId");
        valueQuery_notificationTemplateId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_notificationTemplateId, MAX_NUMBER_LENGTH_LONG, "%d", notificationTemplateId);
        keyPairQuery_notificationTemplateId = keyValuePair_create(keyQuery_notificationTemplateId, valueQuery_notificationTemplateId);
        list_addElement(localVarQueryParameters,keyPairQuery_notificationTemplateId);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_body = NULL;
    char * valueQuery_body = NULL;
    keyValuePair_t *keyPairQuery_body = 0;
    if (body)
    {
        keyQuery_body = strdup("body");
        valueQuery_body = strdup((body));
        keyPairQuery_body = keyValuePair_create(keyQuery_body, valueQuery_body);
        list_addElement(localVarQueryParameters,keyPairQuery_body);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    notification_template_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = notification_template_response_parseFromJSON(NotificationAPIlocalVarJSON);
        cJSON_Delete(NotificationAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_notificationTemplateId){
        free(keyQuery_notificationTemplateId);
        keyQuery_notificationTemplateId = NULL;
    }
    if(keyPairQuery_notificationTemplateId){
        keyValuePair_free(keyPairQuery_notificationTemplateId);
        keyPairQuery_notificationTemplateId = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_body){
        free(keyQuery_body);
        keyQuery_body = NULL;
    }
    if(valueQuery_body){
        free(valueQuery_body);
        valueQuery_body = NULL;
    }
    if(keyPairQuery_body){
        keyValuePair_free(keyPairQuery_body);
        keyPairQuery_body = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

