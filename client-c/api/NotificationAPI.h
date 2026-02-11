#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/blocked_notification_response.h"
#include "../model/notification_message_list_response.h"
#include "../model/notification_recipient_response.h"
#include "../model/notification_recipient_response_list_response.h"
#include "../model/notification_template_response.h"
#include "../model/sirqul_response.h"

// Enum PUSHTYPE for NotificationAPI_registerNotificationToken
typedef enum  { sirqul_iot_platform_registerNotificationToken_PUSHTYPE_NULL = 0, sirqul_iot_platform_registerNotificationToken_PUSHTYPE_APNS, sirqul_iot_platform_registerNotificationToken_PUSHTYPE_GCM, sirqul_iot_platform_registerNotificationToken_PUSHTYPE_BAIDU, sirqul_iot_platform_registerNotificationToken_PUSHTYPE_XGPUSH, sirqul_iot_platform_registerNotificationToken_PUSHTYPE_JPUSH } sirqul_iot_platform_registerNotificationToken_pushType_e;

// Enum SORTFIELD for NotificationAPI_searchRecipients
typedef enum  { sirqul_iot_platform_searchRecipients_SORTFIELD_NULL = 0, sirqul_iot_platform_searchRecipients_SORTFIELD_ID, sirqul_iot_platform_searchRecipients_SORTFIELD_HAS_SMS, sirqul_iot_platform_searchRecipients_SORTFIELD_HAS_EMAIL, sirqul_iot_platform_searchRecipients_SORTFIELD_HAS_APNS, sirqul_iot_platform_searchRecipients_SORTFIELD_HAS_GCM, sirqul_iot_platform_searchRecipients_SORTFIELD_APPLICATION_ID, sirqul_iot_platform_searchRecipients_SORTFIELD_APPLICATION_NAME, sirqul_iot_platform_searchRecipients_SORTFIELD_ACCOUNT_ID, sirqul_iot_platform_searchRecipients_SORTFIELD_ACCOUNT_USERNAME, sirqul_iot_platform_searchRecipients_SORTFIELD_ACCOUNT_DISPLAY, sirqul_iot_platform_searchRecipients_SORTFIELD_ACCOUNT_TYPE } sirqul_iot_platform_searchRecipients_sortField_e;


// Create Notification Template
//
// Create a notification template. Developers will only be able to create notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_createNotificationTemplate(apiClient_t *apiClient, long accountId, char *conduit, char *title, char *body, char *appKey, char *event, char *tags);


// Create or update blocked notification settings
//
// Create or update blocked notification settings
//
blocked_notification_response_t*
NotificationAPI_createOrUpdateBlockedNotifications(apiClient_t *apiClient, char *appKey, char *data, long accountId);


// Delete Notification Template
//
// Deletes a notification template. Developers will only be able to delete notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_deleteNotificationTemplate(apiClient_t *apiClient, long accountId, long notificationTemplateId);


// Get Notification Template
//
// Get the details of a notification template. Developers will only be able to see notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_getNotificationTemplate(apiClient_t *apiClient, long accountId, long notificationTemplateId);


// Get Notifications
//
// Get a list of notifications for a user. If the \"markAsRead\" parameter is set to true, the returned notifications will be marked as \"read\" after the response has been sent. By default, read messages will not be returned, so to see read messages, set \"returnReadMessages\" to true.
//
notification_message_list_response_t*
NotificationAPI_getNotifications(apiClient_t *apiClient, char *deviceId, long accountId, long connectionAccountId, char *appKey, char *eventType, char *contentIds, char *contentTypes, char *parentIds, char *parentTypes, char *actionCategory, char *conduits, char *keyword, int *returnReadMessages, int *markAsRead, long fromDate, double latitude, double longitude, int *returnSent, int *ignoreFlagged, int *start, int *limit);


// Register Notification Token
//
// Register a token to send application dependent notifications like Google Cloud Messaging, or Apple Push Notifications.
//
sirqul_response_t*
NotificationAPI_registerNotificationToken(apiClient_t *apiClient, char *token, sirqul_iot_platform_registerNotificationToken_pushType_e pushType, char *deviceId, long accountId, char *environment, char *appKey, char *gameType, int *active, double latitude, double longitude);


// Search on the user's blocked notification settings
//
// Search on the user's blocked notification settings
//
blocked_notification_response_t*
NotificationAPI_searchBlockedNotifications(apiClient_t *apiClient, char *appKey, long accountId, char *searchTags, char *events, char *conduits, char *customTypes, char *contentTypes, char *contentIds, char *sortField, int *descending, int *start, int *limit);


// Search Notification Templates
//
// Search for notification templates on owned applications.
//
notification_template_response_t*
NotificationAPI_searchNotificationTemplate(apiClient_t *apiClient, long accountId, char *sortField, int *descending, int *start, int *limit, char *appKey, char *event, char *conduit, int *globalOnly, int *reservedOnly, char *keyword);


// Search for Recipients
//
// Search for application users to send notifications.
//
list_t*
NotificationAPI_searchRecipients(apiClient_t *apiClient, sirqul_iot_platform_searchRecipients_sortField_e sortField, char *deviceId, long accountId, char *appKey, char *conduit, char *keyword, long audienceId, char *audienceIds, char *connectionGroupIds, char *recipientAccountIds, int *descending, int *start, int *limit);


// Search for Recipients (Counts/Grouped)
//
// Search for application users to send notifications (count/grouped variant).
//
notification_recipient_response_list_response_t*
NotificationAPI_searchRecipientsCount(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, char *conduit, char *keyword, long audienceId, char *audienceIds, char *connectionGroupIds, char *sortField, int *descending, int *start, int *limit);


// Send Batch Notifications
//
// Send notifications to all users of an application. Only someone with permissions to the application can do this.
//
sirqul_response_t*
NotificationAPI_sendBatchNotifications(apiClient_t *apiClient, long accountId, char *appKey, char *customMessage, char *conduit, long contentId, char *contentName, char *contentType, long parentId, char *parentType);


// Send Custom Notifications
//
// Send your own custom notification to a user. NOTE: the EventType of these notifications will be CUSTOM. Notifications sent to yourself will currently be ignored.
//
sirqul_response_t*
NotificationAPI_sendCustomNotifications(apiClient_t *apiClient, char *deviceId, long accountId, char *receiverAccountIds, int *includeFriendGroup, char *appKey, char *gameType, char *conduit, long contentId, char *contentName, char *contentType, long parentId, char *parentType, char *actionCategory, char *subject, char *customMessage, int *friendOnlyAPNS, double latitude, double longitude);


// Update Notification Template
//
// Update a notification template. Developers will only be able to update notification templates for their own applications.
//
notification_template_response_t*
NotificationAPI_updateNotificationTemplate(apiClient_t *apiClient, long accountId, long notificationTemplateId, char *title, char *body, char *tags);


