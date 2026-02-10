#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "blocked_notification_response.h"



static blocked_notification_response_t *blocked_notification_response_create_internal(
    long blocked_notification_id,
    long created,
    char *event,
    char *conduit,
    char *custom_type,
    char *content_type,
    long content_id,
    char *search_tags,
    int blocked,
    int deleted
    ) {
    blocked_notification_response_t *blocked_notification_response_local_var = malloc(sizeof(blocked_notification_response_t));
    if (!blocked_notification_response_local_var) {
        return NULL;
    }
    blocked_notification_response_local_var->blocked_notification_id = blocked_notification_id;
    blocked_notification_response_local_var->created = created;
    blocked_notification_response_local_var->event = event;
    blocked_notification_response_local_var->conduit = conduit;
    blocked_notification_response_local_var->custom_type = custom_type;
    blocked_notification_response_local_var->content_type = content_type;
    blocked_notification_response_local_var->content_id = content_id;
    blocked_notification_response_local_var->search_tags = search_tags;
    blocked_notification_response_local_var->blocked = blocked;
    blocked_notification_response_local_var->deleted = deleted;

    blocked_notification_response_local_var->_library_owned = 1;
    return blocked_notification_response_local_var;
}

__attribute__((deprecated)) blocked_notification_response_t *blocked_notification_response_create(
    long blocked_notification_id,
    long created,
    char *event,
    char *conduit,
    char *custom_type,
    char *content_type,
    long content_id,
    char *search_tags,
    int blocked,
    int deleted
    ) {
    return blocked_notification_response_create_internal (
        blocked_notification_id,
        created,
        event,
        conduit,
        custom_type,
        content_type,
        content_id,
        search_tags,
        blocked,
        deleted
        );
}

void blocked_notification_response_free(blocked_notification_response_t *blocked_notification_response) {
    if(NULL == blocked_notification_response){
        return ;
    }
    if(blocked_notification_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "blocked_notification_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (blocked_notification_response->event) {
        free(blocked_notification_response->event);
        blocked_notification_response->event = NULL;
    }
    if (blocked_notification_response->conduit) {
        free(blocked_notification_response->conduit);
        blocked_notification_response->conduit = NULL;
    }
    if (blocked_notification_response->custom_type) {
        free(blocked_notification_response->custom_type);
        blocked_notification_response->custom_type = NULL;
    }
    if (blocked_notification_response->content_type) {
        free(blocked_notification_response->content_type);
        blocked_notification_response->content_type = NULL;
    }
    if (blocked_notification_response->search_tags) {
        free(blocked_notification_response->search_tags);
        blocked_notification_response->search_tags = NULL;
    }
    free(blocked_notification_response);
}

