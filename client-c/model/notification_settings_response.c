#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "notification_settings_response.h"


char* notification_settings_response_blocked_notifications_ToString(sirqul_iot_platform_notification_settings_response_BLOCKEDNOTIFICATIONS_e blocked_notifications) {
    char *blocked_notificationsArray[] =  { "NULL", "REASSIGNMENT_REQUEST", "FEEDBACK", "SUGGESTION_RECEIVED", "ASSIGNMENT_CHANGE", "WELCOME_PARTNER", "WELCOME_BUSINESS", "PARTNER_INVITE", "PARTNER_EXISTING_INVITE", "PARTNER_CODE_INVITE", "BATCH_REPORT_FINISHED", "WELCOME_BY_APP", "VALIDATE_MEMBER", "NEW_SIGNUP", "VOUCHER_PURCHASED", "PENDING_MISSION_REVIEW", "SEND_APP_KEYS", "RESET_PASSWORD", "PASSWORD_CHANGED", "OFFER_24HR_EXPIRE_RETAILER", "OFFER_24HR_EXPIRE_CONSUMER", "DOWNLOADED_APP", "LEVEL_COMPLETED", "LEVEL_CREATED", "ALBUM_LIKE", "ALBUM_CONTEST_LIKE", "ASSET_LIKE", "COLLECTION_LIKE", "ACCOUNT_LIKE", "NOTE_LIKE", "GAME_LEVEL_LIKE", "LIKE", "ALBUM_DISLIKE", "ALBUM_CONTEST_DISLIKE", "ASSET_DISLIKE", "COLLECTION_DISLIKE", "ACCOUNT_DISLIKE", "NOTE_DISLIKE", "GAME_LEVEL_DISLIKE", "ALBUM_NOTE", "ALBUM_CONTEST_NOTE", "ASSET_NOTE", "COLLECTION_NOTE", "GAME_LEVEL_NOTE", "COMMENT", "ALBUM_SHARED", "ALBUM_CONTEST_SHARED", "COLLECTION_SHARED", "EVENT_SHARED", "RETAILER_LOCATION_SHARED", "ANONYMOUS_ALBUM_SHARED", "OFFER_FAVORITE", "OFFER_LOCATION_FAVORITE", "RETAILER_LOCATION_FAVORITE", "ALBUM_FAVORITE", "CATEGORY_FAVORITE", "ALBUM_PENDING", "ALBUM_CONTEST_PENDING", "ALBUM_APPROVED", "ALBUM_CONTEST_APPROVED", "ALBUM_FEATURED", "ALBUM_CONTEST_FEATURED", "ALBUM_NEW", "ALBUM_CONTEST_NEW", "ALBUM_ASSETS_ADDED", "COLLECTION_ASSETS_ADDED", "ALBUM_PHOTOS_ADDED", "ALBUM_CONTEST_ALBUM_ADD", "CHALLENGE", "EARN_COMMISSION_TICKETS", "FRIEND_REQUESTED", "FRIEND_REQUEST_ACCEPTED", "FRIEND_REQUEST_REJECTED", "FRIEND_REMOVED", "FRIEND_ADDED", "FOLLOW", "PURCHASE_ITEM_GIFTED", "PROFILE_PROXIMITY", "CUSTOM", "ADMIN", "INVOICE", "SUGGESTIONS_SUMMARY", "SUGGESTIONS_LINK", "EVENT_ATTENDANCE", "EVENTS_TODAY", "OFFER_CREATE", "EVENT_CREATE", "MATCH_WINNER", "MATCH_LOSER", "MATCH_TIE", "MATCH_TIE_WINNER", "MATCH_TIE_LOSER", "TOURNAMENT_REFUND", "TOURNAMENT_WON", "TOURNAMENT_WINNER", "ROUND_START_SOON", "ROUND_END_SOON", "ROUND_WINNER", "ROUND_SCORED" };
    return blocked_notificationsArray[blocked_notifications - 1];
}

