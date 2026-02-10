#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "notification_message_response.h"



static notification_message_response_t *notification_message_response_create_internal(
    account_short_response_t *sender,
    char *event,
    char *notification_message,
    long created,
    int has_read,
    long content_id,
    char *content_type,
    char *content_name,
    long parent_id,
    char *parent_type,
    char *action_category,
    char *thumbnail_url,
    char *cover_url
    ) {
    notification_message_response_t *notification_message_response_local_var = malloc(sizeof(notification_message_response_t));
    if (!notification_message_response_local_var) {
        return NULL;
    }
    notification_message_response_local_var->sender = sender;
    notification_message_response_local_var->event = event;
    notification_message_response_local_var->notification_message = notification_message;
    notification_message_response_local_var->created = created;
    notification_message_response_local_var->has_read = has_read;
    notification_message_response_local_var->content_id = content_id;
    notification_message_response_local_var->content_type = content_type;
    notification_message_response_local_var->content_name = content_name;
    notification_message_response_local_var->parent_id = parent_id;
    notification_message_response_local_var->parent_type = parent_type;
    notification_message_response_local_var->action_category = action_category;
    notification_message_response_local_var->thumbnail_url = thumbnail_url;
    notification_message_response_local_var->cover_url = cover_url;

    notification_message_response_local_var->_library_owned = 1;
    return notification_message_response_local_var;
}

__attribute__((deprecated)) notification_message_response_t *notification_message_response_create(
    account_short_response_t *sender,
    char *event,
    char *notification_message,
    long created,
    int has_read,
    long content_id,
    char *content_type,
    char *content_name,
    long parent_id,
    char *parent_type,
    char *action_category,
    char *thumbnail_url,
    char *cover_url
    ) {
    return notification_message_response_create_internal (
        sender,
        event,
        notification_message,
        created,
        has_read,
        content_id,
        content_type,
        content_name,
        parent_id,
        parent_type,
        action_category,
        thumbnail_url,
        cover_url
        );
}

void notification_message_response_free(notification_message_response_t *notification_message_response) {
    if(NULL == notification_message_response){
        return ;
    }
    if(notification_message_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "notification_message_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (notification_message_response->sender) {
        account_short_response_free(notification_message_response->sender);
        notification_message_response->sender = NULL;
    }
    if (notification_message_response->event) {
        free(notification_message_response->event);
        notification_message_response->event = NULL;
    }
    if (notification_message_response->notification_message) {
        free(notification_message_response->notification_message);
        notification_message_response->notification_message = NULL;
    }
    if (notification_message_response->content_type) {
        free(notification_message_response->content_type);
        notification_message_response->content_type = NULL;
    }
    if (notification_message_response->content_name) {
        free(notification_message_response->content_name);
        notification_message_response->content_name = NULL;
    }
    if (notification_message_response->parent_type) {
        free(notification_message_response->parent_type);
        notification_message_response->parent_type = NULL;
    }
    if (notification_message_response->action_category) {
        free(notification_message_response->action_category);
        notification_message_response->action_category = NULL;
    }
    if (notification_message_response->thumbnail_url) {
        free(notification_message_response->thumbnail_url);
        notification_message_response->thumbnail_url = NULL;
    }
    if (notification_message_response->cover_url) {
        free(notification_message_response->cover_url);
        notification_message_response->cover_url = NULL;
    }
    free(notification_message_response);
}

