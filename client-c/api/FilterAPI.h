#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/filter_response.h"
#include "../model/filter_tree_response.h"
#include "../model/sirqul_response.h"

// Enum RESPONSEGROUP for FilterAPI_searchFilters
typedef enum  { sirqul_iot_platform_searchFilters_RESPONSEGROUP_NULL = 0, sirqul_iot_platform_searchFilters_RESPONSEGROUP_ALL, sirqul_iot_platform_searchFilters_RESPONSEGROUP_GLOBAL, sirqul_iot_platform_searchFilters_RESPONSEGROUP_MINE } sirqul_iot_platform_searchFilters_responseGroup_e;

// Enum SORTFIELD for FilterAPI_searchFilters
typedef enum  { sirqul_iot_platform_searchFilters_SORTFIELD_NULL = 0, sirqul_iot_platform_searchFilters_SORTFIELD_ID, sirqul_iot_platform_searchFilters_SORTFIELD_CREATED, sirqul_iot_platform_searchFilters_SORTFIELD_UPDATED, sirqul_iot_platform_searchFilters_SORTFIELD_DELETED, sirqul_iot_platform_searchFilters_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchFilters_SORTFIELD_ACTIVE, sirqul_iot_platform_searchFilters_SORTFIELD_NAME, sirqul_iot_platform_searchFilters_SORTFIELD_DISPLAY } sirqul_iot_platform_searchFilters_sortField_e;


// Create Filter
//
// Create a filter
//
filter_tree_response_t*
FilterAPI_createFilter(apiClient_t *apiClient, double version, long accountId, char *name, char *appKey, long parentFilterId, char *description, char *externalId, char *externalType, int *active, char *metaData);


// Delete Filter
//
// Delete a filter.
//
sirqul_response_t*
FilterAPI_deleteFilter(apiClient_t *apiClient, double version, long accountId, long filterId);


// Get Filter
//
// Get the details of a specific filter. Recursively include all child filters and their children.
//
filter_tree_response_t*
FilterAPI_getFilter(apiClient_t *apiClient, double version, long filterId);


// Search Filters
//
// Search for filters.
//
list_t*
FilterAPI_searchFilters(apiClient_t *apiClient, double version, long accountId, char *keyword, char *appKey, sirqul_iot_platform_searchFilters_responseGroup_e responseGroup, int *rootOnly, sirqul_iot_platform_searchFilters_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly);


// Update Filter
//
// Update a filter.
//
filter_tree_response_t*
FilterAPI_updateFilter(apiClient_t *apiClient, double version, long accountId, long filterId, long parentFilterId, char *name, char *description, char *externalId, char *externalType, int *active, char *metaData);


