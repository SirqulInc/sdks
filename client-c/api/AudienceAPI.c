#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AudienceAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for AudienceAPI_getAudienceList

static char* getAudienceList_SORTFIELD_ToString(sirqul_iot_platform_getAudienceList_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DESCRIPTION", "SEND_SUGGESTION", "OWNER_ID", "OWNER_DISPLAY", "GENDER" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_getAudienceList_sortField_e getAudienceList_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DESCRIPTION", "SEND_SUGGESTION", "OWNER_ID", "OWNER_DISPLAY", "GENDER" };
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
// Function getAudienceList_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getAudienceList_SORTFIELD_convertToJSON(sirqul_iot_platform_getAudienceList_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", getAudienceList_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getAudienceList_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getAudienceList_sortField_e getAudienceList_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_getAudienceList_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = getAudienceList_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Create Audience
//
// Create a user defined audience.
//
audience_response_t*
AudienceAPI_createAudience(apiClient_t *apiClient, long accountId, char *name, char *description, char *searchTags, char *gender, char *ageGroups, char *categoryIds, char *applicationIds, char *gameExperienceLevel, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius, int *startTimeOffset, int *endTimeOffset, int *sendSuggestion, char *associateDescription, char *associateType, long associateId, char *groupingId, char *metaData, char *visibility, char *audienceType, int *useOrder, char *cohortRegionsData, char *appKey, char *trilaterationTypes, int *uniqueName)
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
    char *localVarPath = strdup("/audience/create");





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
    char *keyQuery_ageGroups = NULL;
    char * valueQuery_ageGroups = NULL;
    keyValuePair_t *keyPairQuery_ageGroups = 0;
    if (ageGroups)
    {
        keyQuery_ageGroups = strdup("ageGroups");
        valueQuery_ageGroups = strdup((ageGroups));
        keyPairQuery_ageGroups = keyValuePair_create(keyQuery_ageGroups, valueQuery_ageGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_ageGroups);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_applicationIds = NULL;
    char * valueQuery_applicationIds = NULL;
    keyValuePair_t *keyPairQuery_applicationIds = 0;
    if (applicationIds)
    {
        keyQuery_applicationIds = strdup("applicationIds");
        valueQuery_applicationIds = strdup((applicationIds));
        keyPairQuery_applicationIds = keyValuePair_create(keyQuery_applicationIds, valueQuery_applicationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_applicationIds);
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
    char *keyQuery_devices = NULL;
    char * valueQuery_devices = NULL;
    keyValuePair_t *keyPairQuery_devices = 0;
    if (devices)
    {
        keyQuery_devices = strdup("devices");
        valueQuery_devices = strdup((devices));
        keyPairQuery_devices = keyValuePair_create(keyQuery_devices, valueQuery_devices);
        list_addElement(localVarQueryParameters,keyPairQuery_devices);
    }

    // query parameters
    char *keyQuery_deviceIds = NULL;
    char * valueQuery_deviceIds = NULL;
    keyValuePair_t *keyPairQuery_deviceIds = 0;
    if (deviceIds)
    {
        keyQuery_deviceIds = strdup("deviceIds");
        valueQuery_deviceIds = strdup((deviceIds));
        keyPairQuery_deviceIds = keyValuePair_create(keyQuery_deviceIds, valueQuery_deviceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIds);
    }

    // query parameters
    char *keyQuery_deviceVersions = NULL;
    char * valueQuery_deviceVersions = NULL;
    keyValuePair_t *keyPairQuery_deviceVersions = 0;
    if (deviceVersions)
    {
        keyQuery_deviceVersions = strdup("deviceVersions");
        valueQuery_deviceVersions = strdup((deviceVersions));
        keyPairQuery_deviceVersions = keyValuePair_create(keyQuery_deviceVersions, valueQuery_deviceVersions);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceVersions);
    }

    // query parameters
    char *keyQuery_locations = NULL;
    char * valueQuery_locations = NULL;
    keyValuePair_t *keyPairQuery_locations = 0;
    if (locations)
    {
        keyQuery_locations = strdup("locations");
        valueQuery_locations = strdup((locations));
        keyPairQuery_locations = keyValuePair_create(keyQuery_locations, valueQuery_locations);
        list_addElement(localVarQueryParameters,keyPairQuery_locations);
    }

    // query parameters
    char *keyQuery_radius = NULL;
    char * valueQuery_radius = NULL;
    keyValuePair_t *keyPairQuery_radius = 0;
    if (radius)
    {
        keyQuery_radius = strdup("radius");
        valueQuery_radius = strdup((radius));
        keyPairQuery_radius = keyValuePair_create(keyQuery_radius, valueQuery_radius);
        list_addElement(localVarQueryParameters,keyPairQuery_radius);
    }

    // query parameters
    char *keyQuery_startTimeOffset = NULL;
    char * valueQuery_startTimeOffset = NULL;
    keyValuePair_t *keyPairQuery_startTimeOffset = 0;
    if (startTimeOffset)
    {
        keyQuery_startTimeOffset = strdup("startTimeOffset");
        valueQuery_startTimeOffset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_startTimeOffset, MAX_NUMBER_LENGTH, "%d", *startTimeOffset);
        keyPairQuery_startTimeOffset = keyValuePair_create(keyQuery_startTimeOffset, valueQuery_startTimeOffset);
        list_addElement(localVarQueryParameters,keyPairQuery_startTimeOffset);
    }

    // query parameters
    char *keyQuery_endTimeOffset = NULL;
    char * valueQuery_endTimeOffset = NULL;
    keyValuePair_t *keyPairQuery_endTimeOffset = 0;
    if (endTimeOffset)
    {
        keyQuery_endTimeOffset = strdup("endTimeOffset");
        valueQuery_endTimeOffset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_endTimeOffset, MAX_NUMBER_LENGTH, "%d", *endTimeOffset);
        keyPairQuery_endTimeOffset = keyValuePair_create(keyQuery_endTimeOffset, valueQuery_endTimeOffset);
        list_addElement(localVarQueryParameters,keyPairQuery_endTimeOffset);
    }

    // query parameters
    char *keyQuery_sendSuggestion = NULL;
    char * valueQuery_sendSuggestion = NULL;
    keyValuePair_t *keyPairQuery_sendSuggestion = 0;
    if (sendSuggestion)
    {
        keyQuery_sendSuggestion = strdup("sendSuggestion");
        valueQuery_sendSuggestion = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendSuggestion, MAX_NUMBER_LENGTH, "%d", *sendSuggestion);
        keyPairQuery_sendSuggestion = keyValuePair_create(keyQuery_sendSuggestion, valueQuery_sendSuggestion);
        list_addElement(localVarQueryParameters,keyPairQuery_sendSuggestion);
    }

    // query parameters
    char *keyQuery_associateDescription = NULL;
    char * valueQuery_associateDescription = NULL;
    keyValuePair_t *keyPairQuery_associateDescription = 0;
    if (associateDescription)
    {
        keyQuery_associateDescription = strdup("associateDescription");
        valueQuery_associateDescription = strdup((associateDescription));
        keyPairQuery_associateDescription = keyValuePair_create(keyQuery_associateDescription, valueQuery_associateDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_associateDescription);
    }

    // query parameters
    char *keyQuery_associateType = NULL;
    char * valueQuery_associateType = NULL;
    keyValuePair_t *keyPairQuery_associateType = 0;
    if (associateType)
    {
        keyQuery_associateType = strdup("associateType");
        valueQuery_associateType = strdup((associateType));
        keyPairQuery_associateType = keyValuePair_create(keyQuery_associateType, valueQuery_associateType);
        list_addElement(localVarQueryParameters,keyPairQuery_associateType);
    }

    // query parameters
    char *keyQuery_associateId = NULL;
    char * valueQuery_associateId ;
    keyValuePair_t *keyPairQuery_associateId = 0;
    {
        keyQuery_associateId = strdup("associateId");
        valueQuery_associateId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_associateId, MAX_NUMBER_LENGTH_LONG, "%d", associateId);
        keyPairQuery_associateId = keyValuePair_create(keyQuery_associateId, valueQuery_associateId);
        list_addElement(localVarQueryParameters,keyPairQuery_associateId);
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
    char *keyQuery_visibility = NULL;
    char * valueQuery_visibility = NULL;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = strdup((visibility));
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, valueQuery_visibility);
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_audienceType = NULL;
    char * valueQuery_audienceType = NULL;
    keyValuePair_t *keyPairQuery_audienceType = 0;
    if (audienceType)
    {
        keyQuery_audienceType = strdup("audienceType");
        valueQuery_audienceType = strdup((audienceType));
        keyPairQuery_audienceType = keyValuePair_create(keyQuery_audienceType, valueQuery_audienceType);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceType);
    }

    // query parameters
    char *keyQuery_useOrder = NULL;
    char * valueQuery_useOrder = NULL;
    keyValuePair_t *keyPairQuery_useOrder = 0;
    if (useOrder)
    {
        keyQuery_useOrder = strdup("useOrder");
        valueQuery_useOrder = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useOrder, MAX_NUMBER_LENGTH, "%d", *useOrder);
        keyPairQuery_useOrder = keyValuePair_create(keyQuery_useOrder, valueQuery_useOrder);
        list_addElement(localVarQueryParameters,keyPairQuery_useOrder);
    }

    // query parameters
    char *keyQuery_cohortRegionsData = NULL;
    char * valueQuery_cohortRegionsData = NULL;
    keyValuePair_t *keyPairQuery_cohortRegionsData = 0;
    if (cohortRegionsData)
    {
        keyQuery_cohortRegionsData = strdup("cohortRegionsData");
        valueQuery_cohortRegionsData = strdup((cohortRegionsData));
        keyPairQuery_cohortRegionsData = keyValuePair_create(keyQuery_cohortRegionsData, valueQuery_cohortRegionsData);
        list_addElement(localVarQueryParameters,keyPairQuery_cohortRegionsData);
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
    char *keyQuery_trilaterationTypes = NULL;
    char * valueQuery_trilaterationTypes = NULL;
    keyValuePair_t *keyPairQuery_trilaterationTypes = 0;
    if (trilaterationTypes)
    {
        keyQuery_trilaterationTypes = strdup("trilaterationTypes");
        valueQuery_trilaterationTypes = strdup((trilaterationTypes));
        keyPairQuery_trilaterationTypes = keyValuePair_create(keyQuery_trilaterationTypes, valueQuery_trilaterationTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_trilaterationTypes);
    }

    // query parameters
    char *keyQuery_uniqueName = NULL;
    char * valueQuery_uniqueName = NULL;
    keyValuePair_t *keyPairQuery_uniqueName = 0;
    if (uniqueName)
    {
        keyQuery_uniqueName = strdup("uniqueName");
        valueQuery_uniqueName = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_uniqueName, MAX_NUMBER_LENGTH, "%d", *uniqueName);
        keyPairQuery_uniqueName = keyValuePair_create(keyQuery_uniqueName, valueQuery_uniqueName);
        list_addElement(localVarQueryParameters,keyPairQuery_uniqueName);
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
    audience_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = audience_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_ageGroups){
        free(keyQuery_ageGroups);
        keyQuery_ageGroups = NULL;
    }
    if(valueQuery_ageGroups){
        free(valueQuery_ageGroups);
        valueQuery_ageGroups = NULL;
    }
    if(keyPairQuery_ageGroups){
        keyValuePair_free(keyPairQuery_ageGroups);
        keyPairQuery_ageGroups = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_applicationIds){
        free(keyQuery_applicationIds);
        keyQuery_applicationIds = NULL;
    }
    if(valueQuery_applicationIds){
        free(valueQuery_applicationIds);
        valueQuery_applicationIds = NULL;
    }
    if(keyPairQuery_applicationIds){
        keyValuePair_free(keyPairQuery_applicationIds);
        keyPairQuery_applicationIds = NULL;
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
    if(keyQuery_devices){
        free(keyQuery_devices);
        keyQuery_devices = NULL;
    }
    if(valueQuery_devices){
        free(valueQuery_devices);
        valueQuery_devices = NULL;
    }
    if(keyPairQuery_devices){
        keyValuePair_free(keyPairQuery_devices);
        keyPairQuery_devices = NULL;
    }
    if(keyQuery_deviceIds){
        free(keyQuery_deviceIds);
        keyQuery_deviceIds = NULL;
    }
    if(valueQuery_deviceIds){
        free(valueQuery_deviceIds);
        valueQuery_deviceIds = NULL;
    }
    if(keyPairQuery_deviceIds){
        keyValuePair_free(keyPairQuery_deviceIds);
        keyPairQuery_deviceIds = NULL;
    }
    if(keyQuery_deviceVersions){
        free(keyQuery_deviceVersions);
        keyQuery_deviceVersions = NULL;
    }
    if(valueQuery_deviceVersions){
        free(valueQuery_deviceVersions);
        valueQuery_deviceVersions = NULL;
    }
    if(keyPairQuery_deviceVersions){
        keyValuePair_free(keyPairQuery_deviceVersions);
        keyPairQuery_deviceVersions = NULL;
    }
    if(keyQuery_locations){
        free(keyQuery_locations);
        keyQuery_locations = NULL;
    }
    if(valueQuery_locations){
        free(valueQuery_locations);
        valueQuery_locations = NULL;
    }
    if(keyPairQuery_locations){
        keyValuePair_free(keyPairQuery_locations);
        keyPairQuery_locations = NULL;
    }
    if(keyQuery_radius){
        free(keyQuery_radius);
        keyQuery_radius = NULL;
    }
    if(valueQuery_radius){
        free(valueQuery_radius);
        valueQuery_radius = NULL;
    }
    if(keyPairQuery_radius){
        keyValuePair_free(keyPairQuery_radius);
        keyPairQuery_radius = NULL;
    }
    if(keyQuery_startTimeOffset){
        free(keyQuery_startTimeOffset);
        keyQuery_startTimeOffset = NULL;
    }
    if(valueQuery_startTimeOffset){
        free(valueQuery_startTimeOffset);
        valueQuery_startTimeOffset = NULL;
    }
    if(keyPairQuery_startTimeOffset){
        keyValuePair_free(keyPairQuery_startTimeOffset);
        keyPairQuery_startTimeOffset = NULL;
    }
    if(keyQuery_endTimeOffset){
        free(keyQuery_endTimeOffset);
        keyQuery_endTimeOffset = NULL;
    }
    if(valueQuery_endTimeOffset){
        free(valueQuery_endTimeOffset);
        valueQuery_endTimeOffset = NULL;
    }
    if(keyPairQuery_endTimeOffset){
        keyValuePair_free(keyPairQuery_endTimeOffset);
        keyPairQuery_endTimeOffset = NULL;
    }
    if(keyQuery_sendSuggestion){
        free(keyQuery_sendSuggestion);
        keyQuery_sendSuggestion = NULL;
    }
    if(valueQuery_sendSuggestion){
        free(valueQuery_sendSuggestion);
        valueQuery_sendSuggestion = NULL;
    }
    if(keyPairQuery_sendSuggestion){
        keyValuePair_free(keyPairQuery_sendSuggestion);
        keyPairQuery_sendSuggestion = NULL;
    }
    if(keyQuery_associateDescription){
        free(keyQuery_associateDescription);
        keyQuery_associateDescription = NULL;
    }
    if(valueQuery_associateDescription){
        free(valueQuery_associateDescription);
        valueQuery_associateDescription = NULL;
    }
    if(keyPairQuery_associateDescription){
        keyValuePair_free(keyPairQuery_associateDescription);
        keyPairQuery_associateDescription = NULL;
    }
    if(keyQuery_associateType){
        free(keyQuery_associateType);
        keyQuery_associateType = NULL;
    }
    if(valueQuery_associateType){
        free(valueQuery_associateType);
        valueQuery_associateType = NULL;
    }
    if(keyPairQuery_associateType){
        keyValuePair_free(keyPairQuery_associateType);
        keyPairQuery_associateType = NULL;
    }
    if(keyQuery_associateId){
        free(keyQuery_associateId);
        keyQuery_associateId = NULL;
    }
    if(keyPairQuery_associateId){
        keyValuePair_free(keyPairQuery_associateId);
        keyPairQuery_associateId = NULL;
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
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(valueQuery_visibility){
        free(valueQuery_visibility);
        valueQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_audienceType){
        free(keyQuery_audienceType);
        keyQuery_audienceType = NULL;
    }
    if(valueQuery_audienceType){
        free(valueQuery_audienceType);
        valueQuery_audienceType = NULL;
    }
    if(keyPairQuery_audienceType){
        keyValuePair_free(keyPairQuery_audienceType);
        keyPairQuery_audienceType = NULL;
    }
    if(keyQuery_useOrder){
        free(keyQuery_useOrder);
        keyQuery_useOrder = NULL;
    }
    if(valueQuery_useOrder){
        free(valueQuery_useOrder);
        valueQuery_useOrder = NULL;
    }
    if(keyPairQuery_useOrder){
        keyValuePair_free(keyPairQuery_useOrder);
        keyPairQuery_useOrder = NULL;
    }
    if(keyQuery_cohortRegionsData){
        free(keyQuery_cohortRegionsData);
        keyQuery_cohortRegionsData = NULL;
    }
    if(valueQuery_cohortRegionsData){
        free(valueQuery_cohortRegionsData);
        valueQuery_cohortRegionsData = NULL;
    }
    if(keyPairQuery_cohortRegionsData){
        keyValuePair_free(keyPairQuery_cohortRegionsData);
        keyPairQuery_cohortRegionsData = NULL;
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
    if(keyQuery_trilaterationTypes){
        free(keyQuery_trilaterationTypes);
        keyQuery_trilaterationTypes = NULL;
    }
    if(valueQuery_trilaterationTypes){
        free(valueQuery_trilaterationTypes);
        valueQuery_trilaterationTypes = NULL;
    }
    if(keyPairQuery_trilaterationTypes){
        keyValuePair_free(keyPairQuery_trilaterationTypes);
        keyPairQuery_trilaterationTypes = NULL;
    }
    if(keyQuery_uniqueName){
        free(keyQuery_uniqueName);
        keyQuery_uniqueName = NULL;
    }
    if(valueQuery_uniqueName){
        free(valueQuery_uniqueName);
        valueQuery_uniqueName = NULL;
    }
    if(keyPairQuery_uniqueName){
        keyValuePair_free(keyPairQuery_uniqueName);
        keyPairQuery_uniqueName = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Audience
//
// Delete an audience. The audience and account must be valid and have the appropirate permissions to view the content.
//
sirqul_response_t*
AudienceAPI_deleteAudience(apiClient_t *apiClient, long accountId, long audienceId)
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
    char *localVarPath = strdup("/audience/delete");





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
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_audienceId){
        free(keyQuery_audienceId);
        keyQuery_audienceId = NULL;
    }
    if(keyPairQuery_audienceId){
        keyValuePair_free(keyPairQuery_audienceId);
        keyPairQuery_audienceId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Age Groups
//
// Gets the list of available age groups that can be selected by consumers and retailers targeting offers.
//
list_t*
AudienceAPI_getAgeGroups(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/audience/ageGroups");




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
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AudienceAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AudienceAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AudienceAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Audience
//
// Get an audience. The audience and account must be valid and have the appropriate permissions to view the content.
//
audience_response_t*
AudienceAPI_getAudience(apiClient_t *apiClient, long accountId, long audienceId, char *appKey, int *returnAccountCount, int *returnAlbumCount, char *albumTypesForCount)
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
    char *localVarPath = strdup("/audience/get");





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
    char *keyQuery_returnAccountCount = NULL;
    char * valueQuery_returnAccountCount = NULL;
    keyValuePair_t *keyPairQuery_returnAccountCount = 0;
    if (returnAccountCount)
    {
        keyQuery_returnAccountCount = strdup("returnAccountCount");
        valueQuery_returnAccountCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAccountCount, MAX_NUMBER_LENGTH, "%d", *returnAccountCount);
        keyPairQuery_returnAccountCount = keyValuePair_create(keyQuery_returnAccountCount, valueQuery_returnAccountCount);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAccountCount);
    }

    // query parameters
    char *keyQuery_returnAlbumCount = NULL;
    char * valueQuery_returnAlbumCount = NULL;
    keyValuePair_t *keyPairQuery_returnAlbumCount = 0;
    if (returnAlbumCount)
    {
        keyQuery_returnAlbumCount = strdup("returnAlbumCount");
        valueQuery_returnAlbumCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAlbumCount, MAX_NUMBER_LENGTH, "%d", *returnAlbumCount);
        keyPairQuery_returnAlbumCount = keyValuePair_create(keyQuery_returnAlbumCount, valueQuery_returnAlbumCount);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAlbumCount);
    }

    // query parameters
    char *keyQuery_albumTypesForCount = NULL;
    char * valueQuery_albumTypesForCount = NULL;
    keyValuePair_t *keyPairQuery_albumTypesForCount = 0;
    if (albumTypesForCount)
    {
        keyQuery_albumTypesForCount = strdup("albumTypesForCount");
        valueQuery_albumTypesForCount = strdup((albumTypesForCount));
        keyPairQuery_albumTypesForCount = keyValuePair_create(keyQuery_albumTypesForCount, valueQuery_albumTypesForCount);
        list_addElement(localVarQueryParameters,keyPairQuery_albumTypesForCount);
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
    audience_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = audience_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_audienceId){
        free(keyQuery_audienceId);
        keyQuery_audienceId = NULL;
    }
    if(keyPairQuery_audienceId){
        keyValuePair_free(keyPairQuery_audienceId);
        keyPairQuery_audienceId = NULL;
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
    if(keyQuery_returnAccountCount){
        free(keyQuery_returnAccountCount);
        keyQuery_returnAccountCount = NULL;
    }
    if(valueQuery_returnAccountCount){
        free(valueQuery_returnAccountCount);
        valueQuery_returnAccountCount = NULL;
    }
    if(keyPairQuery_returnAccountCount){
        keyValuePair_free(keyPairQuery_returnAccountCount);
        keyPairQuery_returnAccountCount = NULL;
    }
    if(keyQuery_returnAlbumCount){
        free(keyQuery_returnAlbumCount);
        keyQuery_returnAlbumCount = NULL;
    }
    if(valueQuery_returnAlbumCount){
        free(valueQuery_returnAlbumCount);
        valueQuery_returnAlbumCount = NULL;
    }
    if(keyPairQuery_returnAlbumCount){
        keyValuePair_free(keyPairQuery_returnAlbumCount);
        keyPairQuery_returnAlbumCount = NULL;
    }
    if(keyQuery_albumTypesForCount){
        free(keyQuery_albumTypesForCount);
        keyQuery_albumTypesForCount = NULL;
    }
    if(valueQuery_albumTypesForCount){
        free(valueQuery_albumTypesForCount);
        valueQuery_albumTypesForCount = NULL;
    }
    if(keyPairQuery_albumTypesForCount){
        keyValuePair_free(keyPairQuery_albumTypesForCount);
        keyPairQuery_albumTypesForCount = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Audiences
//
// Get the list audiences owned by the account
//
list_t*
AudienceAPI_getAudienceList(apiClient_t *apiClient, long accountId, char *albumIds, char *keyword, char *keywordFields, sirqul_iot_platform_getAudienceList_sortField_e sortField, int *descending, int *start, int *limit, int *sendSuggestion, int *activeOnly, int *groupByGroupingId, char *appKey, int *returnGlobal, int *exactKeyword, char *audienceType, char *audienceTypes, int *returnAccountCount, int *returnAlbumCount, char *albumTypesForCount)
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
    char *localVarPath = strdup("/audience/search");





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
    char *keyQuery_keywordFields = NULL;
    char * valueQuery_keywordFields = NULL;
    keyValuePair_t *keyPairQuery_keywordFields = 0;
    if (keywordFields)
    {
        keyQuery_keywordFields = strdup("keywordFields");
        valueQuery_keywordFields = strdup((keywordFields));
        keyPairQuery_keywordFields = keyValuePair_create(keyQuery_keywordFields, valueQuery_keywordFields);
        list_addElement(localVarQueryParameters,keyPairQuery_keywordFields);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_getAudienceList_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(getAudienceList_SORTFIELD_ToString(
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
    char *keyQuery_sendSuggestion = NULL;
    char * valueQuery_sendSuggestion = NULL;
    keyValuePair_t *keyPairQuery_sendSuggestion = 0;
    if (sendSuggestion)
    {
        keyQuery_sendSuggestion = strdup("sendSuggestion");
        valueQuery_sendSuggestion = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendSuggestion, MAX_NUMBER_LENGTH, "%d", *sendSuggestion);
        keyPairQuery_sendSuggestion = keyValuePair_create(keyQuery_sendSuggestion, valueQuery_sendSuggestion);
        list_addElement(localVarQueryParameters,keyPairQuery_sendSuggestion);
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
    char *keyQuery_returnGlobal = NULL;
    char * valueQuery_returnGlobal = NULL;
    keyValuePair_t *keyPairQuery_returnGlobal = 0;
    if (returnGlobal)
    {
        keyQuery_returnGlobal = strdup("returnGlobal");
        valueQuery_returnGlobal = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnGlobal, MAX_NUMBER_LENGTH, "%d", *returnGlobal);
        keyPairQuery_returnGlobal = keyValuePair_create(keyQuery_returnGlobal, valueQuery_returnGlobal);
        list_addElement(localVarQueryParameters,keyPairQuery_returnGlobal);
    }

    // query parameters
    char *keyQuery_exactKeyword = NULL;
    char * valueQuery_exactKeyword = NULL;
    keyValuePair_t *keyPairQuery_exactKeyword = 0;
    if (exactKeyword)
    {
        keyQuery_exactKeyword = strdup("exactKeyword");
        valueQuery_exactKeyword = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_exactKeyword, MAX_NUMBER_LENGTH, "%d", *exactKeyword);
        keyPairQuery_exactKeyword = keyValuePair_create(keyQuery_exactKeyword, valueQuery_exactKeyword);
        list_addElement(localVarQueryParameters,keyPairQuery_exactKeyword);
    }

    // query parameters
    char *keyQuery_audienceType = NULL;
    char * valueQuery_audienceType = NULL;
    keyValuePair_t *keyPairQuery_audienceType = 0;
    if (audienceType)
    {
        keyQuery_audienceType = strdup("audienceType");
        valueQuery_audienceType = strdup((audienceType));
        keyPairQuery_audienceType = keyValuePair_create(keyQuery_audienceType, valueQuery_audienceType);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceType);
    }

    // query parameters
    char *keyQuery_audienceTypes = NULL;
    char * valueQuery_audienceTypes = NULL;
    keyValuePair_t *keyPairQuery_audienceTypes = 0;
    if (audienceTypes)
    {
        keyQuery_audienceTypes = strdup("audienceTypes");
        valueQuery_audienceTypes = strdup((audienceTypes));
        keyPairQuery_audienceTypes = keyValuePair_create(keyQuery_audienceTypes, valueQuery_audienceTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceTypes);
    }

    // query parameters
    char *keyQuery_returnAccountCount = NULL;
    char * valueQuery_returnAccountCount = NULL;
    keyValuePair_t *keyPairQuery_returnAccountCount = 0;
    if (returnAccountCount)
    {
        keyQuery_returnAccountCount = strdup("returnAccountCount");
        valueQuery_returnAccountCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAccountCount, MAX_NUMBER_LENGTH, "%d", *returnAccountCount);
        keyPairQuery_returnAccountCount = keyValuePair_create(keyQuery_returnAccountCount, valueQuery_returnAccountCount);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAccountCount);
    }

    // query parameters
    char *keyQuery_returnAlbumCount = NULL;
    char * valueQuery_returnAlbumCount = NULL;
    keyValuePair_t *keyPairQuery_returnAlbumCount = 0;
    if (returnAlbumCount)
    {
        keyQuery_returnAlbumCount = strdup("returnAlbumCount");
        valueQuery_returnAlbumCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAlbumCount, MAX_NUMBER_LENGTH, "%d", *returnAlbumCount);
        keyPairQuery_returnAlbumCount = keyValuePair_create(keyQuery_returnAlbumCount, valueQuery_returnAlbumCount);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAlbumCount);
    }

    // query parameters
    char *keyQuery_albumTypesForCount = NULL;
    char * valueQuery_albumTypesForCount = NULL;
    keyValuePair_t *keyPairQuery_albumTypesForCount = 0;
    if (albumTypesForCount)
    {
        keyQuery_albumTypesForCount = strdup("albumTypesForCount");
        valueQuery_albumTypesForCount = strdup((albumTypesForCount));
        keyPairQuery_albumTypesForCount = keyValuePair_create(keyQuery_albumTypesForCount, valueQuery_albumTypesForCount);
        list_addElement(localVarQueryParameters,keyPairQuery_albumTypesForCount);
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
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AudienceAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AudienceAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AudienceAPIlocalVarJSON);
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
    if(keyQuery_keywordFields){
        free(keyQuery_keywordFields);
        keyQuery_keywordFields = NULL;
    }
    if(valueQuery_keywordFields){
        free(valueQuery_keywordFields);
        valueQuery_keywordFields = NULL;
    }
    if(keyPairQuery_keywordFields){
        keyValuePair_free(keyPairQuery_keywordFields);
        keyPairQuery_keywordFields = NULL;
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
    if(keyQuery_sendSuggestion){
        free(keyQuery_sendSuggestion);
        keyQuery_sendSuggestion = NULL;
    }
    if(valueQuery_sendSuggestion){
        free(valueQuery_sendSuggestion);
        valueQuery_sendSuggestion = NULL;
    }
    if(keyPairQuery_sendSuggestion){
        keyValuePair_free(keyPairQuery_sendSuggestion);
        keyPairQuery_sendSuggestion = NULL;
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
    if(keyQuery_returnGlobal){
        free(keyQuery_returnGlobal);
        keyQuery_returnGlobal = NULL;
    }
    if(valueQuery_returnGlobal){
        free(valueQuery_returnGlobal);
        valueQuery_returnGlobal = NULL;
    }
    if(keyPairQuery_returnGlobal){
        keyValuePair_free(keyPairQuery_returnGlobal);
        keyPairQuery_returnGlobal = NULL;
    }
    if(keyQuery_exactKeyword){
        free(keyQuery_exactKeyword);
        keyQuery_exactKeyword = NULL;
    }
    if(valueQuery_exactKeyword){
        free(valueQuery_exactKeyword);
        valueQuery_exactKeyword = NULL;
    }
    if(keyPairQuery_exactKeyword){
        keyValuePair_free(keyPairQuery_exactKeyword);
        keyPairQuery_exactKeyword = NULL;
    }
    if(keyQuery_audienceType){
        free(keyQuery_audienceType);
        keyQuery_audienceType = NULL;
    }
    if(valueQuery_audienceType){
        free(valueQuery_audienceType);
        valueQuery_audienceType = NULL;
    }
    if(keyPairQuery_audienceType){
        keyValuePair_free(keyPairQuery_audienceType);
        keyPairQuery_audienceType = NULL;
    }
    if(keyQuery_audienceTypes){
        free(keyQuery_audienceTypes);
        keyQuery_audienceTypes = NULL;
    }
    if(valueQuery_audienceTypes){
        free(valueQuery_audienceTypes);
        valueQuery_audienceTypes = NULL;
    }
    if(keyPairQuery_audienceTypes){
        keyValuePair_free(keyPairQuery_audienceTypes);
        keyPairQuery_audienceTypes = NULL;
    }
    if(keyQuery_returnAccountCount){
        free(keyQuery_returnAccountCount);
        keyQuery_returnAccountCount = NULL;
    }
    if(valueQuery_returnAccountCount){
        free(valueQuery_returnAccountCount);
        valueQuery_returnAccountCount = NULL;
    }
    if(keyPairQuery_returnAccountCount){
        keyValuePair_free(keyPairQuery_returnAccountCount);
        keyPairQuery_returnAccountCount = NULL;
    }
    if(keyQuery_returnAlbumCount){
        free(keyQuery_returnAlbumCount);
        keyQuery_returnAlbumCount = NULL;
    }
    if(valueQuery_returnAlbumCount){
        free(valueQuery_returnAlbumCount);
        valueQuery_returnAlbumCount = NULL;
    }
    if(keyPairQuery_returnAlbumCount){
        keyValuePair_free(keyPairQuery_returnAlbumCount);
        keyPairQuery_returnAlbumCount = NULL;
    }
    if(keyQuery_albumTypesForCount){
        free(keyQuery_albumTypesForCount);
        keyQuery_albumTypesForCount = NULL;
    }
    if(valueQuery_albumTypesForCount){
        free(valueQuery_albumTypesForCount);
        valueQuery_albumTypesForCount = NULL;
    }
    if(keyPairQuery_albumTypesForCount){
        keyValuePair_free(keyPairQuery_albumTypesForCount);
        keyPairQuery_albumTypesForCount = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Devices
//
// Gets the list of available devices that can be selected by consumers and retailers.
//
list_t*
AudienceAPI_getDevices(apiClient_t *apiClient, int *includeInactive)
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
    char *localVarPath = strdup("/audience/devices");





    // query parameters
    char *keyQuery_includeInactive = NULL;
    char * valueQuery_includeInactive = NULL;
    keyValuePair_t *keyPairQuery_includeInactive = 0;
    if (includeInactive)
    {
        keyQuery_includeInactive = strdup("includeInactive");
        valueQuery_includeInactive = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeInactive, MAX_NUMBER_LENGTH, "%d", *includeInactive);
        keyPairQuery_includeInactive = keyValuePair_create(keyQuery_includeInactive, valueQuery_includeInactive);
        list_addElement(localVarQueryParameters,keyPairQuery_includeInactive);
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
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AudienceAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AudienceAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AudienceAPIlocalVarJSON);
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
    if(keyQuery_includeInactive){
        free(keyQuery_includeInactive);
        keyQuery_includeInactive = NULL;
    }
    if(valueQuery_includeInactive){
        free(valueQuery_includeInactive);
        valueQuery_includeInactive = NULL;
    }
    if(keyPairQuery_includeInactive){
        keyValuePair_free(keyPairQuery_includeInactive);
        keyPairQuery_includeInactive = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Experiences
//
// Gets the list of available experiences that can be selected by consumers and retailers.
//
sirqul_response_t*
AudienceAPI_getExperiences(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/audience/experiences");




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
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get GroupedAudiences
//
// Get a group of audiences. The audience and account must be valid and have the appropriate permissions to view the content.
//
audience_response_t*
AudienceAPI_getGroupedAudiences(apiClient_t *apiClient, long accountId, char *audienceGroupingId)
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
    char *localVarPath = strdup("/audience/grouped/get");





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
    char *keyQuery_audienceGroupingId = NULL;
    char * valueQuery_audienceGroupingId = NULL;
    keyValuePair_t *keyPairQuery_audienceGroupingId = 0;
    if (audienceGroupingId)
    {
        keyQuery_audienceGroupingId = strdup("audienceGroupingId");
        valueQuery_audienceGroupingId = strdup((audienceGroupingId));
        keyPairQuery_audienceGroupingId = keyValuePair_create(keyQuery_audienceGroupingId, valueQuery_audienceGroupingId);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceGroupingId);
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
    audience_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = audience_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_audienceGroupingId){
        free(keyQuery_audienceGroupingId);
        keyQuery_audienceGroupingId = NULL;
    }
    if(valueQuery_audienceGroupingId){
        free(valueQuery_audienceGroupingId);
        valueQuery_audienceGroupingId = NULL;
    }
    if(keyPairQuery_audienceGroupingId){
        keyValuePair_free(keyPairQuery_audienceGroupingId);
        keyPairQuery_audienceGroupingId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List Suggestions by Audience
//
// List either Missions or Offers that the user matches the assigned audience.
//
offer_list_response_t*
AudienceAPI_listByAccount(apiClient_t *apiClient, long accountId, int *limit, char *suggestionType)
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
    char *localVarPath = strdup("/audience/suggestion/list");





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
    char *keyQuery_suggestionType = NULL;
    char * valueQuery_suggestionType = NULL;
    keyValuePair_t *keyPairQuery_suggestionType = 0;
    if (suggestionType)
    {
        keyQuery_suggestionType = strdup("suggestionType");
        valueQuery_suggestionType = strdup((suggestionType));
        keyPairQuery_suggestionType = keyValuePair_create(keyQuery_suggestionType, valueQuery_suggestionType);
        list_addElement(localVarQueryParameters,keyPairQuery_suggestionType);
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
    offer_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_list_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_suggestionType){
        free(keyQuery_suggestionType);
        keyQuery_suggestionType = NULL;
    }
    if(valueQuery_suggestionType){
        free(valueQuery_suggestionType);
        valueQuery_suggestionType = NULL;
    }
    if(keyPairQuery_suggestionType){
        keyValuePair_free(keyPairQuery_suggestionType);
        keyPairQuery_suggestionType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List Offers by Audience
//
// Get a list of offer locations based on audience information provided.
//
offer_list_response_t*
AudienceAPI_listByAudience(apiClient_t *apiClient, int *limit, char *gender, int *age, char *categoryIds, double latitude, double longitude)
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
    char *localVarPath = strdup("/audience/suggestion/offersByAudience");





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
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
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
    offer_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_list_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
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

// List Sent Suggestions 
//
// Return list of recent trigger suggestions that have been sent to the user.
//
offer_list_response_t*
AudienceAPI_listLastestByAccount(apiClient_t *apiClient, long accountId, int *timeframe, char *suggestionType)
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
    char *localVarPath = strdup("/audience/suggestion/latest");





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
    char *keyQuery_timeframe = NULL;
    char * valueQuery_timeframe = NULL;
    keyValuePair_t *keyPairQuery_timeframe = 0;
    if (timeframe)
    {
        keyQuery_timeframe = strdup("timeframe");
        valueQuery_timeframe = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_timeframe, MAX_NUMBER_LENGTH, "%d", *timeframe);
        keyPairQuery_timeframe = keyValuePair_create(keyQuery_timeframe, valueQuery_timeframe);
        list_addElement(localVarQueryParameters,keyPairQuery_timeframe);
    }

    // query parameters
    char *keyQuery_suggestionType = NULL;
    char * valueQuery_suggestionType = NULL;
    keyValuePair_t *keyPairQuery_suggestionType = 0;
    if (suggestionType)
    {
        keyQuery_suggestionType = strdup("suggestionType");
        valueQuery_suggestionType = strdup((suggestionType));
        keyPairQuery_suggestionType = keyValuePair_create(keyQuery_suggestionType, valueQuery_suggestionType);
        list_addElement(localVarQueryParameters,keyPairQuery_suggestionType);
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
    offer_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_list_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_timeframe){
        free(keyQuery_timeframe);
        keyQuery_timeframe = NULL;
    }
    if(valueQuery_timeframe){
        free(valueQuery_timeframe);
        valueQuery_timeframe = NULL;
    }
    if(keyPairQuery_timeframe){
        keyValuePair_free(keyPairQuery_timeframe);
        keyPairQuery_timeframe = NULL;
    }
    if(keyQuery_suggestionType){
        free(keyQuery_suggestionType);
        keyQuery_suggestionType = NULL;
    }
    if(valueQuery_suggestionType){
        free(valueQuery_suggestionType);
        valueQuery_suggestionType = NULL;
    }
    if(keyPairQuery_suggestionType){
        keyValuePair_free(keyPairQuery_suggestionType);
        keyPairQuery_suggestionType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Send Suggestions
//
// Use the accountId to determine the associated BillableEntity. From there get a list of all triggers associated with the BillableEntity.
//
sirqul_response_t*
AudienceAPI_sendByAccount(apiClient_t *apiClient, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/audience/suggestion/send");





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
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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

// Update Audience
//
// Update a user defined audience.
//
audience_response_t*
AudienceAPI_updateAudience(apiClient_t *apiClient, long accountId, long audienceId, char *name, char *description, char *searchTags, char *gender, char *ageGroups, char *categoryIds, char *applicationIds, char *gameExperienceLevel, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius, int *active, int *sendSuggestion, int *startTimeOffset, int *endTimeOffset, char *associateDescription, char *associateType, long associateId, char *groupingId, char *metaData, char *visibility, char *audienceType, int *useOrder, char *cohortRegionsData, char *appKey, char *trilaterationTypes, int *uniqueName)
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
    char *localVarPath = strdup("/audience/update");





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
    char *keyQuery_ageGroups = NULL;
    char * valueQuery_ageGroups = NULL;
    keyValuePair_t *keyPairQuery_ageGroups = 0;
    if (ageGroups)
    {
        keyQuery_ageGroups = strdup("ageGroups");
        valueQuery_ageGroups = strdup((ageGroups));
        keyPairQuery_ageGroups = keyValuePair_create(keyQuery_ageGroups, valueQuery_ageGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_ageGroups);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_applicationIds = NULL;
    char * valueQuery_applicationIds = NULL;
    keyValuePair_t *keyPairQuery_applicationIds = 0;
    if (applicationIds)
    {
        keyQuery_applicationIds = strdup("applicationIds");
        valueQuery_applicationIds = strdup((applicationIds));
        keyPairQuery_applicationIds = keyValuePair_create(keyQuery_applicationIds, valueQuery_applicationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_applicationIds);
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
    char *keyQuery_devices = NULL;
    char * valueQuery_devices = NULL;
    keyValuePair_t *keyPairQuery_devices = 0;
    if (devices)
    {
        keyQuery_devices = strdup("devices");
        valueQuery_devices = strdup((devices));
        keyPairQuery_devices = keyValuePair_create(keyQuery_devices, valueQuery_devices);
        list_addElement(localVarQueryParameters,keyPairQuery_devices);
    }

    // query parameters
    char *keyQuery_deviceIds = NULL;
    char * valueQuery_deviceIds = NULL;
    keyValuePair_t *keyPairQuery_deviceIds = 0;
    if (deviceIds)
    {
        keyQuery_deviceIds = strdup("deviceIds");
        valueQuery_deviceIds = strdup((deviceIds));
        keyPairQuery_deviceIds = keyValuePair_create(keyQuery_deviceIds, valueQuery_deviceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIds);
    }

    // query parameters
    char *keyQuery_deviceVersions = NULL;
    char * valueQuery_deviceVersions = NULL;
    keyValuePair_t *keyPairQuery_deviceVersions = 0;
    if (deviceVersions)
    {
        keyQuery_deviceVersions = strdup("deviceVersions");
        valueQuery_deviceVersions = strdup((deviceVersions));
        keyPairQuery_deviceVersions = keyValuePair_create(keyQuery_deviceVersions, valueQuery_deviceVersions);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceVersions);
    }

    // query parameters
    char *keyQuery_locations = NULL;
    char * valueQuery_locations = NULL;
    keyValuePair_t *keyPairQuery_locations = 0;
    if (locations)
    {
        keyQuery_locations = strdup("locations");
        valueQuery_locations = strdup((locations));
        keyPairQuery_locations = keyValuePair_create(keyQuery_locations, valueQuery_locations);
        list_addElement(localVarQueryParameters,keyPairQuery_locations);
    }

    // query parameters
    char *keyQuery_radius = NULL;
    char * valueQuery_radius = NULL;
    keyValuePair_t *keyPairQuery_radius = 0;
    if (radius)
    {
        keyQuery_radius = strdup("radius");
        valueQuery_radius = strdup((radius));
        keyPairQuery_radius = keyValuePair_create(keyQuery_radius, valueQuery_radius);
        list_addElement(localVarQueryParameters,keyPairQuery_radius);
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
    char *keyQuery_sendSuggestion = NULL;
    char * valueQuery_sendSuggestion = NULL;
    keyValuePair_t *keyPairQuery_sendSuggestion = 0;
    if (sendSuggestion)
    {
        keyQuery_sendSuggestion = strdup("sendSuggestion");
        valueQuery_sendSuggestion = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendSuggestion, MAX_NUMBER_LENGTH, "%d", *sendSuggestion);
        keyPairQuery_sendSuggestion = keyValuePair_create(keyQuery_sendSuggestion, valueQuery_sendSuggestion);
        list_addElement(localVarQueryParameters,keyPairQuery_sendSuggestion);
    }

    // query parameters
    char *keyQuery_startTimeOffset = NULL;
    char * valueQuery_startTimeOffset = NULL;
    keyValuePair_t *keyPairQuery_startTimeOffset = 0;
    if (startTimeOffset)
    {
        keyQuery_startTimeOffset = strdup("startTimeOffset");
        valueQuery_startTimeOffset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_startTimeOffset, MAX_NUMBER_LENGTH, "%d", *startTimeOffset);
        keyPairQuery_startTimeOffset = keyValuePair_create(keyQuery_startTimeOffset, valueQuery_startTimeOffset);
        list_addElement(localVarQueryParameters,keyPairQuery_startTimeOffset);
    }

    // query parameters
    char *keyQuery_endTimeOffset = NULL;
    char * valueQuery_endTimeOffset = NULL;
    keyValuePair_t *keyPairQuery_endTimeOffset = 0;
    if (endTimeOffset)
    {
        keyQuery_endTimeOffset = strdup("endTimeOffset");
        valueQuery_endTimeOffset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_endTimeOffset, MAX_NUMBER_LENGTH, "%d", *endTimeOffset);
        keyPairQuery_endTimeOffset = keyValuePair_create(keyQuery_endTimeOffset, valueQuery_endTimeOffset);
        list_addElement(localVarQueryParameters,keyPairQuery_endTimeOffset);
    }

    // query parameters
    char *keyQuery_associateDescription = NULL;
    char * valueQuery_associateDescription = NULL;
    keyValuePair_t *keyPairQuery_associateDescription = 0;
    if (associateDescription)
    {
        keyQuery_associateDescription = strdup("associateDescription");
        valueQuery_associateDescription = strdup((associateDescription));
        keyPairQuery_associateDescription = keyValuePair_create(keyQuery_associateDescription, valueQuery_associateDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_associateDescription);
    }

    // query parameters
    char *keyQuery_associateType = NULL;
    char * valueQuery_associateType = NULL;
    keyValuePair_t *keyPairQuery_associateType = 0;
    if (associateType)
    {
        keyQuery_associateType = strdup("associateType");
        valueQuery_associateType = strdup((associateType));
        keyPairQuery_associateType = keyValuePair_create(keyQuery_associateType, valueQuery_associateType);
        list_addElement(localVarQueryParameters,keyPairQuery_associateType);
    }

    // query parameters
    char *keyQuery_associateId = NULL;
    char * valueQuery_associateId ;
    keyValuePair_t *keyPairQuery_associateId = 0;
    {
        keyQuery_associateId = strdup("associateId");
        valueQuery_associateId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_associateId, MAX_NUMBER_LENGTH_LONG, "%d", associateId);
        keyPairQuery_associateId = keyValuePair_create(keyQuery_associateId, valueQuery_associateId);
        list_addElement(localVarQueryParameters,keyPairQuery_associateId);
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
    char *keyQuery_visibility = NULL;
    char * valueQuery_visibility = NULL;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = strdup((visibility));
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, valueQuery_visibility);
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_audienceType = NULL;
    char * valueQuery_audienceType = NULL;
    keyValuePair_t *keyPairQuery_audienceType = 0;
    if (audienceType)
    {
        keyQuery_audienceType = strdup("audienceType");
        valueQuery_audienceType = strdup((audienceType));
        keyPairQuery_audienceType = keyValuePair_create(keyQuery_audienceType, valueQuery_audienceType);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceType);
    }

    // query parameters
    char *keyQuery_useOrder = NULL;
    char * valueQuery_useOrder = NULL;
    keyValuePair_t *keyPairQuery_useOrder = 0;
    if (useOrder)
    {
        keyQuery_useOrder = strdup("useOrder");
        valueQuery_useOrder = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useOrder, MAX_NUMBER_LENGTH, "%d", *useOrder);
        keyPairQuery_useOrder = keyValuePair_create(keyQuery_useOrder, valueQuery_useOrder);
        list_addElement(localVarQueryParameters,keyPairQuery_useOrder);
    }

    // query parameters
    char *keyQuery_cohortRegionsData = NULL;
    char * valueQuery_cohortRegionsData = NULL;
    keyValuePair_t *keyPairQuery_cohortRegionsData = 0;
    if (cohortRegionsData)
    {
        keyQuery_cohortRegionsData = strdup("cohortRegionsData");
        valueQuery_cohortRegionsData = strdup((cohortRegionsData));
        keyPairQuery_cohortRegionsData = keyValuePair_create(keyQuery_cohortRegionsData, valueQuery_cohortRegionsData);
        list_addElement(localVarQueryParameters,keyPairQuery_cohortRegionsData);
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
    char *keyQuery_trilaterationTypes = NULL;
    char * valueQuery_trilaterationTypes = NULL;
    keyValuePair_t *keyPairQuery_trilaterationTypes = 0;
    if (trilaterationTypes)
    {
        keyQuery_trilaterationTypes = strdup("trilaterationTypes");
        valueQuery_trilaterationTypes = strdup((trilaterationTypes));
        keyPairQuery_trilaterationTypes = keyValuePair_create(keyQuery_trilaterationTypes, valueQuery_trilaterationTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_trilaterationTypes);
    }

    // query parameters
    char *keyQuery_uniqueName = NULL;
    char * valueQuery_uniqueName = NULL;
    keyValuePair_t *keyPairQuery_uniqueName = 0;
    if (uniqueName)
    {
        keyQuery_uniqueName = strdup("uniqueName");
        valueQuery_uniqueName = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_uniqueName, MAX_NUMBER_LENGTH, "%d", *uniqueName);
        keyPairQuery_uniqueName = keyValuePair_create(keyQuery_uniqueName, valueQuery_uniqueName);
        list_addElement(localVarQueryParameters,keyPairQuery_uniqueName);
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
    audience_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AudienceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = audience_response_parseFromJSON(AudienceAPIlocalVarJSON);
        cJSON_Delete(AudienceAPIlocalVarJSON);
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
    if(keyQuery_audienceId){
        free(keyQuery_audienceId);
        keyQuery_audienceId = NULL;
    }
    if(keyPairQuery_audienceId){
        keyValuePair_free(keyPairQuery_audienceId);
        keyPairQuery_audienceId = NULL;
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
    if(keyQuery_ageGroups){
        free(keyQuery_ageGroups);
        keyQuery_ageGroups = NULL;
    }
    if(valueQuery_ageGroups){
        free(valueQuery_ageGroups);
        valueQuery_ageGroups = NULL;
    }
    if(keyPairQuery_ageGroups){
        keyValuePair_free(keyPairQuery_ageGroups);
        keyPairQuery_ageGroups = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_applicationIds){
        free(keyQuery_applicationIds);
        keyQuery_applicationIds = NULL;
    }
    if(valueQuery_applicationIds){
        free(valueQuery_applicationIds);
        valueQuery_applicationIds = NULL;
    }
    if(keyPairQuery_applicationIds){
        keyValuePair_free(keyPairQuery_applicationIds);
        keyPairQuery_applicationIds = NULL;
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
    if(keyQuery_devices){
        free(keyQuery_devices);
        keyQuery_devices = NULL;
    }
    if(valueQuery_devices){
        free(valueQuery_devices);
        valueQuery_devices = NULL;
    }
    if(keyPairQuery_devices){
        keyValuePair_free(keyPairQuery_devices);
        keyPairQuery_devices = NULL;
    }
    if(keyQuery_deviceIds){
        free(keyQuery_deviceIds);
        keyQuery_deviceIds = NULL;
    }
    if(valueQuery_deviceIds){
        free(valueQuery_deviceIds);
        valueQuery_deviceIds = NULL;
    }
    if(keyPairQuery_deviceIds){
        keyValuePair_free(keyPairQuery_deviceIds);
        keyPairQuery_deviceIds = NULL;
    }
    if(keyQuery_deviceVersions){
        free(keyQuery_deviceVersions);
        keyQuery_deviceVersions = NULL;
    }
    if(valueQuery_deviceVersions){
        free(valueQuery_deviceVersions);
        valueQuery_deviceVersions = NULL;
    }
    if(keyPairQuery_deviceVersions){
        keyValuePair_free(keyPairQuery_deviceVersions);
        keyPairQuery_deviceVersions = NULL;
    }
    if(keyQuery_locations){
        free(keyQuery_locations);
        keyQuery_locations = NULL;
    }
    if(valueQuery_locations){
        free(valueQuery_locations);
        valueQuery_locations = NULL;
    }
    if(keyPairQuery_locations){
        keyValuePair_free(keyPairQuery_locations);
        keyPairQuery_locations = NULL;
    }
    if(keyQuery_radius){
        free(keyQuery_radius);
        keyQuery_radius = NULL;
    }
    if(valueQuery_radius){
        free(valueQuery_radius);
        valueQuery_radius = NULL;
    }
    if(keyPairQuery_radius){
        keyValuePair_free(keyPairQuery_radius);
        keyPairQuery_radius = NULL;
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
    if(keyQuery_sendSuggestion){
        free(keyQuery_sendSuggestion);
        keyQuery_sendSuggestion = NULL;
    }
    if(valueQuery_sendSuggestion){
        free(valueQuery_sendSuggestion);
        valueQuery_sendSuggestion = NULL;
    }
    if(keyPairQuery_sendSuggestion){
        keyValuePair_free(keyPairQuery_sendSuggestion);
        keyPairQuery_sendSuggestion = NULL;
    }
    if(keyQuery_startTimeOffset){
        free(keyQuery_startTimeOffset);
        keyQuery_startTimeOffset = NULL;
    }
    if(valueQuery_startTimeOffset){
        free(valueQuery_startTimeOffset);
        valueQuery_startTimeOffset = NULL;
    }
    if(keyPairQuery_startTimeOffset){
        keyValuePair_free(keyPairQuery_startTimeOffset);
        keyPairQuery_startTimeOffset = NULL;
    }
    if(keyQuery_endTimeOffset){
        free(keyQuery_endTimeOffset);
        keyQuery_endTimeOffset = NULL;
    }
    if(valueQuery_endTimeOffset){
        free(valueQuery_endTimeOffset);
        valueQuery_endTimeOffset = NULL;
    }
    if(keyPairQuery_endTimeOffset){
        keyValuePair_free(keyPairQuery_endTimeOffset);
        keyPairQuery_endTimeOffset = NULL;
    }
    if(keyQuery_associateDescription){
        free(keyQuery_associateDescription);
        keyQuery_associateDescription = NULL;
    }
    if(valueQuery_associateDescription){
        free(valueQuery_associateDescription);
        valueQuery_associateDescription = NULL;
    }
    if(keyPairQuery_associateDescription){
        keyValuePair_free(keyPairQuery_associateDescription);
        keyPairQuery_associateDescription = NULL;
    }
    if(keyQuery_associateType){
        free(keyQuery_associateType);
        keyQuery_associateType = NULL;
    }
    if(valueQuery_associateType){
        free(valueQuery_associateType);
        valueQuery_associateType = NULL;
    }
    if(keyPairQuery_associateType){
        keyValuePair_free(keyPairQuery_associateType);
        keyPairQuery_associateType = NULL;
    }
    if(keyQuery_associateId){
        free(keyQuery_associateId);
        keyQuery_associateId = NULL;
    }
    if(keyPairQuery_associateId){
        keyValuePair_free(keyPairQuery_associateId);
        keyPairQuery_associateId = NULL;
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
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(valueQuery_visibility){
        free(valueQuery_visibility);
        valueQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_audienceType){
        free(keyQuery_audienceType);
        keyQuery_audienceType = NULL;
    }
    if(valueQuery_audienceType){
        free(valueQuery_audienceType);
        valueQuery_audienceType = NULL;
    }
    if(keyPairQuery_audienceType){
        keyValuePair_free(keyPairQuery_audienceType);
        keyPairQuery_audienceType = NULL;
    }
    if(keyQuery_useOrder){
        free(keyQuery_useOrder);
        keyQuery_useOrder = NULL;
    }
    if(valueQuery_useOrder){
        free(valueQuery_useOrder);
        valueQuery_useOrder = NULL;
    }
    if(keyPairQuery_useOrder){
        keyValuePair_free(keyPairQuery_useOrder);
        keyPairQuery_useOrder = NULL;
    }
    if(keyQuery_cohortRegionsData){
        free(keyQuery_cohortRegionsData);
        keyQuery_cohortRegionsData = NULL;
    }
    if(valueQuery_cohortRegionsData){
        free(valueQuery_cohortRegionsData);
        valueQuery_cohortRegionsData = NULL;
    }
    if(keyPairQuery_cohortRegionsData){
        keyValuePair_free(keyPairQuery_cohortRegionsData);
        keyPairQuery_cohortRegionsData = NULL;
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
    if(keyQuery_trilaterationTypes){
        free(keyQuery_trilaterationTypes);
        keyQuery_trilaterationTypes = NULL;
    }
    if(valueQuery_trilaterationTypes){
        free(valueQuery_trilaterationTypes);
        valueQuery_trilaterationTypes = NULL;
    }
    if(keyPairQuery_trilaterationTypes){
        keyValuePair_free(keyPairQuery_trilaterationTypes);
        keyPairQuery_trilaterationTypes = NULL;
    }
    if(keyQuery_uniqueName){
        free(keyQuery_uniqueName);
        keyQuery_uniqueName = NULL;
    }
    if(valueQuery_uniqueName){
        free(valueQuery_uniqueName);
        valueQuery_uniqueName = NULL;
    }
    if(keyPairQuery_uniqueName){
        keyValuePair_free(keyPairQuery_uniqueName);
        keyPairQuery_uniqueName = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

