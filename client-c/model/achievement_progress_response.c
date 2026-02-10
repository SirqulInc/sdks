#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "achievement_progress_response.h"



static achievement_progress_response_t *achievement_progress_response_create_internal(
    long achievement_id,
    long achievement_tier_id,
    char *title,
    char *description,
    asset_short_response_t *icon,
    int completed,
    long progress_count,
    long goal_count,
    long date_updated
    ) {
    achievement_progress_response_t *achievement_progress_response_local_var = malloc(sizeof(achievement_progress_response_t));
    if (!achievement_progress_response_local_var) {
        return NULL;
    }
    achievement_progress_response_local_var->achievement_id = achievement_id;
    achievement_progress_response_local_var->achievement_tier_id = achievement_tier_id;
    achievement_progress_response_local_var->title = title;
    achievement_progress_response_local_var->description = description;
    achievement_progress_response_local_var->icon = icon;
    achievement_progress_response_local_var->completed = completed;
    achievement_progress_response_local_var->progress_count = progress_count;
    achievement_progress_response_local_var->goal_count = goal_count;
    achievement_progress_response_local_var->date_updated = date_updated;

    achievement_progress_response_local_var->_library_owned = 1;
    return achievement_progress_response_local_var;
}

__attribute__((deprecated)) achievement_progress_response_t *achievement_progress_response_create(
    long achievement_id,
    long achievement_tier_id,
    char *title,
    char *description,
    asset_short_response_t *icon,
    int completed,
    long progress_count,
    long goal_count,
    long date_updated
    ) {
    return achievement_progress_response_create_internal (
        achievement_id,
        achievement_tier_id,
        title,
        description,
        icon,
        completed,
        progress_count,
        goal_count,
        date_updated
        );
}

void achievement_progress_response_free(achievement_progress_response_t *achievement_progress_response) {
    if(NULL == achievement_progress_response){
        return ;
    }
    if(achievement_progress_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "achievement_progress_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (achievement_progress_response->title) {
        free(achievement_progress_response->title);
        achievement_progress_response->title = NULL;
    }
    if (achievement_progress_response->description) {
        free(achievement_progress_response->description);
        achievement_progress_response->description = NULL;
    }
    if (achievement_progress_response->icon) {
        asset_short_response_free(achievement_progress_response->icon);
        achievement_progress_response->icon = NULL;
    }
    free(achievement_progress_response);
}

cJSON *achievement_progress_response_convertToJSON(achievement_progress_response_t *achievement_progress_response) {
    cJSON *item = cJSON_CreateObject();

    // achievement_progress_response->achievement_id
    if(achievement_progress_response->achievement_id) {
    if(cJSON_AddNumberToObject(item, "achievementId", achievement_progress_response->achievement_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_progress_response->achievement_tier_id
    if(achievement_progress_response->achievement_tier_id) {
    if(cJSON_AddNumberToObject(item, "achievementTierId", achievement_progress_response->achievement_tier_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_progress_response->title
    if(achievement_progress_response->title) {
    if(cJSON_AddStringToObject(item, "title", achievement_progress_response->title) == NULL) {
    goto fail; //String
    }
    }


    // achievement_progress_response->description
    if(achievement_progress_response->description) {
    if(cJSON_AddStringToObject(item, "description", achievement_progress_response->description) == NULL) {
    goto fail; //String
    }
    }


    // achievement_progress_response->icon
    if(achievement_progress_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(achievement_progress_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // achievement_progress_response->completed
    if(achievement_progress_response->completed) {
    if(cJSON_AddBoolToObject(item, "completed", achievement_progress_response->completed) == NULL) {
    goto fail; //Bool
    }
    }


    // achievement_progress_response->progress_count
    if(achievement_progress_response->progress_count) {
    if(cJSON_AddNumberToObject(item, "progressCount", achievement_progress_response->progress_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_progress_response->goal_count
    if(achievement_progress_response->goal_count) {
    if(cJSON_AddNumberToObject(item, "goalCount", achievement_progress_response->goal_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_progress_response->date_updated
    if(achievement_progress_response->date_updated) {
    if(cJSON_AddNumberToObject(item, "dateUpdated", achievement_progress_response->date_updated) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

achievement_progress_response_t *achievement_progress_response_parseFromJSON(cJSON *achievement_progress_responseJSON){

    achievement_progress_response_t *achievement_progress_response_local_var = NULL;

    // define the local variable for achievement_progress_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // achievement_progress_response->achievement_id
    cJSON *achievement_id = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "achievementId");
    if (cJSON_IsNull(achievement_id)) {
        achievement_id = NULL;
    }
    if (achievement_id) { 
    if(!cJSON_IsNumber(achievement_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_progress_response->achievement_tier_id
    cJSON *achievement_tier_id = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "achievementTierId");
    if (cJSON_IsNull(achievement_tier_id)) {
        achievement_tier_id = NULL;
    }
    if (achievement_tier_id) { 
    if(!cJSON_IsNumber(achievement_tier_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_progress_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // achievement_progress_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // achievement_progress_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // achievement_progress_response->completed
    cJSON *completed = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "completed");
    if (cJSON_IsNull(completed)) {
        completed = NULL;
    }
    if (completed) { 
    if(!cJSON_IsBool(completed))
    {
    goto end; //Bool
    }
    }

    // achievement_progress_response->progress_count
    cJSON *progress_count = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "progressCount");
    if (cJSON_IsNull(progress_count)) {
        progress_count = NULL;
    }
    if (progress_count) { 
    if(!cJSON_IsNumber(progress_count))
    {
    goto end; //Numeric
    }
    }

    // achievement_progress_response->goal_count
    cJSON *goal_count = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "goalCount");
    if (cJSON_IsNull(goal_count)) {
        goal_count = NULL;
    }
    if (goal_count) { 
    if(!cJSON_IsNumber(goal_count))
    {
    goto end; //Numeric
    }
    }

    // achievement_progress_response->date_updated
    cJSON *date_updated = cJSON_GetObjectItemCaseSensitive(achievement_progress_responseJSON, "dateUpdated");
    if (cJSON_IsNull(date_updated)) {
        date_updated = NULL;
    }
    if (date_updated) { 
    if(!cJSON_IsNumber(date_updated))
    {
    goto end; //Numeric
    }
    }


    achievement_progress_response_local_var = achievement_progress_response_create_internal (
        achievement_id ? achievement_id->valuedouble : 0,
        achievement_tier_id ? achievement_tier_id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        icon ? icon_local_nonprim : NULL,
        completed ? completed->valueint : 0,
        progress_count ? progress_count->valuedouble : 0,
        goal_count ? goal_count->valuedouble : 0,
        date_updated ? date_updated->valuedouble : 0
        );

    return achievement_progress_response_local_var;
end:
    if (icon_local_nonprim) {
        asset_short_response_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    return NULL;

}
