#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "TaskAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum VISIBILITY for TaskAPI_createTask

static char* createTask_VISIBILITY_ToString(sirqul_iot_platform_createTask_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_createTask_visibility_e createTask_VISIBILITY_FromString(char* VISIBILITY){
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
// Function createTask_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createTask_VISIBILITY_convertToJSON(sirqul_iot_platform_createTask_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", createTask_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createTask_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createTask_visibility_e createTask_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_createTask_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = createTask_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for TaskAPI_updateTask

static char* updateTask_VISIBILITY_ToString(sirqul_iot_platform_updateTask_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_updateTask_visibility_e updateTask_VISIBILITY_FromString(char* VISIBILITY){
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
// Function updateTask_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateTask_VISIBILITY_convertToJSON(sirqul_iot_platform_updateTask_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", updateTask_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateTask_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateTask_visibility_e updateTask_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_updateTask_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = updateTask_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/


// Create Task
//
// Create a Task
//
task_response_t*
TaskAPI_createTask(apiClient_t *apiClient, long accountId, char *name, char *appKey, char *groupingId, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, sirqul_iot_platform_createTask_visibility_e visibility, int *active)
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
    char *localVarPath = strdup("/task/create");





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
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_createTask_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(createTask_VISIBILITY_ToString(
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
    task_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TaskAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = task_response_parseFromJSON(TaskAPIlocalVarJSON);
        cJSON_Delete(TaskAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Task
//
// Delete a Task
//
sirqul_response_t*
TaskAPI_deleteTask(apiClient_t *apiClient, long accountId, long taskId)
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
    char *localVarPath = strdup("/task/delete");





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
    char *keyQuery_taskId = NULL;
    char * valueQuery_taskId ;
    keyValuePair_t *keyPairQuery_taskId = 0;
    {
        keyQuery_taskId = strdup("taskId");
        valueQuery_taskId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_taskId, MAX_NUMBER_LENGTH_LONG, "%d", taskId);
        keyPairQuery_taskId = keyValuePair_create(keyQuery_taskId, valueQuery_taskId);
        list_addElement(localVarQueryParameters,keyPairQuery_taskId);
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
        cJSON *TaskAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TaskAPIlocalVarJSON);
        cJSON_Delete(TaskAPIlocalVarJSON);
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
    if(keyQuery_taskId){
        free(keyQuery_taskId);
        keyQuery_taskId = NULL;
    }
    if(keyPairQuery_taskId){
        keyValuePair_free(keyPairQuery_taskId);
        keyPairQuery_taskId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Task
//
// Get a Task
//
task_response_t*
TaskAPI_getTask(apiClient_t *apiClient, long accountId, long taskId)
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
    char *localVarPath = strdup("/task/get");





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
    char *keyQuery_taskId = NULL;
    char * valueQuery_taskId ;
    keyValuePair_t *keyPairQuery_taskId = 0;
    {
        keyQuery_taskId = strdup("taskId");
        valueQuery_taskId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_taskId, MAX_NUMBER_LENGTH_LONG, "%d", taskId);
        keyPairQuery_taskId = keyValuePair_create(keyQuery_taskId, valueQuery_taskId);
        list_addElement(localVarQueryParameters,keyPairQuery_taskId);
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
    task_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TaskAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = task_response_parseFromJSON(TaskAPIlocalVarJSON);
        cJSON_Delete(TaskAPIlocalVarJSON);
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
    if(keyQuery_taskId){
        free(keyQuery_taskId);
        keyQuery_taskId = NULL;
    }
    if(keyPairQuery_taskId){
        keyValuePair_free(keyPairQuery_taskId);
        keyPairQuery_taskId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Tasks
//
// Search on Tasks
//
list_t*
TaskAPI_searchTasks(apiClient_t *apiClient, long accountId, char *groupingId, char *filter, char *statuses, char *templateTypes, char *appKey, char *keyword, char *sortField, int *descending, int *start, int *limit, int *activeOnly)
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
    char *localVarPath = strdup("/task/search");





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
        cJSON *TaskAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(TaskAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, TaskAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( TaskAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Task
//
// Update a Task
//
task_response_t*
TaskAPI_updateTask(apiClient_t *apiClient, long taskId, long accountId, char *name, char *appKey, char *groupingId, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, sirqul_iot_platform_updateTask_visibility_e visibility, int *active)
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
    char *localVarPath = strdup("/task/update");





    // query parameters
    char *keyQuery_taskId = NULL;
    char * valueQuery_taskId ;
    keyValuePair_t *keyPairQuery_taskId = 0;
    {
        keyQuery_taskId = strdup("taskId");
        valueQuery_taskId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_taskId, MAX_NUMBER_LENGTH_LONG, "%d", taskId);
        keyPairQuery_taskId = keyValuePair_create(keyQuery_taskId, valueQuery_taskId);
        list_addElement(localVarQueryParameters,keyPairQuery_taskId);
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
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_updateTask_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(updateTask_VISIBILITY_ToString(
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
    task_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TaskAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = task_response_parseFromJSON(TaskAPIlocalVarJSON);
        cJSON_Delete(TaskAPIlocalVarJSON);
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
    if(keyQuery_taskId){
        free(keyQuery_taskId);
        keyQuery_taskId = NULL;
    }
    if(keyPairQuery_taskId){
        keyValuePair_free(keyPairQuery_taskId);
        keyPairQuery_taskId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

