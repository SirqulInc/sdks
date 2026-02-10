#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "game_response.h"


char* game_response_action_ToString(sirqul_iot_platform_game_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_game_response_ACTION_e game_response_action_FromString(char* action){
    int stringToReturn = 0;
    char *actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    size_t sizeofArray = sizeof(actionArray) / sizeof(actionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(action, actionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static game_response_t *game_response_create_internal(
    sirqul_iot_platform_game_response_ACTION_e action,
    char *highest_app_version,
    long game_id,
    char *game_type,
    pack_list_response_t *packs,
    score_list_response_t *scores,
    account_short_response_t *owner,
    user_permissions_list_response_t *user_permissions_list,
    rule_list_response_t *rules,
    list_t *results,
    long tickets_earned,
    char *title,
    char *description,
    char *author_override,
    asset_short_response_t *icon,
    asset_short_response_t *image,
    char *sequence_type,
    long updated_date,
    long start_date,
    long end_date,
    char *app_key
    ) {
    game_response_t *game_response_local_var = malloc(sizeof(game_response_t));
    if (!game_response_local_var) {
        return NULL;
    }
    game_response_local_var->action = action;
    game_response_local_var->highest_app_version = highest_app_version;
    game_response_local_var->game_id = game_id;
    game_response_local_var->game_type = game_type;
    game_response_local_var->packs = packs;
    game_response_local_var->scores = scores;
    game_response_local_var->owner = owner;
    game_response_local_var->user_permissions_list = user_permissions_list;
    game_response_local_var->rules = rules;
    game_response_local_var->results = results;
    game_response_local_var->tickets_earned = tickets_earned;
    game_response_local_var->title = title;
    game_response_local_var->description = description;
    game_response_local_var->author_override = author_override;
    game_response_local_var->icon = icon;
    game_response_local_var->image = image;
    game_response_local_var->sequence_type = sequence_type;
    game_response_local_var->updated_date = updated_date;
    game_response_local_var->start_date = start_date;
    game_response_local_var->end_date = end_date;
    game_response_local_var->app_key = app_key;

    game_response_local_var->_library_owned = 1;
    return game_response_local_var;
}

__attribute__((deprecated)) game_response_t *game_response_create(
    sirqul_iot_platform_game_response_ACTION_e action,
    char *highest_app_version,
    long game_id,
    char *game_type,
    pack_list_response_t *packs,
    score_list_response_t *scores,
    account_short_response_t *owner,
    user_permissions_list_response_t *user_permissions_list,
    rule_list_response_t *rules,
    list_t *results,
    long tickets_earned,
    char *title,
    char *description,
    char *author_override,
    asset_short_response_t *icon,
    asset_short_response_t *image,
    char *sequence_type,
    long updated_date,
    long start_date,
    long end_date,
    char *app_key
    ) {
    return game_response_create_internal (
        action,
        highest_app_version,
        game_id,
        game_type,
        packs,
        scores,
        owner,
        user_permissions_list,
        rules,
        results,
        tickets_earned,
        title,
        description,
        author_override,
        icon,
        image,
        sequence_type,
        updated_date,
        start_date,
        end_date,
        app_key
        );
}

void game_response_free(game_response_t *game_response) {
    if(NULL == game_response){
        return ;
    }
    if(game_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "game_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (game_response->highest_app_version) {
        free(game_response->highest_app_version);
        game_response->highest_app_version = NULL;
    }
    if (game_response->game_type) {
        free(game_response->game_type);
        game_response->game_type = NULL;
    }
    if (game_response->packs) {
        pack_list_response_free(game_response->packs);
        game_response->packs = NULL;
    }
    if (game_response->scores) {
        score_list_response_free(game_response->scores);
        game_response->scores = NULL;
    }
    if (game_response->owner) {
        account_short_response_free(game_response->owner);
        game_response->owner = NULL;
    }
    if (game_response->user_permissions_list) {
        user_permissions_list_response_free(game_response->user_permissions_list);
        game_response->user_permissions_list = NULL;
    }
    if (game_response->rules) {
        rule_list_response_free(game_response->rules);
        game_response->rules = NULL;
    }
    if (game_response->results) {
        list_ForEach(listEntry, game_response->results) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(game_response->results);
        game_response->results = NULL;
    }
    if (game_response->title) {
        free(game_response->title);
        game_response->title = NULL;
    }
    if (game_response->description) {
        free(game_response->description);
        game_response->description = NULL;
    }
    if (game_response->author_override) {
        free(game_response->author_override);
        game_response->author_override = NULL;
    }
    if (game_response->icon) {
        asset_short_response_free(game_response->icon);
        game_response->icon = NULL;
    }
    if (game_response->image) {
        asset_short_response_free(game_response->image);
        game_response->image = NULL;
    }
    if (game_response->sequence_type) {
        free(game_response->sequence_type);
        game_response->sequence_type = NULL;
    }
    if (game_response->app_key) {
        free(game_response->app_key);
        game_response->app_key = NULL;
    }
    free(game_response);
}

cJSON *game_response_convertToJSON(game_response_t *game_response) {
    cJSON *item = cJSON_CreateObject();

    // game_response->action
    if(game_response->action != sirqul_iot_platform_game_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", game_response_action_ToString(game_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game_response->highest_app_version
    if(game_response->highest_app_version) {
    if(cJSON_AddStringToObject(item, "highestAppVersion", game_response->highest_app_version) == NULL) {
    goto fail; //String
    }
    }


    // game_response->game_id
    if(game_response->game_id) {
    if(cJSON_AddNumberToObject(item, "gameId", game_response->game_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_response->game_type
    if(game_response->game_type) {
    if(cJSON_AddStringToObject(item, "gameType", game_response->game_type) == NULL) {
    goto fail; //String
    }
    }


    // game_response->packs
    if(game_response->packs) {
    cJSON *packs_local_JSON = pack_list_response_convertToJSON(game_response->packs);
    if(packs_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "packs", packs_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_response->scores
    if(game_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(game_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_response->owner
    if(game_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(game_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_response->user_permissions_list
    if(game_response->user_permissions_list) {
    cJSON *user_permissions_list_local_JSON = user_permissions_list_response_convertToJSON(game_response->user_permissions_list);
    if(user_permissions_list_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userPermissionsList", user_permissions_list_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_response->rules
    if(game_response->rules) {
    cJSON *rules_local_JSON = rule_list_response_convertToJSON(game_response->rules);
    if(rules_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rules", rules_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_response->results
    if(game_response->results) {
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (game_response->results) {
    list_ForEach(resultsListEntry, game_response->results) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(resultsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(results, itemLocal);
    }
    }
    }


    // game_response->tickets_earned
    if(game_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", game_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_response->title
    if(game_response->title) {
    if(cJSON_AddStringToObject(item, "title", game_response->title) == NULL) {
    goto fail; //String
    }
    }


    // game_response->description
    if(game_response->description) {
    if(cJSON_AddStringToObject(item, "description", game_response->description) == NULL) {
    goto fail; //String
    }
    }


    // game_response->author_override
    if(game_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", game_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // game_response->icon
    if(game_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(game_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_response->image
    if(game_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(game_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_response->sequence_type
    if(game_response->sequence_type) {
    if(cJSON_AddStringToObject(item, "sequenceType", game_response->sequence_type) == NULL) {
    goto fail; //String
    }
    }


    // game_response->updated_date
    if(game_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", game_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_response->start_date
    if(game_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", game_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_response->end_date
    if(game_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", game_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_response->app_key
    if(game_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", game_response->app_key) == NULL) {
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

game_response_t *game_response_parseFromJSON(cJSON *game_responseJSON){

    game_response_t *game_response_local_var = NULL;

    // define the local variable for game_response->packs
    pack_list_response_t *packs_local_nonprim = NULL;

    // define the local variable for game_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for game_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for game_response->user_permissions_list
    user_permissions_list_response_t *user_permissions_list_local_nonprim = NULL;

    // define the local variable for game_response->rules
    rule_list_response_t *rules_local_nonprim = NULL;

    // define the local list for game_response->results
    list_t *resultsList = NULL;

    // define the local variable for game_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // define the local variable for game_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // game_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_game_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = game_response_action_FromString(action->valuestring);
    }

    // game_response->highest_app_version
    cJSON *highest_app_version = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "highestAppVersion");
    if (cJSON_IsNull(highest_app_version)) {
        highest_app_version = NULL;
    }
    if (highest_app_version) { 
    if(!cJSON_IsString(highest_app_version) && !cJSON_IsNull(highest_app_version))
    {
    goto end; //String
    }
    }

    // game_response->game_id
    cJSON *game_id = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "gameId");
    if (cJSON_IsNull(game_id)) {
        game_id = NULL;
    }
    if (game_id) { 
    if(!cJSON_IsNumber(game_id))
    {
    goto end; //Numeric
    }
    }

    // game_response->game_type
    cJSON *game_type = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "gameType");
    if (cJSON_IsNull(game_type)) {
        game_type = NULL;
    }
    if (game_type) { 
    if(!cJSON_IsString(game_type) && !cJSON_IsNull(game_type))
    {
    goto end; //String
    }
    }

    // game_response->packs
    cJSON *packs = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "packs");
    if (cJSON_IsNull(packs)) {
        packs = NULL;
    }
    if (packs) { 
    packs_local_nonprim = pack_list_response_parseFromJSON(packs); //nonprimitive
    }

    // game_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // game_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // game_response->user_permissions_list
    cJSON *user_permissions_list = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "userPermissionsList");
    if (cJSON_IsNull(user_permissions_list)) {
        user_permissions_list = NULL;
    }
    if (user_permissions_list) { 
    user_permissions_list_local_nonprim = user_permissions_list_response_parseFromJSON(user_permissions_list); //nonprimitive
    }

    // game_response->rules
    cJSON *rules = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "rules");
    if (cJSON_IsNull(rules)) {
        rules = NULL;
    }
    if (rules) { 
    rules_local_nonprim = rule_list_response_parseFromJSON(rules); //nonprimitive
    }

    // game_response->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "results");
    if (cJSON_IsNull(results)) {
        results = NULL;
    }
    if (results) { 
    cJSON *results_local_nonprimitive = NULL;
    if(!cJSON_IsArray(results)){
        goto end; //nonprimitive container
    }

    resultsList = list_createList();

    cJSON_ArrayForEach(results_local_nonprimitive,results )
    {
        if(!cJSON_IsObject(results_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *resultsItem = name_string_value_response_parseFromJSON(results_local_nonprimitive);

        list_addElement(resultsList, resultsItem);
    }
    }

    // game_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // game_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // game_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // game_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // game_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // game_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // game_response->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type) && !cJSON_IsNull(sequence_type))
    {
    goto end; //String
    }
    }

    // game_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // game_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // game_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // game_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(game_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }


    game_response_local_var = game_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_game_response_ACTION_NULL,
        highest_app_version && !cJSON_IsNull(highest_app_version) ? strdup(highest_app_version->valuestring) : NULL,
        game_id ? game_id->valuedouble : 0,
        game_type && !cJSON_IsNull(game_type) ? strdup(game_type->valuestring) : NULL,
        packs ? packs_local_nonprim : NULL,
        scores ? scores_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL,
        user_permissions_list ? user_permissions_list_local_nonprim : NULL,
        rules ? rules_local_nonprim : NULL,
        results ? resultsList : NULL,
        tickets_earned ? tickets_earned->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        icon ? icon_local_nonprim : NULL,
        image ? image_local_nonprim : NULL,
        sequence_type && !cJSON_IsNull(sequence_type) ? strdup(sequence_type->valuestring) : NULL,
        updated_date ? updated_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL
        );

    return game_response_local_var;
end:
    if (packs_local_nonprim) {
        pack_list_response_free(packs_local_nonprim);
        packs_local_nonprim = NULL;
    }
    if (scores_local_nonprim) {
        score_list_response_free(scores_local_nonprim);
        scores_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (user_permissions_list_local_nonprim) {
        user_permissions_list_response_free(user_permissions_list_local_nonprim);
        user_permissions_list_local_nonprim = NULL;
    }
    if (rules_local_nonprim) {
        rule_list_response_free(rules_local_nonprim);
        rules_local_nonprim = NULL;
    }
    if (resultsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, resultsList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(resultsList);
        resultsList = NULL;
    }
    if (icon_local_nonprim) {
        asset_short_response_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    if (image_local_nonprim) {
        asset_short_response_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    return NULL;

}
