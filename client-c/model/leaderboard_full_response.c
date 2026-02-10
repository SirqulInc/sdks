#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "leaderboard_full_response.h"



static leaderboard_full_response_t *leaderboard_full_response_create_internal(
    long leaderboard_id,
    char *rank_type,
    char *rank_mode,
    char *sort_type,
    int limitation,
    char *title,
    char *description,
    char *meta_data,
    asset_response_t *icon_asset,
    asset_response_t *banner_asset,
    int active,
    application_mini_response_t *application,
    rank_list_response_t *leaderboard_rankings
    ) {
    leaderboard_full_response_t *leaderboard_full_response_local_var = malloc(sizeof(leaderboard_full_response_t));
    if (!leaderboard_full_response_local_var) {
        return NULL;
    }
    leaderboard_full_response_local_var->leaderboard_id = leaderboard_id;
    leaderboard_full_response_local_var->rank_type = rank_type;
    leaderboard_full_response_local_var->rank_mode = rank_mode;
    leaderboard_full_response_local_var->sort_type = sort_type;
    leaderboard_full_response_local_var->limitation = limitation;
    leaderboard_full_response_local_var->title = title;
    leaderboard_full_response_local_var->description = description;
    leaderboard_full_response_local_var->meta_data = meta_data;
    leaderboard_full_response_local_var->icon_asset = icon_asset;
    leaderboard_full_response_local_var->banner_asset = banner_asset;
    leaderboard_full_response_local_var->active = active;
    leaderboard_full_response_local_var->application = application;
    leaderboard_full_response_local_var->leaderboard_rankings = leaderboard_rankings;

    leaderboard_full_response_local_var->_library_owned = 1;
    return leaderboard_full_response_local_var;
}

__attribute__((deprecated)) leaderboard_full_response_t *leaderboard_full_response_create(
    long leaderboard_id,
    char *rank_type,
    char *rank_mode,
    char *sort_type,
    int limitation,
    char *title,
    char *description,
    char *meta_data,
    asset_response_t *icon_asset,
    asset_response_t *banner_asset,
    int active,
    application_mini_response_t *application,
    rank_list_response_t *leaderboard_rankings
    ) {
    return leaderboard_full_response_create_internal (
        leaderboard_id,
        rank_type,
        rank_mode,
        sort_type,
        limitation,
        title,
        description,
        meta_data,
        icon_asset,
        banner_asset,
        active,
        application,
        leaderboard_rankings
        );
}

void leaderboard_full_response_free(leaderboard_full_response_t *leaderboard_full_response) {
    if(NULL == leaderboard_full_response){
        return ;
    }
    if(leaderboard_full_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "leaderboard_full_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (leaderboard_full_response->rank_type) {
        free(leaderboard_full_response->rank_type);
        leaderboard_full_response->rank_type = NULL;
    }
    if (leaderboard_full_response->rank_mode) {
        free(leaderboard_full_response->rank_mode);
        leaderboard_full_response->rank_mode = NULL;
    }
    if (leaderboard_full_response->sort_type) {
        free(leaderboard_full_response->sort_type);
        leaderboard_full_response->sort_type = NULL;
    }
    if (leaderboard_full_response->title) {
        free(leaderboard_full_response->title);
        leaderboard_full_response->title = NULL;
    }
    if (leaderboard_full_response->description) {
        free(leaderboard_full_response->description);
        leaderboard_full_response->description = NULL;
    }
    if (leaderboard_full_response->meta_data) {
        free(leaderboard_full_response->meta_data);
        leaderboard_full_response->meta_data = NULL;
    }
    if (leaderboard_full_response->icon_asset) {
        asset_response_free(leaderboard_full_response->icon_asset);
        leaderboard_full_response->icon_asset = NULL;
    }
    if (leaderboard_full_response->banner_asset) {
        asset_response_free(leaderboard_full_response->banner_asset);
        leaderboard_full_response->banner_asset = NULL;
    }
    if (leaderboard_full_response->application) {
        application_mini_response_free(leaderboard_full_response->application);
        leaderboard_full_response->application = NULL;
    }
    if (leaderboard_full_response->leaderboard_rankings) {
        rank_list_response_free(leaderboard_full_response->leaderboard_rankings);
        leaderboard_full_response->leaderboard_rankings = NULL;
    }
    free(leaderboard_full_response);
}