cJSON *notification_message_response_convertToJSON(notification_message_response_t *notification_message_response) {
    cJSON *item = cJSON_CreateObject();

    // notification_message_response->sender
    if(notification_message_response->sender) {
    cJSON *sender_local_JSON = account_short_response_convertToJSON(notification_message_response->sender);
    if(sender_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "sender", sender_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // notification_message_response->event
    if(notification_message_response->event) {
    if(cJSON_AddStringToObject(item, "event", notification_message_response->event) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_response->notification_message
    if(notification_message_response->notification_message) {
    if(cJSON_AddStringToObject(item, "notificationMessage", notification_message_response->notification_message) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_response->created
    if(notification_message_response->created) {
    if(cJSON_AddNumberToObject(item, "created", notification_message_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_message_response->has_read
    if(notification_message_response->has_read) {
    if(cJSON_AddBoolToObject(item, "hasRead", notification_message_response->has_read) == NULL) {
    goto fail; //Bool
    }
    }


    // notification_message_response->content_id
    if(notification_message_response->content_id) {
    if(cJSON_AddNumberToObject(item, "contentId", notification_message_response->content_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_message_response->content_type
    if(notification_message_response->content_type) {
    if(cJSON_AddStringToObject(item, "contentType", notification_message_response->content_type) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_response->content_name
    if(notification_message_response->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", notification_message_response->content_name) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_response->parent_id
    if(notification_message_response->parent_id) {
    if(cJSON_AddNumberToObject(item, "parentId", notification_message_response->parent_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_message_response->parent_type
    if(notification_message_response->parent_type) {
    if(cJSON_AddStringToObject(item, "parentType", notification_message_response->parent_type) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_response->action_category
    if(notification_message_response->action_category) {
    if(cJSON_AddStringToObject(item, "actionCategory", notification_message_response->action_category) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_response->thumbnail_url
    if(notification_message_response->thumbnail_url) {
    if(cJSON_AddStringToObject(item, "thumbnailURL", notification_message_response->thumbnail_url) == NULL) {
    goto fail; //String
    }
    }


    // notification_message_response->cover_url
    if(notification_message_response->cover_url) {
    if(cJSON_AddStringToObject(item, "coverURL", notification_message_response->cover_url) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

notification_message_response_t *notification_message_response_parseFromJSON(cJSON *notification_message_responseJSON){

    notification_message_response_t *notification_message_response_local_var = NULL;

    // define the local variable for notification_message_response->sender
    account_short_response_t *sender_local_nonprim = NULL;

    // notification_message_response->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "sender");
    if (cJSON_IsNull(sender)) {
        sender = NULL;
    }
    if (sender) { 
    sender_local_nonprim = account_short_response_parseFromJSON(sender); //nonprimitive
    }

    // notification_message_response->event
    cJSON *event = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "event");
    if (cJSON_IsNull(event)) {
        event = NULL;
    }
    if (event) { 
    if(!cJSON_IsString(event) && !cJSON_IsNull(event))
    {
    goto end; //String
    }
    }

    // notification_message_response->notification_message
    cJSON *notification_message = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "notificationMessage");
    if (cJSON_IsNull(notification_message)) {
        notification_message = NULL;
    }
    if (notification_message) { 
    if(!cJSON_IsString(notification_message) && !cJSON_IsNull(notification_message))
    {
    goto end; //String
    }
    }

    // notification_message_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // notification_message_response->has_read
    cJSON *has_read = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "hasRead");
    if (cJSON_IsNull(has_read)) {
        has_read = NULL;
    }
    if (has_read) { 
    if(!cJSON_IsBool(has_read))
    {
    goto end; //Bool
    }
    }

    // notification_message_response->content_id
    cJSON *content_id = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "contentId");
    if (cJSON_IsNull(content_id)) {
        content_id = NULL;
    }
    if (content_id) { 
    if(!cJSON_IsNumber(content_id))
    {
    goto end; //Numeric
    }
    }

    // notification_message_response->content_type
    cJSON *content_type = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "contentType");
    if (cJSON_IsNull(content_type)) {
        content_type = NULL;
    }
    if (content_type) { 
    if(!cJSON_IsString(content_type) && !cJSON_IsNull(content_type))
    {
    goto end; //String
    }
    }

    // notification_message_response->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // notification_message_response->parent_id
    cJSON *parent_id = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "parentId");
    if (cJSON_IsNull(parent_id)) {
        parent_id = NULL;
    }
    if (parent_id) { 
    if(!cJSON_IsNumber(parent_id))
    {
    goto end; //Numeric
    }
    }

    // notification_message_response->parent_type
    cJSON *parent_type = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "parentType");
    if (cJSON_IsNull(parent_type)) {
        parent_type = NULL;
    }
    if (parent_type) { 
    if(!cJSON_IsString(parent_type) && !cJSON_IsNull(parent_type))
    {
    goto end; //String
    }
    }

    // notification_message_response->action_category
    cJSON *action_category = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "actionCategory");
    if (cJSON_IsNull(action_category)) {
        action_category = NULL;
    }
    if (action_category) { 
    if(!cJSON_IsString(action_category) && !cJSON_IsNull(action_category))
    {
    goto end; //String
    }
    }

    // notification_message_response->thumbnail_url
    cJSON *thumbnail_url = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "thumbnailURL");
    if (cJSON_IsNull(thumbnail_url)) {
        thumbnail_url = NULL;
    }
    if (thumbnail_url) { 
    if(!cJSON_IsString(thumbnail_url) && !cJSON_IsNull(thumbnail_url))
    {
    goto end; //String
    }
    }

    // notification_message_response->cover_url
    cJSON *cover_url = cJSON_GetObjectItemCaseSensitive(notification_message_responseJSON, "coverURL");
    if (cJSON_IsNull(cover_url)) {
        cover_url = NULL;
    }
    if (cover_url) { 
    if(!cJSON_IsString(cover_url) && !cJSON_IsNull(cover_url))
    {
    goto end; //String
    }
    }


    notification_message_response_local_var = notification_message_response_create_internal (
        sender ? sender_local_nonprim : NULL,
        event && !cJSON_IsNull(event) ? strdup(event->valuestring) : NULL,
        notification_message && !cJSON_IsNull(notification_message) ? strdup(notification_message->valuestring) : NULL,
        created ? created->valuedouble : 0,
        has_read ? has_read->valueint : 0,
        content_id ? content_id->valuedouble : 0,
        content_type && !cJSON_IsNull(content_type) ? strdup(content_type->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        parent_id ? parent_id->valuedouble : 0,
        parent_type && !cJSON_IsNull(parent_type) ? strdup(parent_type->valuestring) : NULL,
        action_category && !cJSON_IsNull(action_category) ? strdup(action_category->valuestring) : NULL,
        thumbnail_url && !cJSON_IsNull(thumbnail_url) ? strdup(thumbnail_url->valuestring) : NULL,
        cover_url && !cJSON_IsNull(cover_url) ? strdup(cover_url->valuestring) : NULL
        );

    return notification_message_response_local_var;
end:
    if (sender_local_nonprim) {
        account_short_response_free(sender_local_nonprim);
        sender_local_nonprim = NULL;
    }
    return NULL;

}
