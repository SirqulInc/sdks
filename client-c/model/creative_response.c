#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "creative_response.h"



static creative_response_t *creative_response_create_internal(
    long creative_id,
    int active,
    char *name,
    char *description,
    asset_short_response_t *image,
    char *action,
    json_element_t *content,
    char *suffix,
    char *type,
    char *app_version,
    int preview,
    account_short_response_t *owner,
    bid_response_t *current_bid
    ) {
    creative_response_t *creative_response_local_var = malloc(sizeof(creative_response_t));
    if (!creative_response_local_var) {
        return NULL;
    }
    creative_response_local_var->creative_id = creative_id;
    creative_response_local_var->active = active;
    creative_response_local_var->name = name;
    creative_response_local_var->description = description;
    creative_response_local_var->image = image;
    creative_response_local_var->action = action;
    creative_response_local_var->content = content;
    creative_response_local_var->suffix = suffix;
    creative_response_local_var->type = type;
    creative_response_local_var->app_version = app_version;
    creative_response_local_var->preview = preview;
    creative_response_local_var->owner = owner;
    creative_response_local_var->current_bid = current_bid;

    creative_response_local_var->_library_owned = 1;
    return creative_response_local_var;
}

__attribute__((deprecated)) creative_response_t *creative_response_create(
    long creative_id,
    int active,
    char *name,
    char *description,
    asset_short_response_t *image,
    char *action,
    json_element_t *content,
    char *suffix,
    char *type,
    char *app_version,
    int preview,
    account_short_response_t *owner,
    bid_response_t *current_bid
    ) {
    return creative_response_create_internal (
        creative_id,
        active,
        name,
        description,
        image,
        action,
        content,
        suffix,
        type,
        app_version,
        preview,
        owner,
        current_bid
        );
}

void creative_response_free(creative_response_t *creative_response) {
    if(NULL == creative_response){
        return ;
    }
    if(creative_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "creative_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (creative_response->name) {
        free(creative_response->name);
        creative_response->name = NULL;
    }
    if (creative_response->description) {
        free(creative_response->description);
        creative_response->description = NULL;
    }
    if (creative_response->image) {
        asset_short_response_free(creative_response->image);
        creative_response->image = NULL;
    }
    if (creative_response->action) {
        free(creative_response->action);
        creative_response->action = NULL;
    }
    if (creative_response->content) {
        json_element_free(creative_response->content);
        creative_response->content = NULL;
    }
    if (creative_response->suffix) {
        free(creative_response->suffix);
        creative_response->suffix = NULL;
    }
    if (creative_response->type) {
        free(creative_response->type);
        creative_response->type = NULL;
    }
    if (creative_response->app_version) {
        free(creative_response->app_version);
        creative_response->app_version = NULL;
    }
    if (creative_response->owner) {
        account_short_response_free(creative_response->owner);
        creative_response->owner = NULL;
    }
    if (creative_response->current_bid) {
        bid_response_free(creative_response->current_bid);
        creative_response->current_bid = NULL;
    }
    free(creative_response);
}

