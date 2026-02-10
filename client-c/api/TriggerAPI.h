#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"
#include "../model/trigger_response.h"

// Enum VISIBILITY for TriggerAPI_createTrigger
typedef enum  { sirqul_iot_platform_createTrigger_VISIBILITY_NULL = 0, sirqul_iot_platform_createTrigger_VISIBILITY__PUBLIC, sirqul_iot_platform_createTrigger_VISIBILITY__PRIVATE, sirqul_iot_platform_createTrigger_VISIBILITY_FRIENDS } sirqul_iot_platform_createTrigger_visibility_e;

// Enum VISIBILITY for TriggerAPI_updateTrigger
typedef enum  { sirqul_iot_platform_updateTrigger_VISIBILITY_NULL = 0, sirqul_iot_platform_updateTrigger_VISIBILITY__PUBLIC, sirqul_iot_platform_updateTrigger_VISIBILITY__PRIVATE, sirqul_iot_platform_updateTrigger_VISIBILITY_FRIENDS } sirqul_iot_platform_updateTrigger_visibility_e;


// Create Trigger
//
// Create a trigger
//
trigger_response_t*
TriggerAPI_createTrigger(apiClient_t *apiClient, double version, long accountId, char *name, char *appKey, char *groupingId, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, char *conditionalInput, sirqul_iot_platform_createTrigger_visibility_e visibility, int *active);


// Delete Trigger
//
// Mark a trigger as deleted.
//
sirqul_response_t*
TriggerAPI_deleteTrigger(apiClient_t *apiClient, double version, long accountId, long triggerId);


// Get Trigger
//
// Get a trigger
//
trigger_response_t*
TriggerAPI_getTrigger(apiClient_t *apiClient, double version, long accountId, long triggerId);


// Search Triggers
//
// Search for triggers
//
list_t*
TriggerAPI_searchTriggers(apiClient_t *apiClient, double version, long accountId, char *groupingId, char *filter, char *statuses, char *templateTypes, char *appKey, char *keyword, char *sortField, int *descending, int *start, int *limit, int *activeOnly);


// Update Trigger
//
// Update a trigger
//
trigger_response_t*
TriggerAPI_updateTrigger(apiClient_t *apiClient, double version, long triggerId, long accountId, char *name, char *appKey, char *groupingId, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, char *conditionalInput, sirqul_iot_platform_updateTrigger_visibility_e visibility, int *active);