cJSON *blocked_notification_response_convertToJSON(blocked_notification_response_t *blocked_notification_response) {
    cJSON *item = cJSON_CreateObject();

    // blocked_notification_response->blocked_notification_id
    if(blocked_notification_response->blocked_notification_id) {
    if(cJSON_AddNumberToObject(item, "blockedNotificationId", blocked_notification_response->blocked_notification_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // blocked_notification_response->created
    if(blocked_notification_response->created) {
    if(cJSON_AddNumberToObject(item, "created", blocked_notification_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // blocked_notification_response->event
    if(blocked_notification_response->event) {
    if(cJSON_AddStringToObject(item, "event", blocked_notification_response->event) == NULL) {
    goto fail; //String
    }
    }


    // blocked_notification_response->conduit
    if(blocked_notification_response->conduit) {
    if(cJSON_AddStringToObject(item, "conduit", blocked_notification_response->conduit) == NULL) {
    goto fail; //String
    }
    }


    // blocked_notification_response->custom_type
    if(blocked_notification_response->custom_type) {
    if(cJSON_AddStringToObject(item, "customType", blocked_notification_response->custom_type) == NULL) {
    goto fail; //String
    }
    }


    // blocked_notification_response->content_type
    if(blocked_notification_response->content_type) {
    if(cJSON_AddStringToObject(item, "contentType", blocked_notification_response->content_type) == NULL) {
    goto fail; //String
    }
    }


    // blocked_notification_response->content_id
    if(blocked_notification_response->content_id) {
    if(cJSON_AddNumberToObject(item, "contentId", blocked_notification_response->content_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // blocked_notification_response->search_tags
    if(blocked_notification_response->search_tags) {
    if(cJSON_AddStringToObject(item, "searchTags", blocked_notification_response->search_tags) == NULL) {
    goto fail; //String
    }
    }


    // blocked_notification_response->blocked
    if(blocked_notification_response->blocked) {
    if(cJSON_AddBoolToObject(item, "blocked", blocked_notification_response->blocked) == NULL) {
    goto fail; //Bool
    }
    }


    // blocked_notification_response->deleted
    if(blocked_notification_response->deleted) {
    if(cJSON_AddBoolToObject(item, "deleted", blocked_notification_response->deleted) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

blocked_notification_response_t *blocked_notification_response_parseFromJSON(cJSON *blocked_notification_responseJSON){

    blocked_notification_response_t *blocked_notification_response_local_var = NULL;

    // blocked_notification_response->blocked_notification_id
    cJSON *blocked_notification_id = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "blockedNotificationId");
    if (cJSON_IsNull(blocked_notification_id)) {
        blocked_notification_id = NULL;
    }
    if (blocked_notification_id) { 
    if(!cJSON_IsNumber(blocked_notification_id))
    {
    goto end; //Numeric
    }
    }

    // blocked_notification_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // blocked_notification_response->event
    cJSON *event = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "event");
    if (cJSON_IsNull(event)) {
        event = NULL;
    }
    if (event) { 
    if(!cJSON_IsString(event) && !cJSON_IsNull(event))
    {
    goto end; //String
    }
    }

    // blocked_notification_response->conduit
    cJSON *conduit = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "conduit");
    if (cJSON_IsNull(conduit)) {
        conduit = NULL;
    }
    if (conduit) { 
    if(!cJSON_IsString(conduit) && !cJSON_IsNull(conduit))
    {
    goto end; //String
    }
    }

    // blocked_notification_response->custom_type
    cJSON *custom_type = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "customType");
    if (cJSON_IsNull(custom_type)) {
        custom_type = NULL;
    }
    if (custom_type) { 
    if(!cJSON_IsString(custom_type) && !cJSON_IsNull(custom_type))
    {
    goto end; //String
    }
    }

    // blocked_notification_response->content_type
    cJSON *content_type = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "contentType");
    if (cJSON_IsNull(content_type)) {
        content_type = NULL;
    }
    if (content_type) { 
    if(!cJSON_IsString(content_type) && !cJSON_IsNull(content_type))
    {
    goto end; //String
    }
    }

    // blocked_notification_response->content_id
    cJSON *content_id = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "contentId");
    if (cJSON_IsNull(content_id)) {
        content_id = NULL;
    }
    if (content_id) { 
    if(!cJSON_IsNumber(content_id))
    {
    goto end; //Numeric
    }
    }

    // blocked_notification_response->search_tags
    cJSON *search_tags = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "searchTags");
    if (cJSON_IsNull(search_tags)) {
        search_tags = NULL;
    }
    if (search_tags) { 
    if(!cJSON_IsString(search_tags) && !cJSON_IsNull(search_tags))
    {
    goto end; //String
    }
    }

    // blocked_notification_response->blocked
    cJSON *blocked = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "blocked");
    if (cJSON_IsNull(blocked)) {
        blocked = NULL;
    }
    if (blocked) { 
    if(!cJSON_IsBool(blocked))
    {
    goto end; //Bool
    }
    }

    // blocked_notification_response->deleted
    cJSON *deleted = cJSON_GetObjectItemCaseSensitive(blocked_notification_responseJSON, "deleted");
    if (cJSON_IsNull(deleted)) {
        deleted = NULL;
    }
    if (deleted) { 
    if(!cJSON_IsBool(deleted))
    {
    goto end; //Bool
    }
    }


    blocked_notification_response_local_var = blocked_notification_response_create_internal (
        blocked_notification_id ? blocked_notification_id->valuedouble : 0,
        created ? created->valuedouble : 0,
        event && !cJSON_IsNull(event) ? strdup(event->valuestring) : NULL,
        conduit && !cJSON_IsNull(conduit) ? strdup(conduit->valuestring) : NULL,
        custom_type && !cJSON_IsNull(custom_type) ? strdup(custom_type->valuestring) : NULL,
        content_type && !cJSON_IsNull(content_type) ? strdup(content_type->valuestring) : NULL,
        content_id ? content_id->valuedouble : 0,
        search_tags && !cJSON_IsNull(search_tags) ? strdup(search_tags->valuestring) : NULL,
        blocked ? blocked->valueint : 0,
        deleted ? deleted->valueint : 0
        );

    return blocked_notification_response_local_var;
end:
    return NULL;

}