cJSON *creative_response_convertToJSON(creative_response_t *creative_response) {
    cJSON *item = cJSON_CreateObject();

    // creative_response->creative_id
    if(creative_response->creative_id) {
    if(cJSON_AddNumberToObject(item, "creativeId", creative_response->creative_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // creative_response->active
    if(creative_response->active) {
    if(cJSON_AddBoolToObject(item, "active", creative_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // creative_response->name
    if(creative_response->name) {
    if(cJSON_AddStringToObject(item, "name", creative_response->name) == NULL) {
    goto fail; //String
    }
    }


    // creative_response->description
    if(creative_response->description) {
    if(cJSON_AddStringToObject(item, "description", creative_response->description) == NULL) {
    goto fail; //String
    }
    }


    // creative_response->image
    if(creative_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(creative_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // creative_response->action
    if(creative_response->action) {
    if(cJSON_AddStringToObject(item, "action", creative_response->action) == NULL) {
    goto fail; //String
    }
    }


    // creative_response->content
    if(creative_response->content) {
    cJSON *content_local_JSON = json_element_convertToJSON(creative_response->content);
    if(content_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "content", content_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // creative_response->suffix
    if(creative_response->suffix) {
    if(cJSON_AddStringToObject(item, "suffix", creative_response->suffix) == NULL) {
    goto fail; //String
    }
    }


    // creative_response->type
    if(creative_response->type) {
    if(cJSON_AddStringToObject(item, "type", creative_response->type) == NULL) {
    goto fail; //String
    }
    }


    // creative_response->app_version
    if(creative_response->app_version) {
    if(cJSON_AddStringToObject(item, "appVersion", creative_response->app_version) == NULL) {
    goto fail; //String
    }
    }


    // creative_response->preview
    if(creative_response->preview) {
    if(cJSON_AddBoolToObject(item, "preview", creative_response->preview) == NULL) {
    goto fail; //Bool
    }
    }


    // creative_response->owner
    if(creative_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(creative_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // creative_response->current_bid
    if(creative_response->current_bid) {
    cJSON *current_bid_local_JSON = bid_response_convertToJSON(creative_response->current_bid);
    if(current_bid_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "currentBid", current_bid_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

creative_response_t *creative_response_parseFromJSON(cJSON *creative_responseJSON){

    creative_response_t *creative_response_local_var = NULL;

    // define the local variable for creative_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // define the local variable for creative_response->content
    json_element_t *content_local_nonprim = NULL;

    // define the local variable for creative_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for creative_response->current_bid
    bid_response_t *current_bid_local_nonprim = NULL;

    // creative_response->creative_id
    cJSON *creative_id = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "creativeId");
    if (cJSON_IsNull(creative_id)) {
        creative_id = NULL;
    }
    if (creative_id) { 
    if(!cJSON_IsNumber(creative_id))
    {
    goto end; //Numeric
    }
    }

    // creative_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // creative_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // creative_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // creative_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // creative_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    if (action) { 
    if(!cJSON_IsString(action) && !cJSON_IsNull(action))
    {
    goto end; //String
    }
    }

    // creative_response->content
    cJSON *content = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "content");
    if (cJSON_IsNull(content)) {
        content = NULL;
    }
    if (content) { 
    content_local_nonprim = json_element_parseFromJSON(content); //nonprimitive
    }

    // creative_response->suffix
    cJSON *suffix = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "suffix");
    if (cJSON_IsNull(suffix)) {
        suffix = NULL;
    }
    if (suffix) { 
    if(!cJSON_IsString(suffix) && !cJSON_IsNull(suffix))
    {
    goto end; //String
    }
    }

    // creative_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // creative_response->app_version
    cJSON *app_version = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "appVersion");
    if (cJSON_IsNull(app_version)) {
        app_version = NULL;
    }
    if (app_version) { 
    if(!cJSON_IsString(app_version) && !cJSON_IsNull(app_version))
    {
    goto end; //String
    }
    }

    // creative_response->preview
    cJSON *preview = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "preview");
    if (cJSON_IsNull(preview)) {
        preview = NULL;
    }
    if (preview) { 
    if(!cJSON_IsBool(preview))
    {
    goto end; //Bool
    }
    }

    // creative_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // creative_response->current_bid
    cJSON *current_bid = cJSON_GetObjectItemCaseSensitive(creative_responseJSON, "currentBid");
    if (cJSON_IsNull(current_bid)) {
        current_bid = NULL;
    }
    if (current_bid) { 
    current_bid_local_nonprim = bid_response_parseFromJSON(current_bid); //nonprimitive
    }


    creative_response_local_var = creative_response_create_internal (
        creative_id ? creative_id->valuedouble : 0,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        image ? image_local_nonprim : NULL,
        action && !cJSON_IsNull(action) ? strdup(action->valuestring) : NULL,
        content ? content_local_nonprim : NULL,
        suffix && !cJSON_IsNull(suffix) ? strdup(suffix->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        app_version && !cJSON_IsNull(app_version) ? strdup(app_version->valuestring) : NULL,
        preview ? preview->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        current_bid ? current_bid_local_nonprim : NULL
        );

    return creative_response_local_var;
end:
    if (image_local_nonprim) {
        asset_short_response_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (content_local_nonprim) {
        json_element_free(content_local_nonprim);
        content_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (current_bid_local_nonprim) {
        bid_response_free(current_bid_local_nonprim);
        current_bid_local_nonprim = NULL;
    }
    return NULL;

}
