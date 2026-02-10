#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ScheduledNotificationAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum VISIBILITY for ScheduledNotificationAPI_createScheduledNotification

static char* createScheduledNotification_VISIBILITY_ToString(sirqul_iot_platform_createScheduledNotification_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_createScheduledNotification_visibility_e createScheduledNotification_VISIBILITY_FromString(char* VISIBILITY){
    int stringToReturn = 0;
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(VISIBILITYArray) / sizeof(VISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(VISIBILITY, VISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createScheduledNotification_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createScheduledNotification_VISIBILITY_convertToJSON(sirqul_iot_platform_createScheduledNotification_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", createScheduledNotification_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createScheduledNotification_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createScheduledNotification_visibility_e createScheduledNotification_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_createScheduledNotification_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = createScheduledNotification_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for ScheduledNotificationAPI_updateScheduledNotification

static char* updateScheduledNotification_VISIBILITY_ToString(sirqul_iot_platform_updateScheduledNotification_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_updateScheduledNotification_visibility_e updateScheduledNotification_VISIBILITY_FromString(char* VISIBILITY){
    int stringToReturn = 0;
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(VISIBILITYArray) / sizeof(VISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(VISIBILITY, VISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateScheduledNotification_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateScheduledNotification_VISIBILITY_convertToJSON(sirqul_iot_platform_updateScheduledNotification_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", updateScheduledNotification_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateScheduledNotification_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateScheduledNotification_visibility_e updateScheduledNotification_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_updateScheduledNotification_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = updateScheduledNotification_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/


// Create Scheduled Notification
//
// This endpoint creates a Scheduled Notification message that can be configured to process and send periodically at set time periods
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_createScheduledNotification(apiClient_t *apiClient, double version, long accountId, char *name, char *type, char *message, long contentId, char *contentName, char *contentType, long parentId, char *parentType, char *appKey, char *groupingId, char *connectionGroupIds, char *connectionAccountIds, long audienceId, char *audienceIds, char *albumIds, long reportId, char *reportParams, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, char *cronType, char *metaData, char *conditionalInput, char *templateType, sirqul_iot_platform_createScheduledNotification_visibility_e visibility, int *active, int *sendNow, char *eventType, char *deepLinkURI, int *sendToAll)
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
    char *localVarPath = strdup("/api/{version}/notification/schedule/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }

    // query parameters
    char *keyQuery_message = NULL;
    char * valueQuery_message = NULL;
    keyValuePair_t *keyPairQuery_message = 0;
    if (message)
    {
        keyQuery_message = strdup("message");
        valueQuery_message = strdup((message));
        keyPairQuery_message = keyValuePair_create(keyQuery_message, valueQuery_message);
        list_addElement(localVarQueryParameters,keyPairQuery_message);
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
    char *keyQuery_groupingId = NULL;
    char * valueQuery_groupingId = NULL;
    keyValuePair_t *keyPairQuery_groupingId = 0;
    if (groupingId)
    {
        keyQuery_groupingId = strdup("groupingId");
        valueQuery_groupingId = strdup((groupingId));
        keyPairQuery_groupingId = keyValuePair_create(keyQuery_groupingId, valueQuery_groupingId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupingId);
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
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
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
    char *keyQuery_albumIds = NULL;
    char * valueQuery_albumIds = NULL;
    keyValuePair_t *keyPairQuery_albumIds = 0;
    if (albumIds)
    {
        keyQuery_albumIds = strdup("albumIds");
        valueQuery_albumIds = strdup((albumIds));
        keyPairQuery_albumIds = keyValuePair_create(keyQuery_albumIds, valueQuery_albumIds);
        list_addElement(localVarQueryParameters,keyPairQuery_albumIds);
    }

    // query parameters
    char *keyQuery_reportId = NULL;
    char * valueQuery_reportId ;
    keyValuePair_t *keyPairQuery_reportId = 0;
    {
        keyQuery_reportId = strdup("reportId");
        valueQuery_reportId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_reportId, MAX_NUMBER_LENGTH_LONG, "%d", reportId);
        keyPairQuery_reportId = keyValuePair_create(keyQuery_reportId, valueQuery_reportId);
        list_addElement(localVarQueryParameters,keyPairQuery_reportId);
    }

    // query parameters
    char *keyQuery_reportParams = NULL;
    char * valueQuery_reportParams = NULL;
    keyValuePair_t *keyPairQuery_reportParams = 0;
    if (reportParams)
    {
        keyQuery_reportParams = strdup("reportParams");
        valueQuery_reportParams = strdup((reportParams));
        keyPairQuery_reportParams = keyValuePair_create(keyQuery_reportParams, valueQuery_reportParams);
        list_addElement(localVarQueryParameters,keyPairQuery_reportParams);
    }

    // query parameters
    char *keyQuery_endpointURL = NULL;
    char * valueQuery_endpointURL = NULL;
    keyValuePair_t *keyPairQuery_endpointURL = 0;
    if (endpointURL)
    {
        keyQuery_endpointURL = strdup("endpointURL");
        valueQuery_endpointURL = strdup((endpointURL));
        keyPairQuery_endpointURL = keyValuePair_create(keyQuery_endpointURL, valueQuery_endpointURL);
        list_addElement(localVarQueryParameters,keyPairQuery_endpointURL);
    }

    // query parameters
    char *keyQuery_payload = NULL;
    char * valueQuery_payload = NULL;
    keyValuePair_t *keyPairQuery_payload = 0;
    if (payload)
    {
        keyQuery_payload = strdup("payload");
        valueQuery_payload = strdup((payload));
        keyPairQuery_payload = keyValuePair_create(keyQuery_payload, valueQuery_payload);
        list_addElement(localVarQueryParameters,keyPairQuery_payload);
    }

    // query parameters
    char *keyQuery_scheduledDate = NULL;
    char * valueQuery_scheduledDate ;
    keyValuePair_t *keyPairQuery_scheduledDate = 0;
    {
        keyQuery_scheduledDate = strdup("scheduledDate");
        valueQuery_scheduledDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledDate, MAX_NUMBER_LENGTH_LONG, "%d", scheduledDate);
        keyPairQuery_scheduledDate = keyValuePair_create(keyQuery_scheduledDate, valueQuery_scheduledDate);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledDate);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_cronExpression = NULL;
    char * valueQuery_cronExpression = NULL;
    keyValuePair_t *keyPairQuery_cronExpression = 0;
    if (cronExpression)
    {
        keyQuery_cronExpression = strdup("cronExpression");
        valueQuery_cronExpression = strdup((cronExpression));
        keyPairQuery_cronExpression = keyValuePair_create(keyQuery_cronExpression, valueQuery_cronExpression);
        list_addElement(localVarQueryParameters,keyPairQuery_cronExpression);
    }

    // query parameters
    char *keyQuery_cronType = NULL;
    char * valueQuery_cronType = NULL;
    keyValuePair_t *keyPairQuery_cronType = 0;
    if (cronType)
    {
        keyQuery_cronType = strdup("cronType");
        valueQuery_cronType = strdup((cronType));
        keyPairQuery_cronType = keyValuePair_create(keyQuery_cronType, valueQuery_cronType);
        list_addElement(localVarQueryParameters,keyPairQuery_cronType);
    }

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
    }

    // query parameters
    char *keyQuery_conditionalInput = NULL;
    char * valueQuery_conditionalInput = NULL;
    keyValuePair_t *keyPairQuery_conditionalInput = 0;
    if (conditionalInput)
    {
        keyQuery_conditionalInput = strdup("conditionalInput");
        valueQuery_conditionalInput = strdup((conditionalInput));
        keyPairQuery_conditionalInput = keyValuePair_create(keyQuery_conditionalInput, valueQuery_conditionalInput);
        list_addElement(localVarQueryParameters,keyPairQuery_conditionalInput);
    }

    // query parameters
    char *keyQuery_templateType = NULL;
    char * valueQuery_templateType = NULL;
    keyValuePair_t *keyPairQuery_templateType = 0;
    if (templateType)
    {
        keyQuery_templateType = strdup("templateType");
        valueQuery_templateType = strdup((templateType));
        keyPairQuery_templateType = keyValuePair_create(keyQuery_templateType, valueQuery_templateType);
        list_addElement(localVarQueryParameters,keyPairQuery_templateType);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_createScheduledNotification_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(createScheduledNotification_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
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
    char *keyQuery_sendNow = NULL;
    char * valueQuery_sendNow = NULL;
    keyValuePair_t *keyPairQuery_sendNow = 0;
    if (sendNow)
    {
        keyQuery_sendNow = strdup("sendNow");
        valueQuery_sendNow = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendNow, MAX_NUMBER_LENGTH, "%d", *sendNow);
        keyPairQuery_sendNow = keyValuePair_create(keyQuery_sendNow, valueQuery_sendNow);
        list_addElement(localVarQueryParameters,keyPairQuery_sendNow);
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
    char *keyQuery_deepLinkURI = NULL;
    char * valueQuery_deepLinkURI = NULL;
    keyValuePair_t *keyPairQuery_deepLinkURI = 0;
    if (deepLinkURI)
    {
        keyQuery_deepLinkURI = strdup("deepLinkURI");
        valueQuery_deepLinkURI = strdup((deepLinkURI));
        keyPairQuery_deepLinkURI = keyValuePair_create(keyQuery_deepLinkURI, valueQuery_deepLinkURI);
        list_addElement(localVarQueryParameters,keyPairQuery_deepLinkURI);
    }

    // query parameters
    char *keyQuery_sendToAll = NULL;
    char * valueQuery_sendToAll = NULL;
    keyValuePair_t *keyPairQuery_sendToAll = 0;
    if (sendToAll)
    {
        keyQuery_sendToAll = strdup("sendToAll");
        valueQuery_sendToAll = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendToAll, MAX_NUMBER_LENGTH, "%d", *sendToAll);
        keyPairQuery_sendToAll = keyValuePair_create(keyQuery_sendToAll, valueQuery_sendToAll);
        list_addElement(localVarQueryParameters,keyPairQuery_sendToAll);
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
    scheduled_notification_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ScheduledNotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = scheduled_notification_full_response_parseFromJSON(ScheduledNotificationAPIlocalVarJSON);
        cJSON_Delete(ScheduledNotificationAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_message){
        free(keyQuery_message);
        keyQuery_message = NULL;
    }
    if(valueQuery_message){
        free(valueQuery_message);
        valueQuery_message = NULL;
    }
    if(keyPairQuery_message){
        keyValuePair_free(keyPairQuery_message);
        keyPairQuery_message = NULL;
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
    if(keyQuery_groupingId){
        free(keyQuery_groupingId);
        keyQuery_groupingId = NULL;
    }
    if(valueQuery_groupingId){
        free(valueQuery_groupingId);
        valueQuery_groupingId = NULL;
    }
    if(keyPairQuery_groupingId){
        keyValuePair_free(keyPairQuery_groupingId);
        keyPairQuery_groupingId = NULL;
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
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
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
    if(keyQuery_albumIds){
        free(keyQuery_albumIds);
        keyQuery_albumIds = NULL;
    }
    if(valueQuery_albumIds){
        free(valueQuery_albumIds);
        valueQuery_albumIds = NULL;
    }
    if(keyPairQuery_albumIds){
        keyValuePair_free(keyPairQuery_albumIds);
        keyPairQuery_albumIds = NULL;
    }
    if(keyQuery_reportId){
        free(keyQuery_reportId);
        keyQuery_reportId = NULL;
    }
    if(keyPairQuery_reportId){
        keyValuePair_free(keyPairQuery_reportId);
        keyPairQuery_reportId = NULL;
    }
    if(keyQuery_reportParams){
        free(keyQuery_reportParams);
        keyQuery_reportParams = NULL;
    }
    if(valueQuery_reportParams){
        free(valueQuery_reportParams);
        valueQuery_reportParams = NULL;
    }
    if(keyPairQuery_reportParams){
        keyValuePair_free(keyPairQuery_reportParams);
        keyPairQuery_reportParams = NULL;
    }
    if(keyQuery_endpointURL){
        free(keyQuery_endpointURL);
        keyQuery_endpointURL = NULL;
    }
    if(valueQuery_endpointURL){
        free(valueQuery_endpointURL);
        valueQuery_endpointURL = NULL;
    }
    if(keyPairQuery_endpointURL){
        keyValuePair_free(keyPairQuery_endpointURL);
        keyPairQuery_endpointURL = NULL;
    }
    if(keyQuery_payload){
        free(keyQuery_payload);
        keyQuery_payload = NULL;
    }
    if(valueQuery_payload){
        free(valueQuery_payload);
        valueQuery_payload = NULL;
    }
    if(keyPairQuery_payload){
        keyValuePair_free(keyPairQuery_payload);
        keyPairQuery_payload = NULL;
    }
    if(keyQuery_scheduledDate){
        free(keyQuery_scheduledDate);
        keyQuery_scheduledDate = NULL;
    }
    if(keyPairQuery_scheduledDate){
        keyValuePair_free(keyPairQuery_scheduledDate);
        keyPairQuery_scheduledDate = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_cronExpression){
        free(keyQuery_cronExpression);
        keyQuery_cronExpression = NULL;
    }
    if(valueQuery_cronExpression){
        free(valueQuery_cronExpression);
        valueQuery_cronExpression = NULL;
    }
    if(keyPairQuery_cronExpression){
        keyValuePair_free(keyPairQuery_cronExpression);
        keyPairQuery_cronExpression = NULL;
    }
    if(keyQuery_cronType){
        free(keyQuery_cronType);
        keyQuery_cronType = NULL;
    }
    if(valueQuery_cronType){
        free(valueQuery_cronType);
        valueQuery_cronType = NULL;
    }
    if(keyPairQuery_cronType){
        keyValuePair_free(keyPairQuery_cronType);
        keyPairQuery_cronType = NULL;
    }
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    if(keyQuery_conditionalInput){
        free(keyQuery_conditionalInput);
        keyQuery_conditionalInput = NULL;
    }
    if(valueQuery_conditionalInput){
        free(valueQuery_conditionalInput);
        valueQuery_conditionalInput = NULL;
    }
    if(keyPairQuery_conditionalInput){
        keyValuePair_free(keyPairQuery_conditionalInput);
        keyPairQuery_conditionalInput = NULL;
    }
    if(keyQuery_templateType){
        free(keyQuery_templateType);
        keyQuery_templateType = NULL;
    }
    if(valueQuery_templateType){
        free(valueQuery_templateType);
        valueQuery_templateType = NULL;
    }
    if(keyPairQuery_templateType){
        keyValuePair_free(keyPairQuery_templateType);
        keyPairQuery_templateType = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
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
    if(keyQuery_sendNow){
        free(keyQuery_sendNow);
        keyQuery_sendNow = NULL;
    }
    if(valueQuery_sendNow){
        free(valueQuery_sendNow);
        valueQuery_sendNow = NULL;
    }
    if(keyPairQuery_sendNow){
        keyValuePair_free(keyPairQuery_sendNow);
        keyPairQuery_sendNow = NULL;
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
    if(keyQuery_deepLinkURI){
        free(keyQuery_deepLinkURI);
        keyQuery_deepLinkURI = NULL;
    }
    if(valueQuery_deepLinkURI){
        free(valueQuery_deepLinkURI);
        valueQuery_deepLinkURI = NULL;
    }
    if(keyPairQuery_deepLinkURI){
        keyValuePair_free(keyPairQuery_deepLinkURI);
        keyPairQuery_deepLinkURI = NULL;
    }
    if(keyQuery_sendToAll){
        free(keyQuery_sendToAll);
        keyQuery_sendToAll = NULL;
    }
    if(valueQuery_sendToAll){
        free(valueQuery_sendToAll);
        valueQuery_sendToAll = NULL;
    }
    if(keyPairQuery_sendToAll){
        keyValuePair_free(keyPairQuery_sendToAll);
        keyPairQuery_sendToAll = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Scheduled Notification
//
// This endpoint deletes a Scheduled Notification. Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using the UserPermissionsApi.
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_deleteScheduledNotification(apiClient_t *apiClient, double version, long accountId, long scheduledNotificationId, int *deleteByGroupingId)
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
    char *localVarPath = strdup("/api/{version}/notification/schedule/delete");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_scheduledNotificationId = NULL;
    char * valueQuery_scheduledNotificationId ;
    keyValuePair_t *keyPairQuery_scheduledNotificationId = 0;
    {
        keyQuery_scheduledNotificationId = strdup("scheduledNotificationId");
        valueQuery_scheduledNotificationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledNotificationId, MAX_NUMBER_LENGTH_LONG, "%d", scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = keyValuePair_create(keyQuery_scheduledNotificationId, valueQuery_scheduledNotificationId);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledNotificationId);
    }

    // query parameters
    char *keyQuery_deleteByGroupingId = NULL;
    char * valueQuery_deleteByGroupingId = NULL;
    keyValuePair_t *keyPairQuery_deleteByGroupingId = 0;
    if (deleteByGroupingId)
    {
        keyQuery_deleteByGroupingId = strdup("deleteByGroupingId");
        valueQuery_deleteByGroupingId = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_deleteByGroupingId, MAX_NUMBER_LENGTH, "%d", *deleteByGroupingId);
        keyPairQuery_deleteByGroupingId = keyValuePair_create(keyQuery_deleteByGroupingId, valueQuery_deleteByGroupingId);
        list_addElement(localVarQueryParameters,keyPairQuery_deleteByGroupingId);
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
    scheduled_notification_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ScheduledNotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = scheduled_notification_full_response_parseFromJSON(ScheduledNotificationAPIlocalVarJSON);
        cJSON_Delete(ScheduledNotificationAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_scheduledNotificationId){
        free(keyQuery_scheduledNotificationId);
        keyQuery_scheduledNotificationId = NULL;
    }
    if(keyPairQuery_scheduledNotificationId){
        keyValuePair_free(keyPairQuery_scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = NULL;
    }
    if(keyQuery_deleteByGroupingId){
        free(keyQuery_deleteByGroupingId);
        keyQuery_deleteByGroupingId = NULL;
    }
    if(valueQuery_deleteByGroupingId){
        free(valueQuery_deleteByGroupingId);
        valueQuery_deleteByGroupingId = NULL;
    }
    if(keyPairQuery_deleteByGroupingId){
        keyValuePair_free(keyPairQuery_deleteByGroupingId);
        keyPairQuery_deleteByGroupingId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Scheduled Notification
//
// Get a ScheduledNotification
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_getScheduledNotification(apiClient_t *apiClient, double version, long accountId, long scheduledNotificationId)
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
    char *localVarPath = strdup("/api/{version}/notification/schedule/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_scheduledNotificationId = NULL;
    char * valueQuery_scheduledNotificationId ;
    keyValuePair_t *keyPairQuery_scheduledNotificationId = 0;
    {
        keyQuery_scheduledNotificationId = strdup("scheduledNotificationId");
        valueQuery_scheduledNotificationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledNotificationId, MAX_NUMBER_LENGTH_LONG, "%d", scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = keyValuePair_create(keyQuery_scheduledNotificationId, valueQuery_scheduledNotificationId);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledNotificationId);
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
    scheduled_notification_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ScheduledNotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = scheduled_notification_full_response_parseFromJSON(ScheduledNotificationAPIlocalVarJSON);
        cJSON_Delete(ScheduledNotificationAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_scheduledNotificationId){
        free(keyQuery_scheduledNotificationId);
        keyQuery_scheduledNotificationId = NULL;
    }
    if(keyPairQuery_scheduledNotificationId){
        keyValuePair_free(keyPairQuery_scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Generate Schedule Notifications
//
// Use a report to identify events that are starting soon and then create a scheduled notification to push a message to matching users.
//
sirqul_response_t*
ScheduledNotificationAPI_scheduleNotificationListings(apiClient_t *apiClient, double version, long accountId, char *appKey, char *reportName, char *message, int *offset, long recipientReportId, char *reportParams, char *type)
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
    char *localVarPath = strdup("/api/{version}/notification/schedule/generate");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_reportName = NULL;
    char * valueQuery_reportName = NULL;
    keyValuePair_t *keyPairQuery_reportName = 0;
    if (reportName)
    {
        keyQuery_reportName = strdup("reportName");
        valueQuery_reportName = strdup((reportName));
        keyPairQuery_reportName = keyValuePair_create(keyQuery_reportName, valueQuery_reportName);
        list_addElement(localVarQueryParameters,keyPairQuery_reportName);
    }

    // query parameters
    char *keyQuery_reportParams = NULL;
    char * valueQuery_reportParams = NULL;
    keyValuePair_t *keyPairQuery_reportParams = 0;
    if (reportParams)
    {
        keyQuery_reportParams = strdup("reportParams");
        valueQuery_reportParams = strdup((reportParams));
        keyPairQuery_reportParams = keyValuePair_create(keyQuery_reportParams, valueQuery_reportParams);
        list_addElement(localVarQueryParameters,keyPairQuery_reportParams);
    }

    // query parameters
    char *keyQuery_message = NULL;
    char * valueQuery_message = NULL;
    keyValuePair_t *keyPairQuery_message = 0;
    if (message)
    {
        keyQuery_message = strdup("message");
        valueQuery_message = strdup((message));
        keyPairQuery_message = keyValuePair_create(keyQuery_message, valueQuery_message);
        list_addElement(localVarQueryParameters,keyPairQuery_message);
    }

    // query parameters
    char *keyQuery_offset = NULL;
    char * valueQuery_offset = NULL;
    keyValuePair_t *keyPairQuery_offset = 0;
    if (offset)
    {
        keyQuery_offset = strdup("offset");
        valueQuery_offset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_offset, MAX_NUMBER_LENGTH, "%d", *offset);
        keyPairQuery_offset = keyValuePair_create(keyQuery_offset, valueQuery_offset);
        list_addElement(localVarQueryParameters,keyPairQuery_offset);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }

    // query parameters
    char *keyQuery_recipientReportId = NULL;
    char * valueQuery_recipientReportId ;
    keyValuePair_t *keyPairQuery_recipientReportId = 0;
    {
        keyQuery_recipientReportId = strdup("recipientReportId");
        valueQuery_recipientReportId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_recipientReportId, MAX_NUMBER_LENGTH_LONG, "%d", recipientReportId);
        keyPairQuery_recipientReportId = keyValuePair_create(keyQuery_recipientReportId, valueQuery_recipientReportId);
        list_addElement(localVarQueryParameters,keyPairQuery_recipientReportId);
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
        cJSON *ScheduledNotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ScheduledNotificationAPIlocalVarJSON);
        cJSON_Delete(ScheduledNotificationAPIlocalVarJSON);
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
    free(localVarToReplace_version);
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
    if(keyQuery_reportName){
        free(keyQuery_reportName);
        keyQuery_reportName = NULL;
    }
    if(valueQuery_reportName){
        free(valueQuery_reportName);
        valueQuery_reportName = NULL;
    }
    if(keyPairQuery_reportName){
        keyValuePair_free(keyPairQuery_reportName);
        keyPairQuery_reportName = NULL;
    }
    if(keyQuery_reportParams){
        free(keyQuery_reportParams);
        keyQuery_reportParams = NULL;
    }
    if(valueQuery_reportParams){
        free(valueQuery_reportParams);
        valueQuery_reportParams = NULL;
    }
    if(keyPairQuery_reportParams){
        keyValuePair_free(keyPairQuery_reportParams);
        keyPairQuery_reportParams = NULL;
    }
    if(keyQuery_message){
        free(keyQuery_message);
        keyQuery_message = NULL;
    }
    if(valueQuery_message){
        free(valueQuery_message);
        valueQuery_message = NULL;
    }
    if(keyPairQuery_message){
        keyValuePair_free(keyPairQuery_message);
        keyPairQuery_message = NULL;
    }
    if(keyQuery_offset){
        free(keyQuery_offset);
        keyQuery_offset = NULL;
    }
    if(valueQuery_offset){
        free(valueQuery_offset);
        valueQuery_offset = NULL;
    }
    if(keyPairQuery_offset){
        keyValuePair_free(keyPairQuery_offset);
        keyPairQuery_offset = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_recipientReportId){
        free(keyQuery_recipientReportId);
        keyQuery_recipientReportId = NULL;
    }
    if(keyPairQuery_recipientReportId){
        keyValuePair_free(keyPairQuery_recipientReportId);
        keyPairQuery_recipientReportId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Scheduled Notifications
//
// This endpoint searches on Scheduled Notifications. If a scheduled notification was created with the visibility parameter set to PUBLIC, then anyone can search on it if the filter parameter includes the PUBLIC value. PRIVATE visibility means that it can only be searched on by the owner or if it has been shared to the user using the UserPermissionsApi.  In addition, if a PUBLIC Scheduled Notification was created for an application that requires content approval (using the publicContentApproval parameter), then an administrator of the application needs to approve it before it can be search on by other users. Before this happens, it is in a PENDING state, and only the original creator or the owner of the application can search and see it. Also, only the owner of the application can use the UserPermissionsApi to approve or reject it. Scheduled notifications that have been rejected are only visible to the original creators.
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_searchScheduledNotifications(apiClient_t *apiClient, double version, long accountId, char *groupingId, long audienceId, char *filter, char *types, char *contentIds, char *contentTypes, char *parentIds, char *parentTypes, char *statuses, char *templateTypes, char *appKey, char *keyword, char *sortField, int *descending, int *start, int *limit, int *activeOnly, int *groupByGroupingId, int *returnAudienceAccountCount)
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
    char *localVarPath = strdup("/api/{version}/notification/schedule/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_groupingId = NULL;
    char * valueQuery_groupingId = NULL;
    keyValuePair_t *keyPairQuery_groupingId = 0;
    if (groupingId)
    {
        keyQuery_groupingId = strdup("groupingId");
        valueQuery_groupingId = strdup((groupingId));
        keyPairQuery_groupingId = keyValuePair_create(keyQuery_groupingId, valueQuery_groupingId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupingId);
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
    char *keyQuery_filter = NULL;
    char * valueQuery_filter = NULL;
    keyValuePair_t *keyPairQuery_filter = 0;
    if (filter)
    {
        keyQuery_filter = strdup("filter");
        valueQuery_filter = strdup((filter));
        keyPairQuery_filter = keyValuePair_create(keyQuery_filter, valueQuery_filter);
        list_addElement(localVarQueryParameters,keyPairQuery_filter);
    }

    // query parameters
    char *keyQuery_types = NULL;
    char * valueQuery_types = NULL;
    keyValuePair_t *keyPairQuery_types = 0;
    if (types)
    {
        keyQuery_types = strdup("types");
        valueQuery_types = strdup((types));
        keyPairQuery_types = keyValuePair_create(keyQuery_types, valueQuery_types);
        list_addElement(localVarQueryParameters,keyPairQuery_types);
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
    char *keyQuery_statuses = NULL;
    char * valueQuery_statuses = NULL;
    keyValuePair_t *keyPairQuery_statuses = 0;
    if (statuses)
    {
        keyQuery_statuses = strdup("statuses");
        valueQuery_statuses = strdup((statuses));
        keyPairQuery_statuses = keyValuePair_create(keyQuery_statuses, valueQuery_statuses);
        list_addElement(localVarQueryParameters,keyPairQuery_statuses);
    }

    // query parameters
    char *keyQuery_templateTypes = NULL;
    char * valueQuery_templateTypes = NULL;
    keyValuePair_t *keyPairQuery_templateTypes = 0;
    if (templateTypes)
    {
        keyQuery_templateTypes = strdup("templateTypes");
        valueQuery_templateTypes = strdup((templateTypes));
        keyPairQuery_templateTypes = keyValuePair_create(keyQuery_templateTypes, valueQuery_templateTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_templateTypes);
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

    // query parameters
    char *keyQuery_activeOnly = NULL;
    char * valueQuery_activeOnly = NULL;
    keyValuePair_t *keyPairQuery_activeOnly = 0;
    if (activeOnly)
    {
        keyQuery_activeOnly = strdup("activeOnly");
        valueQuery_activeOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_activeOnly, MAX_NUMBER_LENGTH, "%d", *activeOnly);
        keyPairQuery_activeOnly = keyValuePair_create(keyQuery_activeOnly, valueQuery_activeOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_activeOnly);
    }

    // query parameters
    char *keyQuery_groupByGroupingId = NULL;
    char * valueQuery_groupByGroupingId = NULL;
    keyValuePair_t *keyPairQuery_groupByGroupingId = 0;
    if (groupByGroupingId)
    {
        keyQuery_groupByGroupingId = strdup("groupByGroupingId");
        valueQuery_groupByGroupingId = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_groupByGroupingId, MAX_NUMBER_LENGTH, "%d", *groupByGroupingId);
        keyPairQuery_groupByGroupingId = keyValuePair_create(keyQuery_groupByGroupingId, valueQuery_groupByGroupingId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupByGroupingId);
    }

    // query parameters
    char *keyQuery_returnAudienceAccountCount = NULL;
    char * valueQuery_returnAudienceAccountCount = NULL;
    keyValuePair_t *keyPairQuery_returnAudienceAccountCount = 0;
    if (returnAudienceAccountCount)
    {
        keyQuery_returnAudienceAccountCount = strdup("returnAudienceAccountCount");
        valueQuery_returnAudienceAccountCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAudienceAccountCount, MAX_NUMBER_LENGTH, "%d", *returnAudienceAccountCount);
        keyPairQuery_returnAudienceAccountCount = keyValuePair_create(keyQuery_returnAudienceAccountCount, valueQuery_returnAudienceAccountCount);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAudienceAccountCount);
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
    scheduled_notification_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ScheduledNotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = scheduled_notification_full_response_parseFromJSON(ScheduledNotificationAPIlocalVarJSON);
        cJSON_Delete(ScheduledNotificationAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_groupingId){
        free(keyQuery_groupingId);
        keyQuery_groupingId = NULL;
    }
    if(valueQuery_groupingId){
        free(valueQuery_groupingId);
        valueQuery_groupingId = NULL;
    }
    if(keyPairQuery_groupingId){
        keyValuePair_free(keyPairQuery_groupingId);
        keyPairQuery_groupingId = NULL;
    }
    if(keyQuery_audienceId){
        free(keyQuery_audienceId);
        keyQuery_audienceId = NULL;
    }
    if(keyPairQuery_audienceId){
        keyValuePair_free(keyPairQuery_audienceId);
        keyPairQuery_audienceId = NULL;
    }
    if(keyQuery_filter){
        free(keyQuery_filter);
        keyQuery_filter = NULL;
    }
    if(valueQuery_filter){
        free(valueQuery_filter);
        valueQuery_filter = NULL;
    }
    if(keyPairQuery_filter){
        keyValuePair_free(keyPairQuery_filter);
        keyPairQuery_filter = NULL;
    }
    if(keyQuery_types){
        free(keyQuery_types);
        keyQuery_types = NULL;
    }
    if(valueQuery_types){
        free(valueQuery_types);
        valueQuery_types = NULL;
    }
    if(keyPairQuery_types){
        keyValuePair_free(keyPairQuery_types);
        keyPairQuery_types = NULL;
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
    if(keyQuery_statuses){
        free(keyQuery_statuses);
        keyQuery_statuses = NULL;
    }
    if(valueQuery_statuses){
        free(valueQuery_statuses);
        valueQuery_statuses = NULL;
    }
    if(keyPairQuery_statuses){
        keyValuePair_free(keyPairQuery_statuses);
        keyPairQuery_statuses = NULL;
    }
    if(keyQuery_templateTypes){
        free(keyQuery_templateTypes);
        keyQuery_templateTypes = NULL;
    }
    if(valueQuery_templateTypes){
        free(valueQuery_templateTypes);
        valueQuery_templateTypes = NULL;
    }
    if(keyPairQuery_templateTypes){
        keyValuePair_free(keyPairQuery_templateTypes);
        keyPairQuery_templateTypes = NULL;
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
    if(keyQuery_activeOnly){
        free(keyQuery_activeOnly);
        keyQuery_activeOnly = NULL;
    }
    if(valueQuery_activeOnly){
        free(valueQuery_activeOnly);
        valueQuery_activeOnly = NULL;
    }
    if(keyPairQuery_activeOnly){
        keyValuePair_free(keyPairQuery_activeOnly);
        keyPairQuery_activeOnly = NULL;
    }
    if(keyQuery_groupByGroupingId){
        free(keyQuery_groupByGroupingId);
        keyQuery_groupByGroupingId = NULL;
    }
    if(valueQuery_groupByGroupingId){
        free(valueQuery_groupByGroupingId);
        valueQuery_groupByGroupingId = NULL;
    }
    if(keyPairQuery_groupByGroupingId){
        keyValuePair_free(keyPairQuery_groupByGroupingId);
        keyPairQuery_groupByGroupingId = NULL;
    }
    if(keyQuery_returnAudienceAccountCount){
        free(keyQuery_returnAudienceAccountCount);
        keyQuery_returnAudienceAccountCount = NULL;
    }
    if(valueQuery_returnAudienceAccountCount){
        free(valueQuery_returnAudienceAccountCount);
        valueQuery_returnAudienceAccountCount = NULL;
    }
    if(keyPairQuery_returnAudienceAccountCount){
        keyValuePair_free(keyPairQuery_returnAudienceAccountCount);
        keyPairQuery_returnAudienceAccountCount = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Scheduled Notification
//
// This endpoint updates a Scheduled Notification message that can be configured to process and send periodically at set time periods. Please see createScheduledNotification for more details.  Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using theUserPermissionsApi.
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_updateScheduledNotification(apiClient_t *apiClient, double version, long scheduledNotificationId, long accountId, char *name, char *type, char *message, char *payload, long contentId, char *contentName, char *contentType, long parentId, char *parentType, char *appKey, char *groupingId, char *connectionGroupIds, char *connectionAccountIds, long audienceId, char *audienceIds, char *albumIds, long reportId, char *reportParams, char *endpointURL, long scheduledDate, long startDate, long endDate, char *cronExpression, char *cronType, char *metaData, char *conditionalInput, char *templateType, sirqul_iot_platform_updateScheduledNotification_visibility_e visibility, int *active, char *errorMessage, char *status, int *updateByGroupingId, int *sendNow, char *eventType, char *deepLinkURI, int *sendToAll)
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
    char *localVarPath = strdup("/api/{version}/notification/schedule/update");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_scheduledNotificationId = NULL;
    char * valueQuery_scheduledNotificationId ;
    keyValuePair_t *keyPairQuery_scheduledNotificationId = 0;
    {
        keyQuery_scheduledNotificationId = strdup("scheduledNotificationId");
        valueQuery_scheduledNotificationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledNotificationId, MAX_NUMBER_LENGTH_LONG, "%d", scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = keyValuePair_create(keyQuery_scheduledNotificationId, valueQuery_scheduledNotificationId);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledNotificationId);
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
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }

    // query parameters
    char *keyQuery_message = NULL;
    char * valueQuery_message = NULL;
    keyValuePair_t *keyPairQuery_message = 0;
    if (message)
    {
        keyQuery_message = strdup("message");
        valueQuery_message = strdup((message));
        keyPairQuery_message = keyValuePair_create(keyQuery_message, valueQuery_message);
        list_addElement(localVarQueryParameters,keyPairQuery_message);
    }

    // query parameters
    char *keyQuery_payload = NULL;
    char * valueQuery_payload = NULL;
    keyValuePair_t *keyPairQuery_payload = 0;
    if (payload)
    {
        keyQuery_payload = strdup("payload");
        valueQuery_payload = strdup((payload));
        keyPairQuery_payload = keyValuePair_create(keyQuery_payload, valueQuery_payload);
        list_addElement(localVarQueryParameters,keyPairQuery_payload);
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
    char *keyQuery_groupingId = NULL;
    char * valueQuery_groupingId = NULL;
    keyValuePair_t *keyPairQuery_groupingId = 0;
    if (groupingId)
    {
        keyQuery_groupingId = strdup("groupingId");
        valueQuery_groupingId = strdup((groupingId));
        keyPairQuery_groupingId = keyValuePair_create(keyQuery_groupingId, valueQuery_groupingId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupingId);
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
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
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
    char *keyQuery_albumIds = NULL;
    char * valueQuery_albumIds = NULL;
    keyValuePair_t *keyPairQuery_albumIds = 0;
    if (albumIds)
    {
        keyQuery_albumIds = strdup("albumIds");
        valueQuery_albumIds = strdup((albumIds));
        keyPairQuery_albumIds = keyValuePair_create(keyQuery_albumIds, valueQuery_albumIds);
        list_addElement(localVarQueryParameters,keyPairQuery_albumIds);
    }

    // query parameters
    char *keyQuery_reportId = NULL;
    char * valueQuery_reportId ;
    keyValuePair_t *keyPairQuery_reportId = 0;
    {
        keyQuery_reportId = strdup("reportId");
        valueQuery_reportId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_reportId, MAX_NUMBER_LENGTH_LONG, "%d", reportId);
        keyPairQuery_reportId = keyValuePair_create(keyQuery_reportId, valueQuery_reportId);
        list_addElement(localVarQueryParameters,keyPairQuery_reportId);
    }

    // query parameters
    char *keyQuery_reportParams = NULL;
    char * valueQuery_reportParams = NULL;
    keyValuePair_t *keyPairQuery_reportParams = 0;
    if (reportParams)
    {
        keyQuery_reportParams = strdup("reportParams");
        valueQuery_reportParams = strdup((reportParams));
        keyPairQuery_reportParams = keyValuePair_create(keyQuery_reportParams, valueQuery_reportParams);
        list_addElement(localVarQueryParameters,keyPairQuery_reportParams);
    }

    // query parameters
    char *keyQuery_endpointURL = NULL;
    char * valueQuery_endpointURL = NULL;
    keyValuePair_t *keyPairQuery_endpointURL = 0;
    if (endpointURL)
    {
        keyQuery_endpointURL = strdup("endpointURL");
        valueQuery_endpointURL = strdup((endpointURL));
        keyPairQuery_endpointURL = keyValuePair_create(keyQuery_endpointURL, valueQuery_endpointURL);
        list_addElement(localVarQueryParameters,keyPairQuery_endpointURL);
    }

    // query parameters
    char *keyQuery_scheduledDate = NULL;
    char * valueQuery_scheduledDate ;
    keyValuePair_t *keyPairQuery_scheduledDate = 0;
    {
        keyQuery_scheduledDate = strdup("scheduledDate");
        valueQuery_scheduledDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledDate, MAX_NUMBER_LENGTH_LONG, "%d", scheduledDate);
        keyPairQuery_scheduledDate = keyValuePair_create(keyQuery_scheduledDate, valueQuery_scheduledDate);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledDate);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_cronExpression = NULL;
    char * valueQuery_cronExpression = NULL;
    keyValuePair_t *keyPairQuery_cronExpression = 0;
    if (cronExpression)
    {
        keyQuery_cronExpression = strdup("cronExpression");
        valueQuery_cronExpression = strdup((cronExpression));
        keyPairQuery_cronExpression = keyValuePair_create(keyQuery_cronExpression, valueQuery_cronExpression);
        list_addElement(localVarQueryParameters,keyPairQuery_cronExpression);
    }

    // query parameters
    char *keyQuery_cronType = NULL;
    char * valueQuery_cronType = NULL;
    keyValuePair_t *keyPairQuery_cronType = 0;
    if (cronType)
    {
        keyQuery_cronType = strdup("cronType");
        valueQuery_cronType = strdup((cronType));
        keyPairQuery_cronType = keyValuePair_create(keyQuery_cronType, valueQuery_cronType);
        list_addElement(localVarQueryParameters,keyPairQuery_cronType);
    }

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
    }

    // query parameters
    char *keyQuery_conditionalInput = NULL;
    char * valueQuery_conditionalInput = NULL;
    keyValuePair_t *keyPairQuery_conditionalInput = 0;
    if (conditionalInput)
    {
        keyQuery_conditionalInput = strdup("conditionalInput");
        valueQuery_conditionalInput = strdup((conditionalInput));
        keyPairQuery_conditionalInput = keyValuePair_create(keyQuery_conditionalInput, valueQuery_conditionalInput);
        list_addElement(localVarQueryParameters,keyPairQuery_conditionalInput);
    }

    // query parameters
    char *keyQuery_templateType = NULL;
    char * valueQuery_templateType = NULL;
    keyValuePair_t *keyPairQuery_templateType = 0;
    if (templateType)
    {
        keyQuery_templateType = strdup("templateType");
        valueQuery_templateType = strdup((templateType));
        keyPairQuery_templateType = keyValuePair_create(keyQuery_templateType, valueQuery_templateType);
        list_addElement(localVarQueryParameters,keyPairQuery_templateType);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_updateScheduledNotification_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(updateScheduledNotification_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
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
    char *keyQuery_errorMessage = NULL;
    char * valueQuery_errorMessage = NULL;
    keyValuePair_t *keyPairQuery_errorMessage = 0;
    if (errorMessage)
    {
        keyQuery_errorMessage = strdup("errorMessage");
        valueQuery_errorMessage = strdup((errorMessage));
        keyPairQuery_errorMessage = keyValuePair_create(keyQuery_errorMessage, valueQuery_errorMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_errorMessage);
    }

    // query parameters
    char *keyQuery_status = NULL;
    char * valueQuery_status = NULL;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = strdup((status));
        keyPairQuery_status = keyValuePair_create(keyQuery_status, valueQuery_status);
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_updateByGroupingId = NULL;
    char * valueQuery_updateByGroupingId = NULL;
    keyValuePair_t *keyPairQuery_updateByGroupingId = 0;
    if (updateByGroupingId)
    {
        keyQuery_updateByGroupingId = strdup("updateByGroupingId");
        valueQuery_updateByGroupingId = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateByGroupingId, MAX_NUMBER_LENGTH, "%d", *updateByGroupingId);
        keyPairQuery_updateByGroupingId = keyValuePair_create(keyQuery_updateByGroupingId, valueQuery_updateByGroupingId);
        list_addElement(localVarQueryParameters,keyPairQuery_updateByGroupingId);
    }

    // query parameters
    char *keyQuery_sendNow = NULL;
    char * valueQuery_sendNow = NULL;
    keyValuePair_t *keyPairQuery_sendNow = 0;
    if (sendNow)
    {
        keyQuery_sendNow = strdup("sendNow");
        valueQuery_sendNow = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendNow, MAX_NUMBER_LENGTH, "%d", *sendNow);
        keyPairQuery_sendNow = keyValuePair_create(keyQuery_sendNow, valueQuery_sendNow);
        list_addElement(localVarQueryParameters,keyPairQuery_sendNow);
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
    char *keyQuery_deepLinkURI = NULL;
    char * valueQuery_deepLinkURI = NULL;
    keyValuePair_t *keyPairQuery_deepLinkURI = 0;
    if (deepLinkURI)
    {
        keyQuery_deepLinkURI = strdup("deepLinkURI");
        valueQuery_deepLinkURI = strdup((deepLinkURI));
        keyPairQuery_deepLinkURI = keyValuePair_create(keyQuery_deepLinkURI, valueQuery_deepLinkURI);
        list_addElement(localVarQueryParameters,keyPairQuery_deepLinkURI);
    }

    // query parameters
    char *keyQuery_sendToAll = NULL;
    char * valueQuery_sendToAll = NULL;
    keyValuePair_t *keyPairQuery_sendToAll = 0;
    if (sendToAll)
    {
        keyQuery_sendToAll = strdup("sendToAll");
        valueQuery_sendToAll = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendToAll, MAX_NUMBER_LENGTH, "%d", *sendToAll);
        keyPairQuery_sendToAll = keyValuePair_create(keyQuery_sendToAll, valueQuery_sendToAll);
        list_addElement(localVarQueryParameters,keyPairQuery_sendToAll);
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
    scheduled_notification_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ScheduledNotificationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = scheduled_notification_full_response_parseFromJSON(ScheduledNotificationAPIlocalVarJSON);
        cJSON_Delete(ScheduledNotificationAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_scheduledNotificationId){
        free(keyQuery_scheduledNotificationId);
        keyQuery_scheduledNotificationId = NULL;
    }
    if(keyPairQuery_scheduledNotificationId){
        keyValuePair_free(keyPairQuery_scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_message){
        free(keyQuery_message);
        keyQuery_message = NULL;
    }
    if(valueQuery_message){
        free(valueQuery_message);
        valueQuery_message = NULL;
    }
    if(keyPairQuery_message){
        keyValuePair_free(keyPairQuery_message);
        keyPairQuery_message = NULL;
    }
    if(keyQuery_payload){
        free(keyQuery_payload);
        keyQuery_payload = NULL;
    }
    if(valueQuery_payload){
        free(valueQuery_payload);
        valueQuery_payload = NULL;
    }
    if(keyPairQuery_payload){
        keyValuePair_free(keyPairQuery_payload);
        keyPairQuery_payload = NULL;
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
    if(keyQuery_groupingId){
        free(keyQuery_groupingId);
        keyQuery_groupingId = NULL;
    }
    if(valueQuery_groupingId){
        free(valueQuery_groupingId);
        valueQuery_groupingId = NULL;
    }
    if(keyPairQuery_groupingId){
        keyValuePair_free(keyPairQuery_groupingId);
        keyPairQuery_groupingId = NULL;
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
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
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
    if(keyQuery_albumIds){
        free(keyQuery_albumIds);
        keyQuery_albumIds = NULL;
    }
    if(valueQuery_albumIds){
        free(valueQuery_albumIds);
        valueQuery_albumIds = NULL;
    }
    if(keyPairQuery_albumIds){
        keyValuePair_free(keyPairQuery_albumIds);
        keyPairQuery_albumIds = NULL;
    }
    if(keyQuery_reportId){
        free(keyQuery_reportId);
        keyQuery_reportId = NULL;
    }
    if(keyPairQuery_reportId){
        keyValuePair_free(keyPairQuery_reportId);
        keyPairQuery_reportId = NULL;
    }
    if(keyQuery_reportParams){
        free(keyQuery_reportParams);
        keyQuery_reportParams = NULL;
    }
    if(valueQuery_reportParams){
        free(valueQuery_reportParams);
        valueQuery_reportParams = NULL;
    }
    if(keyPairQuery_reportParams){
        keyValuePair_free(keyPairQuery_reportParams);
        keyPairQuery_reportParams = NULL;
    }
    if(keyQuery_endpointURL){
        free(keyQuery_endpointURL);
        keyQuery_endpointURL = NULL;
    }
    if(valueQuery_endpointURL){
        free(valueQuery_endpointURL);
        valueQuery_endpointURL = NULL;
    }
    if(keyPairQuery_endpointURL){
        keyValuePair_free(keyPairQuery_endpointURL);
        keyPairQuery_endpointURL = NULL;
    }
    if(keyQuery_scheduledDate){
        free(keyQuery_scheduledDate);
        keyQuery_scheduledDate = NULL;
    }
    if(keyPairQuery_scheduledDate){
        keyValuePair_free(keyPairQuery_scheduledDate);
        keyPairQuery_scheduledDate = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_cronExpression){
        free(keyQuery_cronExpression);
        keyQuery_cronExpression = NULL;
    }
    if(valueQuery_cronExpression){
        free(valueQuery_cronExpression);
        valueQuery_cronExpression = NULL;
    }
    if(keyPairQuery_cronExpression){
        keyValuePair_free(keyPairQuery_cronExpression);
        keyPairQuery_cronExpression = NULL;
    }
    if(keyQuery_cronType){
        free(keyQuery_cronType);
        keyQuery_cronType = NULL;
    }
    if(valueQuery_cronType){
        free(valueQuery_cronType);
        valueQuery_cronType = NULL;
    }
    if(keyPairQuery_cronType){
        keyValuePair_free(keyPairQuery_cronType);
        keyPairQuery_cronType = NULL;
    }
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    if(keyQuery_conditionalInput){
        free(keyQuery_conditionalInput);
        keyQuery_conditionalInput = NULL;
    }
    if(valueQuery_conditionalInput){
        free(valueQuery_conditionalInput);
        valueQuery_conditionalInput = NULL;
    }
    if(keyPairQuery_conditionalInput){
        keyValuePair_free(keyPairQuery_conditionalInput);
        keyPairQuery_conditionalInput = NULL;
    }
    if(keyQuery_templateType){
        free(keyQuery_templateType);
        keyQuery_templateType = NULL;
    }
    if(valueQuery_templateType){
        free(valueQuery_templateType);
        valueQuery_templateType = NULL;
    }
    if(keyPairQuery_templateType){
        keyValuePair_free(keyPairQuery_templateType);
        keyPairQuery_templateType = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
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
    if(keyQuery_errorMessage){
        free(keyQuery_errorMessage);
        keyQuery_errorMessage = NULL;
    }
    if(valueQuery_errorMessage){
        free(valueQuery_errorMessage);
        valueQuery_errorMessage = NULL;
    }
    if(keyPairQuery_errorMessage){
        keyValuePair_free(keyPairQuery_errorMessage);
        keyPairQuery_errorMessage = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(valueQuery_status){
        free(valueQuery_status);
        valueQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_updateByGroupingId){
        free(keyQuery_updateByGroupingId);
        keyQuery_updateByGroupingId = NULL;
    }
    if(valueQuery_updateByGroupingId){
        free(valueQuery_updateByGroupingId);
        valueQuery_updateByGroupingId = NULL;
    }
    if(keyPairQuery_updateByGroupingId){
        keyValuePair_free(keyPairQuery_updateByGroupingId);
        keyPairQuery_updateByGroupingId = NULL;
    }
    if(keyQuery_sendNow){
        free(keyQuery_sendNow);
        keyQuery_sendNow = NULL;
    }
    if(valueQuery_sendNow){
        free(valueQuery_sendNow);
        valueQuery_sendNow = NULL;
    }
    if(keyPairQuery_sendNow){
        keyValuePair_free(keyPairQuery_sendNow);
        keyPairQuery_sendNow = NULL;
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
    if(keyQuery_deepLinkURI){
        free(keyQuery_deepLinkURI);
        keyQuery_deepLinkURI = NULL;
    }
    if(valueQuery_deepLinkURI){
        free(valueQuery_deepLinkURI);
        valueQuery_deepLinkURI = NULL;
    }
    if(keyPairQuery_deepLinkURI){
        keyValuePair_free(keyPairQuery_deepLinkURI);
        keyPairQuery_deepLinkURI = NULL;
    }
    if(keyQuery_sendToAll){
        free(keyQuery_sendToAll);
        keyQuery_sendToAll = NULL;
    }
    if(valueQuery_sendToAll){
        free(valueQuery_sendToAll);
        valueQuery_sendToAll = NULL;
    }
    if(keyPairQuery_sendToAll){
        keyValuePair_free(keyPairQuery_sendToAll);
        keyPairQuery_sendToAll = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

