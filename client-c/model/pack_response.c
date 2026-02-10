#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pack_response.h"


char* pack_response_action_ToString(sirqul_iot_platform_pack_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_pack_response_ACTION_e pack_response_action_FromString(char* action){
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
char* pack_response_pack_type_ToString(sirqul_iot_platform_pack_response_PACKTYPE_e pack_type) {
    char* pack_typeArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    return pack_typeArray[pack_type];
}

sirqul_iot_platform_pack_response_PACKTYPE_e pack_response_pack_type_FromString(char* pack_type){
    int stringToReturn = 0;
    char *pack_typeArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    size_t sizeofArray = sizeof(pack_typeArray) / sizeof(pack_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(pack_type, pack_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static pack_response_t *pack_response_create_internal(
    sirqul_iot_platform_pack_response_ACTION_e action,
    char *highest_app_version,
    char *game_type,
    long pack_id,
    char *name,
    char *description,
    int active,
    int downloaded,
    int completed,
    asset_short_response_t *icon,
    asset_short_response_t *background,
    long tickets_earned,
    game_level_list_response_t *levels,
    char *sequence_type,
    score_list_response_t *scores,
    account_short_response_t *owner,
    long cost_to_redeem,
    long price,
    char *price_type,
    user_permissions_list_response_t *user_permissions_list,
    list_t *results,
    ticket_list_response_t *tickets,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    sirqul_iot_platform_pack_response_PACKTYPE_e pack_type,
    long pack_order,
    char *app_key,
    application_short_response_t *application,
    int in_game,
    int highest,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
    ) {
    pack_response_t *pack_response_local_var = malloc(sizeof(pack_response_t));
    if (!pack_response_local_var) {
        return NULL;
    }
    pack_response_local_var->action = action;
    pack_response_local_var->highest_app_version = highest_app_version;
    pack_response_local_var->game_type = game_type;
    pack_response_local_var->pack_id = pack_id;
    pack_response_local_var->name = name;
    pack_response_local_var->description = description;
    pack_response_local_var->active = active;
    pack_response_local_var->downloaded = downloaded;
    pack_response_local_var->completed = completed;
    pack_response_local_var->icon = icon;
    pack_response_local_var->background = background;
    pack_response_local_var->tickets_earned = tickets_earned;
    pack_response_local_var->levels = levels;
    pack_response_local_var->sequence_type = sequence_type;
    pack_response_local_var->scores = scores;
    pack_response_local_var->owner = owner;
    pack_response_local_var->cost_to_redeem = cost_to_redeem;
    pack_response_local_var->price = price;
    pack_response_local_var->price_type = price_type;
    pack_response_local_var->user_permissions_list = user_permissions_list;
    pack_response_local_var->results = results;
    pack_response_local_var->tickets = tickets;
    pack_response_local_var->author_override = author_override;
    pack_response_local_var->updated_date = updated_date;
    pack_response_local_var->start_date = start_date;
    pack_response_local_var->end_date = end_date;
    pack_response_local_var->pack_type = pack_type;
    pack_response_local_var->pack_order = pack_order;
    pack_response_local_var->app_key = app_key;
    pack_response_local_var->application = application;
    pack_response_local_var->in_game = in_game;
    pack_response_local_var->highest = highest;
    pack_response_local_var->allocate_tickets = allocate_tickets;
    pack_response_local_var->ticket_type = ticket_type;
    pack_response_local_var->ticket_count = ticket_count;
    pack_response_local_var->points = points;

    pack_response_local_var->_library_owned = 1;
    return pack_response_local_var;
}

__attribute__((deprecated)) pack_response_t *pack_response_create(
    sirqul_iot_platform_pack_response_ACTION_e action,
    char *highest_app_version,
    char *game_type,
    long pack_id,
    char *name,
    char *description,
    int active,
    int downloaded,
    int completed,
    asset_short_response_t *icon,
    asset_short_response_t *background,
    long tickets_earned,
    game_level_list_response_t *levels,
    char *sequence_type,
    score_list_response_t *scores,
    account_short_response_t *owner,
    long cost_to_redeem,
    long price,
    char *price_type,
    user_permissions_list_response_t *user_permissions_list,
    list_t *results,
    ticket_list_response_t *tickets,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    sirqul_iot_platform_pack_response_PACKTYPE_e pack_type,
    long pack_order,
    char *app_key,
    application_short_response_t *application,
    int in_game,
    int highest,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
    ) {
    return pack_response_create_internal (
        action,
        highest_app_version,
        game_type,
        pack_id,
        name,
        description,
        active,
        downloaded,
        completed,
        icon,
        background,
        tickets_earned,
        levels,
        sequence_type,
        scores,
        owner,
        cost_to_redeem,
        price,
        price_type,
        user_permissions_list,
        results,
        tickets,
        author_override,
        updated_date,
        start_date,
        end_date,
        pack_type,
        pack_order,
        app_key,
        application,
        in_game,
        highest,
        allocate_tickets,
        ticket_type,
        ticket_count,
        points
        );
}

void pack_response_free(pack_response_t *pack_response) {
    if(NULL == pack_response){
        return ;
    }
    if(pack_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pack_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pack_response->highest_app_version) {
        free(pack_response->highest_app_version);
        pack_response->highest_app_version = NULL;
    }
    if (pack_response->game_type) {
        free(pack_response->game_type);
        pack_response->game_type = NULL;
    }
    if (pack_response->name) {
        free(pack_response->name);
        pack_response->name = NULL;
    }
    if (pack_response->description) {
        free(pack_response->description);
        pack_response->description = NULL;
    }
    if (pack_response->icon) {
        asset_short_response_free(pack_response->icon);
        pack_response->icon = NULL;
    }
    if (pack_response->background) {
        asset_short_response_free(pack_response->background);
        pack_response->background = NULL;
    }
    if (pack_response->levels) {
        game_level_list_response_free(pack_response->levels);
        pack_response->levels = NULL;
    }
    if (pack_response->sequence_type) {
        free(pack_response->sequence_type);
        pack_response->sequence_type = NULL;
    }
    if (pack_response->scores) {
        score_list_response_free(pack_response->scores);
        pack_response->scores = NULL;
    }
    if (pack_response->owner) {
        account_short_response_free(pack_response->owner);
        pack_response->owner = NULL;
    }
    if (pack_response->price_type) {
        free(pack_response->price_type);
        pack_response->price_type = NULL;
    }
    if (pack_response->user_permissions_list) {
        user_permissions_list_response_free(pack_response->user_permissions_list);
        pack_response->user_permissions_list = NULL;
    }
    if (pack_response->results) {
        list_ForEach(listEntry, pack_response->results) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(pack_response->results);
        pack_response->results = NULL;
    }
    if (pack_response->tickets) {
        ticket_list_response_free(pack_response->tickets);
        pack_response->tickets = NULL;
    }
    if (pack_response->author_override) {
        free(pack_response->author_override);
        pack_response->author_override = NULL;
    }
    if (pack_response->app_key) {
        free(pack_response->app_key);
        pack_response->app_key = NULL;
    }
    if (pack_response->application) {
        application_short_response_free(pack_response->application);
        pack_response->application = NULL;
    }
    if (pack_response->ticket_type) {
        free(pack_response->ticket_type);
        pack_response->ticket_type = NULL;
    }
    free(pack_response);
}

cJSON *pack_response_convertToJSON(pack_response_t *pack_response) {
    cJSON *item = cJSON_CreateObject();

    // pack_response->action
    if(pack_response->action != sirqul_iot_platform_pack_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", pack_response_action_ToString(pack_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // pack_response->highest_app_version
    if(pack_response->highest_app_version) {
    if(cJSON_AddStringToObject(item, "highestAppVersion", pack_response->highest_app_version) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->game_type
    if(pack_response->game_type) {
    if(cJSON_AddStringToObject(item, "gameType", pack_response->game_type) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->pack_id
    if(pack_response->pack_id) {
    if(cJSON_AddNumberToObject(item, "packId", pack_response->pack_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->name
    if(pack_response->name) {
    if(cJSON_AddStringToObject(item, "name", pack_response->name) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->description
    if(pack_response->description) {
    if(cJSON_AddStringToObject(item, "description", pack_response->description) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->active
    if(pack_response->active) {
    if(cJSON_AddBoolToObject(item, "active", pack_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // pack_response->downloaded
    if(pack_response->downloaded) {
    if(cJSON_AddBoolToObject(item, "downloaded", pack_response->downloaded) == NULL) {
    goto fail; //Bool
    }
    }


    // pack_response->completed
    if(pack_response->completed) {
    if(cJSON_AddBoolToObject(item, "completed", pack_response->completed) == NULL) {
    goto fail; //Bool
    }
    }


    // pack_response->icon
    if(pack_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(pack_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->background
    if(pack_response->background) {
    cJSON *background_local_JSON = asset_short_response_convertToJSON(pack_response->background);
    if(background_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "background", background_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->tickets_earned
    if(pack_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", pack_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->levels
    if(pack_response->levels) {
    cJSON *levels_local_JSON = game_level_list_response_convertToJSON(pack_response->levels);
    if(levels_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "levels", levels_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->sequence_type
    if(pack_response->sequence_type) {
    if(cJSON_AddStringToObject(item, "sequenceType", pack_response->sequence_type) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->scores
    if(pack_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(pack_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->owner
    if(pack_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(pack_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->cost_to_redeem
    if(pack_response->cost_to_redeem) {
    if(cJSON_AddNumberToObject(item, "costToRedeem", pack_response->cost_to_redeem) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->price
    if(pack_response->price) {
    if(cJSON_AddNumberToObject(item, "price", pack_response->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->price_type
    if(pack_response->price_type) {
    if(cJSON_AddStringToObject(item, "priceType", pack_response->price_type) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->user_permissions_list
    if(pack_response->user_permissions_list) {
    cJSON *user_permissions_list_local_JSON = user_permissions_list_response_convertToJSON(pack_response->user_permissions_list);
    if(user_permissions_list_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userPermissionsList", user_permissions_list_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->results
    if(pack_response->results) {
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (pack_response->results) {
    list_ForEach(resultsListEntry, pack_response->results) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(resultsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(results, itemLocal);
    }
    }
    }


    // pack_response->tickets
    if(pack_response->tickets) {
    cJSON *tickets_local_JSON = ticket_list_response_convertToJSON(pack_response->tickets);
    if(tickets_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tickets", tickets_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->author_override
    if(pack_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", pack_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->updated_date
    if(pack_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", pack_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->start_date
    if(pack_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", pack_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->end_date
    if(pack_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", pack_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->pack_type
    if(pack_response->pack_type != sirqul_iot_platform_pack_response_PACKTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "packType", pack_response_pack_type_ToString(pack_response->pack_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // pack_response->pack_order
    if(pack_response->pack_order) {
    if(cJSON_AddNumberToObject(item, "packOrder", pack_response->pack_order) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->app_key
    if(pack_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", pack_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->application
    if(pack_response->application) {
    cJSON *application_local_JSON = application_short_response_convertToJSON(pack_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack_response->in_game
    if(pack_response->in_game) {
    if(cJSON_AddBoolToObject(item, "inGame", pack_response->in_game) == NULL) {
    goto fail; //Bool
    }
    }


    // pack_response->highest
    if(pack_response->highest) {
    if(cJSON_AddBoolToObject(item, "highest", pack_response->highest) == NULL) {
    goto fail; //Bool
    }
    }


    // pack_response->allocate_tickets
    if(pack_response->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", pack_response->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // pack_response->ticket_type
    if(pack_response->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", pack_response->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // pack_response->ticket_count
    if(pack_response->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", pack_response->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack_response->points
    if(pack_response->points) {
    if(cJSON_AddNumberToObject(item, "points", pack_response->points) == NULL) {
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

pack_response_t *pack_response_parseFromJSON(cJSON *pack_responseJSON){

    pack_response_t *pack_response_local_var = NULL;

    // define the local variable for pack_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // define the local variable for pack_response->background
    asset_short_response_t *background_local_nonprim = NULL;

    // define the local variable for pack_response->levels
    game_level_list_response_t *levels_local_nonprim = NULL;

    // define the local variable for pack_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for pack_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for pack_response->user_permissions_list
    user_permissions_list_response_t *user_permissions_list_local_nonprim = NULL;

    // define the local list for pack_response->results
    list_t *resultsList = NULL;

    // define the local variable for pack_response->tickets
    ticket_list_response_t *tickets_local_nonprim = NULL;

    // define the local variable for pack_response->application
    application_short_response_t *application_local_nonprim = NULL;

    // pack_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_pack_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = pack_response_action_FromString(action->valuestring);
    }

    // pack_response->highest_app_version
    cJSON *highest_app_version = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "highestAppVersion");
    if (cJSON_IsNull(highest_app_version)) {
        highest_app_version = NULL;
    }
    if (highest_app_version) { 
    if(!cJSON_IsString(highest_app_version) && !cJSON_IsNull(highest_app_version))
    {
    goto end; //String
    }
    }

    // pack_response->game_type
    cJSON *game_type = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "gameType");
    if (cJSON_IsNull(game_type)) {
        game_type = NULL;
    }
    if (game_type) { 
    if(!cJSON_IsString(game_type) && !cJSON_IsNull(game_type))
    {
    goto end; //String
    }
    }

    // pack_response->pack_id
    cJSON *pack_id = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "packId");
    if (cJSON_IsNull(pack_id)) {
        pack_id = NULL;
    }
    if (pack_id) { 
    if(!cJSON_IsNumber(pack_id))
    {
    goto end; //Numeric
    }
    }

    // pack_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // pack_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // pack_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // pack_response->downloaded
    cJSON *downloaded = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "downloaded");
    if (cJSON_IsNull(downloaded)) {
        downloaded = NULL;
    }
    if (downloaded) { 
    if(!cJSON_IsBool(downloaded))
    {
    goto end; //Bool
    }
    }

    // pack_response->completed
    cJSON *completed = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "completed");
    if (cJSON_IsNull(completed)) {
        completed = NULL;
    }
    if (completed) { 
    if(!cJSON_IsBool(completed))
    {
    goto end; //Bool
    }
    }

    // pack_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // pack_response->background
    cJSON *background = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "background");
    if (cJSON_IsNull(background)) {
        background = NULL;
    }
    if (background) { 
    background_local_nonprim = asset_short_response_parseFromJSON(background); //nonprimitive
    }

    // pack_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // pack_response->levels
    cJSON *levels = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "levels");
    if (cJSON_IsNull(levels)) {
        levels = NULL;
    }
    if (levels) { 
    levels_local_nonprim = game_level_list_response_parseFromJSON(levels); //nonprimitive
    }

    // pack_response->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type) && !cJSON_IsNull(sequence_type))
    {
    goto end; //String
    }
    }

    // pack_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // pack_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // pack_response->cost_to_redeem
    cJSON *cost_to_redeem = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "costToRedeem");
    if (cJSON_IsNull(cost_to_redeem)) {
        cost_to_redeem = NULL;
    }
    if (cost_to_redeem) { 
    if(!cJSON_IsNumber(cost_to_redeem))
    {
    goto end; //Numeric
    }
    }

    // pack_response->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // pack_response->price_type
    cJSON *price_type = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "priceType");
    if (cJSON_IsNull(price_type)) {
        price_type = NULL;
    }
    if (price_type) { 
    if(!cJSON_IsString(price_type) && !cJSON_IsNull(price_type))
    {
    goto end; //String
    }
    }

    // pack_response->user_permissions_list
    cJSON *user_permissions_list = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "userPermissionsList");
    if (cJSON_IsNull(user_permissions_list)) {
        user_permissions_list = NULL;
    }
    if (user_permissions_list) { 
    user_permissions_list_local_nonprim = user_permissions_list_response_parseFromJSON(user_permissions_list); //nonprimitive
    }

    // pack_response->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "results");
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

    // pack_response->tickets
    cJSON *tickets = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "tickets");
    if (cJSON_IsNull(tickets)) {
        tickets = NULL;
    }
    if (tickets) { 
    tickets_local_nonprim = ticket_list_response_parseFromJSON(tickets); //nonprimitive
    }

    // pack_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // pack_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // pack_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // pack_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // pack_response->pack_type
    cJSON *pack_type = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "packType");
    if (cJSON_IsNull(pack_type)) {
        pack_type = NULL;
    }
    sirqul_iot_platform_pack_response_PACKTYPE_e pack_typeVariable;
    if (pack_type) { 
    if(!cJSON_IsString(pack_type))
    {
    goto end; //Enum
    }
    pack_typeVariable = pack_response_pack_type_FromString(pack_type->valuestring);
    }

    // pack_response->pack_order
    cJSON *pack_order = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "packOrder");
    if (cJSON_IsNull(pack_order)) {
        pack_order = NULL;
    }
    if (pack_order) { 
    if(!cJSON_IsNumber(pack_order))
    {
    goto end; //Numeric
    }
    }

    // pack_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // pack_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_short_response_parseFromJSON(application); //nonprimitive
    }

    // pack_response->in_game
    cJSON *in_game = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "inGame");
    if (cJSON_IsNull(in_game)) {
        in_game = NULL;
    }
    if (in_game) { 
    if(!cJSON_IsBool(in_game))
    {
    goto end; //Bool
    }
    }

    // pack_response->highest
    cJSON *highest = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "highest");
    if (cJSON_IsNull(highest)) {
        highest = NULL;
    }
    if (highest) { 
    if(!cJSON_IsBool(highest))
    {
    goto end; //Bool
    }
    }

    // pack_response->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // pack_response->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // pack_response->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // pack_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(pack_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }


    pack_response_local_var = pack_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_pack_response_ACTION_NULL,
        highest_app_version && !cJSON_IsNull(highest_app_version) ? strdup(highest_app_version->valuestring) : NULL,
        game_type && !cJSON_IsNull(game_type) ? strdup(game_type->valuestring) : NULL,
        pack_id ? pack_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        active ? active->valueint : 0,
        downloaded ? downloaded->valueint : 0,
        completed ? completed->valueint : 0,
        icon ? icon_local_nonprim : NULL,
        background ? background_local_nonprim : NULL,
        tickets_earned ? tickets_earned->valuedouble : 0,
        levels ? levels_local_nonprim : NULL,
        sequence_type && !cJSON_IsNull(sequence_type) ? strdup(sequence_type->valuestring) : NULL,
        scores ? scores_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL,
        cost_to_redeem ? cost_to_redeem->valuedouble : 0,
        price ? price->valuedouble : 0,
        price_type && !cJSON_IsNull(price_type) ? strdup(price_type->valuestring) : NULL,
        user_permissions_list ? user_permissions_list_local_nonprim : NULL,
        results ? resultsList : NULL,
        tickets ? tickets_local_nonprim : NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        updated_date ? updated_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        pack_type ? pack_typeVariable : sirqul_iot_platform_pack_response_PACKTYPE_NULL,
        pack_order ? pack_order->valuedouble : 0,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        application ? application_local_nonprim : NULL,
        in_game ? in_game->valueint : 0,
        highest ? highest->valueint : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        points ? points->valuedouble : 0
        );

    return pack_response_local_var;
end:
    if (icon_local_nonprim) {
        asset_short_response_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    if (background_local_nonprim) {
        asset_short_response_free(background_local_nonprim);
        background_local_nonprim = NULL;
    }
    if (levels_local_nonprim) {
        game_level_list_response_free(levels_local_nonprim);
        levels_local_nonprim = NULL;
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
    if (resultsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, resultsList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(resultsList);
        resultsList = NULL;
    }
    if (tickets_local_nonprim) {
        ticket_list_response_free(tickets_local_nonprim);
        tickets_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_short_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    return NULL;

}
