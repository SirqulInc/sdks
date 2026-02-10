#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/object.h"
#include "../model/route_settings.h"


// Create Route Setting
//
// Create a new route setting
//
route_settings_t*
RouteSettingAPI_createRouteSettings(apiClient_t *apiClient, double version, route_settings_t *body);


// Delete Route Setting
//
// Delete an existing route setting
//
object_t*
RouteSettingAPI_deleteRouteSettings(apiClient_t *apiClient, double version, long routeSettingsId);


// Get Route Setting
//
// Get an existing route settings
//
route_settings_t*
RouteSettingAPI_getRouteSettings(apiClient_t *apiClient, double version, long routeSettingsId);


// Search Route Settings
//
// Search for route settings
//
list_t*
RouteSettingAPI_searchRouteSettings(apiClient_t *apiClient, double version, char *sortField, int *descending, int *start, int *limit, int *activeOnly, long hubId, long programId, char *keyword);


// Update Route Setting
//
// Update an existing route setting
//
route_settings_t*
RouteSettingAPI_updateRouteSettings(apiClient_t *apiClient, double version, long routeSettingsId, route_settings_t *body);


