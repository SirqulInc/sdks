#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "leaderboard_response.h"



static leaderboard_response_t *leaderboard_response_create_internal(
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
    application_mini_response_t *application
    ) {
    leaderboard_response_t *leaderboard_response_local_var = malloc(sizeof(leaderboard_response_t));
    if (!leaderboard_response_local_var) {
        return NULL;
    }
    leaderboard_response_local_var->leaderboard_id = leaderboard_id;
    leaderboard_response_local_var->rank_type = rank_type;
    leaderboard_response_local_var->rank_mode = rank_mode;
    leaderboard_response_local_var->sort_type = sort_type;
    leaderboard_response_local_var->limitation = limitation;
    leaderboard_response_local_var->title = title;
    leaderboard_response_local_var->description = description;
    leaderboard_response_local_var->meta_data = meta_data;
    leaderboard_response_local_var->icon_asset = icon_asset;
    leaderboard_response_local_var->banner_asset = banner_asset;
    leaderboard_response_local_var->active = active;
    leaderboard_response_local_var->application = application;

    leaderboard_response_local_var->_library_owned = 1;
    return leaderboard_response_local_var;
}

__attribute__((deprecated)) leaderboard_response_t *leaderboard_response_create(
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
    application_mini_response_t *application
    ) {
    return leaderboard_response_create_internal (
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
        application
        );
}

void leaderboard_response_free(leaderboard_response_t *leaderboard_response) {
    if(NULL == leaderboard_response){
        return ;
    }
    if(leaderboard_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "leaderboard_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (leaderboard_response->rank_type) {
        free(leaderboard_response->rank_type);
        leaderboard_response->rank_type = NULL;
    }
    if (leaderboard_response->rank_mode) {
        free(leaderboard_response->rank_mode);
        leaderboard_response->rank_mode = NULL;
    }
    if (leaderboard_response->sort_type) {
        free(leaderboard_response->sort_type);
        leaderboard_response->sort_type = NULL;
    }
    if (leaderboard_response->title) {
        free(leaderboard_response->title);
        leaderboard_response->title = NULL;
    }
    if (leaderboard_response->description) {
        free(leaderboard_response->description);
        leaderboard_response->description = NULL;
    }
    if (leaderboard_response->meta_data) {
        free(leaderboard_response->meta_data);
        leaderboard_response->meta_data = NULL;
    }
    if (leaderboard_response->icon_asset) {
        asset_response_free(leaderboard_response->icon_asset);
        leaderboard_response->icon_asset = NULL;
    }
    if (leaderboard_response->banner_asset) {
        asset_response_free(leaderboard_response->banner_asset);
        leaderboard_response->banner_asset = NULL;
    }
    if (leaderboard_response->application) {
        application_mini_response_free(leaderboard_response->application);
        leaderboard_response->application = NULL;
    }
    free(leaderboard_response);
}

