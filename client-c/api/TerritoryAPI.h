#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"
#include "../model/territory_response.h"

// Enum SORTFIELD for TerritoryAPI_searchTerritories
typedef enum  { sirqul_iot_platform_searchTerritories_SORTFIELD_NULL = 0, sirqul_iot_platform_searchTerritories_SORTFIELD_ID, sirqul_iot_platform_searchTerritories_SORTFIELD_UPDATED, sirqul_iot_platform_searchTerritories_SORTFIELD_CREATED, sirqul_iot_platform_searchTerritories_SORTFIELD_NAME } sirqul_iot_platform_searchTerritories_sortField_e;


// Create Territory
//
// Creates a territory.
//
territory_response_t*
TerritoryAPI_createTerritory(apiClient_t *apiClient, long accountId, char *name, int *active);


// Delete Territory
//
// Deletes a territory.
//
sirqul_response_t*
TerritoryAPI_deleteTerritory(apiClient_t *apiClient, long accountId, long territoryId);


// Get Territory
//
// Get a territory.
//
territory_response_t*
TerritoryAPI_getTerritory(apiClient_t *apiClient, long territoryId);


// Search Territories
//
// Searches on territories.
//
list_t*
TerritoryAPI_searchTerritories(apiClient_t *apiClient, sirqul_iot_platform_searchTerritories_sortField_e sortField, int *descending, char *keyword, int *start, int *limit);


// Update Territory
//
// Updates a territory.
//
territory_response_t*
TerritoryAPI_updateTerritory(apiClient_t *apiClient, long accountId, long territoryId, char *name, int *active);


