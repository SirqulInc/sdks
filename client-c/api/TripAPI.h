#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/trip.h"


// Delete Trip
//
// Delete an existing trip
//
void
TripAPI_callDelete(apiClient_t *apiClient, double version, long id);


// Create Trip
//
// Create a new trip
//
trip_t*
TripAPI_createTrip(apiClient_t *apiClient, double version, trip_t *body);


// Set Trip Preference Driver
//
// Update trip preference to drive, also create a route and assign the trip to the route
//
trip_t*
TripAPI_driveTrip(apiClient_t *apiClient, double version, long id, int *recurrence);


// Set Trip Preference Flexible
//
// Update trip preference to flexible.
//
trip_t*
TripAPI_flexibleTrip(apiClient_t *apiClient, double version, long id, int *recurrence);


// Get Trip
//
// Get an existing trip
//
trip_t*
TripAPI_getTrip(apiClient_t *apiClient, double version, long id);


// Get Trip Matches
//
// Get matching trips of specific trip
//
list_t*
TripAPI_getTripMatches(apiClient_t *apiClient, double version, long id, char *sortField, int *descending, int *start, int *limit, int *activeOnly, int *matchedHasRoute, int *matchedHasDriver);


// Process Trip Matches
//
// Process trip matching, assign trips with no route to matched trips with route.
//
list_t*
TripAPI_processTripMatches(apiClient_t *apiClient, double version, long startDate, long endDate, long tripId);


// Set Trip Preference Rider
//
// Update trip preference to ride.
//
trip_t*
TripAPI_ride(apiClient_t *apiClient, double version, long id, int *recurrence);


// Search Trips
//
// Search for trips
//
list_t*
TripAPI_search(apiClient_t *apiClient, double version, long accountId, char *sortField, int *descending, int *start, int *limit, int *activeOnly, long startDate, long endDate, int *hasNotifications);


// Search Trips
//
// Search for trips with matching information.
//
list_t*
TripAPI_searchTrips(apiClient_t *apiClient, double version, long accountId, char *sortField, int *descending, int *start, int *limit, int *activeOnly, long startDate, long endDate, int *matchedHasRoute, int *matchedHasDriver);


// Update Trip Locations
//
trip_t*
TripAPI_updateLocations(apiClient_t *apiClient, double version, long id, trip_t *body);


// Update Recurrence Locations
//
list_t*
TripAPI_updateRecurrenceLocations(apiClient_t *apiClient, double version, long id, trip_t *body);


// Update Recurrence Shipments
//
list_t*
TripAPI_updateRecurrenceShipments(apiClient_t *apiClient, double version, long id, trip_t *body);


// Update Trip Shipments
//
trip_t*
TripAPI_updateShipments(apiClient_t *apiClient, double version, long id, trip_t *body);


// Update Trip
//
// Update an existing trip. Does not support recurring trip update.
//
trip_t*
TripAPI_updateTrip(apiClient_t *apiClient, double version, long id, trip_t *body);


// Trip Notifications
//
// Update the trip notifications
//
trip_t*
TripAPI_updateTripNotifications(apiClient_t *apiClient, double version, long id, char *notifications);


