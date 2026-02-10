#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "leaderboard.h"



static leaderboard_t *leaderboard_create_internal(
    long id,
    char *rank_type,
    char *rank_mode,
    char *sort_type,
    int limitation,
    char *title,
    char *description,
    asset_response_t *icon_asset,
    asset_response_t *banner_asset,
    application_mini_response_t *application,
    char *meta_data,
    int active
    ) {
    leaderboard_t *leaderboard_local_var = malloc(sizeof(leaderboard_t));
    if (!leaderboard_local_var) {
        return NULL;
    }
    leaderboard_local_var->id = id;
    leaderboard_local_var->rank_type = rank_type;
    leaderboard_local_var->rank_mode = rank_mode;
    leaderboard_local_var->sort_type = sort_type;
    leaderboard_local_var->limitation = limitation;
    leaderboard_local_var->title = title;
    leaderboard_local_var->description = description;
    leaderboard_local_var->icon_asset = icon_asset;
    leaderboard_local_var->banner_asset = banner_asset;
    leaderboard_local_var->application = application;
    leaderboard_local_var->meta_data = meta_data;
    leaderboard_local_var->active = active;

    leaderboard_local_var->_library_owned = 1;
    return leaderboard_local_var;
}

__attribute__((deprecated)) leaderboard_t *leaderboard_create(
    long id,
    char *rank_type,
    char *rank_mode,
    char *sort_type,
    int limitation,
    char *title,
    char *description,
    asset_response_t *icon_asset,
    asset_response_t *banner_asset,
    application_mini_response_t *application,
    char *meta_data,
    int active
    ) {
    return leaderboard_create_internal (
        id,
        rank_type,
        rank_mode,
        sort_type,
        limitation,
        title,
        description,
        icon_asset,
        banner_asset,
        application,
        meta_data,
        active
        );
}

void leaderboard_free(leaderboard_t *leaderboard) {
    if(NULL == leaderboard){
        return ;
    }
    if(leaderboard->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "leaderboard_free");
        return ;
    }
    listEntry_t *listEntry;
    if (leaderboard->rank_type) {
        free(leaderboard->rank_type);
        leaderboard->rank_type = NULL;
    }
    if (leaderboard->rank_mode) {
        free(leaderboard->rank_mode);
        leaderboard->rank_mode = NULL;
    }
    if (leaderboard->sort_type) {
        free(leaderboard->sort_type);
        leaderboard->sort_type = NULL;
    }
    if (leaderboard->title) {
        free(leaderboard->title);
        leaderboard->title = NULL;
    }
    if (leaderboard->description) {
        free(leaderboard->description);
        leaderboard->description = NULL;
    }
    if (leaderboard->icon_asset) {
        asset_response_free(leaderboard->icon_asset);
        leaderboard->icon_asset = NULL;
    }
    if (leaderboard->banner_asset) {
        asset_response_free(leaderboard->banner_asset);
        leaderboard->banner_asset = NULL;
    }
    if (leaderboard->application) {
        application_mini_response_free(leaderboard->application);
        leaderboard->application = NULL;
    }
    if (leaderboard->meta_data) {
        free(leaderboard->meta_data);
        leaderboard->meta_data = NULL;
    }
    free(leaderboard);
}

