#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/purchase_item_list_response.h"
#include "../model/sirqul_response.h"
#include "../model/theme_descriptor_response.h"

// Enum VISIBILITY for ThemeDescriptorAPI_addOrUpdateThemeDescriptor
typedef enum  { sirqul_iot_platform_addOrUpdateThemeDescriptor_VISIBILITY_NULL = 0, sirqul_iot_platform_addOrUpdateThemeDescriptor_VISIBILITY__PUBLIC, sirqul_iot_platform_addOrUpdateThemeDescriptor_VISIBILITY__PRIVATE, sirqul_iot_platform_addOrUpdateThemeDescriptor_VISIBILITY_FRIENDS } sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e;


// Create/Update Theme
//
// Creates or updates a theme descriptor that can be used to give applications a customized look and feel. The theme can be created by consumers and shared to other users, allowing them to use and/or collaborate on making the theme.
//
theme_descriptor_response_t*
ThemeDescriptorAPI_addOrUpdateThemeDescriptor(apiClient_t *apiClient, double version, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e visibility, int *includeFriendGroup, int *completeWithDefaultValues, char *deviceId, long accountId, char *gameType, long themeDescriptorId, char *title, char *description, char *connectionIdsToAdd, char *connectionGroupIdsToAdd, char *appVersion, char *colorValueJson, char *stringReplacerJson, char *customJsonObjects, binary_t* iconImage, binary_t* sceneAtlasImage, binary_t* bgImage, binary_t* bgSound, char *musicSelection, char *locationDescription, double latitude, double longitude);


// Get Theme
//
// Gets a theme.
//
purchase_item_list_response_t*
ThemeDescriptorAPI_getThemeDescriptor(apiClient_t *apiClient, double version, long themeDescriptorId, char *deviceId, long accountId, char *gameType, double latitude, double longitude);


// Search Themes
//
// Searches for themes.
//
purchase_item_list_response_t*
ThemeDescriptorAPI_getThemeDescriptors(apiClient_t *apiClient, double version, char *filter, char *sortField, int *descending, int *start, int *limit, char *deviceId, long accountId, char *gameType, char *contestType, long ownerId, char *q, char *keyword, int *_i, int *_l, long dateCreated, char *appVersion, double latitude, double longitude);


// Delete Theme
//
// Removes a theme.
//
sirqul_response_t*
ThemeDescriptorAPI_removeThemeDescriptor(apiClient_t *apiClient, double version, long themeDescriptorId, char *deviceId, long accountId, char *gameType, double latitude, double longitude);


