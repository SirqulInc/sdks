#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "PreviewPersonaAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Persona
//
// Creates a new persona. If the given params are null those attributes will be override by null.
//
preview_persona_response_t*
PreviewPersonaAPI_createPersona(apiClient_t *apiClient, long accountId, char *title, char *previewAccounts, long date, int *age, char *gender, char *gameExperienceLevel, double latitude, double longitude)
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
    char *localVarPath = strdup("/persona/create");





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
    char *keyQuery_previewAccounts = NULL;
    char * valueQuery_previewAccounts = NULL;
    keyValuePair_t *keyPairQuery_previewAccounts = 0;
    if (previewAccounts)
    {
        keyQuery_previewAccounts = strdup("previewAccounts");
        valueQuery_previewAccounts = strdup((previewAccounts));
        keyPairQuery_previewAccounts = keyValuePair_create(keyQuery_previewAccounts, valueQuery_previewAccounts);
        list_addElement(localVarQueryParameters,keyPairQuery_previewAccounts);
    }

    // query parameters
    char *keyQuery_date = NULL;
    char * valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    {
        keyQuery_date = strdup("date");
        valueQuery_date = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_date, MAX_NUMBER_LENGTH_LONG, "%d", date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_age = NULL;
    char * valueQuery_age = NULL;
    keyValuePair_t *keyPairQuery_age = 0;
    if (age)
    {
        keyQuery_age = strdup("age");
        valueQuery_age = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_age, MAX_NUMBER_LENGTH, "%d", *age);
        keyPairQuery_age = keyValuePair_create(keyQuery_age, valueQuery_age);
        list_addElement(localVarQueryParameters,keyPairQuery_age);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_gameExperienceLevel = NULL;
    char * valueQuery_gameExperienceLevel = NULL;
    keyValuePair_t *keyPairQuery_gameExperienceLevel = 0;
    if (gameExperienceLevel)
    {
        keyQuery_gameExperienceLevel = strdup("gameExperienceLevel");
        valueQuery_gameExperienceLevel = strdup((gameExperienceLevel));
        keyPairQuery_gameExperienceLevel = keyValuePair_create(keyQuery_gameExperienceLevel, valueQuery_gameExperienceLevel);
        list_addElement(localVarQueryParameters,keyPairQuery_gameExperienceLevel);
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
    preview_persona_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PreviewPersonaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = preview_persona_response_parseFromJSON(PreviewPersonaAPIlocalVarJSON);
        cJSON_Delete(PreviewPersonaAPIlocalVarJSON);
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
    if(keyQuery_previewAccounts){
        free(keyQuery_previewAccounts);
        keyQuery_previewAccounts = NULL;
    }
    if(valueQuery_previewAccounts){
        free(valueQuery_previewAccounts);
        valueQuery_previewAccounts = NULL;
    }
    if(keyPairQuery_previewAccounts){
        keyValuePair_free(keyPairQuery_previewAccounts);
        keyPairQuery_previewAccounts = NULL;
    }
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_age){
        free(keyQuery_age);
        keyQuery_age = NULL;
    }
    if(valueQuery_age){
        free(valueQuery_age);
        valueQuery_age = NULL;
    }
    if(keyPairQuery_age){
        keyValuePair_free(keyPairQuery_age);
        keyPairQuery_age = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_gameExperienceLevel){
        free(keyQuery_gameExperienceLevel);
        keyQuery_gameExperienceLevel = NULL;
    }
    if(valueQuery_gameExperienceLevel){
        free(valueQuery_gameExperienceLevel);
        valueQuery_gameExperienceLevel = NULL;
    }
    if(keyPairQuery_gameExperienceLevel){
        keyValuePair_free(keyPairQuery_gameExperienceLevel);
        keyPairQuery_gameExperienceLevel = NULL;
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

// Delete Persona
//
// Mark the persona for deletion.
//
sirqul_response_t*
PreviewPersonaAPI_deletePersona(apiClient_t *apiClient, long accountId, long personaId)
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
    char *localVarPath = strdup("/persona/delete");





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
    char *keyQuery_personaId = NULL;
    char * valueQuery_personaId ;
    keyValuePair_t *keyPairQuery_personaId = 0;
    {
        keyQuery_personaId = strdup("personaId");
        valueQuery_personaId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_personaId, MAX_NUMBER_LENGTH_LONG, "%d", personaId);
        keyPairQuery_personaId = keyValuePair_create(keyQuery_personaId, valueQuery_personaId);
        list_addElement(localVarQueryParameters,keyPairQuery_personaId);
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
        cJSON *PreviewPersonaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(PreviewPersonaAPIlocalVarJSON);
        cJSON_Delete(PreviewPersonaAPIlocalVarJSON);
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
    if(keyQuery_personaId){
        free(keyQuery_personaId);
        keyQuery_personaId = NULL;
    }
    if(keyPairQuery_personaId){
        keyValuePair_free(keyPairQuery_personaId);
        keyPairQuery_personaId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Persona
//
// Get the persona by the given persona ID. If the persona cannot be found, a invalid response is returned.
//
preview_persona_response_t*
PreviewPersonaAPI_getPersonaList(apiClient_t *apiClient, long accountId, long personaId)
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
    char *localVarPath = strdup("/persona/get");





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
    char *keyQuery_personaId = NULL;
    char * valueQuery_personaId ;
    keyValuePair_t *keyPairQuery_personaId = 0;
    {
        keyQuery_personaId = strdup("personaId");
        valueQuery_personaId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_personaId, MAX_NUMBER_LENGTH_LONG, "%d", personaId);
        keyPairQuery_personaId = keyValuePair_create(keyQuery_personaId, valueQuery_personaId);
        list_addElement(localVarQueryParameters,keyPairQuery_personaId);
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
    preview_persona_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PreviewPersonaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = preview_persona_response_parseFromJSON(PreviewPersonaAPIlocalVarJSON);
        cJSON_Delete(PreviewPersonaAPIlocalVarJSON);
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
    if(keyQuery_personaId){
        free(keyQuery_personaId);
        keyQuery_personaId = NULL;
    }
    if(keyPairQuery_personaId){
        keyValuePair_free(keyPairQuery_personaId);
        keyPairQuery_personaId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Personas
//
// Search for persona that the account owns by the given account ID.
//
preview_persona_response_t*
PreviewPersonaAPI_searchPersona(apiClient_t *apiClient, long accountId, int *start, int *limit)
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
    char *localVarPath = strdup("/persona/search");





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
    preview_persona_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PreviewPersonaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = preview_persona_response_parseFromJSON(PreviewPersonaAPIlocalVarJSON);
        cJSON_Delete(PreviewPersonaAPIlocalVarJSON);
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

// Update Persona
//
// Update the persona by the given personaId. If the given params are null those attributes will be override by null. If active is assigned, all other params will be ignored.
//
preview_persona_response_t*
PreviewPersonaAPI_updatePersona(apiClient_t *apiClient, long accountId, long personaId, char *title, char *previewAccounts, int *active, long date, int *age, char *gender, char *gameExperienceLevel, double latitude, double longitude)
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
    char *localVarPath = strdup("/persona/update");





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
    char *keyQuery_personaId = NULL;
    char * valueQuery_personaId ;
    keyValuePair_t *keyPairQuery_personaId = 0;
    {
        keyQuery_personaId = strdup("personaId");
        valueQuery_personaId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_personaId, MAX_NUMBER_LENGTH_LONG, "%d", personaId);
        keyPairQuery_personaId = keyValuePair_create(keyQuery_personaId, valueQuery_personaId);
        list_addElement(localVarQueryParameters,keyPairQuery_personaId);
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
    char *keyQuery_previewAccounts = NULL;
    char * valueQuery_previewAccounts = NULL;
    keyValuePair_t *keyPairQuery_previewAccounts = 0;
    if (previewAccounts)
    {
        keyQuery_previewAccounts = strdup("previewAccounts");
        valueQuery_previewAccounts = strdup((previewAccounts));
        keyPairQuery_previewAccounts = keyValuePair_create(keyQuery_previewAccounts, valueQuery_previewAccounts);
        list_addElement(localVarQueryParameters,keyPairQuery_previewAccounts);
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
    char *keyQuery_date = NULL;
    char * valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    {
        keyQuery_date = strdup("date");
        valueQuery_date = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_date, MAX_NUMBER_LENGTH_LONG, "%d", date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_age = NULL;
    char * valueQuery_age = NULL;
    keyValuePair_t *keyPairQuery_age = 0;
    if (age)
    {
        keyQuery_age = strdup("age");
        valueQuery_age = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_age, MAX_NUMBER_LENGTH, "%d", *age);
        keyPairQuery_age = keyValuePair_create(keyQuery_age, valueQuery_age);
        list_addElement(localVarQueryParameters,keyPairQuery_age);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_gameExperienceLevel = NULL;
    char * valueQuery_gameExperienceLevel = NULL;
    keyValuePair_t *keyPairQuery_gameExperienceLevel = 0;
    if (gameExperienceLevel)
    {
        keyQuery_gameExperienceLevel = strdup("gameExperienceLevel");
        valueQuery_gameExperienceLevel = strdup((gameExperienceLevel));
        keyPairQuery_gameExperienceLevel = keyValuePair_create(keyQuery_gameExperienceLevel, valueQuery_gameExperienceLevel);
        list_addElement(localVarQueryParameters,keyPairQuery_gameExperienceLevel);
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
    preview_persona_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PreviewPersonaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = preview_persona_response_parseFromJSON(PreviewPersonaAPIlocalVarJSON);
        cJSON_Delete(PreviewPersonaAPIlocalVarJSON);
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
    if(keyQuery_personaId){
        free(keyQuery_personaId);
        keyQuery_personaId = NULL;
    }
    if(keyPairQuery_personaId){
        keyValuePair_free(keyPairQuery_personaId);
        keyPairQuery_personaId = NULL;
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
    if(keyQuery_previewAccounts){
        free(keyQuery_previewAccounts);
        keyQuery_previewAccounts = NULL;
    }
    if(valueQuery_previewAccounts){
        free(valueQuery_previewAccounts);
        valueQuery_previewAccounts = NULL;
    }
    if(keyPairQuery_previewAccounts){
        keyValuePair_free(keyPairQuery_previewAccounts);
        keyPairQuery_previewAccounts = NULL;
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
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_age){
        free(keyQuery_age);
        keyQuery_age = NULL;
    }
    if(valueQuery_age){
        free(valueQuery_age);
        valueQuery_age = NULL;
    }
    if(keyPairQuery_age){
        keyValuePair_free(keyPairQuery_age);
        keyPairQuery_age = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_gameExperienceLevel){
        free(keyQuery_gameExperienceLevel);
        keyQuery_gameExperienceLevel = NULL;
    }
    if(valueQuery_gameExperienceLevel){
        free(valueQuery_gameExperienceLevel);
        valueQuery_gameExperienceLevel = NULL;
    }
    if(keyPairQuery_gameExperienceLevel){
        keyValuePair_free(keyPairQuery_gameExperienceLevel);
        keyPairQuery_gameExperienceLevel = NULL;
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