cJSON *leaderboard_convertToJSON(leaderboard_t *leaderboard) {
    cJSON *item = cJSON_CreateObject();

    // leaderboard->id
    if(leaderboard->id) {
    if(cJSON_AddNumberToObject(item, "id", leaderboard->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // leaderboard->rank_type
    if(leaderboard->rank_type) {
    if(cJSON_AddStringToObject(item, "rankType", leaderboard->rank_type) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard->rank_mode
    if(leaderboard->rank_mode) {
    if(cJSON_AddStringToObject(item, "rankMode", leaderboard->rank_mode) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard->sort_type
    if(leaderboard->sort_type) {
    if(cJSON_AddStringToObject(item, "sortType", leaderboard->sort_type) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard->limitation
    if(leaderboard->limitation) {
    if(cJSON_AddNumberToObject(item, "limitation", leaderboard->limitation) == NULL) {
    goto fail; //Numeric
    }
    }


    // leaderboard->title
    if(leaderboard->title) {
    if(cJSON_AddStringToObject(item, "title", leaderboard->title) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard->description
    if(leaderboard->description) {
    if(cJSON_AddStringToObject(item, "description", leaderboard->description) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard->icon_asset
    if(leaderboard->icon_asset) {
    cJSON *icon_asset_local_JSON = asset_response_convertToJSON(leaderboard->icon_asset);
    if(icon_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "iconAsset", icon_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard->banner_asset
    if(leaderboard->banner_asset) {
    cJSON *banner_asset_local_JSON = asset_response_convertToJSON(leaderboard->banner_asset);
    if(banner_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "bannerAsset", banner_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard->application
    if(leaderboard->application) {
    cJSON *application_local_JSON = application_mini_response_convertToJSON(leaderboard->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard->meta_data
    if(leaderboard->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", leaderboard->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard->active
    if(leaderboard->active) {
    if(cJSON_AddBoolToObject(item, "active", leaderboard->active) == NULL) {
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

leaderboard_t *leaderboard_parseFromJSON(cJSON *leaderboardJSON){

    leaderboard_t *leaderboard_local_var = NULL;

    // define the local variable for leaderboard->icon_asset
    asset_response_t *icon_asset_local_nonprim = NULL;

    // define the local variable for leaderboard->banner_asset
    asset_response_t *banner_asset_local_nonprim = NULL;

    // define the local variable for leaderboard->application
    application_mini_response_t *application_local_nonprim = NULL;

    // leaderboard->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // leaderboard->rank_type
    cJSON *rank_type = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "rankType");
    if (cJSON_IsNull(rank_type)) {
        rank_type = NULL;
    }
    if (rank_type) { 
    if(!cJSON_IsString(rank_type) && !cJSON_IsNull(rank_type))
    {
    goto end; //String
    }
    }

    // leaderboard->rank_mode
    cJSON *rank_mode = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "rankMode");
    if (cJSON_IsNull(rank_mode)) {
        rank_mode = NULL;
    }
    if (rank_mode) { 
    if(!cJSON_IsString(rank_mode) && !cJSON_IsNull(rank_mode))
    {
    goto end; //String
    }
    }

    // leaderboard->sort_type
    cJSON *sort_type = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "sortType");
    if (cJSON_IsNull(sort_type)) {
        sort_type = NULL;
    }
    if (sort_type) { 
    if(!cJSON_IsString(sort_type) && !cJSON_IsNull(sort_type))
    {
    goto end; //String
    }
    }

    // leaderboard->limitation
    cJSON *limitation = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "limitation");
    if (cJSON_IsNull(limitation)) {
        limitation = NULL;
    }
    if (limitation) { 
    if(!cJSON_IsNumber(limitation))
    {
    goto end; //Numeric
    }
    }

    // leaderboard->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // leaderboard->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // leaderboard->icon_asset
    cJSON *icon_asset = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "iconAsset");
    if (cJSON_IsNull(icon_asset)) {
        icon_asset = NULL;
    }
    if (icon_asset) { 
    icon_asset_local_nonprim = asset_response_parseFromJSON(icon_asset); //nonprimitive
    }

    // leaderboard->banner_asset
    cJSON *banner_asset = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "bannerAsset");
    if (cJSON_IsNull(banner_asset)) {
        banner_asset = NULL;
    }
    if (banner_asset) { 
    banner_asset_local_nonprim = asset_response_parseFromJSON(banner_asset); //nonprimitive
    }

    // leaderboard->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_mini_response_parseFromJSON(application); //nonprimitive
    }

    // leaderboard->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // leaderboard->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(leaderboardJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }


    leaderboard_local_var = leaderboard_create_internal (
        id ? id->valuedouble : 0,
        rank_type && !cJSON_IsNull(rank_type) ? strdup(rank_type->valuestring) : NULL,
        rank_mode && !cJSON_IsNull(rank_mode) ? strdup(rank_mode->valuestring) : NULL,
        sort_type && !cJSON_IsNull(sort_type) ? strdup(sort_type->valuestring) : NULL,
        limitation ? limitation->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        icon_asset ? icon_asset_local_nonprim : NULL,
        banner_asset ? banner_asset_local_nonprim : NULL,
        application ? application_local_nonprim : NULL,
        meta_data && !cJSON_IsNull(meta_data) ? strdup(meta_data->valuestring) : NULL,
        active ? active->valueint : 0
        );

    return leaderboard_local_var;
end:
    if (icon_asset_local_nonprim) {
        asset_response_free(icon_asset_local_nonprim);
        icon_asset_local_nonprim = NULL;
    }
    if (banner_asset_local_nonprim) {
        asset_response_free(banner_asset_local_nonprim);
        banner_asset_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_mini_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    return NULL;

}
