#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/scheduled_notification_full_response.h"
#include "../model/sirqul_response.h"

// Enum VISIBILITY for ScheduledNotificationAPI_createScheduledNotification
typedef enum  { sirqul_iot_platform_createScheduledNotification_VISIBILITY_NULL = 0, sirqul_iot_platform_createScheduledNotification_VISIBILITY__PUBLIC, sirqul_iot_platform_createScheduledNotification_VISIBILITY__PRIVATE, sirqul_iot_platform_createScheduledNotification_VISIBILITY_FRIENDS } sirqul_iot_platform_createScheduledNotification_visibility_e;

// Enum VISIBILITY for ScheduledNotificationAPI_updateScheduledNotification
typedef enum  { sirqul_iot_platform_updateScheduledNotification_VISIBILITY_NULL = 0, sirqul_iot_platform_updateScheduledNotification_VISIBILITY__PUBLIC, sirqul_iot_platform_updateScheduledNotification_VISIBILITY__PRIVATE, sirqul_iot_platform_updateScheduledNotification_VISIBILITY_FRIENDS } sirqul_iot_platform_updateScheduledNotification_visibility_e;


// Create Scheduled Notification
//
// This endpoint creates a Scheduled Notification message that can be configured to process and send periodically at set time periods
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_createScheduledNotification(apiClient_t *apiClient, long accountId, char *name, char *type, char *message, long contentId, char *contentName, char *contentType, long parentId, char *parentType, char *appKey, char *groupingId, char *connectionGroupIds, char *connectionAccountIds, long audienceId, char *audienceIds, char *albumIds, long reportId, char *reportParams, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, char *cronType, char *metaData, char *conditionalInput, char *templateType, sirqul_iot_platform_createScheduledNotification_visibility_e visibility, int *active, int *sendNow, char *eventType, char *deepLinkURI, int *sendToAll);


// Delete Scheduled Notification
//
// This endpoint deletes a Scheduled Notification. Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using the UserPermissionsApi.
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_deleteScheduledNotification(apiClient_t *apiClient, long accountId, long scheduledNotificationId, int *deleteByGroupingId);


// Get Scheduled Notification
//
// Get a ScheduledNotification
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_getScheduledNotification(apiClient_t *apiClient, long accountId, long scheduledNotificationId);


// Generate Schedule Notifications
//
// Use a report to identify events that are starting soon and then create a scheduled notification to push a message to matching users.
//
sirqul_response_t*
ScheduledNotificationAPI_scheduleNotificationListings(apiClient_t *apiClient, long accountId, char *appKey, char *reportName, char *message, int *offset, long recipientReportId, char *reportParams, char *type);


// Search Scheduled Notifications
//
// This endpoint searches on Scheduled Notifications. If a scheduled notification was created with the visibility parameter set to PUBLIC, then anyone can search on it if the filter parameter includes the PUBLIC value. PRIVATE visibility means that it can only be searched on by the owner or if it has been shared to the user using the UserPermissionsApi.  In addition, if a PUBLIC Scheduled Notification was created for an application that requires content approval (using the publicContentApproval parameter), then an administrator of the application needs to approve it before it can be search on by other users. Before this happens, it is in a PENDING state, and only the original creator or the owner of the application can search and see it. Also, only the owner of the application can use the UserPermissionsApi to approve or reject it. Scheduled notifications that have been rejected are only visible to the original creators.
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_searchScheduledNotifications(apiClient_t *apiClient, long accountId, char *groupingId, long audienceId, char *filter, char *types, char *contentIds, char *contentTypes, char *parentIds, char *parentTypes, char *statuses, char *templateTypes, char *appKey, char *keyword, char *sortField, int *descending, int *start, int *limit, int *activeOnly, int *groupByGroupingId, int *returnAudienceAccountCount);


// Update Scheduled Notification
//
// This endpoint updates a Scheduled Notification message that can be configured to process and send periodically at set time periods. Please see createScheduledNotification for more details.  Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using theUserPermissionsApi.
//
scheduled_notification_full_response_t*
ScheduledNotificationAPI_updateScheduledNotification(apiClient_t *apiClient, long scheduledNotificationId, long accountId, char *name, char *type, char *message, char *payload, long contentId, char *contentName, char *contentType, long parentId, char *parentType, char *appKey, char *groupingId, char *connectionGroupIds, char *connectionAccountIds, long audienceId, char *audienceIds, char *albumIds, long reportId, char *reportParams, char *endpointURL, long scheduledDate, long startDate, long endDate, char *cronExpression, char *cronType, char *metaData, char *conditionalInput, char *templateType, sirqul_iot_platform_updateScheduledNotification_visibility_e visibility, int *active, char *errorMessage, char *status, int *updateByGroupingId, int *sendNow, char *eventType, char *deepLinkURI, int *sendToAll);


