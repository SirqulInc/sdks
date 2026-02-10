#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/application_config_response.h"
#include "../model/sirqul_response.h"


// Create AppConfig
//
// Creates a new application configuration. If the configVersion provided already exists for the given app, an invalid response is returned and the application configuration won't be created.
//
application_config_response_t*
ApplicationConfigAPI_createApplicationConfig(apiClient_t *apiClient, double version, long accountId, char *appKey, char *configVersion, long assetId, long retailerId, long retailerLocationId, char *udid);


// Delete AppConfig
//
// Mark the application configuration for deletion.
//
sirqul_response_t*
ApplicationConfigAPI_deleteApplicationConfig(apiClient_t *apiClient, double version, long accountId, long configId);


// Get AppConfig
//
// Gets the appConfig data by the given configId. If appConfig cannot be found, it returns an invalid response.
//
application_config_response_t*
ApplicationConfigAPI_getApplicationConfig(apiClient_t *apiClient, double version, long accountId, long configId);


// Get AppConfig by Version
//
// Gets the appConfig data by the given appKey and app configVersion number.If the appKey is is invalid or appConfig is not found, it returns an invalid response. 
//
application_config_response_t*
ApplicationConfigAPI_getApplicationConfigByConfigVersion(apiClient_t *apiClient, double version, char *appKey, char *configVersion, long retailerId, long retailerLocationId, char *udid, int *allowOlderVersions);


// Search AppConfigs
//
// Gets all versions of application configurations in a particular app by the given appKey.
//
list_t*
ApplicationConfigAPI_searchApplicationConfig(apiClient_t *apiClient, double version, long accountId, char *appKey, long retailerId, long retailerLocationId, char *udid, char *configVersion, char *sortField, int *descending, int *start, int *limit);


// Update AppConfig
//
// pdates an existing application configuration. If the configVersion provided already exists for the given app the application configuration won't be updated.
//
application_config_response_t*
ApplicationConfigAPI_updateApplicationConfig(apiClient_t *apiClient, double version, long accountId, long configId, char *appKey, char *configVersion, long assetId, long retailerId, long retailerLocationId, char *udid);


