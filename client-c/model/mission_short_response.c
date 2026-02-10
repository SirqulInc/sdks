#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mission_short_response.h"


char* mission_short_response_action_ToString(sirqul_iot_platform_mission_short_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_mission_short_response_ACTION_e mission_short_response_action_FromString(char* action){
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

static mission_short_response_t *mission_short_response_create_internal(
    sirqul_iot_platform_mission_short_response_ACTION_e action,
    char *highest_app_version,
    long mission_id,
    long tickets_earned,
    int cost_to_play,
    char *cost_to_play_type,
    account_short_response_t *owner,
    char *title,
    char *description,
    char *author_override,
    asset_short_response_t *icon,
    asset_short_response_t *image,
    char *sequence_type,
    long updated_date,
    long start_date,
    long end_date,
    char *mission_type,
    int active,
    double balance,
    int available_limit,
    int invite_count,
    int accepted_count,
    long child_count,
    int enable_buy_back,
    int minimum_to_play,
    int rewarded,
    int refunded,
    char *join_code
    ) {
    mission_short_response_t *mission_short_response_local_var = malloc(sizeof(mission_short_response_t));
    if (!mission_short_response_local_var) {
        return NULL;
    }
    mission_short_response_local_var->action = action;
    mission_short_response_local_var->highest_app_version = highest_app_version;
    mission_short_response_local_var->mission_id = mission_id;
    mission_short_response_local_var->tickets_earned = tickets_earned;
    mission_short_response_local_var->cost_to_play = cost_to_play;
    mission_short_response_local_var->cost_to_play_type = cost_to_play_type;
    mission_short_response_local_var->owner = owner;
    mission_short_response_local_var->title = title;
    mission_short_response_local_var->description = description;
    mission_short_response_local_var->author_override = author_override;
    mission_short_response_local_var->icon = icon;
    mission_short_response_local_var->image = image;
    mission_short_response_local_var->sequence_type = sequence_type;
    mission_short_response_local_var->updated_date = updated_date;
    mission_short_response_local_var->start_date = start_date;
    mission_short_response_local_var->end_date = end_date;
    mission_short_response_local_var->mission_type = mission_type;
    mission_short_response_local_var->active = active;
    mission_short_response_local_var->balance = balance;
    mission_short_response_local_var->available_limit = available_limit;
    mission_short_response_local_var->invite_count = invite_count;
    mission_short_response_local_var->accepted_count = accepted_count;
    mission_short_response_local_var->child_count = child_count;
    mission_short_response_local_var->enable_buy_back = enable_buy_back;
    mission_short_response_local_var->minimum_to_play = minimum_to_play;
    mission_short_response_local_var->rewarded = rewarded;
    mission_short_response_local_var->refunded = refunded;
    mission_short_response_local_var->join_code = join_code;

    mission_short_response_local_var->_library_owned = 1;
    return mission_short_response_local_var;
}

__attribute__((deprecated)) mission_short_response_t *mission_short_response_create(
    sirqul_iot_platform_mission_short_response_ACTION_e action,
    char *highest_app_version,
    long mission_id,
    long tickets_earned,
    int cost_to_play,
    char *cost_to_play_type,
    account_short_response_t *owner,
    char *title,
    char *description,
    char *author_override,
    asset_short_response_t *icon,
    asset_short_response_t *image,
    char *sequence_type,
    long updated_date,
    long start_date,
    long end_date,
    char *mission_type,
    int active,
    double balance,
    int available_limit,
    int invite_count,
    int accepted_count,
    long child_count,
    int enable_buy_back,
    int minimum_to_play,
    int rewarded,
    int refunded,
    char *join_code
    ) {
    return mission_short_response_create_internal (
        action,
        highest_app_version,
        mission_id,
        tickets_earned,
        cost_to_play,
        cost_to_play_type,
        owner,
        title,
        description,
        author_override,
        icon,
        image,
        sequence_type,
        updated_date,
        start_date,
        end_date,
        mission_type,
        active,
        balance,
        available_limit,
        invite_count,
        accepted_count,
        child_count,
        enable_buy_back,
        minimum_to_play,
        rewarded,
        refunded,
        join_code
        );
}

void mission_short_response_free(mission_short_response_t *mission_short_response) {
    if(NULL == mission_short_response){
        return ;
    }
    if(mission_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mission_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mission_short_response->highest_app_version) {
        free(mission_short_response->highest_app_version);
        mission_short_response->highest_app_version = NULL;
    }
    if (mission_short_response->cost_to_play_type) {
        free(mission_short_response->cost_to_play_type);
        mission_short_response->cost_to_play_type = NULL;
    }
    if (mission_short_response->owner) {
        account_short_response_free(mission_short_response->owner);
        mission_short_response->owner = NULL;
    }
    if (mission_short_response->title) {
        free(mission_short_response->title);
        mission_short_response->title = NULL;
    }
    if (mission_short_response->description) {
        free(mission_short_response->description);
        mission_short_response->description = NULL;
    }
    if (mission_short_response->author_override) {
        free(mission_short_response->author_override);
        mission_short_response->author_override = NULL;
    }
    if (mission_short_response->icon) {
        asset_short_response_free(mission_short_response->icon);
        mission_short_response->icon = NULL;
    }
    if (mission_short_response->image) {
        asset_short_response_free(mission_short_response->image);
        mission_short_response->image = NULL;
    }
    if (mission_short_response->sequence_type) {
        free(mission_short_response->sequence_type);
        mission_short_response->sequence_type = NULL;
    }
    if (mission_short_response->mission_type) {
        free(mission_short_response->mission_type);
        mission_short_response->mission_type = NULL;
    }
    if (mission_short_response->join_code) {
        free(mission_short_response->join_code);
        mission_short_response->join_code = NULL;
    }
    free(mission_short_response);
}

cJSON *mission_short_response_convertToJSON(mission_short_response_t *mission_short_response) {
    cJSON *item = cJSON_CreateObject();

    // mission_short_response->action
    if(mission_short_response->action != sirqul_iot_platform_mission_short_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", mission_short_response_action_ToString(mission_short_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission_short_response->highest_app_version
    if(mission_short_response->highest_app_version) {
    if(cJSON_AddStringToObject(item, "highestAppVersion", mission_short_response->highest_app_version) == NULL) {
    goto fail; //String
    }
    }


    // mission_short_response->mission_id
    if(mission_short_response->mission_id) {
    if(cJSON_AddNumberToObject(item, "missionId", mission_short_response->mission_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->tickets_earned
    if(mission_short_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", mission_short_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->cost_to_play
    if(mission_short_response->cost_to_play) {
    if(cJSON_AddNumberToObject(item, "costToPlay", mission_short_response->cost_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->cost_to_play_type
    if(mission_short_response->cost_to_play_type) {
    if(cJSON_AddStringToObject(item, "costToPlayType", mission_short_response->cost_to_play_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_short_response->owner
    if(mission_short_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(mission_short_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_short_response->title
    if(mission_short_response->title) {
    if(cJSON_AddStringToObject(item, "title", mission_short_response->title) == NULL) {
    goto fail; //String
    }
    }


    // mission_short_response->description
    if(mission_short_response->description) {
    if(cJSON_AddStringToObject(item, "description", mission_short_response->description) == NULL) {
    goto fail; //String
    }
    }


    // mission_short_response->author_override
    if(mission_short_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", mission_short_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // mission_short_response->icon
    if(mission_short_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(mission_short_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_short_response->image
    if(mission_short_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(mission_short_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_short_response->sequence_type
    if(mission_short_response->sequence_type) {
    if(cJSON_AddStringToObject(item, "sequenceType", mission_short_response->sequence_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_short_response->updated_date
    if(mission_short_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", mission_short_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->start_date
    if(mission_short_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", mission_short_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->end_date
    if(mission_short_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", mission_short_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->mission_type
    if(mission_short_response->mission_type) {
    if(cJSON_AddStringToObject(item, "missionType", mission_short_response->mission_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_short_response->active
    if(mission_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", mission_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_short_response->balance
    if(mission_short_response->balance) {
    if(cJSON_AddNumberToObject(item, "balance", mission_short_response->balance) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->available_limit
    if(mission_short_response->available_limit) {
    if(cJSON_AddNumberToObject(item, "availableLimit", mission_short_response->available_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->invite_count
    if(mission_short_response->invite_count) {
    if(cJSON_AddNumberToObject(item, "inviteCount", mission_short_response->invite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->accepted_count
    if(mission_short_response->accepted_count) {
    if(cJSON_AddNumberToObject(item, "acceptedCount", mission_short_response->accepted_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->child_count
    if(mission_short_response->child_count) {
    if(cJSON_AddNumberToObject(item, "childCount", mission_short_response->child_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->enable_buy_back
    if(mission_short_response->enable_buy_back) {
    if(cJSON_AddBoolToObject(item, "enableBuyBack", mission_short_response->enable_buy_back) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_short_response->minimum_to_play
    if(mission_short_response->minimum_to_play) {
    if(cJSON_AddNumberToObject(item, "minimumToPlay", mission_short_response->minimum_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_short_response->rewarded
    if(mission_short_response->rewarded) {
    if(cJSON_AddBoolToObject(item, "rewarded", mission_short_response->rewarded) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_short_response->refunded
    if(mission_short_response->refunded) {
    if(cJSON_AddBoolToObject(item, "refunded", mission_short_response->refunded) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_short_response->join_code
    if(mission_short_response->join_code) {
    if(cJSON_AddStringToObject(item, "joinCode", mission_short_response->join_code) == NULL) {
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

mission_short_response_t *mission_short_response_parseFromJSON(cJSON *mission_short_responseJSON){

    mission_short_response_t *mission_short_response_local_var = NULL;

    // define the local variable for mission_short_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for mission_short_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // define the local variable for mission_short_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // mission_short_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_mission_short_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = mission_short_response_action_FromString(action->valuestring);
    }

    // mission_short_response->highest_app_version
    cJSON *highest_app_version = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "highestAppVersion");
    if (cJSON_IsNull(highest_app_version)) {
        highest_app_version = NULL;
    }
    if (highest_app_version) { 
    if(!cJSON_IsString(highest_app_version) && !cJSON_IsNull(highest_app_version))
    {
    goto end; //String
    }
    }

    // mission_short_response->mission_id
    cJSON *mission_id = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "missionId");
    if (cJSON_IsNull(mission_id)) {
        mission_id = NULL;
    }
    if (mission_id) { 
    if(!cJSON_IsNumber(mission_id))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->cost_to_play
    cJSON *cost_to_play = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "costToPlay");
    if (cJSON_IsNull(cost_to_play)) {
        cost_to_play = NULL;
    }
    if (cost_to_play) { 
    if(!cJSON_IsNumber(cost_to_play))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->cost_to_play_type
    cJSON *cost_to_play_type = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "costToPlayType");
    if (cJSON_IsNull(cost_to_play_type)) {
        cost_to_play_type = NULL;
    }
    if (cost_to_play_type) { 
    if(!cJSON_IsString(cost_to_play_type) && !cJSON_IsNull(cost_to_play_type))
    {
    goto end; //String
    }
    }

    // mission_short_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // mission_short_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // mission_short_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // mission_short_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // mission_short_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // mission_short_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // mission_short_response->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type) && !cJSON_IsNull(sequence_type))
    {
    goto end; //String
    }
    }

    // mission_short_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->mission_type
    cJSON *mission_type = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "missionType");
    if (cJSON_IsNull(mission_type)) {
        mission_type = NULL;
    }
    if (mission_type) { 
    if(!cJSON_IsString(mission_type) && !cJSON_IsNull(mission_type))
    {
    goto end; //String
    }
    }

    // mission_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // mission_short_response->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "balance");
    if (cJSON_IsNull(balance)) {
        balance = NULL;
    }
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->available_limit
    cJSON *available_limit = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "availableLimit");
    if (cJSON_IsNull(available_limit)) {
        available_limit = NULL;
    }
    if (available_limit) { 
    if(!cJSON_IsNumber(available_limit))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->invite_count
    cJSON *invite_count = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "inviteCount");
    if (cJSON_IsNull(invite_count)) {
        invite_count = NULL;
    }
    if (invite_count) { 
    if(!cJSON_IsNumber(invite_count))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->accepted_count
    cJSON *accepted_count = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "acceptedCount");
    if (cJSON_IsNull(accepted_count)) {
        accepted_count = NULL;
    }
    if (accepted_count) { 
    if(!cJSON_IsNumber(accepted_count))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->child_count
    cJSON *child_count = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "childCount");
    if (cJSON_IsNull(child_count)) {
        child_count = NULL;
    }
    if (child_count) { 
    if(!cJSON_IsNumber(child_count))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->enable_buy_back
    cJSON *enable_buy_back = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "enableBuyBack");
    if (cJSON_IsNull(enable_buy_back)) {
        enable_buy_back = NULL;
    }
    if (enable_buy_back) { 
    if(!cJSON_IsBool(enable_buy_back))
    {
    goto end; //Bool
    }
    }

    // mission_short_response->minimum_to_play
    cJSON *minimum_to_play = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "minimumToPlay");
    if (cJSON_IsNull(minimum_to_play)) {
        minimum_to_play = NULL;
    }
    if (minimum_to_play) { 
    if(!cJSON_IsNumber(minimum_to_play))
    {
    goto end; //Numeric
    }
    }

    // mission_short_response->rewarded
    cJSON *rewarded = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "rewarded");
    if (cJSON_IsNull(rewarded)) {
        rewarded = NULL;
    }
    if (rewarded) { 
    if(!cJSON_IsBool(rewarded))
    {
    goto end; //Bool
    }
    }

    // mission_short_response->refunded
    cJSON *refunded = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "refunded");
    if (cJSON_IsNull(refunded)) {
        refunded = NULL;
    }
    if (refunded) { 
    if(!cJSON_IsBool(refunded))
    {
    goto end; //Bool
    }
    }

    // mission_short_response->join_code
    cJSON *join_code = cJSON_GetObjectItemCaseSensitive(mission_short_responseJSON, "joinCode");
    if (cJSON_IsNull(join_code)) {
        join_code = NULL;
    }
    if (join_code) { 
    if(!cJSON_IsString(join_code) && !cJSON_IsNull(join_code))
    {
    goto end; //String
    }
    }


    mission_short_response_local_var = mission_short_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_mission_short_response_ACTION_NULL,
        highest_app_version && !cJSON_IsNull(highest_app_version) ? strdup(highest_app_version->valuestring) : NULL,
        mission_id ? mission_id->valuedouble : 0,
        tickets_earned ? tickets_earned->valuedouble : 0,
        cost_to_play ? cost_to_play->valuedouble : 0,
        cost_to_play_type && !cJSON_IsNull(cost_to_play_type) ? strdup(cost_to_play_type->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        icon ? icon_local_nonprim : NULL,
        image ? image_local_nonprim : NULL,
        sequence_type && !cJSON_IsNull(sequence_type) ? strdup(sequence_type->valuestring) : NULL,
        updated_date ? updated_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        mission_type && !cJSON_IsNull(mission_type) ? strdup(mission_type->valuestring) : NULL,
        active ? active->valueint : 0,
        balance ? balance->valuedouble : 0,
        available_limit ? available_limit->valuedouble : 0,
        invite_count ? invite_count->valuedouble : 0,
        accepted_count ? accepted_count->valuedouble : 0,
        child_count ? child_count->valuedouble : 0,
        enable_buy_back ? enable_buy_back->valueint : 0,
        minimum_to_play ? minimum_to_play->valuedouble : 0,
        rewarded ? rewarded->valueint : 0,
        refunded ? refunded->valueint : 0,
        join_code && !cJSON_IsNull(join_code) ? strdup(join_code->valuestring) : NULL
        );

    return mission_short_response_local_var;
end:
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
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
