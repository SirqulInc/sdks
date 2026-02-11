#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AchievementAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for AchievementAPI_listAchievements

static char* listAchievements_SORTFIELD_ToString(sirqul_iot_platform_listAchievements_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "TITLE", "DESCRIPTION", "RANK_TYPE", "APPLICATION_ID", "APPLICATION_NAME", "BILLABLE_ID" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_listAchievements_sortField_e listAchievements_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "TITLE", "DESCRIPTION", "RANK_TYPE", "APPLICATION_ID", "APPLICATION_NAME", "BILLABLE_ID" };
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
// Function listAchievements_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *listAchievements_SORTFIELD_convertToJSON(sirqul_iot_platform_listAchievements_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", listAchievements_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function listAchievements_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_listAchievements_sortField_e listAchievements_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_listAchievements_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = listAchievements_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for AchievementAPI_searchAchievements

static char* searchAchievements_SORTFIELD_ToString(sirqul_iot_platform_searchAchievements_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "TITLE", "DESCRIPTION", "RANK_TYPE", "APPLICATION_ID", "APPLICATION_NAME", "BILLABLE_ID" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchAchievements_sortField_e searchAchievements_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "TITLE", "DESCRIPTION", "RANK_TYPE", "APPLICATION_ID", "APPLICATION_NAME", "BILLABLE_ID" };
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
// Function searchAchievements_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchAchievements_SORTFIELD_convertToJSON(sirqul_iot_platform_searchAchievements_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchAchievements_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchAchievements_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchAchievements_sortField_e searchAchievements_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchAchievements_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchAchievements_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Searches an Achievement Tier
//
// Searches a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_achievementTierSearchPost(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, char *keyword, long achievementType, char *rankType, char *sortField, int *descending, int *descendingGoal, long start, long limit)
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
    char *localVarPath = strdup("/achievement/tier/search");





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
    char *keyQuery_achievementType = NULL;
    char * valueQuery_achievementType ;
    keyValuePair_t *keyPairQuery_achievementType = 0;
    {
        keyQuery_achievementType = strdup("achievementType");
        valueQuery_achievementType = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementType, MAX_NUMBER_LENGTH_LONG, "%d", achievementType);
        keyPairQuery_achievementType = keyValuePair_create(keyQuery_achievementType, valueQuery_achievementType);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementType);
    }

    // query parameters
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
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
    char *keyQuery_descendingGoal = NULL;
    char * valueQuery_descendingGoal = NULL;
    keyValuePair_t *keyPairQuery_descendingGoal = 0;
    if (descendingGoal)
    {
        keyQuery_descendingGoal = strdup("descendingGoal");
        valueQuery_descendingGoal = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descendingGoal, MAX_NUMBER_LENGTH, "%d", *descendingGoal);
        keyPairQuery_descendingGoal = keyValuePair_create(keyQuery_descendingGoal, valueQuery_descendingGoal);
        list_addElement(localVarQueryParameters,keyPairQuery_descendingGoal);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start ;
    keyValuePair_t *keyPairQuery_start = 0;
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH_LONG, "%d", start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit ;
    keyValuePair_t *keyPairQuery_limit = 0;
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH_LONG, "%d", limit);
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    achievement_tier_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = achievement_tier_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementType){
        free(keyQuery_achievementType);
        keyQuery_achievementType = NULL;
    }
    if(keyPairQuery_achievementType){
        keyValuePair_free(keyPairQuery_achievementType);
        keyPairQuery_achievementType = NULL;
    }
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
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
    if(keyQuery_descendingGoal){
        free(keyQuery_descendingGoal);
        keyQuery_descendingGoal = NULL;
    }
    if(valueQuery_descendingGoal){
        free(valueQuery_descendingGoal);
        valueQuery_descendingGoal = NULL;
    }
    if(keyPairQuery_descendingGoal){
        keyValuePair_free(keyPairQuery_descendingGoal);
        keyPairQuery_descendingGoal = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
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

// Create Achievement
//
// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_response_t*
AchievementAPI_createAchievement(apiClient_t *apiClient, char *appKey, char *title, char *deviceId, long accountId, char *analyticsTag, char *description, char *rankType, int *rankIncrement, int *minIncrement, int *maxIncrement, int *validate, int *active, char *triggerDefinition)
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
    char *localVarPath = strdup("/achievement/create");





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
    char *keyQuery_analyticsTag = NULL;
    char * valueQuery_analyticsTag = NULL;
    keyValuePair_t *keyPairQuery_analyticsTag = 0;
    if (analyticsTag)
    {
        keyQuery_analyticsTag = strdup("analyticsTag");
        valueQuery_analyticsTag = strdup((analyticsTag));
        keyPairQuery_analyticsTag = keyValuePair_create(keyQuery_analyticsTag, valueQuery_analyticsTag);
        list_addElement(localVarQueryParameters,keyPairQuery_analyticsTag);
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
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
    }

    // query parameters
    char *keyQuery_rankIncrement = NULL;
    char * valueQuery_rankIncrement = NULL;
    keyValuePair_t *keyPairQuery_rankIncrement = 0;
    if (rankIncrement)
    {
        keyQuery_rankIncrement = strdup("rankIncrement");
        valueQuery_rankIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rankIncrement, MAX_NUMBER_LENGTH, "%d", *rankIncrement);
        keyPairQuery_rankIncrement = keyValuePair_create(keyQuery_rankIncrement, valueQuery_rankIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_rankIncrement);
    }

    // query parameters
    char *keyQuery_minIncrement = NULL;
    char * valueQuery_minIncrement = NULL;
    keyValuePair_t *keyPairQuery_minIncrement = 0;
    if (minIncrement)
    {
        keyQuery_minIncrement = strdup("minIncrement");
        valueQuery_minIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minIncrement, MAX_NUMBER_LENGTH, "%d", *minIncrement);
        keyPairQuery_minIncrement = keyValuePair_create(keyQuery_minIncrement, valueQuery_minIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_minIncrement);
    }

    // query parameters
    char *keyQuery_maxIncrement = NULL;
    char * valueQuery_maxIncrement = NULL;
    keyValuePair_t *keyPairQuery_maxIncrement = 0;
    if (maxIncrement)
    {
        keyQuery_maxIncrement = strdup("maxIncrement");
        valueQuery_maxIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxIncrement, MAX_NUMBER_LENGTH, "%d", *maxIncrement);
        keyPairQuery_maxIncrement = keyValuePair_create(keyQuery_maxIncrement, valueQuery_maxIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_maxIncrement);
    }

    // query parameters
    char *keyQuery_validate = NULL;
    char * valueQuery_validate = NULL;
    keyValuePair_t *keyPairQuery_validate = 0;
    if (validate)
    {
        keyQuery_validate = strdup("validate");
        valueQuery_validate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_validate, MAX_NUMBER_LENGTH, "%d", *validate);
        keyPairQuery_validate = keyValuePair_create(keyQuery_validate, valueQuery_validate);
        list_addElement(localVarQueryParameters,keyPairQuery_validate);
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
    char *keyQuery_triggerDefinition = NULL;
    char * valueQuery_triggerDefinition = NULL;
    keyValuePair_t *keyPairQuery_triggerDefinition = 0;
    if (triggerDefinition)
    {
        keyQuery_triggerDefinition = strdup("triggerDefinition");
        valueQuery_triggerDefinition = strdup((triggerDefinition));
        keyPairQuery_triggerDefinition = keyValuePair_create(keyQuery_triggerDefinition, valueQuery_triggerDefinition);
        list_addElement(localVarQueryParameters,keyPairQuery_triggerDefinition);
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
    achievement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = achievement_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_analyticsTag){
        free(keyQuery_analyticsTag);
        keyQuery_analyticsTag = NULL;
    }
    if(valueQuery_analyticsTag){
        free(valueQuery_analyticsTag);
        valueQuery_analyticsTag = NULL;
    }
    if(keyPairQuery_analyticsTag){
        keyValuePair_free(keyPairQuery_analyticsTag);
        keyPairQuery_analyticsTag = NULL;
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
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
    }
    if(keyQuery_rankIncrement){
        free(keyQuery_rankIncrement);
        keyQuery_rankIncrement = NULL;
    }
    if(valueQuery_rankIncrement){
        free(valueQuery_rankIncrement);
        valueQuery_rankIncrement = NULL;
    }
    if(keyPairQuery_rankIncrement){
        keyValuePair_free(keyPairQuery_rankIncrement);
        keyPairQuery_rankIncrement = NULL;
    }
    if(keyQuery_minIncrement){
        free(keyQuery_minIncrement);
        keyQuery_minIncrement = NULL;
    }
    if(valueQuery_minIncrement){
        free(valueQuery_minIncrement);
        valueQuery_minIncrement = NULL;
    }
    if(keyPairQuery_minIncrement){
        keyValuePair_free(keyPairQuery_minIncrement);
        keyPairQuery_minIncrement = NULL;
    }
    if(keyQuery_maxIncrement){
        free(keyQuery_maxIncrement);
        keyQuery_maxIncrement = NULL;
    }
    if(valueQuery_maxIncrement){
        free(valueQuery_maxIncrement);
        valueQuery_maxIncrement = NULL;
    }
    if(keyPairQuery_maxIncrement){
        keyValuePair_free(keyPairQuery_maxIncrement);
        keyPairQuery_maxIncrement = NULL;
    }
    if(keyQuery_validate){
        free(keyQuery_validate);
        keyQuery_validate = NULL;
    }
    if(valueQuery_validate){
        free(valueQuery_validate);
        valueQuery_validate = NULL;
    }
    if(keyPairQuery_validate){
        keyValuePair_free(keyPairQuery_validate);
        keyPairQuery_validate = NULL;
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
    if(keyQuery_triggerDefinition){
        free(keyQuery_triggerDefinition);
        keyQuery_triggerDefinition = NULL;
    }
    if(valueQuery_triggerDefinition){
        free(valueQuery_triggerDefinition);
        valueQuery_triggerDefinition = NULL;
    }
    if(keyPairQuery_triggerDefinition){
        keyValuePair_free(keyPairQuery_triggerDefinition);
        keyPairQuery_triggerDefinition = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Achievement Tier
//
// Create a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_createAchievementTier(apiClient_t *apiClient, long achievementId, int *scoreAllInstances, char *deviceId, long accountId, binary_t* icon, long iconAssetId, char *title, char *description, long goalCount, long missionId, long gameId, long packId, long gameLevelId, int *gameObjectId)
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
    char *localVarPath = strdup("/achievement/tier/create");





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
    char *keyQuery_achievementId = NULL;
    char * valueQuery_achievementId ;
    keyValuePair_t *keyPairQuery_achievementId = 0;
    {
        keyQuery_achievementId = strdup("achievementId");
        valueQuery_achievementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementId, MAX_NUMBER_LENGTH_LONG, "%d", achievementId);
        keyPairQuery_achievementId = keyValuePair_create(keyQuery_achievementId, valueQuery_achievementId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementId);
    }

    // query parameters
    char *keyQuery_icon = NULL;
    binary_t* valueQuery_icon ;
    keyValuePair_t *keyPairQuery_icon = 0;
    if (icon)
    {
        keyQuery_icon = strdup("icon");
        valueQuery_icon = (icon);
        keyPairQuery_icon = keyValuePair_create(keyQuery_icon, &valueQuery_icon);
        list_addElement(localVarQueryParameters,keyPairQuery_icon);
    }

    // query parameters
    char *keyQuery_iconAssetId = NULL;
    char * valueQuery_iconAssetId ;
    keyValuePair_t *keyPairQuery_iconAssetId = 0;
    {
        keyQuery_iconAssetId = strdup("iconAssetId");
        valueQuery_iconAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_iconAssetId, MAX_NUMBER_LENGTH_LONG, "%d", iconAssetId);
        keyPairQuery_iconAssetId = keyValuePair_create(keyQuery_iconAssetId, valueQuery_iconAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_iconAssetId);
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
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_goalCount = NULL;
    char * valueQuery_goalCount ;
    keyValuePair_t *keyPairQuery_goalCount = 0;
    {
        keyQuery_goalCount = strdup("goalCount");
        valueQuery_goalCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_goalCount, MAX_NUMBER_LENGTH_LONG, "%d", goalCount);
        keyPairQuery_goalCount = keyValuePair_create(keyQuery_goalCount, valueQuery_goalCount);
        list_addElement(localVarQueryParameters,keyPairQuery_goalCount);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_gameId = NULL;
    char * valueQuery_gameId ;
    keyValuePair_t *keyPairQuery_gameId = 0;
    {
        keyQuery_gameId = strdup("gameId");
        valueQuery_gameId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameId, MAX_NUMBER_LENGTH_LONG, "%d", gameId);
        keyPairQuery_gameId = keyValuePair_create(keyQuery_gameId, valueQuery_gameId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameId);
    }

    // query parameters
    char *keyQuery_packId = NULL;
    char * valueQuery_packId ;
    keyValuePair_t *keyPairQuery_packId = 0;
    {
        keyQuery_packId = strdup("packId");
        valueQuery_packId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_packId, MAX_NUMBER_LENGTH_LONG, "%d", packId);
        keyPairQuery_packId = keyValuePair_create(keyQuery_packId, valueQuery_packId);
        list_addElement(localVarQueryParameters,keyPairQuery_packId);
    }

    // query parameters
    char *keyQuery_gameLevelId = NULL;
    char * valueQuery_gameLevelId ;
    keyValuePair_t *keyPairQuery_gameLevelId = 0;
    {
        keyQuery_gameLevelId = strdup("gameLevelId");
        valueQuery_gameLevelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameLevelId, MAX_NUMBER_LENGTH_LONG, "%d", gameLevelId);
        keyPairQuery_gameLevelId = keyValuePair_create(keyQuery_gameLevelId, valueQuery_gameLevelId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelId);
    }

    // query parameters
    char *keyQuery_gameObjectId = NULL;
    char * valueQuery_gameObjectId = NULL;
    keyValuePair_t *keyPairQuery_gameObjectId = 0;
    if (gameObjectId)
    {
        keyQuery_gameObjectId = strdup("gameObjectId");
        valueQuery_gameObjectId = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_gameObjectId, MAX_NUMBER_LENGTH, "%d", *gameObjectId);
        keyPairQuery_gameObjectId = keyValuePair_create(keyQuery_gameObjectId, valueQuery_gameObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectId);
    }

    // query parameters
    char *keyQuery_scoreAllInstances = NULL;
    char * valueQuery_scoreAllInstances = NULL;
    keyValuePair_t *keyPairQuery_scoreAllInstances = 0;
    if (scoreAllInstances)
    {
        keyQuery_scoreAllInstances = strdup("scoreAllInstances");
        valueQuery_scoreAllInstances = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_scoreAllInstances, MAX_NUMBER_LENGTH, "%d", *scoreAllInstances);
        keyPairQuery_scoreAllInstances = keyValuePair_create(keyQuery_scoreAllInstances, valueQuery_scoreAllInstances);
        list_addElement(localVarQueryParameters,keyPairQuery_scoreAllInstances);
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
    achievement_tier_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = achievement_tier_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementId){
        free(keyQuery_achievementId);
        keyQuery_achievementId = NULL;
    }
    if(keyPairQuery_achievementId){
        keyValuePair_free(keyPairQuery_achievementId);
        keyPairQuery_achievementId = NULL;
    }
    if(keyQuery_icon){
        free(keyQuery_icon);
        keyQuery_icon = NULL;
    }
    if(keyPairQuery_icon){
        keyValuePair_free(keyPairQuery_icon);
        keyPairQuery_icon = NULL;
    }
    if(keyQuery_iconAssetId){
        free(keyQuery_iconAssetId);
        keyQuery_iconAssetId = NULL;
    }
    if(keyPairQuery_iconAssetId){
        keyValuePair_free(keyPairQuery_iconAssetId);
        keyPairQuery_iconAssetId = NULL;
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
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_goalCount){
        free(keyQuery_goalCount);
        keyQuery_goalCount = NULL;
    }
    if(keyPairQuery_goalCount){
        keyValuePair_free(keyPairQuery_goalCount);
        keyPairQuery_goalCount = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_gameId){
        free(keyQuery_gameId);
        keyQuery_gameId = NULL;
    }
    if(keyPairQuery_gameId){
        keyValuePair_free(keyPairQuery_gameId);
        keyPairQuery_gameId = NULL;
    }
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
    }
    if(keyQuery_gameLevelId){
        free(keyQuery_gameLevelId);
        keyQuery_gameLevelId = NULL;
    }
    if(keyPairQuery_gameLevelId){
        keyValuePair_free(keyPairQuery_gameLevelId);
        keyPairQuery_gameLevelId = NULL;
    }
    if(keyQuery_gameObjectId){
        free(keyQuery_gameObjectId);
        keyQuery_gameObjectId = NULL;
    }
    if(valueQuery_gameObjectId){
        free(valueQuery_gameObjectId);
        valueQuery_gameObjectId = NULL;
    }
    if(keyPairQuery_gameObjectId){
        keyValuePair_free(keyPairQuery_gameObjectId);
        keyPairQuery_gameObjectId = NULL;
    }
    if(keyQuery_scoreAllInstances){
        free(keyQuery_scoreAllInstances);
        keyQuery_scoreAllInstances = NULL;
    }
    if(valueQuery_scoreAllInstances){
        free(valueQuery_scoreAllInstances);
        valueQuery_scoreAllInstances = NULL;
    }
    if(keyPairQuery_scoreAllInstances){
        keyValuePair_free(keyPairQuery_scoreAllInstances);
        keyPairQuery_scoreAllInstances = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Achievement
//
// Deletes an achievement (for developer/retailer use). User must have permissions to the application the achievement was created for.
//
sirqul_response_t*
AchievementAPI_deleteAchievement(apiClient_t *apiClient, long achievementId, long accountId)
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
    char *localVarPath = strdup("/achievement/delete");





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
    char *keyQuery_achievementId = NULL;
    char * valueQuery_achievementId ;
    keyValuePair_t *keyPairQuery_achievementId = 0;
    {
        keyQuery_achievementId = strdup("achievementId");
        valueQuery_achievementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementId, MAX_NUMBER_LENGTH_LONG, "%d", achievementId);
        keyPairQuery_achievementId = keyValuePair_create(keyQuery_achievementId, valueQuery_achievementId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementId);
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
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementId){
        free(keyQuery_achievementId);
        keyQuery_achievementId = NULL;
    }
    if(keyPairQuery_achievementId){
        keyValuePair_free(keyPairQuery_achievementId);
        keyPairQuery_achievementId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Achievement Tier
//
// Deletes an achievement tier (for developer/retailer use). User must have permissions to the application the achievement was created for.
//
sirqul_response_t*
AchievementAPI_deleteAchievementTier(apiClient_t *apiClient, long achievementTierId, long accountId)
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
    char *localVarPath = strdup("/achievement/tier/delete");





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
    char *keyQuery_achievementTierId = NULL;
    char * valueQuery_achievementTierId ;
    keyValuePair_t *keyPairQuery_achievementTierId = 0;
    {
        keyQuery_achievementTierId = strdup("achievementTierId");
        valueQuery_achievementTierId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementTierId, MAX_NUMBER_LENGTH_LONG, "%d", achievementTierId);
        keyPairQuery_achievementTierId = keyValuePair_create(keyQuery_achievementTierId, valueQuery_achievementTierId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementTierId);
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
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementTierId){
        free(keyQuery_achievementTierId);
        keyQuery_achievementTierId = NULL;
    }
    if(keyPairQuery_achievementTierId){
        keyValuePair_free(keyPairQuery_achievementTierId);
        keyPairQuery_achievementTierId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Achievement
//
// Get an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_getAchievement(apiClient_t *apiClient, long achievementId, char *deviceId, long accountId, char *achievementType)
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
    char *localVarPath = strdup("/achievement/get");





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
    char *keyQuery_achievementId = NULL;
    char * valueQuery_achievementId ;
    keyValuePair_t *keyPairQuery_achievementId = 0;
    {
        keyQuery_achievementId = strdup("achievementId");
        valueQuery_achievementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementId, MAX_NUMBER_LENGTH_LONG, "%d", achievementId);
        keyPairQuery_achievementId = keyValuePair_create(keyQuery_achievementId, valueQuery_achievementId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementId);
    }

    // query parameters
    char *keyQuery_achievementType = NULL;
    char * valueQuery_achievementType = NULL;
    keyValuePair_t *keyPairQuery_achievementType = 0;
    if (achievementType)
    {
        keyQuery_achievementType = strdup("achievementType");
        valueQuery_achievementType = strdup((achievementType));
        keyPairQuery_achievementType = keyValuePair_create(keyQuery_achievementType, valueQuery_achievementType);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementType);
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
    achievement_tier_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = achievement_tier_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementId){
        free(keyQuery_achievementId);
        keyQuery_achievementId = NULL;
    }
    if(keyPairQuery_achievementId){
        keyValuePair_free(keyPairQuery_achievementId);
        keyPairQuery_achievementId = NULL;
    }
    if(keyQuery_achievementType){
        free(keyQuery_achievementType);
        keyQuery_achievementType = NULL;
    }
    if(valueQuery_achievementType){
        free(valueQuery_achievementType);
        valueQuery_achievementType = NULL;
    }
    if(keyPairQuery_achievementType){
        keyValuePair_free(keyPairQuery_achievementType);
        keyPairQuery_achievementType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Gets an achievement tier
//
// Gets an achievement tier (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_getAchievementTier(apiClient_t *apiClient, long accountId, long achievementTierId)
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
    char *localVarPath = strdup("/achievement/tier/get");





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
    char *keyQuery_achievementTierId = NULL;
    char * valueQuery_achievementTierId ;
    keyValuePair_t *keyPairQuery_achievementTierId = 0;
    {
        keyQuery_achievementTierId = strdup("achievementTierId");
        valueQuery_achievementTierId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementTierId, MAX_NUMBER_LENGTH_LONG, "%d", achievementTierId);
        keyPairQuery_achievementTierId = keyValuePair_create(keyQuery_achievementTierId, valueQuery_achievementTierId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementTierId);
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
    achievement_tier_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = achievement_tier_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementTierId){
        free(keyQuery_achievementTierId);
        keyQuery_achievementTierId = NULL;
    }
    if(keyPairQuery_achievementTierId){
        keyValuePair_free(keyPairQuery_achievementTierId);
        keyPairQuery_achievementTierId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Achievement Progress
//
// Gets a list of user achievements.
//
list_t*
AchievementAPI_getUserAchievements(apiClient_t *apiClient, int *returnNulls, char *appKey, int *includeUndiscovered, char *deviceId, long accountId, char *connectionAccountEmail, long connectionAccountId, char *rankType, char *achievementType, double latitude, double longitude)
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
    char *localVarPath = strdup("/achievement/progress/get");





    // query parameters
    char *keyQuery_returnNulls = NULL;
    char * valueQuery_returnNulls = NULL;
    keyValuePair_t *keyPairQuery_returnNulls = 0;
    if (returnNulls)
    {
        keyQuery_returnNulls = strdup("returnNulls");
        valueQuery_returnNulls = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnNulls, MAX_NUMBER_LENGTH, "%d", *returnNulls);
        keyPairQuery_returnNulls = keyValuePair_create(keyQuery_returnNulls, valueQuery_returnNulls);
        list_addElement(localVarQueryParameters,keyPairQuery_returnNulls);
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
    char *keyQuery_connectionAccountEmail = NULL;
    char * valueQuery_connectionAccountEmail = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountEmail = 0;
    if (connectionAccountEmail)
    {
        keyQuery_connectionAccountEmail = strdup("connectionAccountEmail");
        valueQuery_connectionAccountEmail = strdup((connectionAccountEmail));
        keyPairQuery_connectionAccountEmail = keyValuePair_create(keyQuery_connectionAccountEmail, valueQuery_connectionAccountEmail);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountEmail);
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
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
    }

    // query parameters
    char *keyQuery_achievementType = NULL;
    char * valueQuery_achievementType = NULL;
    keyValuePair_t *keyPairQuery_achievementType = 0;
    if (achievementType)
    {
        keyQuery_achievementType = strdup("achievementType");
        valueQuery_achievementType = strdup((achievementType));
        keyPairQuery_achievementType = keyValuePair_create(keyQuery_achievementType, valueQuery_achievementType);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementType);
    }

    // query parameters
    char *keyQuery_includeUndiscovered = NULL;
    char * valueQuery_includeUndiscovered = NULL;
    keyValuePair_t *keyPairQuery_includeUndiscovered = 0;
    if (includeUndiscovered)
    {
        keyQuery_includeUndiscovered = strdup("includeUndiscovered");
        valueQuery_includeUndiscovered = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeUndiscovered, MAX_NUMBER_LENGTH, "%d", *includeUndiscovered);
        keyPairQuery_includeUndiscovered = keyValuePair_create(keyQuery_includeUndiscovered, valueQuery_includeUndiscovered);
        list_addElement(localVarQueryParameters,keyPairQuery_includeUndiscovered);
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
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AchievementAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AchievementAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AchievementAPIlocalVarJSON);
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
    if(keyQuery_returnNulls){
        free(keyQuery_returnNulls);
        keyQuery_returnNulls = NULL;
    }
    if(valueQuery_returnNulls){
        free(valueQuery_returnNulls);
        valueQuery_returnNulls = NULL;
    }
    if(keyPairQuery_returnNulls){
        keyValuePair_free(keyPairQuery_returnNulls);
        keyPairQuery_returnNulls = NULL;
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
    if(keyQuery_connectionAccountEmail){
        free(keyQuery_connectionAccountEmail);
        keyQuery_connectionAccountEmail = NULL;
    }
    if(valueQuery_connectionAccountEmail){
        free(valueQuery_connectionAccountEmail);
        valueQuery_connectionAccountEmail = NULL;
    }
    if(keyPairQuery_connectionAccountEmail){
        keyValuePair_free(keyPairQuery_connectionAccountEmail);
        keyPairQuery_connectionAccountEmail = NULL;
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
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
    }
    if(keyQuery_achievementType){
        free(keyQuery_achievementType);
        keyQuery_achievementType = NULL;
    }
    if(valueQuery_achievementType){
        free(valueQuery_achievementType);
        valueQuery_achievementType = NULL;
    }
    if(keyPairQuery_achievementType){
        keyValuePair_free(keyPairQuery_achievementType);
        keyPairQuery_achievementType = NULL;
    }
    if(keyQuery_includeUndiscovered){
        free(keyQuery_includeUndiscovered);
        keyQuery_includeUndiscovered = NULL;
    }
    if(valueQuery_includeUndiscovered){
        free(valueQuery_includeUndiscovered);
        valueQuery_includeUndiscovered = NULL;
    }
    if(keyPairQuery_includeUndiscovered){
        keyValuePair_free(keyPairQuery_includeUndiscovered);
        keyPairQuery_includeUndiscovered = NULL;
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

// List Achievement Tags
//
// List achievement tags by application
//
sirqul_response_t*
AchievementAPI_listAchievementTags(apiClient_t *apiClient, char *appKey)
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
    char *localVarPath = strdup("/achievement/tag/list");





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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List Achievements
//
// List achievements by billable.
//
list_t*
AchievementAPI_listAchievements(apiClient_t *apiClient, sirqul_iot_platform_listAchievements_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, char *deviceId, long accountId, char *appKey, char *keyword, char *achievementType, char *rankType)
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
    char *localVarPath = strdup("/achievement/list");





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
    char *keyQuery_achievementType = NULL;
    char * valueQuery_achievementType = NULL;
    keyValuePair_t *keyPairQuery_achievementType = 0;
    if (achievementType)
    {
        keyQuery_achievementType = strdup("achievementType");
        valueQuery_achievementType = strdup((achievementType));
        keyPairQuery_achievementType = keyValuePair_create(keyQuery_achievementType, valueQuery_achievementType);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementType);
    }

    // query parameters
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_listAchievements_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(listAchievements_SORTFIELD_ToString(
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
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AchievementAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AchievementAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementType){
        free(keyQuery_achievementType);
        keyQuery_achievementType = NULL;
    }
    if(valueQuery_achievementType){
        free(valueQuery_achievementType);
        valueQuery_achievementType = NULL;
    }
    if(keyPairQuery_achievementType){
        keyValuePair_free(keyPairQuery_achievementType);
        keyPairQuery_achievementType = NULL;
    }
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
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

// Search Achievements
//
// Searches achievements by application for consumers.
//
list_t*
AchievementAPI_searchAchievements(apiClient_t *apiClient, char *appKey, sirqul_iot_platform_searchAchievements_sortField_e sortField, int *descending, int *includeTiers, int *includeInactiveTiers, int *start, int *limit, char *deviceId, long accountId, char *keyword, char *achievementType, char *rankType)
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
    char *localVarPath = strdup("/achievement/search");





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
    char *keyQuery_achievementType = NULL;
    char * valueQuery_achievementType = NULL;
    keyValuePair_t *keyPairQuery_achievementType = 0;
    if (achievementType)
    {
        keyQuery_achievementType = strdup("achievementType");
        valueQuery_achievementType = strdup((achievementType));
        keyPairQuery_achievementType = keyValuePair_create(keyQuery_achievementType, valueQuery_achievementType);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementType);
    }

    // query parameters
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchAchievements_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchAchievements_SORTFIELD_ToString(
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
    char *keyQuery_includeTiers = NULL;
    char * valueQuery_includeTiers = NULL;
    keyValuePair_t *keyPairQuery_includeTiers = 0;
    if (includeTiers)
    {
        keyQuery_includeTiers = strdup("includeTiers");
        valueQuery_includeTiers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeTiers, MAX_NUMBER_LENGTH, "%d", *includeTiers);
        keyPairQuery_includeTiers = keyValuePair_create(keyQuery_includeTiers, valueQuery_includeTiers);
        list_addElement(localVarQueryParameters,keyPairQuery_includeTiers);
    }

    // query parameters
    char *keyQuery_includeInactiveTiers = NULL;
    char * valueQuery_includeInactiveTiers = NULL;
    keyValuePair_t *keyPairQuery_includeInactiveTiers = 0;
    if (includeInactiveTiers)
    {
        keyQuery_includeInactiveTiers = strdup("includeInactiveTiers");
        valueQuery_includeInactiveTiers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeInactiveTiers, MAX_NUMBER_LENGTH, "%d", *includeInactiveTiers);
        keyPairQuery_includeInactiveTiers = keyValuePair_create(keyQuery_includeInactiveTiers, valueQuery_includeInactiveTiers);
        list_addElement(localVarQueryParameters,keyPairQuery_includeInactiveTiers);
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
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AchievementAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AchievementAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementType){
        free(keyQuery_achievementType);
        keyQuery_achievementType = NULL;
    }
    if(valueQuery_achievementType){
        free(valueQuery_achievementType);
        valueQuery_achievementType = NULL;
    }
    if(keyPairQuery_achievementType){
        keyValuePair_free(keyPairQuery_achievementType);
        keyPairQuery_achievementType = NULL;
    }
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
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
    if(keyQuery_includeTiers){
        free(keyQuery_includeTiers);
        keyQuery_includeTiers = NULL;
    }
    if(valueQuery_includeTiers){
        free(valueQuery_includeTiers);
        valueQuery_includeTiers = NULL;
    }
    if(keyPairQuery_includeTiers){
        keyValuePair_free(keyPairQuery_includeTiers);
        keyPairQuery_includeTiers = NULL;
    }
    if(keyQuery_includeInactiveTiers){
        free(keyQuery_includeInactiveTiers);
        keyQuery_includeInactiveTiers = NULL;
    }
    if(valueQuery_includeInactiveTiers){
        free(valueQuery_includeInactiveTiers);
        valueQuery_includeInactiveTiers = NULL;
    }
    if(keyPairQuery_includeInactiveTiers){
        keyValuePair_free(keyPairQuery_includeInactiveTiers);
        keyPairQuery_includeInactiveTiers = NULL;
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

// Update Achievement
//
// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_response_t*
AchievementAPI_updateAchievement(apiClient_t *apiClient, char *deviceId, long accountId, long achievementId, char *analyticsTag, char *title, char *description, char *rankType, int *rankIncrement, int *minIncrement, int *nullMinIncrement, int *maxIncrement, int *nullMaxIncrement, int *validate, int *active, char *triggerDefinition)
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
    char *localVarPath = strdup("/achievement/update");





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
    char *keyQuery_achievementId = NULL;
    char * valueQuery_achievementId ;
    keyValuePair_t *keyPairQuery_achievementId = 0;
    {
        keyQuery_achievementId = strdup("achievementId");
        valueQuery_achievementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementId, MAX_NUMBER_LENGTH_LONG, "%d", achievementId);
        keyPairQuery_achievementId = keyValuePair_create(keyQuery_achievementId, valueQuery_achievementId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementId);
    }

    // query parameters
    char *keyQuery_analyticsTag = NULL;
    char * valueQuery_analyticsTag = NULL;
    keyValuePair_t *keyPairQuery_analyticsTag = 0;
    if (analyticsTag)
    {
        keyQuery_analyticsTag = strdup("analyticsTag");
        valueQuery_analyticsTag = strdup((analyticsTag));
        keyPairQuery_analyticsTag = keyValuePair_create(keyQuery_analyticsTag, valueQuery_analyticsTag);
        list_addElement(localVarQueryParameters,keyPairQuery_analyticsTag);
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
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
    }

    // query parameters
    char *keyQuery_rankIncrement = NULL;
    char * valueQuery_rankIncrement = NULL;
    keyValuePair_t *keyPairQuery_rankIncrement = 0;
    if (rankIncrement)
    {
        keyQuery_rankIncrement = strdup("rankIncrement");
        valueQuery_rankIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rankIncrement, MAX_NUMBER_LENGTH, "%d", *rankIncrement);
        keyPairQuery_rankIncrement = keyValuePair_create(keyQuery_rankIncrement, valueQuery_rankIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_rankIncrement);
    }

    // query parameters
    char *keyQuery_minIncrement = NULL;
    char * valueQuery_minIncrement = NULL;
    keyValuePair_t *keyPairQuery_minIncrement = 0;
    if (minIncrement)
    {
        keyQuery_minIncrement = strdup("minIncrement");
        valueQuery_minIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minIncrement, MAX_NUMBER_LENGTH, "%d", *minIncrement);
        keyPairQuery_minIncrement = keyValuePair_create(keyQuery_minIncrement, valueQuery_minIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_minIncrement);
    }

    // query parameters
    char *keyQuery_nullMinIncrement = NULL;
    char * valueQuery_nullMinIncrement = NULL;
    keyValuePair_t *keyPairQuery_nullMinIncrement = 0;
    if (nullMinIncrement)
    {
        keyQuery_nullMinIncrement = strdup("nullMinIncrement");
        valueQuery_nullMinIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_nullMinIncrement, MAX_NUMBER_LENGTH, "%d", *nullMinIncrement);
        keyPairQuery_nullMinIncrement = keyValuePair_create(keyQuery_nullMinIncrement, valueQuery_nullMinIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_nullMinIncrement);
    }

    // query parameters
    char *keyQuery_maxIncrement = NULL;
    char * valueQuery_maxIncrement = NULL;
    keyValuePair_t *keyPairQuery_maxIncrement = 0;
    if (maxIncrement)
    {
        keyQuery_maxIncrement = strdup("maxIncrement");
        valueQuery_maxIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxIncrement, MAX_NUMBER_LENGTH, "%d", *maxIncrement);
        keyPairQuery_maxIncrement = keyValuePair_create(keyQuery_maxIncrement, valueQuery_maxIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_maxIncrement);
    }

    // query parameters
    char *keyQuery_nullMaxIncrement = NULL;
    char * valueQuery_nullMaxIncrement = NULL;
    keyValuePair_t *keyPairQuery_nullMaxIncrement = 0;
    if (nullMaxIncrement)
    {
        keyQuery_nullMaxIncrement = strdup("nullMaxIncrement");
        valueQuery_nullMaxIncrement = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_nullMaxIncrement, MAX_NUMBER_LENGTH, "%d", *nullMaxIncrement);
        keyPairQuery_nullMaxIncrement = keyValuePair_create(keyQuery_nullMaxIncrement, valueQuery_nullMaxIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_nullMaxIncrement);
    }

    // query parameters
    char *keyQuery_validate = NULL;
    char * valueQuery_validate = NULL;
    keyValuePair_t *keyPairQuery_validate = 0;
    if (validate)
    {
        keyQuery_validate = strdup("validate");
        valueQuery_validate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_validate, MAX_NUMBER_LENGTH, "%d", *validate);
        keyPairQuery_validate = keyValuePair_create(keyQuery_validate, valueQuery_validate);
        list_addElement(localVarQueryParameters,keyPairQuery_validate);
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
    char *keyQuery_triggerDefinition = NULL;
    char * valueQuery_triggerDefinition = NULL;
    keyValuePair_t *keyPairQuery_triggerDefinition = 0;
    if (triggerDefinition)
    {
        keyQuery_triggerDefinition = strdup("triggerDefinition");
        valueQuery_triggerDefinition = strdup((triggerDefinition));
        keyPairQuery_triggerDefinition = keyValuePair_create(keyQuery_triggerDefinition, valueQuery_triggerDefinition);
        list_addElement(localVarQueryParameters,keyPairQuery_triggerDefinition);
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
    achievement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = achievement_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementId){
        free(keyQuery_achievementId);
        keyQuery_achievementId = NULL;
    }
    if(keyPairQuery_achievementId){
        keyValuePair_free(keyPairQuery_achievementId);
        keyPairQuery_achievementId = NULL;
    }
    if(keyQuery_analyticsTag){
        free(keyQuery_analyticsTag);
        keyQuery_analyticsTag = NULL;
    }
    if(valueQuery_analyticsTag){
        free(valueQuery_analyticsTag);
        valueQuery_analyticsTag = NULL;
    }
    if(keyPairQuery_analyticsTag){
        keyValuePair_free(keyPairQuery_analyticsTag);
        keyPairQuery_analyticsTag = NULL;
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
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
    }
    if(keyQuery_rankIncrement){
        free(keyQuery_rankIncrement);
        keyQuery_rankIncrement = NULL;
    }
    if(valueQuery_rankIncrement){
        free(valueQuery_rankIncrement);
        valueQuery_rankIncrement = NULL;
    }
    if(keyPairQuery_rankIncrement){
        keyValuePair_free(keyPairQuery_rankIncrement);
        keyPairQuery_rankIncrement = NULL;
    }
    if(keyQuery_minIncrement){
        free(keyQuery_minIncrement);
        keyQuery_minIncrement = NULL;
    }
    if(valueQuery_minIncrement){
        free(valueQuery_minIncrement);
        valueQuery_minIncrement = NULL;
    }
    if(keyPairQuery_minIncrement){
        keyValuePair_free(keyPairQuery_minIncrement);
        keyPairQuery_minIncrement = NULL;
    }
    if(keyQuery_nullMinIncrement){
        free(keyQuery_nullMinIncrement);
        keyQuery_nullMinIncrement = NULL;
    }
    if(valueQuery_nullMinIncrement){
        free(valueQuery_nullMinIncrement);
        valueQuery_nullMinIncrement = NULL;
    }
    if(keyPairQuery_nullMinIncrement){
        keyValuePair_free(keyPairQuery_nullMinIncrement);
        keyPairQuery_nullMinIncrement = NULL;
    }
    if(keyQuery_maxIncrement){
        free(keyQuery_maxIncrement);
        keyQuery_maxIncrement = NULL;
    }
    if(valueQuery_maxIncrement){
        free(valueQuery_maxIncrement);
        valueQuery_maxIncrement = NULL;
    }
    if(keyPairQuery_maxIncrement){
        keyValuePair_free(keyPairQuery_maxIncrement);
        keyPairQuery_maxIncrement = NULL;
    }
    if(keyQuery_nullMaxIncrement){
        free(keyQuery_nullMaxIncrement);
        keyQuery_nullMaxIncrement = NULL;
    }
    if(valueQuery_nullMaxIncrement){
        free(valueQuery_nullMaxIncrement);
        valueQuery_nullMaxIncrement = NULL;
    }
    if(keyPairQuery_nullMaxIncrement){
        keyValuePair_free(keyPairQuery_nullMaxIncrement);
        keyPairQuery_nullMaxIncrement = NULL;
    }
    if(keyQuery_validate){
        free(keyQuery_validate);
        keyQuery_validate = NULL;
    }
    if(valueQuery_validate){
        free(valueQuery_validate);
        valueQuery_validate = NULL;
    }
    if(keyPairQuery_validate){
        keyValuePair_free(keyPairQuery_validate);
        keyPairQuery_validate = NULL;
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
    if(keyQuery_triggerDefinition){
        free(keyQuery_triggerDefinition);
        keyQuery_triggerDefinition = NULL;
    }
    if(valueQuery_triggerDefinition){
        free(valueQuery_triggerDefinition);
        valueQuery_triggerDefinition = NULL;
    }
    if(keyPairQuery_triggerDefinition){
        keyValuePair_free(keyPairQuery_triggerDefinition);
        keyPairQuery_triggerDefinition = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Achievement Tier
//
// Updates a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_updateAchievementTier(apiClient_t *apiClient, long achievementTierId, char *deviceId, long accountId, binary_t* icon, long iconAssetId, char *title, char *description, long goalCount, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId, int *scoreAllInstances)
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
    char *localVarPath = strdup("/achievement/tier/update");





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
    char *keyQuery_achievementTierId = NULL;
    char * valueQuery_achievementTierId ;
    keyValuePair_t *keyPairQuery_achievementTierId = 0;
    {
        keyQuery_achievementTierId = strdup("achievementTierId");
        valueQuery_achievementTierId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementTierId, MAX_NUMBER_LENGTH_LONG, "%d", achievementTierId);
        keyPairQuery_achievementTierId = keyValuePair_create(keyQuery_achievementTierId, valueQuery_achievementTierId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementTierId);
    }

    // query parameters
    char *keyQuery_icon = NULL;
    binary_t* valueQuery_icon ;
    keyValuePair_t *keyPairQuery_icon = 0;
    if (icon)
    {
        keyQuery_icon = strdup("icon");
        valueQuery_icon = (icon);
        keyPairQuery_icon = keyValuePair_create(keyQuery_icon, &valueQuery_icon);
        list_addElement(localVarQueryParameters,keyPairQuery_icon);
    }

    // query parameters
    char *keyQuery_iconAssetId = NULL;
    char * valueQuery_iconAssetId ;
    keyValuePair_t *keyPairQuery_iconAssetId = 0;
    {
        keyQuery_iconAssetId = strdup("iconAssetId");
        valueQuery_iconAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_iconAssetId, MAX_NUMBER_LENGTH_LONG, "%d", iconAssetId);
        keyPairQuery_iconAssetId = keyValuePair_create(keyQuery_iconAssetId, valueQuery_iconAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_iconAssetId);
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
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_goalCount = NULL;
    char * valueQuery_goalCount ;
    keyValuePair_t *keyPairQuery_goalCount = 0;
    {
        keyQuery_goalCount = strdup("goalCount");
        valueQuery_goalCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_goalCount, MAX_NUMBER_LENGTH_LONG, "%d", goalCount);
        keyPairQuery_goalCount = keyValuePair_create(keyQuery_goalCount, valueQuery_goalCount);
        list_addElement(localVarQueryParameters,keyPairQuery_goalCount);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_gameId = NULL;
    char * valueQuery_gameId ;
    keyValuePair_t *keyPairQuery_gameId = 0;
    {
        keyQuery_gameId = strdup("gameId");
        valueQuery_gameId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameId, MAX_NUMBER_LENGTH_LONG, "%d", gameId);
        keyPairQuery_gameId = keyValuePair_create(keyQuery_gameId, valueQuery_gameId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameId);
    }

    // query parameters
    char *keyQuery_packId = NULL;
    char * valueQuery_packId ;
    keyValuePair_t *keyPairQuery_packId = 0;
    {
        keyQuery_packId = strdup("packId");
        valueQuery_packId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_packId, MAX_NUMBER_LENGTH_LONG, "%d", packId);
        keyPairQuery_packId = keyValuePair_create(keyQuery_packId, valueQuery_packId);
        list_addElement(localVarQueryParameters,keyPairQuery_packId);
    }

    // query parameters
    char *keyQuery_gameLevelId = NULL;
    char * valueQuery_gameLevelId ;
    keyValuePair_t *keyPairQuery_gameLevelId = 0;
    {
        keyQuery_gameLevelId = strdup("gameLevelId");
        valueQuery_gameLevelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameLevelId, MAX_NUMBER_LENGTH_LONG, "%d", gameLevelId);
        keyPairQuery_gameLevelId = keyValuePair_create(keyQuery_gameLevelId, valueQuery_gameLevelId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelId);
    }

    // query parameters
    char *keyQuery_gameObjectId = NULL;
    char * valueQuery_gameObjectId ;
    keyValuePair_t *keyPairQuery_gameObjectId = 0;
    {
        keyQuery_gameObjectId = strdup("gameObjectId");
        valueQuery_gameObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameObjectId, MAX_NUMBER_LENGTH_LONG, "%d", gameObjectId);
        keyPairQuery_gameObjectId = keyValuePair_create(keyQuery_gameObjectId, valueQuery_gameObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectId);
    }

    // query parameters
    char *keyQuery_scoreAllInstances = NULL;
    char * valueQuery_scoreAllInstances = NULL;
    keyValuePair_t *keyPairQuery_scoreAllInstances = 0;
    if (scoreAllInstances)
    {
        keyQuery_scoreAllInstances = strdup("scoreAllInstances");
        valueQuery_scoreAllInstances = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_scoreAllInstances, MAX_NUMBER_LENGTH, "%d", *scoreAllInstances);
        keyPairQuery_scoreAllInstances = keyValuePair_create(keyQuery_scoreAllInstances, valueQuery_scoreAllInstances);
        list_addElement(localVarQueryParameters,keyPairQuery_scoreAllInstances);
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
    achievement_tier_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = achievement_tier_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementTierId){
        free(keyQuery_achievementTierId);
        keyQuery_achievementTierId = NULL;
    }
    if(keyPairQuery_achievementTierId){
        keyValuePair_free(keyPairQuery_achievementTierId);
        keyPairQuery_achievementTierId = NULL;
    }
    if(keyQuery_icon){
        free(keyQuery_icon);
        keyQuery_icon = NULL;
    }
    if(keyPairQuery_icon){
        keyValuePair_free(keyPairQuery_icon);
        keyPairQuery_icon = NULL;
    }
    if(keyQuery_iconAssetId){
        free(keyQuery_iconAssetId);
        keyQuery_iconAssetId = NULL;
    }
    if(keyPairQuery_iconAssetId){
        keyValuePair_free(keyPairQuery_iconAssetId);
        keyPairQuery_iconAssetId = NULL;
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
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_goalCount){
        free(keyQuery_goalCount);
        keyQuery_goalCount = NULL;
    }
    if(keyPairQuery_goalCount){
        keyValuePair_free(keyPairQuery_goalCount);
        keyPairQuery_goalCount = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_gameId){
        free(keyQuery_gameId);
        keyQuery_gameId = NULL;
    }
    if(keyPairQuery_gameId){
        keyValuePair_free(keyPairQuery_gameId);
        keyPairQuery_gameId = NULL;
    }
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
    }
    if(keyQuery_gameLevelId){
        free(keyQuery_gameLevelId);
        keyQuery_gameLevelId = NULL;
    }
    if(keyPairQuery_gameLevelId){
        keyValuePair_free(keyPairQuery_gameLevelId);
        keyPairQuery_gameLevelId = NULL;
    }
    if(keyQuery_gameObjectId){
        free(keyQuery_gameObjectId);
        keyQuery_gameObjectId = NULL;
    }
    if(keyPairQuery_gameObjectId){
        keyValuePair_free(keyPairQuery_gameObjectId);
        keyPairQuery_gameObjectId = NULL;
    }
    if(keyQuery_scoreAllInstances){
        free(keyQuery_scoreAllInstances);
        keyQuery_scoreAllInstances = NULL;
    }
    if(valueQuery_scoreAllInstances){
        free(valueQuery_scoreAllInstances);
        valueQuery_scoreAllInstances = NULL;
    }
    if(keyPairQuery_scoreAllInstances){
        keyValuePair_free(keyPairQuery_scoreAllInstances);
        keyPairQuery_scoreAllInstances = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Achievement Progress
//
// Update user achievement progress.
//
sirqul_response_t*
AchievementAPI_updateUserAchievement(apiClient_t *apiClient, long accountId, long achievementId, char *tag, long customId, long increment, long startDate, long endDate, int *returnProgress)
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
    char *localVarPath = strdup("/achievement/progress/update");





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
    char *keyQuery_achievementId = NULL;
    char * valueQuery_achievementId ;
    keyValuePair_t *keyPairQuery_achievementId = 0;
    {
        keyQuery_achievementId = strdup("achievementId");
        valueQuery_achievementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementId, MAX_NUMBER_LENGTH_LONG, "%d", achievementId);
        keyPairQuery_achievementId = keyValuePair_create(keyQuery_achievementId, valueQuery_achievementId);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementId);
    }

    // query parameters
    char *keyQuery_tag = NULL;
    char * valueQuery_tag = NULL;
    keyValuePair_t *keyPairQuery_tag = 0;
    if (tag)
    {
        keyQuery_tag = strdup("tag");
        valueQuery_tag = strdup((tag));
        keyPairQuery_tag = keyValuePair_create(keyQuery_tag, valueQuery_tag);
        list_addElement(localVarQueryParameters,keyPairQuery_tag);
    }

    // query parameters
    char *keyQuery_customId = NULL;
    char * valueQuery_customId ;
    keyValuePair_t *keyPairQuery_customId = 0;
    {
        keyQuery_customId = strdup("customId");
        valueQuery_customId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_customId, MAX_NUMBER_LENGTH_LONG, "%d", customId);
        keyPairQuery_customId = keyValuePair_create(keyQuery_customId, valueQuery_customId);
        list_addElement(localVarQueryParameters,keyPairQuery_customId);
    }

    // query parameters
    char *keyQuery_increment = NULL;
    char * valueQuery_increment ;
    keyValuePair_t *keyPairQuery_increment = 0;
    {
        keyQuery_increment = strdup("increment");
        valueQuery_increment = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_increment, MAX_NUMBER_LENGTH_LONG, "%d", increment);
        keyPairQuery_increment = keyValuePair_create(keyQuery_increment, valueQuery_increment);
        list_addElement(localVarQueryParameters,keyPairQuery_increment);
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
    char *keyQuery_returnProgress = NULL;
    char * valueQuery_returnProgress = NULL;
    keyValuePair_t *keyPairQuery_returnProgress = 0;
    if (returnProgress)
    {
        keyQuery_returnProgress = strdup("returnProgress");
        valueQuery_returnProgress = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnProgress, MAX_NUMBER_LENGTH, "%d", *returnProgress);
        keyPairQuery_returnProgress = keyValuePair_create(keyQuery_returnProgress, valueQuery_returnProgress);
        list_addElement(localVarQueryParameters,keyPairQuery_returnProgress);
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
        cJSON *AchievementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AchievementAPIlocalVarJSON);
        cJSON_Delete(AchievementAPIlocalVarJSON);
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
    if(keyQuery_achievementId){
        free(keyQuery_achievementId);
        keyQuery_achievementId = NULL;
    }
    if(keyPairQuery_achievementId){
        keyValuePair_free(keyPairQuery_achievementId);
        keyPairQuery_achievementId = NULL;
    }
    if(keyQuery_tag){
        free(keyQuery_tag);
        keyQuery_tag = NULL;
    }
    if(valueQuery_tag){
        free(valueQuery_tag);
        valueQuery_tag = NULL;
    }
    if(keyPairQuery_tag){
        keyValuePair_free(keyPairQuery_tag);
        keyPairQuery_tag = NULL;
    }
    if(keyQuery_customId){
        free(keyQuery_customId);
        keyQuery_customId = NULL;
    }
    if(keyPairQuery_customId){
        keyValuePair_free(keyPairQuery_customId);
        keyPairQuery_customId = NULL;
    }
    if(keyQuery_increment){
        free(keyQuery_increment);
        keyQuery_increment = NULL;
    }
    if(keyPairQuery_increment){
        keyValuePair_free(keyPairQuery_increment);
        keyPairQuery_increment = NULL;
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
    if(keyQuery_returnProgress){
        free(keyQuery_returnProgress);
        keyQuery_returnProgress = NULL;
    }
    if(valueQuery_returnProgress){
        free(valueQuery_returnProgress);
        valueQuery_returnProgress = NULL;
    }
    if(keyPairQuery_returnProgress){
        keyValuePair_free(keyPairQuery_returnProgress);
        keyPairQuery_returnProgress = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

