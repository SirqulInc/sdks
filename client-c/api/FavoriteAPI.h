#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account_response.h"
#include "../model/search_response.h"
#include "../model/sirqul_response.h"
#include "../model/wrapped_response.h"

// Enum SORTFIELD for FavoriteAPI_searchFavorites
typedef enum  { sirqul_iot_platform_searchFavorites_SORTFIELD_NULL = 0, sirqul_iot_platform_searchFavorites_SORTFIELD_ID, sirqul_iot_platform_searchFavorites_SORTFIELD_CREATED, sirqul_iot_platform_searchFavorites_SORTFIELD_UPDATED, sirqul_iot_platform_searchFavorites_SORTFIELD_DELETED, sirqul_iot_platform_searchFavorites_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchFavorites_SORTFIELD_ACTIVE, sirqul_iot_platform_searchFavorites_SORTFIELD_DISPLAY } sirqul_iot_platform_searchFavorites_sortField_e;


// Create Favorite
//
// Adds an offer, offer location, retailer location, or category to your favorites.
//
wrapped_response_t*
FavoriteAPI_addFavorite(apiClient_t *apiClient, long favoritableId, char *favoritableType, char *deviceId, long accountId, double latitude, double longitude);


// Delete Favorite
//
// Removes a favorited item from the user's favorites list.
//
sirqul_response_t*
FavoriteAPI_deleteFavorite(apiClient_t *apiClient, char *deviceId, long accountId, long favoriteId, long favoritableId, char *favoritableType);


// Get Favorite
//
// Retrieves a single favorited item.
//
wrapped_response_t*
FavoriteAPI_getFavorite(apiClient_t *apiClient, long favoriteId, char *deviceId, long accountId, double latitude, double longitude);


// Search Favorites
//
// Searches on the user's favorites.
//
search_response_t*
FavoriteAPI_searchFavorites(apiClient_t *apiClient, char *favoritableType, sirqul_iot_platform_searchFavorites_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, int *returnFullResponse, char *deviceId, long accountId, long connectionAccountId, char *secondaryType, char *keyword, double latitude, double longitude);


// Who has Favorited
//
// Searches for everyone that has favorited an item
//
list_t*
FavoriteAPI_whoHasFavorited(apiClient_t *apiClient, long favoritableId, char *favoritableType, int *start, int *limit, char *deviceId, long accountId, double latitude, double longitude, char *keyword);


