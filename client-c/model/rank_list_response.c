#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rank_list_response.h"


char* rank_list_response_leaderboard_mode_ToString(sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e leaderboard_mode) {
    char* leaderboard_modeArray[] =  { "NULL", "GLOBAL", "FRIENDS", "LOCAL", "SEARCH", "CUSTOM" };
    return leaderboard_modeArray[leaderboard_mode];
}

sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e rank_list_response_leaderboard_mode_FromString(char* leaderboard_mode){
    int stringToReturn = 0;
    char *leaderboard_modeArray[] =  { "NULL", "GLOBAL", "FRIENDS", "LOCAL", "SEARCH", "CUSTOM" };
    size_t sizeofArray = sizeof(leaderboard_modeArray) / sizeof(leaderboard_modeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(leaderboard_mode, leaderboard_modeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static rank_list_response_t *rank_list_response_create_internal(
    list_t *items,
    rank_response_t *user_rank,
    int has_more_results,
    int count,
    char *rank_type,
    char *app,
    char *sort_field,
    sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e leaderboard_mode,
    long start,
    long limit
    ) {
    rank_list_response_t *rank_list_response_local_var = malloc(sizeof(rank_list_response_t));
    if (!rank_list_response_local_var) {
        return NULL;
    }
    rank_list_response_local_var->items = items;
    rank_list_response_local_var->user_rank = user_rank;
    rank_list_response_local_var->has_more_results = has_more_results;
    rank_list_response_local_var->count = count;
    rank_list_response_local_var->rank_type = rank_type;
    rank_list_response_local_var->app = app;
    rank_list_response_local_var->sort_field = sort_field;
    rank_list_response_local_var->leaderboard_mode = leaderboard_mode;
    rank_list_response_local_var->start = start;
    rank_list_response_local_var->limit = limit;

    rank_list_response_local_var->_library_owned = 1;
    return rank_list_response_local_var;
}

__attribute__((deprecated)) rank_list_response_t *rank_list_response_create(
    list_t *items,
    rank_response_t *user_rank,
    int has_more_results,
    int count,
    char *rank_type,
    char *app,
    char *sort_field,
    sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e leaderboard_mode,
    long start,
    long limit
    ) {
    return rank_list_response_create_internal (
        items,
        user_rank,
        has_more_results,
        count,
        rank_type,
        app,
        sort_field,
        leaderboard_mode,
        start,
        limit
        );
}

void rank_list_response_free(rank_list_response_t *rank_list_response) {
    if(NULL == rank_list_response){
        return ;
    }
    if(rank_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "rank_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (rank_list_response->items) {
        list_ForEach(listEntry, rank_list_response->items) {
            rank_response_free(listEntry->data);
        }
        list_freeList(rank_list_response->items);
        rank_list_response->items = NULL;
    }
    if (rank_list_response->user_rank) {
        rank_response_free(rank_list_response->user_rank);
        rank_list_response->user_rank = NULL;
    }
    if (rank_list_response->rank_type) {
        free(rank_list_response->rank_type);
        rank_list_response->rank_type = NULL;
    }
    if (rank_list_response->app) {
        free(rank_list_response->app);
        rank_list_response->app = NULL;
    }
    if (rank_list_response->sort_field) {
        free(rank_list_response->sort_field);
        rank_list_response->sort_field = NULL;
    }
    free(rank_list_response);
}

cJSON *rank_list_response_convertToJSON(rank_list_response_t *rank_list_response) {
    cJSON *item = cJSON_CreateObject();

    // rank_list_response->items
    if(rank_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (rank_list_response->items) {
    list_ForEach(itemsListEntry, rank_list_response->items) {
    cJSON *itemLocal = rank_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // rank_list_response->user_rank
    if(rank_list_response->user_rank) {
    cJSON *user_rank_local_JSON = rank_response_convertToJSON(rank_list_response->user_rank);
    if(user_rank_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userRank", user_rank_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // rank_list_response->has_more_results
    if(rank_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", rank_list_response->has_more_results) == NULL) {
    goto fail; //Bool
    }
    }


    // rank_list_response->count
    if(rank_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", rank_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // rank_list_response->rank_type
    if(rank_list_response->rank_type) {
    if(cJSON_AddStringToObject(item, "rankType", rank_list_response->rank_type) == NULL) {
    goto fail; //String
    }
    }


    // rank_list_response->app
    if(rank_list_response->app) {
    if(cJSON_AddStringToObject(item, "app", rank_list_response->app) == NULL) {
    goto fail; //String
    }
    }


    // rank_list_response->sort_field
    if(rank_list_response->sort_field) {
    if(cJSON_AddStringToObject(item, "sortField", rank_list_response->sort_field) == NULL) {
    goto fail; //String
    }
    }


    // rank_list_response->leaderboard_mode
    if(rank_list_response->leaderboard_mode != sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_NULL) {
    if(cJSON_AddStringToObject(item, "leaderboardMode", rank_list_response_leaderboard_mode_ToString(rank_list_response->leaderboard_mode)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // rank_list_response->start
    if(rank_list_response->start) {
    if(cJSON_AddNumberToObject(item, "start", rank_list_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // rank_list_response->limit
    if(rank_list_response->limit) {
    if(cJSON_AddNumberToObject(item, "limit", rank_list_response->limit) == NULL) {
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

rank_list_response_t *rank_list_response_parseFromJSON(cJSON *rank_list_responseJSON){

    rank_list_response_t *rank_list_response_local_var = NULL;

    // define the local list for rank_list_response->items
    list_t *itemsList = NULL;

    // define the local variable for rank_list_response->user_rank
    rank_response_t *user_rank_local_nonprim = NULL;

    // rank_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        rank_response_t *itemsItem = rank_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // rank_list_response->user_rank
    cJSON *user_rank = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "userRank");
    if (cJSON_IsNull(user_rank)) {
        user_rank = NULL;
    }
    if (user_rank) { 
    user_rank_local_nonprim = rank_response_parseFromJSON(user_rank); //nonprimitive
    }

    // rank_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }

    // rank_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // rank_list_response->rank_type
    cJSON *rank_type = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "rankType");
    if (cJSON_IsNull(rank_type)) {
        rank_type = NULL;
    }
    if (rank_type) { 
    if(!cJSON_IsString(rank_type) && !cJSON_IsNull(rank_type))
    {
    goto end; //String
    }
    }

    // rank_list_response->app
    cJSON *app = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "app");
    if (cJSON_IsNull(app)) {
        app = NULL;
    }
    if (app) { 
    if(!cJSON_IsString(app) && !cJSON_IsNull(app))
    {
    goto end; //String
    }
    }

    // rank_list_response->sort_field
    cJSON *sort_field = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "sortField");
    if (cJSON_IsNull(sort_field)) {
        sort_field = NULL;
    }
    if (sort_field) { 
    if(!cJSON_IsString(sort_field) && !cJSON_IsNull(sort_field))
    {
    goto end; //String
    }
    }

    // rank_list_response->leaderboard_mode
    cJSON *leaderboard_mode = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "leaderboardMode");
    if (cJSON_IsNull(leaderboard_mode)) {
        leaderboard_mode = NULL;
    }
    sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e leaderboard_modeVariable;
    if (leaderboard_mode) { 
    if(!cJSON_IsString(leaderboard_mode))
    {
    goto end; //Enum
    }
    leaderboard_modeVariable = rank_list_response_leaderboard_mode_FromString(leaderboard_mode->valuestring);
    }

    // rank_list_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // rank_list_response->limit
    cJSON *limit = cJSON_GetObjectItemCaseSensitive(rank_list_responseJSON, "limit");
    if (cJSON_IsNull(limit)) {
        limit = NULL;
    }
    if (limit) { 
    if(!cJSON_IsNumber(limit))
    {
    goto end; //Numeric
    }
    }


    rank_list_response_local_var = rank_list_response_create_internal (
        items ? itemsList : NULL,
        user_rank ? user_rank_local_nonprim : NULL,
        has_more_results ? has_more_results->valueint : 0,
        count ? count->valuedouble : 0,
        rank_type && !cJSON_IsNull(rank_type) ? strdup(rank_type->valuestring) : NULL,
        app && !cJSON_IsNull(app) ? strdup(app->valuestring) : NULL,
        sort_field && !cJSON_IsNull(sort_field) ? strdup(sort_field->valuestring) : NULL,
        leaderboard_mode ? leaderboard_modeVariable : sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_NULL,
        start ? start->valuedouble : 0,
        limit ? limit->valuedouble : 0
        );

    return rank_list_response_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            rank_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    if (user_rank_local_nonprim) {
        rank_response_free(user_rank_local_nonprim);
        user_rank_local_nonprim = NULL;
    }
    return NULL;

}