sirqul_iot_platform_notification_settings_response_BLOCKEDNOTIFICATIONS_e notification_settings_response_blocked_notifications_FromString(char* blocked_notifications) {
    int stringToReturn = 0;
    char *blocked_notificationsArray[] =  { "NULL", "REASSIGNMENT_REQUEST", "FEEDBACK", "SUGGESTION_RECEIVED", "ASSIGNMENT_CHANGE", "WELCOME_PARTNER", "WELCOME_BUSINESS", "PARTNER_INVITE", "PARTNER_EXISTING_INVITE", "PARTNER_CODE_INVITE", "BATCH_REPORT_FINISHED", "WELCOME_BY_APP", "VALIDATE_MEMBER", "NEW_SIGNUP", "VOUCHER_PURCHASED", "PENDING_MISSION_REVIEW", "SEND_APP_KEYS", "RESET_PASSWORD", "PASSWORD_CHANGED", "OFFER_24HR_EXPIRE_RETAILER", "OFFER_24HR_EXPIRE_CONSUMER", "DOWNLOADED_APP", "LEVEL_COMPLETED", "LEVEL_CREATED", "ALBUM_LIKE", "ALBUM_CONTEST_LIKE", "ASSET_LIKE", "COLLECTION_LIKE", "ACCOUNT_LIKE", "NOTE_LIKE", "GAME_LEVEL_LIKE", "LIKE", "ALBUM_DISLIKE", "ALBUM_CONTEST_DISLIKE", "ASSET_DISLIKE", "COLLECTION_DISLIKE", "ACCOUNT_DISLIKE", "NOTE_DISLIKE", "GAME_LEVEL_DISLIKE", "ALBUM_NOTE", "ALBUM_CONTEST_NOTE", "ASSET_NOTE", "COLLECTION_NOTE", "GAME_LEVEL_NOTE", "COMMENT", "ALBUM_SHARED", "ALBUM_CONTEST_SHARED", "COLLECTION_SHARED", "EVENT_SHARED", "RETAILER_LOCATION_SHARED", "ANONYMOUS_ALBUM_SHARED", "OFFER_FAVORITE", "OFFER_LOCATION_FAVORITE", "RETAILER_LOCATION_FAVORITE", "ALBUM_FAVORITE", "CATEGORY_FAVORITE", "ALBUM_PENDING", "ALBUM_CONTEST_PENDING", "ALBUM_APPROVED", "ALBUM_CONTEST_APPROVED", "ALBUM_FEATURED", "ALBUM_CONTEST_FEATURED", "ALBUM_NEW", "ALBUM_CONTEST_NEW", "ALBUM_ASSETS_ADDED", "COLLECTION_ASSETS_ADDED", "ALBUM_PHOTOS_ADDED", "ALBUM_CONTEST_ALBUM_ADD", "CHALLENGE", "EARN_COMMISSION_TICKETS", "FRIEND_REQUESTED", "FRIEND_REQUEST_ACCEPTED", "FRIEND_REQUEST_REJECTED", "FRIEND_REMOVED", "FRIEND_ADDED", "FOLLOW", "PURCHASE_ITEM_GIFTED", "PROFILE_PROXIMITY", "CUSTOM", "ADMIN", "INVOICE", "SUGGESTIONS_SUMMARY", "SUGGESTIONS_LINK", "EVENT_ATTENDANCE", "EVENTS_TODAY", "OFFER_CREATE", "EVENT_CREATE", "MATCH_WINNER", "MATCH_LOSER", "MATCH_TIE", "MATCH_TIE_WINNER", "MATCH_TIE_LOSER", "TOURNAMENT_REFUND", "TOURNAMENT_WON", "TOURNAMENT_WINNER", "ROUND_START_SOON", "ROUND_END_SOON", "ROUND_WINNER", "ROUND_SCORED" };
    size_t sizeofArray = sizeof(blocked_notificationsArray) / sizeof(blocked_notificationsArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(blocked_notifications, blocked_notificationsArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

static notification_settings_response_t *notification_settings_response_create_internal(
    list_t *blocked_notifications
    ) {
    notification_settings_response_t *notification_settings_response_local_var = malloc(sizeof(notification_settings_response_t));
    if (!notification_settings_response_local_var) {
        return NULL;
    }
    notification_settings_response_local_var->blocked_notifications = blocked_notifications;

    notification_settings_response_local_var->_library_owned = 1;
    return notification_settings_response_local_var;
}

__attribute__((deprecated)) notification_settings_response_t *notification_settings_response_create(
    list_t *blocked_notifications
    ) {
    return notification_settings_response_create_internal (
        blocked_notifications
        );
}

void notification_settings_response_free(notification_settings_response_t *notification_settings_response) {
    if(NULL == notification_settings_response){
        return ;
    }
    if(notification_settings_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "notification_settings_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (notification_settings_response->blocked_notifications) {
        list_ForEach(listEntry, notification_settings_response->blocked_notifications) {
            free(listEntry->data);
        }
        list_freeList(notification_settings_response->blocked_notifications);
        notification_settings_response->blocked_notifications = NULL;
    }
    free(notification_settings_response);
}

cJSON *notification_settings_response_convertToJSON(notification_settings_response_t *notification_settings_response) {
    cJSON *item = cJSON_CreateObject();

    // notification_settings_response->blocked_notifications
    if(notification_settings_response->blocked_notifications != sirqul_iot_platform_notification_settings_response_BLOCKEDNOTIFICATIONS_NULL) {
    cJSON *blocked_notifications = cJSON_AddArrayToObject(item, "blockedNotifications");
    if(blocked_notifications == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *blocked_notificationsListEntry;
    list_ForEach(blocked_notificationsListEntry, notification_settings_response->blocked_notifications) {
    if(cJSON_AddStringToObject(blocked_notifications, "", blocked_notificationsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

notification_settings_response_t *notification_settings_response_parseFromJSON(cJSON *notification_settings_responseJSON){

    notification_settings_response_t *notification_settings_response_local_var = NULL;

    // define the local list for notification_settings_response->blocked_notifications
    list_t *blocked_notificationsList = NULL;

    // notification_settings_response->blocked_notifications
    cJSON *blocked_notifications = cJSON_GetObjectItemCaseSensitive(notification_settings_responseJSON, "blockedNotifications");
    if (cJSON_IsNull(blocked_notifications)) {
        blocked_notifications = NULL;
    }
    if (blocked_notifications) { 
    cJSON *blocked_notifications_local = NULL;
    if(!cJSON_IsArray(blocked_notifications)) {
        goto end;//primitive container
    }
    blocked_notificationsList = list_createList();

    cJSON_ArrayForEach(blocked_notifications_local, blocked_notifications)
    {
        if(!cJSON_IsString(blocked_notifications_local))
        {
            goto end;
        }
        list_addElement(blocked_notificationsList , strdup(blocked_notifications_local->valuestring));
    }
    }


    notification_settings_response_local_var = notification_settings_response_create_internal (
        blocked_notifications ? blocked_notificationsList : NULL
        );

    return notification_settings_response_local_var;
end:
    if (blocked_notificationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, blocked_notificationsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(blocked_notificationsList);
        blocked_notificationsList = NULL;
    }
    return NULL;

}
