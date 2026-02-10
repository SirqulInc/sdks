#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AMQPAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Consumer
//
// Create a connection to an existing amqp queue and register as a consumer.
//
queue_response_t*
AMQPAPI_consumerCreate(apiClient_t *apiClient, double version, char *appKey, char *name, char *hostname, char *username, char *password, char *dataMapping, char *deviceId, long accountId, int *port, char *virtualHost, char *exchanger, char *exchangerType, int *workers, int *useSSL)
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
    char *localVarPath = strdup("/api/{version}/queue/consumer/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_hostname = NULL;
    char * valueQuery_hostname = NULL;
    keyValuePair_t *keyPairQuery_hostname = 0;
    if (hostname)
    {
        keyQuery_hostname = strdup("hostname");
        valueQuery_hostname = strdup((hostname));
        keyPairQuery_hostname = keyValuePair_create(keyQuery_hostname, valueQuery_hostname);
        list_addElement(localVarQueryParameters,keyPairQuery_hostname);
    }

    // query parameters
    char *keyQuery_port = NULL;
    char * valueQuery_port = NULL;
    keyValuePair_t *keyPairQuery_port = 0;
    if (port)
    {
        keyQuery_port = strdup("port");
        valueQuery_port = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_port, MAX_NUMBER_LENGTH, "%d", *port);
        keyPairQuery_port = keyValuePair_create(keyQuery_port, valueQuery_port);
        list_addElement(localVarQueryParameters,keyPairQuery_port);
    }

    // query parameters
    char *keyQuery_username = NULL;
    char * valueQuery_username = NULL;
    keyValuePair_t *keyPairQuery_username = 0;
    if (username)
    {
        keyQuery_username = strdup("username");
        valueQuery_username = strdup((username));
        keyPairQuery_username = keyValuePair_create(keyQuery_username, valueQuery_username);
        list_addElement(localVarQueryParameters,keyPairQuery_username);
    }

    // query parameters
    char *keyQuery_password = NULL;
    char * valueQuery_password = NULL;
    keyValuePair_t *keyPairQuery_password = 0;
    if (password)
    {
        keyQuery_password = strdup("password");
        valueQuery_password = strdup((password));
        keyPairQuery_password = keyValuePair_create(keyQuery_password, valueQuery_password);
        list_addElement(localVarQueryParameters,keyPairQuery_password);
    }

    // query parameters
    char *keyQuery_virtualHost = NULL;
    char * valueQuery_virtualHost = NULL;
    keyValuePair_t *keyPairQuery_virtualHost = 0;
    if (virtualHost)
    {
        keyQuery_virtualHost = strdup("virtualHost");
        valueQuery_virtualHost = strdup((virtualHost));
        keyPairQuery_virtualHost = keyValuePair_create(keyQuery_virtualHost, valueQuery_virtualHost);
        list_addElement(localVarQueryParameters,keyPairQuery_virtualHost);
    }

    // query parameters
    char *keyQuery_exchanger = NULL;
    char * valueQuery_exchanger = NULL;
    keyValuePair_t *keyPairQuery_exchanger = 0;
    if (exchanger)
    {
        keyQuery_exchanger = strdup("exchanger");
        valueQuery_exchanger = strdup((exchanger));
        keyPairQuery_exchanger = keyValuePair_create(keyQuery_exchanger, valueQuery_exchanger);
        list_addElement(localVarQueryParameters,keyPairQuery_exchanger);
    }

    // query parameters
    char *keyQuery_exchangerType = NULL;
    char * valueQuery_exchangerType = NULL;
    keyValuePair_t *keyPairQuery_exchangerType = 0;
    if (exchangerType)
    {
        keyQuery_exchangerType = strdup("exchangerType");
        valueQuery_exchangerType = strdup((exchangerType));
        keyPairQuery_exchangerType = keyValuePair_create(keyQuery_exchangerType, valueQuery_exchangerType);
        list_addElement(localVarQueryParameters,keyPairQuery_exchangerType);
    }

    // query parameters
    char *keyQuery_workers = NULL;
    char * valueQuery_workers = NULL;
    keyValuePair_t *keyPairQuery_workers = 0;
    if (workers)
    {
        keyQuery_workers = strdup("workers");
        valueQuery_workers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_workers, MAX_NUMBER_LENGTH, "%d", *workers);
        keyPairQuery_workers = keyValuePair_create(keyQuery_workers, valueQuery_workers);
        list_addElement(localVarQueryParameters,keyPairQuery_workers);
    }

    // query parameters
    char *keyQuery_dataMapping = NULL;
    char * valueQuery_dataMapping = NULL;
    keyValuePair_t *keyPairQuery_dataMapping = 0;
    if (dataMapping)
    {
        keyQuery_dataMapping = strdup("dataMapping");
        valueQuery_dataMapping = strdup((dataMapping));
        keyPairQuery_dataMapping = keyValuePair_create(keyQuery_dataMapping, valueQuery_dataMapping);
        list_addElement(localVarQueryParameters,keyPairQuery_dataMapping);
    }

    // query parameters
    char *keyQuery_useSSL = NULL;
    char * valueQuery_useSSL = NULL;
    keyValuePair_t *keyPairQuery_useSSL = 0;
    if (useSSL)
    {
        keyQuery_useSSL = strdup("useSSL");
        valueQuery_useSSL = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useSSL, MAX_NUMBER_LENGTH, "%d", *useSSL);
        keyPairQuery_useSSL = keyValuePair_create(keyQuery_useSSL, valueQuery_useSSL);
        list_addElement(localVarQueryParameters,keyPairQuery_useSSL);
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
    queue_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_hostname){
        free(keyQuery_hostname);
        keyQuery_hostname = NULL;
    }
    if(valueQuery_hostname){
        free(valueQuery_hostname);
        valueQuery_hostname = NULL;
    }
    if(keyPairQuery_hostname){
        keyValuePair_free(keyPairQuery_hostname);
        keyPairQuery_hostname = NULL;
    }
    if(keyQuery_port){
        free(keyQuery_port);
        keyQuery_port = NULL;
    }
    if(valueQuery_port){
        free(valueQuery_port);
        valueQuery_port = NULL;
    }
    if(keyPairQuery_port){
        keyValuePair_free(keyPairQuery_port);
        keyPairQuery_port = NULL;
    }
    if(keyQuery_username){
        free(keyQuery_username);
        keyQuery_username = NULL;
    }
    if(valueQuery_username){
        free(valueQuery_username);
        valueQuery_username = NULL;
    }
    if(keyPairQuery_username){
        keyValuePair_free(keyPairQuery_username);
        keyPairQuery_username = NULL;
    }
    if(keyQuery_password){
        free(keyQuery_password);
        keyQuery_password = NULL;
    }
    if(valueQuery_password){
        free(valueQuery_password);
        valueQuery_password = NULL;
    }
    if(keyPairQuery_password){
        keyValuePair_free(keyPairQuery_password);
        keyPairQuery_password = NULL;
    }
    if(keyQuery_virtualHost){
        free(keyQuery_virtualHost);
        keyQuery_virtualHost = NULL;
    }
    if(valueQuery_virtualHost){
        free(valueQuery_virtualHost);
        valueQuery_virtualHost = NULL;
    }
    if(keyPairQuery_virtualHost){
        keyValuePair_free(keyPairQuery_virtualHost);
        keyPairQuery_virtualHost = NULL;
    }
    if(keyQuery_exchanger){
        free(keyQuery_exchanger);
        keyQuery_exchanger = NULL;
    }
    if(valueQuery_exchanger){
        free(valueQuery_exchanger);
        valueQuery_exchanger = NULL;
    }
    if(keyPairQuery_exchanger){
        keyValuePair_free(keyPairQuery_exchanger);
        keyPairQuery_exchanger = NULL;
    }
    if(keyQuery_exchangerType){
        free(keyQuery_exchangerType);
        keyQuery_exchangerType = NULL;
    }
    if(valueQuery_exchangerType){
        free(valueQuery_exchangerType);
        valueQuery_exchangerType = NULL;
    }
    if(keyPairQuery_exchangerType){
        keyValuePair_free(keyPairQuery_exchangerType);
        keyPairQuery_exchangerType = NULL;
    }
    if(keyQuery_workers){
        free(keyQuery_workers);
        keyQuery_workers = NULL;
    }
    if(valueQuery_workers){
        free(valueQuery_workers);
        valueQuery_workers = NULL;
    }
    if(keyPairQuery_workers){
        keyValuePair_free(keyPairQuery_workers);
        keyPairQuery_workers = NULL;
    }
    if(keyQuery_dataMapping){
        free(keyQuery_dataMapping);
        keyQuery_dataMapping = NULL;
    }
    if(valueQuery_dataMapping){
        free(valueQuery_dataMapping);
        valueQuery_dataMapping = NULL;
    }
    if(keyPairQuery_dataMapping){
        keyValuePair_free(keyPairQuery_dataMapping);
        keyPairQuery_dataMapping = NULL;
    }
    if(keyQuery_useSSL){
        free(keyQuery_useSSL);
        keyQuery_useSSL = NULL;
    }
    if(valueQuery_useSSL){
        free(valueQuery_useSSL);
        valueQuery_useSSL = NULL;
    }
    if(keyPairQuery_useSSL){
        keyValuePair_free(keyPairQuery_useSSL);
        keyPairQuery_useSSL = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Consumer
//
// Update an existing amqp queue's data mapping.
//
queue_response_t*
AMQPAPI_consumerUpdate(apiClient_t *apiClient, double version, char *appKey, long queueId, char *dataMapping, char *deviceId, long accountId, int *useSSL)
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
    char *localVarPath = strdup("/api/{version}/queue/consumer/update");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_queueId = NULL;
    char * valueQuery_queueId ;
    keyValuePair_t *keyPairQuery_queueId = 0;
    {
        keyQuery_queueId = strdup("queueId");
        valueQuery_queueId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_queueId, MAX_NUMBER_LENGTH_LONG, "%d", queueId);
        keyPairQuery_queueId = keyValuePair_create(keyQuery_queueId, valueQuery_queueId);
        list_addElement(localVarQueryParameters,keyPairQuery_queueId);
    }

    // query parameters
    char *keyQuery_dataMapping = NULL;
    char * valueQuery_dataMapping = NULL;
    keyValuePair_t *keyPairQuery_dataMapping = 0;
    if (dataMapping)
    {
        keyQuery_dataMapping = strdup("dataMapping");
        valueQuery_dataMapping = strdup((dataMapping));
        keyPairQuery_dataMapping = keyValuePair_create(keyQuery_dataMapping, valueQuery_dataMapping);
        list_addElement(localVarQueryParameters,keyPairQuery_dataMapping);
    }

    // query parameters
    char *keyQuery_useSSL = NULL;
    char * valueQuery_useSSL = NULL;
    keyValuePair_t *keyPairQuery_useSSL = 0;
    if (useSSL)
    {
        keyQuery_useSSL = strdup("useSSL");
        valueQuery_useSSL = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useSSL, MAX_NUMBER_LENGTH, "%d", *useSSL);
        keyPairQuery_useSSL = keyValuePair_create(keyQuery_useSSL, valueQuery_useSSL);
        list_addElement(localVarQueryParameters,keyPairQuery_useSSL);
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
    queue_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_queueId){
        free(keyQuery_queueId);
        keyQuery_queueId = NULL;
    }
    if(keyPairQuery_queueId){
        keyValuePair_free(keyPairQuery_queueId);
        keyPairQuery_queueId = NULL;
    }
    if(keyQuery_dataMapping){
        free(keyQuery_dataMapping);
        keyQuery_dataMapping = NULL;
    }
    if(valueQuery_dataMapping){
        free(valueQuery_dataMapping);
        valueQuery_dataMapping = NULL;
    }
    if(keyPairQuery_dataMapping){
        keyValuePair_free(keyPairQuery_dataMapping);
        keyPairQuery_dataMapping = NULL;
    }
    if(keyQuery_useSSL){
        free(keyQuery_useSSL);
        keyQuery_useSSL = NULL;
    }
    if(valueQuery_useSSL){
        free(valueQuery_useSSL);
        valueQuery_useSSL = NULL;
    }
    if(keyPairQuery_useSSL){
        keyValuePair_free(keyPairQuery_useSSL);
        keyPairQuery_useSSL = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Queue
//
// Create a basic AMQP queue. If the username and password and virtual host is not sepcified, the queue will be created on the virtual host assigned to the application.
//
queue_response_t*
AMQPAPI_queueCreate(apiClient_t *apiClient, double version, char *appKey, char *name, char *deviceId, long accountId, int *workers, char *analyticTags, char *hostname, int *port, char *username, char *password, char *virtualHost, int *useSSL)
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
    char *localVarPath = strdup("/api/{version}/queue/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_workers = NULL;
    char * valueQuery_workers = NULL;
    keyValuePair_t *keyPairQuery_workers = 0;
    if (workers)
    {
        keyQuery_workers = strdup("workers");
        valueQuery_workers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_workers, MAX_NUMBER_LENGTH, "%d", *workers);
        keyPairQuery_workers = keyValuePair_create(keyQuery_workers, valueQuery_workers);
        list_addElement(localVarQueryParameters,keyPairQuery_workers);
    }

    // query parameters
    char *keyQuery_analyticTags = NULL;
    char * valueQuery_analyticTags = NULL;
    keyValuePair_t *keyPairQuery_analyticTags = 0;
    if (analyticTags)
    {
        keyQuery_analyticTags = strdup("analyticTags");
        valueQuery_analyticTags = strdup((analyticTags));
        keyPairQuery_analyticTags = keyValuePair_create(keyQuery_analyticTags, valueQuery_analyticTags);
        list_addElement(localVarQueryParameters,keyPairQuery_analyticTags);
    }

    // query parameters
    char *keyQuery_hostname = NULL;
    char * valueQuery_hostname = NULL;
    keyValuePair_t *keyPairQuery_hostname = 0;
    if (hostname)
    {
        keyQuery_hostname = strdup("hostname");
        valueQuery_hostname = strdup((hostname));
        keyPairQuery_hostname = keyValuePair_create(keyQuery_hostname, valueQuery_hostname);
        list_addElement(localVarQueryParameters,keyPairQuery_hostname);
    }

    // query parameters
    char *keyQuery_port = NULL;
    char * valueQuery_port = NULL;
    keyValuePair_t *keyPairQuery_port = 0;
    if (port)
    {
        keyQuery_port = strdup("port");
        valueQuery_port = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_port, MAX_NUMBER_LENGTH, "%d", *port);
        keyPairQuery_port = keyValuePair_create(keyQuery_port, valueQuery_port);
        list_addElement(localVarQueryParameters,keyPairQuery_port);
    }

    // query parameters
    char *keyQuery_username = NULL;
    char * valueQuery_username = NULL;
    keyValuePair_t *keyPairQuery_username = 0;
    if (username)
    {
        keyQuery_username = strdup("username");
        valueQuery_username = strdup((username));
        keyPairQuery_username = keyValuePair_create(keyQuery_username, valueQuery_username);
        list_addElement(localVarQueryParameters,keyPairQuery_username);
    }

    // query parameters
    char *keyQuery_password = NULL;
    char * valueQuery_password = NULL;
    keyValuePair_t *keyPairQuery_password = 0;
    if (password)
    {
        keyQuery_password = strdup("password");
        valueQuery_password = strdup((password));
        keyPairQuery_password = keyValuePair_create(keyQuery_password, valueQuery_password);
        list_addElement(localVarQueryParameters,keyPairQuery_password);
    }

    // query parameters
    char *keyQuery_virtualHost = NULL;
    char * valueQuery_virtualHost = NULL;
    keyValuePair_t *keyPairQuery_virtualHost = 0;
    if (virtualHost)
    {
        keyQuery_virtualHost = strdup("virtualHost");
        valueQuery_virtualHost = strdup((virtualHost));
        keyPairQuery_virtualHost = keyValuePair_create(keyQuery_virtualHost, valueQuery_virtualHost);
        list_addElement(localVarQueryParameters,keyPairQuery_virtualHost);
    }

    // query parameters
    char *keyQuery_useSSL = NULL;
    char * valueQuery_useSSL = NULL;
    keyValuePair_t *keyPairQuery_useSSL = 0;
    if (useSSL)
    {
        keyQuery_useSSL = strdup("useSSL");
        valueQuery_useSSL = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useSSL, MAX_NUMBER_LENGTH, "%d", *useSSL);
        keyPairQuery_useSSL = keyValuePair_create(keyQuery_useSSL, valueQuery_useSSL);
        list_addElement(localVarQueryParameters,keyPairQuery_useSSL);
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
    queue_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_workers){
        free(keyQuery_workers);
        keyQuery_workers = NULL;
    }
    if(valueQuery_workers){
        free(valueQuery_workers);
        valueQuery_workers = NULL;
    }
    if(keyPairQuery_workers){
        keyValuePair_free(keyPairQuery_workers);
        keyPairQuery_workers = NULL;
    }
    if(keyQuery_analyticTags){
        free(keyQuery_analyticTags);
        keyQuery_analyticTags = NULL;
    }
    if(valueQuery_analyticTags){
        free(valueQuery_analyticTags);
        valueQuery_analyticTags = NULL;
    }
    if(keyPairQuery_analyticTags){
        keyValuePair_free(keyPairQuery_analyticTags);
        keyPairQuery_analyticTags = NULL;
    }
    if(keyQuery_hostname){
        free(keyQuery_hostname);
        keyQuery_hostname = NULL;
    }
    if(valueQuery_hostname){
        free(valueQuery_hostname);
        valueQuery_hostname = NULL;
    }
    if(keyPairQuery_hostname){
        keyValuePair_free(keyPairQuery_hostname);
        keyPairQuery_hostname = NULL;
    }
    if(keyQuery_port){
        free(keyQuery_port);
        keyQuery_port = NULL;
    }
    if(valueQuery_port){
        free(valueQuery_port);
        valueQuery_port = NULL;
    }
    if(keyPairQuery_port){
        keyValuePair_free(keyPairQuery_port);
        keyPairQuery_port = NULL;
    }
    if(keyQuery_username){
        free(keyQuery_username);
        keyQuery_username = NULL;
    }
    if(valueQuery_username){
        free(valueQuery_username);
        valueQuery_username = NULL;
    }
    if(keyPairQuery_username){
        keyValuePair_free(keyPairQuery_username);
        keyPairQuery_username = NULL;
    }
    if(keyQuery_password){
        free(keyQuery_password);
        keyQuery_password = NULL;
    }
    if(valueQuery_password){
        free(valueQuery_password);
        valueQuery_password = NULL;
    }
    if(keyPairQuery_password){
        keyValuePair_free(keyPairQuery_password);
        keyPairQuery_password = NULL;
    }
    if(keyQuery_virtualHost){
        free(keyQuery_virtualHost);
        keyQuery_virtualHost = NULL;
    }
    if(valueQuery_virtualHost){
        free(valueQuery_virtualHost);
        valueQuery_virtualHost = NULL;
    }
    if(keyPairQuery_virtualHost){
        keyValuePair_free(keyPairQuery_virtualHost);
        keyPairQuery_virtualHost = NULL;
    }
    if(keyQuery_useSSL){
        free(keyQuery_useSSL);
        keyQuery_useSSL = NULL;
    }
    if(valueQuery_useSSL){
        free(valueQuery_useSSL);
        valueQuery_useSSL = NULL;
    }
    if(keyPairQuery_useSSL){
        keyValuePair_free(keyPairQuery_useSSL);
        keyPairQuery_useSSL = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Queue
//
// Delete the stored queue record and close any active connections to the AMQP servers.
//
sirqul_response_t*
AMQPAPI_queueDelete(apiClient_t *apiClient, double version, long queueId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/queue/delete");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_queueId = NULL;
    char * valueQuery_queueId ;
    keyValuePair_t *keyPairQuery_queueId = 0;
    {
        keyQuery_queueId = strdup("queueId");
        valueQuery_queueId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_queueId, MAX_NUMBER_LENGTH_LONG, "%d", queueId);
        keyPairQuery_queueId = keyValuePair_create(keyQuery_queueId, valueQuery_queueId);
        list_addElement(localVarQueryParameters,keyPairQuery_queueId);
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
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_queueId){
        free(keyQuery_queueId);
        keyQuery_queueId = NULL;
    }
    if(keyPairQuery_queueId){
        keyValuePair_free(keyPairQuery_queueId);
        keyPairQuery_queueId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Queue
//
// Get the stored queue record. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
//
queue_response_t*
AMQPAPI_queueGet(apiClient_t *apiClient, double version, char *deviceId, long accountId, long queueId, char *appKey, char *name, char *hostname, char *virtualHost)
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
    char *localVarPath = strdup("/api/{version}/queue/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_queueId = NULL;
    char * valueQuery_queueId ;
    keyValuePair_t *keyPairQuery_queueId = 0;
    {
        keyQuery_queueId = strdup("queueId");
        valueQuery_queueId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_queueId, MAX_NUMBER_LENGTH_LONG, "%d", queueId);
        keyPairQuery_queueId = keyValuePair_create(keyQuery_queueId, valueQuery_queueId);
        list_addElement(localVarQueryParameters,keyPairQuery_queueId);
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
    char *keyQuery_hostname = NULL;
    char * valueQuery_hostname = NULL;
    keyValuePair_t *keyPairQuery_hostname = 0;
    if (hostname)
    {
        keyQuery_hostname = strdup("hostname");
        valueQuery_hostname = strdup((hostname));
        keyPairQuery_hostname = keyValuePair_create(keyQuery_hostname, valueQuery_hostname);
        list_addElement(localVarQueryParameters,keyPairQuery_hostname);
    }

    // query parameters
    char *keyQuery_virtualHost = NULL;
    char * valueQuery_virtualHost = NULL;
    keyValuePair_t *keyPairQuery_virtualHost = 0;
    if (virtualHost)
    {
        keyQuery_virtualHost = strdup("virtualHost");
        valueQuery_virtualHost = strdup((virtualHost));
        keyPairQuery_virtualHost = keyValuePair_create(keyQuery_virtualHost, valueQuery_virtualHost);
        list_addElement(localVarQueryParameters,keyPairQuery_virtualHost);
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
    queue_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_queueId){
        free(keyQuery_queueId);
        keyQuery_queueId = NULL;
    }
    if(keyPairQuery_queueId){
        keyValuePair_free(keyPairQuery_queueId);
        keyPairQuery_queueId = NULL;
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
    if(keyQuery_hostname){
        free(keyQuery_hostname);
        keyQuery_hostname = NULL;
    }
    if(valueQuery_hostname){
        free(valueQuery_hostname);
        valueQuery_hostname = NULL;
    }
    if(keyPairQuery_hostname){
        keyValuePair_free(keyPairQuery_hostname);
        keyPairQuery_hostname = NULL;
    }
    if(keyQuery_virtualHost){
        free(keyQuery_virtualHost);
        keyQuery_virtualHost = NULL;
    }
    if(valueQuery_virtualHost){
        free(valueQuery_virtualHost);
        valueQuery_virtualHost = NULL;
    }
    if(keyPairQuery_virtualHost){
        keyValuePair_free(keyPairQuery_virtualHost);
        keyPairQuery_virtualHost = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Publish Queue
//
// Publish a message to a stored queue. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
//
sirqul_response_t*
AMQPAPI_queuePublish(apiClient_t *apiClient, double version, char *message, long queueId, char *appKey, char *name, char *hostname, char *virtualHost)
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
    char *localVarPath = strdup("/api/{version}/queue/publish");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_queueId = NULL;
    char * valueQuery_queueId ;
    keyValuePair_t *keyPairQuery_queueId = 0;
    {
        keyQuery_queueId = strdup("queueId");
        valueQuery_queueId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_queueId, MAX_NUMBER_LENGTH_LONG, "%d", queueId);
        keyPairQuery_queueId = keyValuePair_create(keyQuery_queueId, valueQuery_queueId);
        list_addElement(localVarQueryParameters,keyPairQuery_queueId);
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
    char *keyQuery_hostname = NULL;
    char * valueQuery_hostname = NULL;
    keyValuePair_t *keyPairQuery_hostname = 0;
    if (hostname)
    {
        keyQuery_hostname = strdup("hostname");
        valueQuery_hostname = strdup((hostname));
        keyPairQuery_hostname = keyValuePair_create(keyQuery_hostname, valueQuery_hostname);
        list_addElement(localVarQueryParameters,keyPairQuery_hostname);
    }

    // query parameters
    char *keyQuery_virtualHost = NULL;
    char * valueQuery_virtualHost = NULL;
    keyValuePair_t *keyPairQuery_virtualHost = 0;
    if (virtualHost)
    {
        keyQuery_virtualHost = strdup("virtualHost");
        valueQuery_virtualHost = strdup((virtualHost));
        keyPairQuery_virtualHost = keyValuePair_create(keyQuery_virtualHost, valueQuery_virtualHost);
        list_addElement(localVarQueryParameters,keyPairQuery_virtualHost);
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
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_queueId){
        free(keyQuery_queueId);
        keyQuery_queueId = NULL;
    }
    if(keyPairQuery_queueId){
        keyValuePair_free(keyPairQuery_queueId);
        keyPairQuery_queueId = NULL;
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
    if(keyQuery_hostname){
        free(keyQuery_hostname);
        keyQuery_hostname = NULL;
    }
    if(valueQuery_hostname){
        free(valueQuery_hostname);
        valueQuery_hostname = NULL;
    }
    if(keyPairQuery_hostname){
        keyValuePair_free(keyPairQuery_hostname);
        keyPairQuery_hostname = NULL;
    }
    if(keyQuery_virtualHost){
        free(keyQuery_virtualHost);
        keyQuery_virtualHost = NULL;
    }
    if(valueQuery_virtualHost){
        free(valueQuery_virtualHost);
        valueQuery_virtualHost = NULL;
    }
    if(keyPairQuery_virtualHost){
        keyValuePair_free(keyPairQuery_virtualHost);
        keyPairQuery_virtualHost = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Queue
//
// Get the queues setup for the BillableEntity's applications.
//
queue_response_t*
AMQPAPI_queueSearch(apiClient_t *apiClient, double version, long queueId, char *deviceId, long accountId, char *name, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/queue/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_queueId = NULL;
    char * valueQuery_queueId ;
    keyValuePair_t *keyPairQuery_queueId = 0;
    {
        keyQuery_queueId = strdup("queueId");
        valueQuery_queueId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_queueId, MAX_NUMBER_LENGTH_LONG, "%d", queueId);
        keyPairQuery_queueId = keyValuePair_create(keyQuery_queueId, valueQuery_queueId);
        list_addElement(localVarQueryParameters,keyPairQuery_queueId);
    }

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
    queue_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_queueId){
        free(keyQuery_queueId);
        keyQuery_queueId = NULL;
    }
    if(keyPairQuery_queueId){
        keyValuePair_free(keyPairQuery_queueId);
        keyPairQuery_queueId = NULL;
    }
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

// Update Queue
//
// Update the basic AMQP queue.
//
queue_response_t*
AMQPAPI_queueUpdate(apiClient_t *apiClient, double version, long queueId, char *deviceId, long accountId, char *appKey, int *workers, char *analyticTags, char *hostname, int *port, char *username, char *password, char *virtualHost, int *useSSL)
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
    char *localVarPath = strdup("/api/{version}/queue/update");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_queueId = NULL;
    char * valueQuery_queueId ;
    keyValuePair_t *keyPairQuery_queueId = 0;
    {
        keyQuery_queueId = strdup("queueId");
        valueQuery_queueId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_queueId, MAX_NUMBER_LENGTH_LONG, "%d", queueId);
        keyPairQuery_queueId = keyValuePair_create(keyQuery_queueId, valueQuery_queueId);
        list_addElement(localVarQueryParameters,keyPairQuery_queueId);
    }

    // query parameters
    char *keyQuery_workers = NULL;
    char * valueQuery_workers = NULL;
    keyValuePair_t *keyPairQuery_workers = 0;
    if (workers)
    {
        keyQuery_workers = strdup("workers");
        valueQuery_workers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_workers, MAX_NUMBER_LENGTH, "%d", *workers);
        keyPairQuery_workers = keyValuePair_create(keyQuery_workers, valueQuery_workers);
        list_addElement(localVarQueryParameters,keyPairQuery_workers);
    }

    // query parameters
    char *keyQuery_analyticTags = NULL;
    char * valueQuery_analyticTags = NULL;
    keyValuePair_t *keyPairQuery_analyticTags = 0;
    if (analyticTags)
    {
        keyQuery_analyticTags = strdup("analyticTags");
        valueQuery_analyticTags = strdup((analyticTags));
        keyPairQuery_analyticTags = keyValuePair_create(keyQuery_analyticTags, valueQuery_analyticTags);
        list_addElement(localVarQueryParameters,keyPairQuery_analyticTags);
    }

    // query parameters
    char *keyQuery_hostname = NULL;
    char * valueQuery_hostname = NULL;
    keyValuePair_t *keyPairQuery_hostname = 0;
    if (hostname)
    {
        keyQuery_hostname = strdup("hostname");
        valueQuery_hostname = strdup((hostname));
        keyPairQuery_hostname = keyValuePair_create(keyQuery_hostname, valueQuery_hostname);
        list_addElement(localVarQueryParameters,keyPairQuery_hostname);
    }

    // query parameters
    char *keyQuery_port = NULL;
    char * valueQuery_port = NULL;
    keyValuePair_t *keyPairQuery_port = 0;
    if (port)
    {
        keyQuery_port = strdup("port");
        valueQuery_port = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_port, MAX_NUMBER_LENGTH, "%d", *port);
        keyPairQuery_port = keyValuePair_create(keyQuery_port, valueQuery_port);
        list_addElement(localVarQueryParameters,keyPairQuery_port);
    }

    // query parameters
    char *keyQuery_username = NULL;
    char * valueQuery_username = NULL;
    keyValuePair_t *keyPairQuery_username = 0;
    if (username)
    {
        keyQuery_username = strdup("username");
        valueQuery_username = strdup((username));
        keyPairQuery_username = keyValuePair_create(keyQuery_username, valueQuery_username);
        list_addElement(localVarQueryParameters,keyPairQuery_username);
    }

    // query parameters
    char *keyQuery_password = NULL;
    char * valueQuery_password = NULL;
    keyValuePair_t *keyPairQuery_password = 0;
    if (password)
    {
        keyQuery_password = strdup("password");
        valueQuery_password = strdup((password));
        keyPairQuery_password = keyValuePair_create(keyQuery_password, valueQuery_password);
        list_addElement(localVarQueryParameters,keyPairQuery_password);
    }

    // query parameters
    char *keyQuery_virtualHost = NULL;
    char * valueQuery_virtualHost = NULL;
    keyValuePair_t *keyPairQuery_virtualHost = 0;
    if (virtualHost)
    {
        keyQuery_virtualHost = strdup("virtualHost");
        valueQuery_virtualHost = strdup((virtualHost));
        keyPairQuery_virtualHost = keyValuePair_create(keyQuery_virtualHost, valueQuery_virtualHost);
        list_addElement(localVarQueryParameters,keyPairQuery_virtualHost);
    }

    // query parameters
    char *keyQuery_useSSL = NULL;
    char * valueQuery_useSSL = NULL;
    keyValuePair_t *keyPairQuery_useSSL = 0;
    if (useSSL)
    {
        keyQuery_useSSL = strdup("useSSL");
        valueQuery_useSSL = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useSSL, MAX_NUMBER_LENGTH, "%d", *useSSL);
        keyPairQuery_useSSL = keyValuePair_create(keyQuery_useSSL, valueQuery_useSSL);
        list_addElement(localVarQueryParameters,keyPairQuery_useSSL);
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
    queue_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AMQPAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = queue_response_parseFromJSON(AMQPAPIlocalVarJSON);
        cJSON_Delete(AMQPAPIlocalVarJSON);
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
    if(keyQuery_queueId){
        free(keyQuery_queueId);
        keyQuery_queueId = NULL;
    }
    if(keyPairQuery_queueId){
        keyValuePair_free(keyPairQuery_queueId);
        keyPairQuery_queueId = NULL;
    }
    if(keyQuery_workers){
        free(keyQuery_workers);
        keyQuery_workers = NULL;
    }
    if(valueQuery_workers){
        free(valueQuery_workers);
        valueQuery_workers = NULL;
    }
    if(keyPairQuery_workers){
        keyValuePair_free(keyPairQuery_workers);
        keyPairQuery_workers = NULL;
    }
    if(keyQuery_analyticTags){
        free(keyQuery_analyticTags);
        keyQuery_analyticTags = NULL;
    }
    if(valueQuery_analyticTags){
        free(valueQuery_analyticTags);
        valueQuery_analyticTags = NULL;
    }
    if(keyPairQuery_analyticTags){
        keyValuePair_free(keyPairQuery_analyticTags);
        keyPairQuery_analyticTags = NULL;
    }
    if(keyQuery_hostname){
        free(keyQuery_hostname);
        keyQuery_hostname = NULL;
    }
    if(valueQuery_hostname){
        free(valueQuery_hostname);
        valueQuery_hostname = NULL;
    }
    if(keyPairQuery_hostname){
        keyValuePair_free(keyPairQuery_hostname);
        keyPairQuery_hostname = NULL;
    }
    if(keyQuery_port){
        free(keyQuery_port);
        keyQuery_port = NULL;
    }
    if(valueQuery_port){
        free(valueQuery_port);
        valueQuery_port = NULL;
    }
    if(keyPairQuery_port){
        keyValuePair_free(keyPairQuery_port);
        keyPairQuery_port = NULL;
    }
    if(keyQuery_username){
        free(keyQuery_username);
        keyQuery_username = NULL;
    }
    if(valueQuery_username){
        free(valueQuery_username);
        valueQuery_username = NULL;
    }
    if(keyPairQuery_username){
        keyValuePair_free(keyPairQuery_username);
        keyPairQuery_username = NULL;
    }
    if(keyQuery_password){
        free(keyQuery_password);
        keyQuery_password = NULL;
    }
    if(valueQuery_password){
        free(valueQuery_password);
        valueQuery_password = NULL;
    }
    if(keyPairQuery_password){
        keyValuePair_free(keyPairQuery_password);
        keyPairQuery_password = NULL;
    }
    if(keyQuery_virtualHost){
        free(keyQuery_virtualHost);
        keyQuery_virtualHost = NULL;
    }
    if(valueQuery_virtualHost){
        free(valueQuery_virtualHost);
        valueQuery_virtualHost = NULL;
    }
    if(keyPairQuery_virtualHost){
        keyValuePair_free(keyPairQuery_virtualHost);
        keyPairQuery_virtualHost = NULL;
    }
    if(keyQuery_useSSL){
        free(keyQuery_useSSL);
        keyQuery_useSSL = NULL;
    }
    if(valueQuery_useSSL){
        free(valueQuery_useSSL);
        valueQuery_useSSL = NULL;
    }
    if(keyPairQuery_useSSL){
        keyValuePair_free(keyPairQuery_useSSL);
        keyPairQuery_useSSL = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

