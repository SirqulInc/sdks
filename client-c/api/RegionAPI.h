#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/region_response.h"

// Enum VISIBILITY for RegionAPI_createRegion
typedef enum  { sirqul_iot_platform_createRegion_VISIBILITY_NULL = 0, sirqul_iot_platform_createRegion_VISIBILITY__PUBLIC, sirqul_iot_platform_createRegion_VISIBILITY__PRIVATE, sirqul_iot_platform_createRegion_VISIBILITY_FRIENDS } sirqul_iot_platform_createRegion_visibility_e;

// Enum REGIONCLASS for RegionAPI_searchRegions
typedef enum  { sirqul_iot_platform_searchRegions_REGIONCLASS_NULL = 0, sirqul_iot_platform_searchRegions_REGIONCLASS_NATIONAL, sirqul_iot_platform_searchRegions_REGIONCLASS_STATE, sirqul_iot_platform_searchRegions_REGIONCLASS_COUNTY, sirqul_iot_platform_searchRegions_REGIONCLASS_METRO_AREA, sirqul_iot_platform_searchRegions_REGIONCLASS_CITY, sirqul_iot_platform_searchRegions_REGIONCLASS_NEIGHBORHOOD, sirqul_iot_platform_searchRegions_REGIONCLASS_TERRITORY, sirqul_iot_platform_searchRegions_REGIONCLASS_CUSTOM, sirqul_iot_platform_searchRegions_REGIONCLASS_ZONE } sirqul_iot_platform_searchRegions_regionClass_e;

// Enum VISIBILITY for RegionAPI_searchRegions
typedef enum  { sirqul_iot_platform_searchRegions_VISIBILITY_NULL = 0, sirqul_iot_platform_searchRegions_VISIBILITY__PUBLIC, sirqul_iot_platform_searchRegions_VISIBILITY__PRIVATE, sirqul_iot_platform_searchRegions_VISIBILITY_FRIENDS } sirqul_iot_platform_searchRegions_visibility_e;

// Enum SEARCHMODE for RegionAPI_searchRegions
typedef enum  { sirqul_iot_platform_searchRegions_SEARCHMODE_NULL = 0, sirqul_iot_platform_searchRegions_SEARCHMODE_RDS, sirqul_iot_platform_searchRegions_SEARCHMODE_LUCENE, sirqul_iot_platform_searchRegions_SEARCHMODE_CLOUDINDEX } sirqul_iot_platform_searchRegions_searchMode_e;

// Enum SORTFIELD for RegionAPI_searchRegions
typedef enum  { sirqul_iot_platform_searchRegions_SORTFIELD_NULL = 0, sirqul_iot_platform_searchRegions_SORTFIELD_ID, sirqul_iot_platform_searchRegions_SORTFIELD_UPDATED, sirqul_iot_platform_searchRegions_SORTFIELD_NAME, sirqul_iot_platform_searchRegions_SORTFIELD_DISTANCE } sirqul_iot_platform_searchRegions_sortField_e;

// Enum VISIBILITY for RegionAPI_updateRegion
typedef enum  { sirqul_iot_platform_updateRegion_VISIBILITY_NULL = 0, sirqul_iot_platform_updateRegion_VISIBILITY__PUBLIC, sirqul_iot_platform_updateRegion_VISIBILITY__PRIVATE, sirqul_iot_platform_updateRegion_VISIBILITY_FRIENDS } sirqul_iot_platform_updateRegion_visibility_e;


// Create Region
//
// Create a region.
//
region_response_t*
RegionAPI_createRegion(apiClient_t *apiClient, long accountId, char *regionClass, char *shortName, char *fullName, char *parentIds, char *childrenIds, char *postalCodeIds, char *locations, long retailerLocationId, sirqul_iot_platform_createRegion_visibility_e visibility, char *categoryIds, char *filterIds, long start, long end, char *polygon, char *metaData, double latitude, double longitude, int *versionCode, int *root, int *active);


// Delete Region
//
// Delete a region.
//
region_response_t*
RegionAPI_deleteRegion(apiClient_t *apiClient, long accountId, long regionId);


// Get Region
//
// Get a region.
//
region_response_t*
RegionAPI_getRegion(apiClient_t *apiClient, long regionId, long accountId);


// Search Regions
//
// Get the list of regions.
//
list_t*
RegionAPI_searchRegions(apiClient_t *apiClient, long accountId, char *query, char *keyword, double latitude, double longitude, double range, sirqul_iot_platform_searchRegions_regionClass_e regionClass, sirqul_iot_platform_searchRegions_visibility_e visibility, sirqul_iot_platform_searchRegions_searchMode_e searchMode, sirqul_iot_platform_searchRegions_sortField_e sortField, int *descending, int *includeParent, int *includeChildren, int *includePostalCodes, char *categoryIds, char *filterIds, int *versionCode, int *activeOnly, int *showDeleted, long lastUpdatedSince, int *start, int *limit);


// Update Region
//
// Update a region.
//
region_response_t*
RegionAPI_updateRegion(apiClient_t *apiClient, long accountId, long regionId, char *regionClass, char *shortName, char *fullName, char *parentIds, char *childrenIds, char *postalCodeIds, char *locations, long retailerLocationId, sirqul_iot_platform_updateRegion_visibility_e visibility, char *categoryIds, char *filterIds, long start, long end, char *polygon, char *metaData, double latitude, double longitude, int *versionCode, int *root, int *active, int *clearLists);


