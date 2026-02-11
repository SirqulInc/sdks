#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account_mini_response.h"
#include "../model/leg.h"
#include "../model/leg_response.h"
#include "../model/predicted_location_response.h"
#include "../model/preferred_location_response.h"
#include "../model/sirqul_response.h"
#include "../model/step_response.h"

// Enum DISTANCEUNIT for TrackingAPI_getPredictedLocations
typedef enum  { sirqul_iot_platform_getPredictedLocations_DISTANCEUNIT_NULL = 0, sirqul_iot_platform_getPredictedLocations_DISTANCEUNIT_MILES, sirqul_iot_platform_getPredictedLocations_DISTANCEUNIT_KILOMETERS } sirqul_iot_platform_getPredictedLocations_distanceUnit_e;

// Enum SORTORDER for TrackingAPI_getPredictedLocations
typedef enum  { sirqul_iot_platform_getPredictedLocations_SORTORDER_NULL = 0, sirqul_iot_platform_getPredictedLocations_SORTORDER_MATCHES, sirqul_iot_platform_getPredictedLocations_SORTORDER_DISTANCE, sirqul_iot_platform_getPredictedLocations_SORTORDER_WEIGHTED } sirqul_iot_platform_getPredictedLocations_sortOrder_e;

// Enum DISTANCEUNIT for TrackingAPI_getPreferredLocations
typedef enum  { sirqul_iot_platform_getPreferredLocations_DISTANCEUNIT_NULL = 0, sirqul_iot_platform_getPreferredLocations_DISTANCEUNIT_MILES, sirqul_iot_platform_getPreferredLocations_DISTANCEUNIT_KILOMETERS } sirqul_iot_platform_getPreferredLocations_distanceUnit_e;


// Create Batch Tracking
//
// Batch create tracking legs
//
list_t*
TrackingAPI_batchSaveTracking(apiClient_t *apiClient, char *data, char *deviceId, long accountId, int *generateAccounts, int *updateAccountLocations, char *defaultTag, char *slaveUID);


// Get Predicted Locations
//
// Get the predicted location for a customer based on previous behavior.  If a customer resides in a place for a period of time this is marked as a preferred location.  We look back over the previous few days and the previous days of the week from the day specified.  If for instance the day was a Wednesday then this would check the days before, including: Tuesday, Monday, Sunday, etc. It will also check some number of previous Wednesdays in the past few weeks.
//
predicted_location_response_t*
TrackingAPI_getPredictedLocations(apiClient_t *apiClient, long accountId, double latitude, double longitude, long dateCheck, char *hourCheck, long threshold, sirqul_iot_platform_getPredictedLocations_distanceUnit_e distanceUnit, double searchRange, sirqul_iot_platform_getPredictedLocations_sortOrder_e sortOrder);


// Get Tracking Path
//
// Get the path (lat/long coordinates) between 2 steps previously logged for a customer.
//
list_t*
TrackingAPI_getPredictedPath(apiClient_t *apiClient, long accountId, long startStepId, long endStepId);


// Search Preferred Locations
//
// Search on preferred locations for a user, which is created when a customer resides in a place for a period of time.
//
list_t*
TrackingAPI_getPreferredLocations(apiClient_t *apiClient, long accountId, double latitude, double longitude, long dateCheck, char *hourCheck, char *sortField, int *descending, int *start, int *limit, double searchRange, sirqul_iot_platform_getPreferredLocations_distanceUnit_e distanceUnit);


// Search Tracking
//
// Retrieve tracking data to be able to show where a user has been.
//
list_t*
TrackingAPI_getTrackingLegs(apiClient_t *apiClient, char *deviceId, long accountId, long ownerId, char *trackingDeviceId, long startDate, long endDate, char *tags, int *getLastPoint);


// Create Tracking Leg
//
// Send tracking points to be able to generate pathing data
//
sirqul_response_t*
TrackingAPI_saveTrackingLeg(apiClient_t *apiClient, double startLat, double startLng, long startDate, double endLat, double endLng, long endDate, char *deviceId, long accountId, double distance, long duration, char *steps, char *tags);


// Create Tracking Step
//
// Send tracking points to be able to generate pathing data
//
sirqul_response_t*
TrackingAPI_saveTrackingStep(apiClient_t *apiClient, long legId, double startLat, double startLng, long startDate, double endLat, double endLng, long endDate, char *deviceId, long accountId, double distance, long duration);


// List Tracking
//
// Search for all accounts that have tracking legs data by the given constraints.
//
list_t*
TrackingAPI_searchAccountsWithTrackingLegs(apiClient_t *apiClient, long accountId, char *keyword, long startDate, long endDate, char *tags, char *audienceIds, double latitude, double longitude, double range, char *sortField, int *descending, int *start, int *limit, int *activeOnly);


// Search Tracking (Billable)
//
// Retrieve tracking data for billable/account scoped queries.
//
list_t*
TrackingAPI_searchTrackingLegs(apiClient_t *apiClient, long accountId, char *appKey, char *trackingDeviceId, long startDate, long endDate, char *tags, int *start, int *limit);


