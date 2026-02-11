#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/age_group_response.h"
#include "../model/audience_device_response.h"
#include "../model/audience_response.h"
#include "../model/offer_list_response.h"
#include "../model/search_response.h"
#include "../model/sirqul_response.h"

// Enum SORTFIELD for AudienceAPI_getAudienceList
typedef enum  { sirqul_iot_platform_getAudienceList_SORTFIELD_NULL = 0, sirqul_iot_platform_getAudienceList_SORTFIELD_ID, sirqul_iot_platform_getAudienceList_SORTFIELD_CREATED, sirqul_iot_platform_getAudienceList_SORTFIELD_UPDATED, sirqul_iot_platform_getAudienceList_SORTFIELD_DELETED, sirqul_iot_platform_getAudienceList_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_getAudienceList_SORTFIELD_ACTIVE, sirqul_iot_platform_getAudienceList_SORTFIELD_NAME, sirqul_iot_platform_getAudienceList_SORTFIELD_DESCRIPTION, sirqul_iot_platform_getAudienceList_SORTFIELD_SEND_SUGGESTION, sirqul_iot_platform_getAudienceList_SORTFIELD_OWNER_ID, sirqul_iot_platform_getAudienceList_SORTFIELD_OWNER_DISPLAY, sirqul_iot_platform_getAudienceList_SORTFIELD_GENDER } sirqul_iot_platform_getAudienceList_sortField_e;


// Create Audience
//
// Create a user defined audience.
//
audience_response_t*
AudienceAPI_createAudience(apiClient_t *apiClient, long accountId, char *name, char *description, char *searchTags, char *gender, char *ageGroups, char *categoryIds, char *applicationIds, char *gameExperienceLevel, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius, int *startTimeOffset, int *endTimeOffset, int *sendSuggestion, char *associateDescription, char *associateType, long associateId, char *groupingId, char *metaData, char *visibility, char *audienceType, int *useOrder, char *cohortRegionsData, char *appKey, char *trilaterationTypes, int *uniqueName);


// Delete Audience
//
// Delete an audience. The audience and account must be valid and have the appropirate permissions to view the content.
//
sirqul_response_t*
AudienceAPI_deleteAudience(apiClient_t *apiClient, long accountId, long audienceId);


// Get Age Groups
//
// Gets the list of available age groups that can be selected by consumers and retailers targeting offers.
//
list_t*
AudienceAPI_getAgeGroups(apiClient_t *apiClient);


// Get Audience
//
// Get an audience. The audience and account must be valid and have the appropriate permissions to view the content.
//
audience_response_t*
AudienceAPI_getAudience(apiClient_t *apiClient, long accountId, long audienceId, char *appKey, int *returnAccountCount, int *returnAlbumCount, char *albumTypesForCount);


// Search Audiences
//
// Get the list audiences owned by the account
//
list_t*
AudienceAPI_getAudienceList(apiClient_t *apiClient, long accountId, char *albumIds, char *keyword, char *keywordFields, sirqul_iot_platform_getAudienceList_sortField_e sortField, int *descending, int *start, int *limit, int *sendSuggestion, int *activeOnly, int *groupByGroupingId, char *appKey, int *returnGlobal, int *exactKeyword, char *audienceType, char *audienceTypes, int *returnAccountCount, int *returnAlbumCount, char *albumTypesForCount);


// Get Devices
//
// Gets the list of available devices that can be selected by consumers and retailers.
//
list_t*
AudienceAPI_getDevices(apiClient_t *apiClient, int *includeInactive);


// Get Experiences
//
// Gets the list of available experiences that can be selected by consumers and retailers.
//
sirqul_response_t*
AudienceAPI_getExperiences(apiClient_t *apiClient);


// Get GroupedAudiences
//
// Get a group of audiences. The audience and account must be valid and have the appropriate permissions to view the content.
//
audience_response_t*
AudienceAPI_getGroupedAudiences(apiClient_t *apiClient, long accountId, char *audienceGroupingId);


// List Suggestions by Audience
//
// List either Missions or Offers that the user matches the assigned audience.
//
offer_list_response_t*
AudienceAPI_listByAccount(apiClient_t *apiClient, long accountId, int *limit, char *suggestionType);


// List Offers by Audience
//
// Get a list of offer locations based on audience information provided.
//
offer_list_response_t*
AudienceAPI_listByAudience(apiClient_t *apiClient, int *limit, char *gender, int *age, char *categoryIds, double latitude, double longitude);


// List Sent Suggestions 
//
// Return list of recent trigger suggestions that have been sent to the user.
//
offer_list_response_t*
AudienceAPI_listLastestByAccount(apiClient_t *apiClient, long accountId, int *timeframe, char *suggestionType);


// Send Suggestions
//
// Use the accountId to determine the associated BillableEntity. From there get a list of all triggers associated with the BillableEntity.
//
sirqul_response_t*
AudienceAPI_sendByAccount(apiClient_t *apiClient, long accountId, double latitude, double longitude);


// Update Audience
//
// Update a user defined audience.
//
audience_response_t*
AudienceAPI_updateAudience(apiClient_t *apiClient, long accountId, long audienceId, char *name, char *description, char *searchTags, char *gender, char *ageGroups, char *categoryIds, char *applicationIds, char *gameExperienceLevel, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius, int *active, int *sendSuggestion, int *startTimeOffset, int *endTimeOffset, char *associateDescription, char *associateType, long associateId, char *groupingId, char *metaData, char *visibility, char *audienceType, int *useOrder, char *cohortRegionsData, char *appKey, char *trilaterationTypes, int *uniqueName);


