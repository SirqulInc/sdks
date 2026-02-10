#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/pack_response.h"
#include "../model/sirqul_response.h"

// Enum PACKTYPE for PackAPI_createPack
typedef enum  { sirqul_iot_platform_createPack_PACKTYPE_NULL = 0, sirqul_iot_platform_createPack_PACKTYPE_TUTORIAL, sirqul_iot_platform_createPack_PACKTYPE_BUILTIN, sirqul_iot_platform_createPack_PACKTYPE_DOWNLOAD, sirqul_iot_platform_createPack_PACKTYPE_THRESHOLD, sirqul_iot_platform_createPack_PACKTYPE_THEME, sirqul_iot_platform_createPack_PACKTYPE_TOURNAMENT } sirqul_iot_platform_createPack_packType_e;

// Enum SEQUENCETYPE for PackAPI_createPack
typedef enum  { sirqul_iot_platform_createPack_SEQUENCETYPE_NULL = 0, sirqul_iot_platform_createPack_SEQUENCETYPE_FIRST_AVAILABLE, sirqul_iot_platform_createPack_SEQUENCETYPE_ALL_AVAILABLE } sirqul_iot_platform_createPack_sequenceType_e;

// Enum SORTFIELD for PackAPI_searchPacks
typedef enum  { sirqul_iot_platform_searchPacks_SORTFIELD_NULL = 0, sirqul_iot_platform_searchPacks_SORTFIELD_TITLE, sirqul_iot_platform_searchPacks_SORTFIELD_DESCRIPTION, sirqul_iot_platform_searchPacks_SORTFIELD_CREATED, sirqul_iot_platform_searchPacks_SORTFIELD_UPDATED } sirqul_iot_platform_searchPacks_sortField_e;

// Enum PACKTYPE for PackAPI_searchPacks
typedef enum  { sirqul_iot_platform_searchPacks_PACKTYPE_NULL = 0, sirqul_iot_platform_searchPacks_PACKTYPE_TUTORIAL, sirqul_iot_platform_searchPacks_PACKTYPE_BUILTIN, sirqul_iot_platform_searchPacks_PACKTYPE_DOWNLOAD, sirqul_iot_platform_searchPacks_PACKTYPE_THRESHOLD, sirqul_iot_platform_searchPacks_PACKTYPE_THEME, sirqul_iot_platform_searchPacks_PACKTYPE_TOURNAMENT } sirqul_iot_platform_searchPacks_packType_e;

// Enum PACKTYPE for PackAPI_updatePack
typedef enum  { sirqul_iot_platform_updatePack_PACKTYPE_NULL = 0, sirqul_iot_platform_updatePack_PACKTYPE_TUTORIAL, sirqul_iot_platform_updatePack_PACKTYPE_BUILTIN, sirqul_iot_platform_updatePack_PACKTYPE_DOWNLOAD, sirqul_iot_platform_updatePack_PACKTYPE_THRESHOLD, sirqul_iot_platform_updatePack_PACKTYPE_THEME, sirqul_iot_platform_updatePack_PACKTYPE_TOURNAMENT } sirqul_iot_platform_updatePack_packType_e;

// Enum SEQUENCETYPE for PackAPI_updatePack
typedef enum  { sirqul_iot_platform_updatePack_SEQUENCETYPE_NULL = 0, sirqul_iot_platform_updatePack_SEQUENCETYPE_FIRST_AVAILABLE, sirqul_iot_platform_updatePack_SEQUENCETYPE_ALL_AVAILABLE } sirqul_iot_platform_updatePack_sequenceType_e;


// Create Pack
//
// Create a pack.
//
pack_response_t*
PackAPI_createPack(apiClient_t *apiClient, double version, long accountId, char *title, long packOrder, int *price, int *highest, int *allocateTickets, long ticketCount, char *description, char *searchTags, int *active, char *gameType, char *appKey, sirqul_iot_platform_createPack_packType_e packType, sirqul_iot_platform_createPack_sequenceType_e sequenceType, long backgroundId, long imageId, long startDate, long endDate, char *authorOverride, char *priceType, char *gameLevelIds, int *inGame, char *ticketType, long points);


// Delete Pack
//
// Delete a pack.
//
sirqul_response_t*
PackAPI_deletePack(apiClient_t *apiClient, double version, long accountId, long packId);


// Get Pack
//
// Get a pack.
//
pack_response_t*
PackAPI_getPack(apiClient_t *apiClient, double version, long accountId, long packId, int *includeGameData);


// Search Packs
//
// Search on packs.
//
list_t*
PackAPI_searchPacks(apiClient_t *apiClient, double version, long accountId, sirqul_iot_platform_searchPacks_sortField_e sortField, int *descending, char *keyword, sirqul_iot_platform_searchPacks_packType_e packType, int *start, int *limit, int *includeGameData, int *includeInactive, char *appKey);


// Update Pack
//
// Update a pack.
//
pack_response_t*
PackAPI_updatePack(apiClient_t *apiClient, double version, long accountId, long packId, int *allocateTickets, long ticketCount, char *title, char *description, char *searchTags, int *active, char *gameType, char *appKey, sirqul_iot_platform_updatePack_packType_e packType, long packOrder, sirqul_iot_platform_updatePack_sequenceType_e sequenceType, long backgroundId, long imageId, long startDate, long endDate, char *authorOverride, int *price, char *priceType, char *gameLevelIds, int *inGame, int *highest, char *ticketType, long points);