cJSON *leaderboard_full_response_convertToJSON(leaderboard_full_response_t *leaderboard_full_response) {
    cJSON *item = cJSON_CreateObject();

    // leaderboard_full_response->leaderboard_id
    if(leaderboard_full_response->leaderboard_id) {
    if(cJSON_AddNumberToObject(item, "leaderboardId", leaderboard_full_response->leaderboard_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // leaderboard_full_response->rank_type
    if(leaderboard_full_response->rank_type) {
    if(cJSON_AddStringToObject(item, "rankType", leaderboard_full_response->rank_type) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_full_response->rank_mode
    if(leaderboard_full_response->rank_mode) {
    if(cJSON_AddStringToObject(item, "rankMode", leaderboard_full_response->rank_mode) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_full_response->sort_type
    if(leaderboard_full_response->sort_type) {
    if(cJSON_AddStringToObject(item, "sortType", leaderboard_full_response->sort_type) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_full_response->limitation
    if(leaderboard_full_response->limitation) {
    if(cJSON_AddNumberToObject(item, "limitation", leaderboard_full_response->limitation) == NULL) {
    goto fail; //Numeric
    }
    }


    // leaderboard_full_response->title
    if(leaderboard_full_response->title) {
    if(cJSON_AddStringToObject(item, "title", leaderboard_full_response->title) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_full_response->description
    if(leaderboard_full_response->description) {
    if(cJSON_AddStringToObject(item, "description", leaderboard_full_response->description) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_full_response->meta_data
    if(leaderboard_full_response->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", leaderboard_full_response->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_full_response->icon_asset
    if(leaderboard_full_response->icon_asset) {
    cJSON *icon_asset_local_JSON = asset_response_convertToJSON(leaderboard_full_response->icon_asset);
    if(icon_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "iconAsset", icon_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard_full_response->banner_asset
    if(leaderboard_full_response->banner_asset) {
    cJSON *banner_asset_local_JSON = asset_response_convertToJSON(leaderboard_full_response->banner_asset);
    if(banner_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "bannerAsset", banner_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard_full_response->active
    if(leaderboard_full_response->active) {
    if(cJSON_AddBoolToObject(item, "active", leaderboard_full_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // leaderboard_full_response->application
    if(leaderboard_full_response->application) {
    cJSON *application_local_JSON = application_mini_response_convertToJSON(leaderboard_full_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard_full_response->leaderboard_rankings
    if(leaderboard_full_response->leaderboard_rankings) {
    cJSON *leaderboard_rankings_local_JSON = rank_list_response_convertToJSON(leaderboard_full_response->leaderboard_rankings);
    if(leaderboard_rankings_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "leaderboardRankings", leaderboard_rankings_local_JSON);
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

leaderboard_full_response_t *leaderboard_full_response_parseFromJSON(cJSON *leaderboard_full_responseJSON){

    leaderboard_full_response_t *leaderboard_full_response_local_var = NULL;

    // define the local variable for leaderboard_full_response->icon_asset
    asset_response_t *icon_asset_local_nonprim = NULL;

    // define the local variable for leaderboard_full_response->banner_asset
    asset_response_t *banner_asset_local_nonprim = NULL;

    // define the local variable for leaderboard_full_response->application
    application_mini_response_t *application_local_nonprim = NULL;

    // define the local variable for leaderboard_full_response->leaderboard_rankings
    rank_list_response_t *leaderboard_rankings_local_nonprim = NULL;

    // leaderboard_full_response->leaderboard_id
    cJSON *leaderboard_id = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "leaderboardId");
    if (cJSON_IsNull(leaderboard_id)) {
        leaderboard_id = NULL;
    }
    if (leaderboard_id) { 
    if(!cJSON_IsNumber(leaderboard_id))
    {
    goto end; //Numeric
    }
    }

    // leaderboard_full_response->rank_type
    cJSON *rank_type = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "rankType");
    if (cJSON_IsNull(rank_type)) {
        rank_type = NULL;
    }
    if (rank_type) { 
    if(!cJSON_IsString(rank_type) && !cJSON_IsNull(rank_type))
    {
    goto end; //String
    }
    }

    // leaderboard_full_response->rank_mode
    cJSON *rank_mode = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "rankMode");
    if (cJSON_IsNull(rank_mode)) {
        rank_mode = NULL;
    }
    if (rank_mode) { 
    if(!cJSON_IsString(rank_mode) && !cJSON_IsNull(rank_mode))
    {
    goto end; //String
    }
    }

    // leaderboard_full_response->sort_type
    cJSON *sort_type = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "sortType");
    if (cJSON_IsNull(sort_type)) {
        sort_type = NULL;
    }
    if (sort_type) { 
    if(!cJSON_IsString(sort_type) && !cJSON_IsNull(sort_type))
    {
    goto end; //String
    }
    }

    // leaderboard_full_response->limitation
    cJSON *limitation = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "limitation");
    if (cJSON_IsNull(limitation)) {
        limitation = NULL;
    }
    if (limitation) { 
    if(!cJSON_IsNumber(limitation))
    {
    goto end; //Numeric
    }
    }

    // leaderboard_full_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // leaderboard_full_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // leaderboard_full_response->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // leaderboard_full_response->icon_asset
    cJSON *icon_asset = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "iconAsset");
    if (cJSON_IsNull(icon_asset)) {
        icon_asset = NULL;
    }
    if (icon_asset) { 
    icon_asset_local_nonprim = asset_response_parseFromJSON(icon_asset); //nonprimitive
    }

    // leaderboard_full_response->banner_asset
    cJSON *banner_asset = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "bannerAsset");
    if (cJSON_IsNull(banner_asset)) {
        banner_asset = NULL;
    }
    if (banner_asset) { 
    banner_asset_local_nonprim = asset_response_parseFromJSON(banner_asset); //nonprimitive
    }

    // leaderboard_full_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // leaderboard_full_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_mini_response_parseFromJSON(application); //nonprimitive
    }

    // leaderboard_full_response->leaderboard_rankings
    cJSON *leaderboard_rankings = cJSON_GetObjectItemCaseSensitive(leaderboard_full_responseJSON, "leaderboardRankings");
    if (cJSON_IsNull(leaderboard_rankings)) {
        leaderboard_rankings = NULL;
    }
    if (leaderboard_rankings) { 
    leaderboard_rankings_local_nonprim = rank_list_response_parseFromJSON(leaderboard_rankings); //nonprimitive
    }


    leaderboard_full_response_local_var = leaderboard_full_response_create_internal (
        leaderboard_id ? leaderboard_id->valuedouble : 0,
        rank_type && !cJSON_IsNull(rank_type) ? strdup(rank_type->valuestring) : NULL,
        rank_mode && !cJSON_IsNull(rank_mode) ? strdup(rank_mode->valuestring) : NULL,
        sort_type && !cJSON_IsNull(sort_type) ? strdup(sort_type->valuestring) : NULL,
        limitation ? limitation->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        meta_data && !cJSON_IsNull(meta_data) ? strdup(meta_data->valuestring) : NULL,
        icon_asset ? icon_asset_local_nonprim : NULL,
        banner_asset ? banner_asset_local_nonprim : NULL,
        active ? active->valueint : 0,
        application ? application_local_nonprim : NULL,
        leaderboard_rankings ? leaderboard_rankings_local_nonprim : NULL
        );

    return leaderboard_full_response_local_var;
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
    if (leaderboard_rankings_local_nonprim) {
        rank_list_response_free(leaderboard_rankings_local_nonprim);
        leaderboard_rankings_local_nonprim = NULL;
    }
    return NULL;

}
