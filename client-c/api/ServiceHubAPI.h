#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/object.h"
#include "../model/service_hub.h"


// Create Service Hub
//
// Create new service hub
//
service_hub_t*
ServiceHubAPI_createServiceHub(apiClient_t *apiClient, service_hub_t *body);


// Delete Service Hub
//
// Delete an existing service hub
//
void
ServiceHubAPI_deleteServiceHub(apiClient_t *apiClient, long id);


// Get Service Hub
//
// Get an existing service hub
//
object_t*
ServiceHubAPI_getServiceHub(apiClient_t *apiClient, long id);


// Update Service Hub
//
// Update an existing service hub
//
service_hub_t*
ServiceHubAPI_postServiceHub(apiClient_t *apiClient, long id, service_hub_t *body);


// Update Service Hub
//
// Update an existing service hub
//
service_hub_t*
ServiceHubAPI_putServiceHub(apiClient_t *apiClient, long id, service_hub_t *body);


// Search Service Hubs
//
// Search for service hubs.
//
list_t*
ServiceHubAPI_searchServiceHubs(apiClient_t *apiClient, char *sortField, int *descending, int *start, int *limit, int *activeOnly, char *keyword, long retailerId);