cJSON *leaderboard_response_convertToJSON(leaderboard_response_t *leaderboard_response) {
    cJSON *item = cJSON_CreateObject();

    // leaderboard_response->leaderboard_id
    if(leaderboard_response->leaderboard_id) {
    if(cJSON_AddNumberToObject(item, "leaderboardId", leaderboard_response->leaderboard_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // leaderboard_response->rank_type
    if(leaderboard_response->rank_type) {
    if(cJSON_AddStringToObject(item, "rankType", leaderboard_response->rank_type) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_response->rank_mode
    if(leaderboard_response->rank_mode) {
    if(cJSON_AddStringToObject(item, "rankMode", leaderboard_response->rank_mode) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_response->sort_type
    if(leaderboard_response->sort_type) {
    if(cJSON_AddStringToObject(item, "sortType", leaderboard_response->sort_type) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_response->limitation
    if(leaderboard_response->limitation) {
    if(cJSON_AddNumberToObject(item, "limitation", leaderboard_response->limitation) == NULL) {
    goto fail; //Numeric
    }
    }


    // leaderboard_response->title
    if(leaderboard_response->title) {
    if(cJSON_AddStringToObject(item, "title", leaderboard_response->title) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_response->description
    if(leaderboard_response->description) {
    if(cJSON_AddStringToObject(item, "description", leaderboard_response->description) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_response->meta_data
    if(leaderboard_response->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", leaderboard_response->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // leaderboard_response->icon_asset
    if(leaderboard_response->icon_asset) {
    cJSON *icon_asset_local_JSON = asset_response_convertToJSON(leaderboard_response->icon_asset);
    if(icon_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "iconAsset", icon_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard_response->banner_asset
    if(leaderboard_response->banner_asset) {
    cJSON *banner_asset_local_JSON = asset_response_convertToJSON(leaderboard_response->banner_asset);
    if(banner_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "bannerAsset", banner_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // leaderboard_response->active
    if(leaderboard_response->active) {
    if(cJSON_AddBoolToObject(item, "active", leaderboard_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // leaderboard_response->application
    if(leaderboard_response->application) {
    cJSON *application_local_JSON = application_mini_response_convertToJSON(leaderboard_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
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

leaderboard_response_t *leaderboard_response_parseFromJSON(cJSON *leaderboard_responseJSON){

    leaderboard_response_t *leaderboard_response_local_var = NULL;

    // define the local variable for leaderboard_response->icon_asset
    asset_response_t *icon_asset_local_nonprim = NULL;

    // define the local variable for leaderboard_response->banner_asset
    asset_response_t *banner_asset_local_nonprim = NULL;

    // define the local variable for leaderboard_response->application
    application_mini_response_t *application_local_nonprim = NULL;

    // leaderboard_response->leaderboard_id
    cJSON *leaderboard_id = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "leaderboardId");
    if (cJSON_IsNull(leaderboard_id)) {
        leaderboard_id = NULL;
    }
    if (leaderboard_id) { 
    if(!cJSON_IsNumber(leaderboard_id))
    {
    goto end; //Numeric
    }
    }

    // leaderboard_response->rank_type
    cJSON *rank_type = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "rankType");
    if (cJSON_IsNull(rank_type)) {
        rank_type = NULL;
    }
    if (rank_type) { 
    if(!cJSON_IsString(rank_type) && !cJSON_IsNull(rank_type))
    {
    goto end; //String
    }
    }

    // leaderboard_response->rank_mode
    cJSON *rank_mode = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "rankMode");
    if (cJSON_IsNull(rank_mode)) {
        rank_mode = NULL;
    }
    if (rank_mode) { 
    if(!cJSON_IsString(rank_mode) && !cJSON_IsNull(rank_mode))
    {
    goto end; //String
    }
    }

    // leaderboard_response->sort_type
    cJSON *sort_type = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "sortType");
    if (cJSON_IsNull(sort_type)) {
        sort_type = NULL;
    }
    if (sort_type) { 
    if(!cJSON_IsString(sort_type) && !cJSON_IsNull(sort_type))
    {
    goto end; //String
    }
    }

    // leaderboard_response->limitation
    cJSON *limitation = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "limitation");
    if (cJSON_IsNull(limitation)) {
        limitation = NULL;
    }
    if (limitation) { 
    if(!cJSON_IsNumber(limitation))
    {
    goto end; //Numeric
    }
    }

    // leaderboard_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // leaderboard_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // leaderboard_response->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // leaderboard_response->icon_asset
    cJSON *icon_asset = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "iconAsset");
    if (cJSON_IsNull(icon_asset)) {
        icon_asset = NULL;
    }
    if (icon_asset) { 
    icon_asset_local_nonprim = asset_response_parseFromJSON(icon_asset); //nonprimitive
    }

    // leaderboard_response->banner_asset
    cJSON *banner_asset = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "bannerAsset");
    if (cJSON_IsNull(banner_asset)) {
        banner_asset = NULL;
    }
    if (banner_asset) { 
    banner_asset_local_nonprim = asset_response_parseFromJSON(banner_asset); //nonprimitive
    }

    // leaderboard_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // leaderboard_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(leaderboard_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_mini_response_parseFromJSON(application); //nonprimitive
    }


    leaderboard_response_local_var = leaderboard_response_create_internal (
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
        application ? application_local_nonprim : NULL
        );

    return leaderboard_response_local_var;
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
