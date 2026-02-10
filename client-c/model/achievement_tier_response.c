#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "achievement_tier_response.h"



static achievement_tier_response_t *achievement_tier_response_create_internal(
    long achievement_tier_id,
    char *title,
    char *description,
    long goal_count,
    asset_short_response_t *icon,
    long mission_id,
    long game_id,
    long pack_id,
    long game_level_id,
    long game_object_id
    ) {
    achievement_tier_response_t *achievement_tier_response_local_var = malloc(sizeof(achievement_tier_response_t));
    if (!achievement_tier_response_local_var) {
        return NULL;
    }
    achievement_tier_response_local_var->achievement_tier_id = achievement_tier_id;
    achievement_tier_response_local_var->title = title;
    achievement_tier_response_local_var->description = description;
    achievement_tier_response_local_var->goal_count = goal_count;
    achievement_tier_response_local_var->icon = icon;
    achievement_tier_response_local_var->mission_id = mission_id;
    achievement_tier_response_local_var->game_id = game_id;
    achievement_tier_response_local_var->pack_id = pack_id;
    achievement_tier_response_local_var->game_level_id = game_level_id;
    achievement_tier_response_local_var->game_object_id = game_object_id;

    achievement_tier_response_local_var->_library_owned = 1;
    return achievement_tier_response_local_var;
}

__attribute__((deprecated)) achievement_tier_response_t *achievement_tier_response_create(
    long achievement_tier_id,
    char *title,
    char *description,
    long goal_count,
    asset_short_response_t *icon,
    long mission_id,
    long game_id,
    long pack_id,
    long game_level_id,
    long game_object_id
    ) {
    return achievement_tier_response_create_internal (
        achievement_tier_id,
        title,
        description,
        goal_count,
        icon,
        mission_id,
        game_id,
        pack_id,
        game_level_id,
        game_object_id
        );
}

void achievement_tier_response_free(achievement_tier_response_t *achievement_tier_response) {
    if(NULL == achievement_tier_response){
        return ;
    }
    if(achievement_tier_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "achievement_tier_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (achievement_tier_response->title) {
        free(achievement_tier_response->title);
        achievement_tier_response->title = NULL;
    }
    if (achievement_tier_response->description) {
        free(achievement_tier_response->description);
        achievement_tier_response->description = NULL;
    }
    if (achievement_tier_response->icon) {
        asset_short_response_free(achievement_tier_response->icon);
        achievement_tier_response->icon = NULL;
    }
    free(achievement_tier_response);
}

cJSON *achievement_tier_response_convertToJSON(achievement_tier_response_t *achievement_tier_response) {
    cJSON *item = cJSON_CreateObject();

    // achievement_tier_response->achievement_tier_id
    if(achievement_tier_response->achievement_tier_id) {
    if(cJSON_AddNumberToObject(item, "achievementTierId", achievement_tier_response->achievement_tier_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_tier_response->title
    if(achievement_tier_response->title) {
    if(cJSON_AddStringToObject(item, "title", achievement_tier_response->title) == NULL) {
    goto fail; //String
    }
    }


    // achievement_tier_response->description
    if(achievement_tier_response->description) {
    if(cJSON_AddStringToObject(item, "description", achievement_tier_response->description) == NULL) {
    goto fail; //String
    }
    }


    // achievement_tier_response->goal_count
    if(achievement_tier_response->goal_count) {
    if(cJSON_AddNumberToObject(item, "goalCount", achievement_tier_response->goal_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_tier_response->icon
    if(achievement_tier_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(achievement_tier_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // achievement_tier_response->mission_id
    if(achievement_tier_response->mission_id) {
    if(cJSON_AddNumberToObject(item, "missionId", achievement_tier_response->mission_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_tier_response->game_id
    if(achievement_tier_response->game_id) {
    if(cJSON_AddNumberToObject(item, "gameId", achievement_tier_response->game_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_tier_response->pack_id
    if(achievement_tier_response->pack_id) {
    if(cJSON_AddNumberToObject(item, "packId", achievement_tier_response->pack_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_tier_response->game_level_id
    if(achievement_tier_response->game_level_id) {
    if(cJSON_AddNumberToObject(item, "gameLevelId", achievement_tier_response->game_level_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_tier_response->game_object_id
    if(achievement_tier_response->game_object_id) {
    if(cJSON_AddNumberToObject(item, "gameObjectId", achievement_tier_response->game_object_id) == NULL) {
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

achievement_tier_response_t *achievement_tier_response_parseFromJSON(cJSON *achievement_tier_responseJSON){

    achievement_tier_response_t *achievement_tier_response_local_var = NULL;

    // define the local variable for achievement_tier_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // achievement_tier_response->achievement_tier_id
    cJSON *achievement_tier_id = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "achievementTierId");
    if (cJSON_IsNull(achievement_tier_id)) {
        achievement_tier_id = NULL;
    }
    if (achievement_tier_id) { 
    if(!cJSON_IsNumber(achievement_tier_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_tier_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // achievement_tier_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // achievement_tier_response->goal_count
    cJSON *goal_count = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "goalCount");
    if (cJSON_IsNull(goal_count)) {
        goal_count = NULL;
    }
    if (goal_count) { 
    if(!cJSON_IsNumber(goal_count))
    {
    goto end; //Numeric
    }
    }

    // achievement_tier_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // achievement_tier_response->mission_id
    cJSON *mission_id = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "missionId");
    if (cJSON_IsNull(mission_id)) {
        mission_id = NULL;
    }
    if (mission_id) { 
    if(!cJSON_IsNumber(mission_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_tier_response->game_id
    cJSON *game_id = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "gameId");
    if (cJSON_IsNull(game_id)) {
        game_id = NULL;
    }
    if (game_id) { 
    if(!cJSON_IsNumber(game_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_tier_response->pack_id
    cJSON *pack_id = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "packId");
    if (cJSON_IsNull(pack_id)) {
        pack_id = NULL;
    }
    if (pack_id) { 
    if(!cJSON_IsNumber(pack_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_tier_response->game_level_id
    cJSON *game_level_id = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "gameLevelId");
    if (cJSON_IsNull(game_level_id)) {
        game_level_id = NULL;
    }
    if (game_level_id) { 
    if(!cJSON_IsNumber(game_level_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_tier_response->game_object_id
    cJSON *game_object_id = cJSON_GetObjectItemCaseSensitive(achievement_tier_responseJSON, "gameObjectId");
    if (cJSON_IsNull(game_object_id)) {
        game_object_id = NULL;
    }
    if (game_object_id) { 
    if(!cJSON_IsNumber(game_object_id))
    {
    goto end; //Numeric
    }
    }


    achievement_tier_response_local_var = achievement_tier_response_create_internal (
        achievement_tier_id ? achievement_tier_id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        goal_count ? goal_count->valuedouble : 0,
        icon ? icon_local_nonprim : NULL,
        mission_id ? mission_id->valuedouble : 0,
        game_id ? game_id->valuedouble : 0,
        pack_id ? pack_id->valuedouble : 0,
        game_level_id ? game_level_id->valuedouble : 0,
        game_object_id ? game_object_id->valuedouble : 0
        );

    return achievement_tier_response_local_var;
end:
    if (icon_local_nonprim) {
        asset_short_response_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    return NULL;

}
