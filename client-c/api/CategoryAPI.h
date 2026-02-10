#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/category_response.h"
#include "../model/category_tree_response.h"
#include "../model/sirqul_response.h"

// Enum SORTFIELD for CategoryAPI_categoryDistanceSearch
typedef enum  { sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_NULL = 0, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_ID, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_CREATED, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_UPDATED, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_DELETED, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_ACTIVE, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_NAME, sirqul_iot_platform_categoryDistanceSearch_SORTFIELD_DISPLAY } sirqul_iot_platform_categoryDistanceSearch_sortField_e;

// Enum RESPONSEGROUP for CategoryAPI_categoryDistanceSearch
typedef enum  { sirqul_iot_platform_categoryDistanceSearch_RESPONSEGROUP_NULL = 0, sirqul_iot_platform_categoryDistanceSearch_RESPONSEGROUP_ALL, sirqul_iot_platform_categoryDistanceSearch_RESPONSEGROUP_GLOBAL, sirqul_iot_platform_categoryDistanceSearch_RESPONSEGROUP_MINE } sirqul_iot_platform_categoryDistanceSearch_responseGroup_e;

// Enum SORTFIELD for CategoryAPI_searchCategories
typedef enum  { sirqul_iot_platform_searchCategories_SORTFIELD_NULL = 0, sirqul_iot_platform_searchCategories_SORTFIELD_ID, sirqul_iot_platform_searchCategories_SORTFIELD_CREATED, sirqul_iot_platform_searchCategories_SORTFIELD_UPDATED, sirqul_iot_platform_searchCategories_SORTFIELD_DELETED, sirqul_iot_platform_searchCategories_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchCategories_SORTFIELD_ACTIVE, sirqul_iot_platform_searchCategories_SORTFIELD_NAME, sirqul_iot_platform_searchCategories_SORTFIELD_DISPLAY } sirqul_iot_platform_searchCategories_sortField_e;

// Enum RESPONSEGROUP for CategoryAPI_searchCategories
typedef enum  { sirqul_iot_platform_searchCategories_RESPONSEGROUP_NULL = 0, sirqul_iot_platform_searchCategories_RESPONSEGROUP_ALL, sirqul_iot_platform_searchCategories_RESPONSEGROUP_GLOBAL, sirqul_iot_platform_searchCategories_RESPONSEGROUP_MINE } sirqul_iot_platform_searchCategories_responseGroup_e;


// Search Categories by Distance
//
// Search for categories by distance.
//
list_t*
CategoryAPI_categoryDistanceSearch(apiClient_t *apiClient, double version, long accountId, char *keyword, char *appKey, char *categoryIds, char *parentCategoryIds, int *rootOnly, sirqul_iot_platform_categoryDistanceSearch_sortField_e sortField, sirqul_iot_platform_categoryDistanceSearch_responseGroup_e responseGroup, int *descending, int *start, int *limit, int *activeOnly, int *returnExternal, int *exactMatch, char *type, char *externalType, int *minOfferCount, double latitude, double longitude, double range);


// Create Category
//
// Create a new category.
//
category_tree_response_t*
CategoryAPI_createCategory(apiClient_t *apiClient, double version, long accountId, char *name, char *appKey, long parentCategoryId, char *description, char *type, long assetId, char *externalId, char *externalType, char *externalCategorySlug, char *sqootSlug, int *active, char *metaData, char *searchTags);


// Delete Category
//
// Delete a category.
//
sirqul_response_t*
CategoryAPI_deleteCategory(apiClient_t *apiClient, double version, long accountId, long categoryId);


// Duplicate Category
//
// Duplicate a category, including all its children.
//
category_tree_response_t*
CategoryAPI_duplicateCategory(apiClient_t *apiClient, double version, long accountId, long categoryId, char *appKey, long parentCategoryId);


// Get Category
//
// Get the details of a specific category. Recursively include all child categories and their children.
//
category_tree_response_t*
CategoryAPI_getCategory(apiClient_t *apiClient, double version, long categoryId, int *returnExternal);


// Search Categories
//
// Search for categories.
//
list_t*
CategoryAPI_searchCategories(apiClient_t *apiClient, double version, long accountId, char *keyword, char *appKey, char *categoryId, char *categoryIds, char *parentCategoryIds, int *rootOnly, sirqul_iot_platform_searchCategories_sortField_e sortField, sirqul_iot_platform_searchCategories_responseGroup_e responseGroup, int *descending, int *start, int *limit, int *activeOnly, int *returnExternal, int *exactMatch, char *type, char *externalType, int *excludeExternalType, int *minOfferCount, int *searchDepth, char *searchMode);


// Update Category
//
// Update a category.
//
category_tree_response_t*
CategoryAPI_updateCategory(apiClient_t *apiClient, double version, long accountId, long categoryId, long parentCategoryId, char *name, char *description, char *type, long assetId, char *externalId, char *externalType, char *externalCategorySlug, char *sqootSlug, int *active, char *metaData, char *searchTags);


