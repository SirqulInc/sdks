#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/event_attendance_response.h"
#include "../model/offer_response.h"
#include "../model/offer_short_response.h"
#include "../model/sirqul_response.h"

// Enum SORTFIELD for EventAPI_searchEventTransactions
typedef enum  { sirqul_iot_platform_searchEventTransactions_SORTFIELD_NULL = 0, sirqul_iot_platform_searchEventTransactions_SORTFIELD_ID, sirqul_iot_platform_searchEventTransactions_SORTFIELD_CREATED, sirqul_iot_platform_searchEventTransactions_SORTFIELD_UPDATED, sirqul_iot_platform_searchEventTransactions_SORTFIELD_DELETED, sirqul_iot_platform_searchEventTransactions_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchEventTransactions_SORTFIELD_ACTIVE, sirqul_iot_platform_searchEventTransactions_SORTFIELD_ACTIVATED, sirqul_iot_platform_searchEventTransactions_SORTFIELD_EXPIRES, sirqul_iot_platform_searchEventTransactions_SORTFIELD_TITLE, sirqul_iot_platform_searchEventTransactions_SORTFIELD_SUBTITLE, sirqul_iot_platform_searchEventTransactions_SORTFIELD_DETAILS, sirqul_iot_platform_searchEventTransactions_SORTFIELD_OFFER_TYPE, sirqul_iot_platform_searchEventTransactions_SORTFIELD_SPECIAL_OFFER_TYPE, sirqul_iot_platform_searchEventTransactions_SORTFIELD_OFFER_VISIBILITY, sirqul_iot_platform_searchEventTransactions_SORTFIELD_REDEEMABLE_START, sirqul_iot_platform_searchEventTransactions_SORTFIELD_REDEEMABLE_END, sirqul_iot_platform_searchEventTransactions_SORTFIELD_CUSTOMER_ID, sirqul_iot_platform_searchEventTransactions_SORTFIELD_CUSTOMER_DISPLAY, sirqul_iot_platform_searchEventTransactions_SORTFIELD_RETAILER_ID, sirqul_iot_platform_searchEventTransactions_SORTFIELD_RETAILER_NAME, sirqul_iot_platform_searchEventTransactions_SORTFIELD_RETAILER_LOCATION_ID, sirqul_iot_platform_searchEventTransactions_SORTFIELD_RETAILER_LOCATION_NAME, sirqul_iot_platform_searchEventTransactions_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_searchEventTransactions_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_searchEventTransactions_SORTFIELD_RESPONSIBLE_DISPLAY } sirqul_iot_platform_searchEventTransactions_sortField_e;

// Enum SORTFIELD for EventAPI_searchEvents
typedef enum  { sirqul_iot_platform_searchEvents_SORTFIELD_NULL = 0, sirqul_iot_platform_searchEvents_SORTFIELD_ID, sirqul_iot_platform_searchEvents_SORTFIELD_CREATED, sirqul_iot_platform_searchEvents_SORTFIELD_UPDATED, sirqul_iot_platform_searchEvents_SORTFIELD_DELETED, sirqul_iot_platform_searchEvents_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchEvents_SORTFIELD_ACTIVE, sirqul_iot_platform_searchEvents_SORTFIELD_ACTIVATED, sirqul_iot_platform_searchEvents_SORTFIELD_EXPIRES, sirqul_iot_platform_searchEvents_SORTFIELD_REDEEMABLE_START, sirqul_iot_platform_searchEvents_SORTFIELD_REDEEMABLE_END, sirqul_iot_platform_searchEvents_SORTFIELD_TITLE, sirqul_iot_platform_searchEvents_SORTFIELD_SUBTITLE, sirqul_iot_platform_searchEvents_SORTFIELD_DETAILS, sirqul_iot_platform_searchEvents_SORTFIELD_OFFER_TYPE, sirqul_iot_platform_searchEvents_SORTFIELD_SPECIAL_OFFER_TYPE, sirqul_iot_platform_searchEvents_SORTFIELD_OFFER_VISIBILITY, sirqul_iot_platform_searchEvents_SORTFIELD_ESTIMATED_VALUE, sirqul_iot_platform_searchEvents_SORTFIELD_VOUCHER_PRICE, sirqul_iot_platform_searchEvents_SORTFIELD_VOUCHER_DISCOUNT_PRICE, sirqul_iot_platform_searchEvents_SORTFIELD_FULL_PRICE, sirqul_iot_platform_searchEvents_SORTFIELD_DICOUNT_PRICE, sirqul_iot_platform_searchEvents_SORTFIELD_TICKETS_REWARD, sirqul_iot_platform_searchEvents_SORTFIELD_AVAILABILITY_DATE, sirqul_iot_platform_searchEvents_SORTFIELD_RELEASE_DATE, sirqul_iot_platform_searchEvents_SORTFIELD_RETAILER_ID, sirqul_iot_platform_searchEvents_SORTFIELD_RETAILER_NAME, sirqul_iot_platform_searchEvents_SORTFIELD_RETAILER_LOCATION_ID, sirqul_iot_platform_searchEvents_SORTFIELD_RETAILER_LOCATION_NAME, sirqul_iot_platform_searchEvents_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_searchEvents_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_searchEvents_SORTFIELD_RESPONSIBLE_DISPLAY } sirqul_iot_platform_searchEvents_sortField_e;


// Attend Event
//
//  Specify whether the user is attending an event at a particular location. This can also be used as a \"check-in\" action.
//
offer_response_t*
EventAPI_attendEvent(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, long listingId, long retailerLocationId, long offerLocationId, long transactionId, int *status, double latitude, double longitude);


// Create Event
//
// Create a private event to share with associates.
//
offer_response_t*
EventAPI_createEvent(apiClient_t *apiClient, long accountId, char *title, char *retailerLocationIds, char *subTitle, char *details, char *categoryIds, char *filterIds, int *active, long imageAssetId, long redeemableStart, long redeemableEnd, char *metaData);


// Delete Event
//
// Delete an event that the user has permissions to.
//
sirqul_response_t*
EventAPI_deleteEvent(apiClient_t *apiClient, long accountId, long eventId);


// Get Event
//
// Get an event.
//
offer_response_t*
EventAPI_getEvent(apiClient_t *apiClient, long accountId, long eventId);


// Search Event Attendance
//
// Searches on event type transactions. This can be used to see who is attending an event.
//
list_t*
EventAPI_searchEventTransactions(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, char *keyword, long retailerId, long retailerLocationId, long excludeRetailerLocationId, long listingId, long offerId, long offerLocationId, char *customerAccountIds, char *affiliatedCategoryIds, long startDate, long endDate, char *statuses, sirqul_iot_platform_searchEventTransactions_sortField_e sortField, int *descending, int *start, int *limit);


// Search Events
//
// Searches on events that the account has access to.
//
list_t*
EventAPI_searchEvents(apiClient_t *apiClient, long accountId, char *keyword, int *activeOnly, char *categoryIds, char *filterIds, char *offerAudienceIds, char *transactionAudienceIds, sirqul_iot_platform_searchEvents_sortField_e sortField, int *descending, long startDate, long endDate, int *start, int *limit);


// Update Event
//
// Update a private event to share with associates.
//
offer_response_t*
EventAPI_updateEvent(apiClient_t *apiClient, long accountId, long eventId, char *retailerLocationIds, char *title, char *subTitle, char *details, char *categoryIds, char *filterIds, int *active, long imageAssetId, long redeemableStart, long redeemableEnd);


