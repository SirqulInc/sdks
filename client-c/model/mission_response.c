#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mission_response.h"


char* mission_response_action_ToString(sirqul_iot_platform_mission_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_mission_response_ACTION_e mission_response_action_FromString(char* action){
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
char* mission_response_invite_status_ToString(sirqul_iot_platform_mission_response_INVITESTATUS_e invite_status) {
    char* invite_statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    return invite_statusArray[invite_status];
}

sirqul_iot_platform_mission_response_INVITESTATUS_e mission_response_invite_status_FromString(char* invite_status){
    int stringToReturn = 0;
    char *invite_statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    size_t sizeofArray = sizeof(invite_statusArray) / sizeof(invite_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(invite_status, invite_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static mission_response_t *mission_response_create_internal(
    sirqul_iot_platform_mission_response_ACTION_e action,
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
    char *join_code,
    list_t *rewards,
    game_list_response_t *games,
    score_list_response_t *scores,
    user_permissions_list_response_t *user_permissions_list,
    list_t *results,
    sirqul_iot_platform_mission_response_INVITESTATUS_e invite_status,
    list_t *audiences,
    long mission_invite_id,
    mission_invite_response_t *mission_invite,
    account_short_response_t *invitee,
    char *format_type,
    list_t *creatives,
    int fixed_reward,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points,
    char *split_reward,
    int seconds_between_levels,
    int seconds_between_packs,
    int advanced_reporting
    ) {
    mission_response_t *mission_response_local_var = malloc(sizeof(mission_response_t));
    if (!mission_response_local_var) {
        return NULL;
    }
    mission_response_local_var->action = action;
    mission_response_local_var->highest_app_version = highest_app_version;
    mission_response_local_var->mission_id = mission_id;
    mission_response_local_var->tickets_earned = tickets_earned;
    mission_response_local_var->cost_to_play = cost_to_play;
    mission_response_local_var->cost_to_play_type = cost_to_play_type;
    mission_response_local_var->owner = owner;
    mission_response_local_var->title = title;
    mission_response_local_var->description = description;
    mission_response_local_var->author_override = author_override;
    mission_response_local_var->icon = icon;
    mission_response_local_var->image = image;
    mission_response_local_var->sequence_type = sequence_type;
    mission_response_local_var->updated_date = updated_date;
    mission_response_local_var->start_date = start_date;
    mission_response_local_var->end_date = end_date;
    mission_response_local_var->mission_type = mission_type;
    mission_response_local_var->active = active;
    mission_response_local_var->balance = balance;
    mission_response_local_var->available_limit = available_limit;
    mission_response_local_var->invite_count = invite_count;
    mission_response_local_var->accepted_count = accepted_count;
    mission_response_local_var->child_count = child_count;
    mission_response_local_var->enable_buy_back = enable_buy_back;
    mission_response_local_var->minimum_to_play = minimum_to_play;
    mission_response_local_var->rewarded = rewarded;
    mission_response_local_var->refunded = refunded;
    mission_response_local_var->join_code = join_code;
    mission_response_local_var->rewards = rewards;
    mission_response_local_var->games = games;
    mission_response_local_var->scores = scores;
    mission_response_local_var->user_permissions_list = user_permissions_list;
    mission_response_local_var->results = results;
    mission_response_local_var->invite_status = invite_status;
    mission_response_local_var->audiences = audiences;
    mission_response_local_var->mission_invite_id = mission_invite_id;
    mission_response_local_var->mission_invite = mission_invite;
    mission_response_local_var->invitee = invitee;
    mission_response_local_var->format_type = format_type;
    mission_response_local_var->creatives = creatives;
    mission_response_local_var->fixed_reward = fixed_reward;
    mission_response_local_var->allocate_tickets = allocate_tickets;
    mission_response_local_var->ticket_type = ticket_type;
    mission_response_local_var->ticket_count = ticket_count;
    mission_response_local_var->points = points;
    mission_response_local_var->split_reward = split_reward;
    mission_response_local_var->seconds_between_levels = seconds_between_levels;
    mission_response_local_var->seconds_between_packs = seconds_between_packs;
    mission_response_local_var->advanced_reporting = advanced_reporting;

    mission_response_local_var->_library_owned = 1;
    return mission_response_local_var;
}

__attribute__((deprecated)) mission_response_t *mission_response_create(
    sirqul_iot_platform_mission_response_ACTION_e action,
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
    char *join_code,
    list_t *rewards,
    game_list_response_t *games,
    score_list_response_t *scores,
    user_permissions_list_response_t *user_permissions_list,
    list_t *results,
    sirqul_iot_platform_mission_response_INVITESTATUS_e invite_status,
    list_t *audiences,
    long mission_invite_id,
    mission_invite_response_t *mission_invite,
    account_short_response_t *invitee,
    char *format_type,
    list_t *creatives,
    int fixed_reward,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points,
    char *split_reward,
    int seconds_between_levels,
    int seconds_between_packs,
    int advanced_reporting
    ) {
    return mission_response_create_internal (
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
        join_code,
        rewards,
        games,
        scores,
        user_permissions_list,
        results,
        invite_status,
        audiences,
        mission_invite_id,
        mission_invite,
        invitee,
        format_type,
        creatives,
        fixed_reward,
        allocate_tickets,
        ticket_type,
        ticket_count,
        points,
        split_reward,
        seconds_between_levels,
        seconds_between_packs,
        advanced_reporting
        );
}

void mission_response_free(mission_response_t *mission_response) {
    if(NULL == mission_response){
        return ;
    }
    if(mission_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mission_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mission_response->highest_app_version) {
        free(mission_response->highest_app_version);
        mission_response->highest_app_version = NULL;
    }
    if (mission_response->cost_to_play_type) {
        free(mission_response->cost_to_play_type);
        mission_response->cost_to_play_type = NULL;
    }
    if (mission_response->owner) {
        account_short_response_free(mission_response->owner);
        mission_response->owner = NULL;
    }
    if (mission_response->title) {
        free(mission_response->title);
        mission_response->title = NULL;
    }
    if (mission_response->description) {
        free(mission_response->description);
        mission_response->description = NULL;
    }
    if (mission_response->author_override) {
        free(mission_response->author_override);
        mission_response->author_override = NULL;
    }
    if (mission_response->icon) {
        asset_short_response_free(mission_response->icon);
        mission_response->icon = NULL;
    }
    if (mission_response->image) {
        asset_short_response_free(mission_response->image);
        mission_response->image = NULL;
    }
    if (mission_response->sequence_type) {
        free(mission_response->sequence_type);
        mission_response->sequence_type = NULL;
    }
    if (mission_response->mission_type) {
        free(mission_response->mission_type);
        mission_response->mission_type = NULL;
    }
    if (mission_response->join_code) {
        free(mission_response->join_code);
        mission_response->join_code = NULL;
    }
    if (mission_response->rewards) {
        list_ForEach(listEntry, mission_response->rewards) {
            reward_response_free(listEntry->data);
        }
        list_freeList(mission_response->rewards);
        mission_response->rewards = NULL;
    }
    if (mission_response->games) {
        game_list_response_free(mission_response->games);
        mission_response->games = NULL;
    }
    if (mission_response->scores) {
        score_list_response_free(mission_response->scores);
        mission_response->scores = NULL;
    }
    if (mission_response->user_permissions_list) {
        user_permissions_list_response_free(mission_response->user_permissions_list);
        mission_response->user_permissions_list = NULL;
    }
    if (mission_response->results) {
        list_ForEach(listEntry, mission_response->results) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(mission_response->results);
        mission_response->results = NULL;
    }
    if (mission_response->audiences) {
        list_ForEach(listEntry, mission_response->audiences) {
            audience_response_free(listEntry->data);
        }
        list_freeList(mission_response->audiences);
        mission_response->audiences = NULL;
    }
    if (mission_response->mission_invite) {
        mission_invite_response_free(mission_response->mission_invite);
        mission_response->mission_invite = NULL;
    }
    if (mission_response->invitee) {
        account_short_response_free(mission_response->invitee);
        mission_response->invitee = NULL;
    }
    if (mission_response->format_type) {
        free(mission_response->format_type);
        mission_response->format_type = NULL;
    }
    if (mission_response->creatives) {
        list_ForEach(listEntry, mission_response->creatives) {
            creative_response_free(listEntry->data);
        }
        list_freeList(mission_response->creatives);
        mission_response->creatives = NULL;
    }
    if (mission_response->ticket_type) {
        free(mission_response->ticket_type);
        mission_response->ticket_type = NULL;
    }
    if (mission_response->split_reward) {
        free(mission_response->split_reward);
        mission_response->split_reward = NULL;
    }
    free(mission_response);
}

cJSON *mission_response_convertToJSON(mission_response_t *mission_response) {
    cJSON *item = cJSON_CreateObject();

    // mission_response->action
    if(mission_response->action != sirqul_iot_platform_mission_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", mission_response_action_ToString(mission_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission_response->highest_app_version
    if(mission_response->highest_app_version) {
    if(cJSON_AddStringToObject(item, "highestAppVersion", mission_response->highest_app_version) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->mission_id
    if(mission_response->mission_id) {
    if(cJSON_AddNumberToObject(item, "missionId", mission_response->mission_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->tickets_earned
    if(mission_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", mission_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->cost_to_play
    if(mission_response->cost_to_play) {
    if(cJSON_AddNumberToObject(item, "costToPlay", mission_response->cost_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->cost_to_play_type
    if(mission_response->cost_to_play_type) {
    if(cJSON_AddStringToObject(item, "costToPlayType", mission_response->cost_to_play_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->owner
    if(mission_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(mission_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->title
    if(mission_response->title) {
    if(cJSON_AddStringToObject(item, "title", mission_response->title) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->description
    if(mission_response->description) {
    if(cJSON_AddStringToObject(item, "description", mission_response->description) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->author_override
    if(mission_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", mission_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->icon
    if(mission_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(mission_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->image
    if(mission_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(mission_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->sequence_type
    if(mission_response->sequence_type) {
    if(cJSON_AddStringToObject(item, "sequenceType", mission_response->sequence_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->updated_date
    if(mission_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", mission_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->start_date
    if(mission_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", mission_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->end_date
    if(mission_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", mission_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->mission_type
    if(mission_response->mission_type) {
    if(cJSON_AddStringToObject(item, "missionType", mission_response->mission_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->active
    if(mission_response->active) {
    if(cJSON_AddBoolToObject(item, "active", mission_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_response->balance
    if(mission_response->balance) {
    if(cJSON_AddNumberToObject(item, "balance", mission_response->balance) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->available_limit
    if(mission_response->available_limit) {
    if(cJSON_AddNumberToObject(item, "availableLimit", mission_response->available_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->invite_count
    if(mission_response->invite_count) {
    if(cJSON_AddNumberToObject(item, "inviteCount", mission_response->invite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->accepted_count
    if(mission_response->accepted_count) {
    if(cJSON_AddNumberToObject(item, "acceptedCount", mission_response->accepted_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->child_count
    if(mission_response->child_count) {
    if(cJSON_AddNumberToObject(item, "childCount", mission_response->child_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->enable_buy_back
    if(mission_response->enable_buy_back) {
    if(cJSON_AddBoolToObject(item, "enableBuyBack", mission_response->enable_buy_back) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_response->minimum_to_play
    if(mission_response->minimum_to_play) {
    if(cJSON_AddNumberToObject(item, "minimumToPlay", mission_response->minimum_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->rewarded
    if(mission_response->rewarded) {
    if(cJSON_AddBoolToObject(item, "rewarded", mission_response->rewarded) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_response->refunded
    if(mission_response->refunded) {
    if(cJSON_AddBoolToObject(item, "refunded", mission_response->refunded) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_response->join_code
    if(mission_response->join_code) {
    if(cJSON_AddStringToObject(item, "joinCode", mission_response->join_code) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->rewards
    if(mission_response->rewards) {
    cJSON *rewards = cJSON_AddArrayToObject(item, "rewards");
    if(rewards == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *rewardsListEntry;
    if (mission_response->rewards) {
    list_ForEach(rewardsListEntry, mission_response->rewards) {
    cJSON *itemLocal = reward_response_convertToJSON(rewardsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(rewards, itemLocal);
    }
    }
    }


    // mission_response->games
    if(mission_response->games) {
    cJSON *games_local_JSON = game_list_response_convertToJSON(mission_response->games);
    if(games_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "games", games_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->scores
    if(mission_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(mission_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->user_permissions_list
    if(mission_response->user_permissions_list) {
    cJSON *user_permissions_list_local_JSON = user_permissions_list_response_convertToJSON(mission_response->user_permissions_list);
    if(user_permissions_list_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userPermissionsList", user_permissions_list_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->results
    if(mission_response->results) {
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (mission_response->results) {
    list_ForEach(resultsListEntry, mission_response->results) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(resultsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(results, itemLocal);
    }
    }
    }


    // mission_response->invite_status
    if(mission_response->invite_status != sirqul_iot_platform_mission_response_INVITESTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "inviteStatus", mission_response_invite_status_ToString(mission_response->invite_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission_response->audiences
    if(mission_response->audiences) {
    cJSON *audiences = cJSON_AddArrayToObject(item, "audiences");
    if(audiences == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *audiencesListEntry;
    if (mission_response->audiences) {
    list_ForEach(audiencesListEntry, mission_response->audiences) {
    cJSON *itemLocal = audience_response_convertToJSON(audiencesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(audiences, itemLocal);
    }
    }
    }


    // mission_response->mission_invite_id
    if(mission_response->mission_invite_id) {
    if(cJSON_AddNumberToObject(item, "missionInviteId", mission_response->mission_invite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->mission_invite
    if(mission_response->mission_invite) {
    cJSON *mission_invite_local_JSON = mission_invite_response_convertToJSON(mission_response->mission_invite);
    if(mission_invite_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "missionInvite", mission_invite_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->invitee
    if(mission_response->invitee) {
    cJSON *invitee_local_JSON = account_short_response_convertToJSON(mission_response->invitee);
    if(invitee_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "invitee", invitee_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_response->format_type
    if(mission_response->format_type) {
    if(cJSON_AddStringToObject(item, "formatType", mission_response->format_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->creatives
    if(mission_response->creatives) {
    cJSON *creatives = cJSON_AddArrayToObject(item, "creatives");
    if(creatives == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *creativesListEntry;
    if (mission_response->creatives) {
    list_ForEach(creativesListEntry, mission_response->creatives) {
    cJSON *itemLocal = creative_response_convertToJSON(creativesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(creatives, itemLocal);
    }
    }
    }


    // mission_response->fixed_reward
    if(mission_response->fixed_reward) {
    if(cJSON_AddBoolToObject(item, "fixedReward", mission_response->fixed_reward) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_response->allocate_tickets
    if(mission_response->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", mission_response->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_response->ticket_type
    if(mission_response->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", mission_response->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->ticket_count
    if(mission_response->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", mission_response->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->points
    if(mission_response->points) {
    if(cJSON_AddNumberToObject(item, "points", mission_response->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->split_reward
    if(mission_response->split_reward) {
    if(cJSON_AddStringToObject(item, "splitReward", mission_response->split_reward) == NULL) {
    goto fail; //String
    }
    }


    // mission_response->seconds_between_levels
    if(mission_response->seconds_between_levels) {
    if(cJSON_AddNumberToObject(item, "secondsBetweenLevels", mission_response->seconds_between_levels) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->seconds_between_packs
    if(mission_response->seconds_between_packs) {
    if(cJSON_AddNumberToObject(item, "secondsBetweenPacks", mission_response->seconds_between_packs) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_response->advanced_reporting
    if(mission_response->advanced_reporting) {
    if(cJSON_AddBoolToObject(item, "advancedReporting", mission_response->advanced_reporting) == NULL) {
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

mission_response_t *mission_response_parseFromJSON(cJSON *mission_responseJSON){

    mission_response_t *mission_response_local_var = NULL;

    // define the local variable for mission_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for mission_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // define the local variable for mission_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // define the local list for mission_response->rewards
    list_t *rewardsList = NULL;

    // define the local variable for mission_response->games
    game_list_response_t *games_local_nonprim = NULL;

    // define the local variable for mission_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for mission_response->user_permissions_list
    user_permissions_list_response_t *user_permissions_list_local_nonprim = NULL;

    // define the local list for mission_response->results
    list_t *resultsList = NULL;

    // define the local list for mission_response->audiences
    list_t *audiencesList = NULL;

    // define the local variable for mission_response->mission_invite
    mission_invite_response_t *mission_invite_local_nonprim = NULL;

    // define the local variable for mission_response->invitee
    account_short_response_t *invitee_local_nonprim = NULL;

    // define the local list for mission_response->creatives
    list_t *creativesList = NULL;

    // mission_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_mission_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = mission_response_action_FromString(action->valuestring);
    }

    // mission_response->highest_app_version
    cJSON *highest_app_version = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "highestAppVersion");
    if (cJSON_IsNull(highest_app_version)) {
        highest_app_version = NULL;
    }
    if (highest_app_version) { 
    if(!cJSON_IsString(highest_app_version) && !cJSON_IsNull(highest_app_version))
    {
    goto end; //String
    }
    }

    // mission_response->mission_id
    cJSON *mission_id = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "missionId");
    if (cJSON_IsNull(mission_id)) {
        mission_id = NULL;
    }
    if (mission_id) { 
    if(!cJSON_IsNumber(mission_id))
    {
    goto end; //Numeric
    }
    }

    // mission_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // mission_response->cost_to_play
    cJSON *cost_to_play = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "costToPlay");
    if (cJSON_IsNull(cost_to_play)) {
        cost_to_play = NULL;
    }
    if (cost_to_play) { 
    if(!cJSON_IsNumber(cost_to_play))
    {
    goto end; //Numeric
    }
    }

    // mission_response->cost_to_play_type
    cJSON *cost_to_play_type = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "costToPlayType");
    if (cJSON_IsNull(cost_to_play_type)) {
        cost_to_play_type = NULL;
    }
    if (cost_to_play_type) { 
    if(!cJSON_IsString(cost_to_play_type) && !cJSON_IsNull(cost_to_play_type))
    {
    goto end; //String
    }
    }

    // mission_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // mission_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // mission_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // mission_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // mission_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // mission_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // mission_response->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type) && !cJSON_IsNull(sequence_type))
    {
    goto end; //String
    }
    }

    // mission_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // mission_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // mission_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // mission_response->mission_type
    cJSON *mission_type = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "missionType");
    if (cJSON_IsNull(mission_type)) {
        mission_type = NULL;
    }
    if (mission_type) { 
    if(!cJSON_IsString(mission_type) && !cJSON_IsNull(mission_type))
    {
    goto end; //String
    }
    }

    // mission_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // mission_response->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "balance");
    if (cJSON_IsNull(balance)) {
        balance = NULL;
    }
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // mission_response->available_limit
    cJSON *available_limit = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "availableLimit");
    if (cJSON_IsNull(available_limit)) {
        available_limit = NULL;
    }
    if (available_limit) { 
    if(!cJSON_IsNumber(available_limit))
    {
    goto end; //Numeric
    }
    }

    // mission_response->invite_count
    cJSON *invite_count = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "inviteCount");
    if (cJSON_IsNull(invite_count)) {
        invite_count = NULL;
    }
    if (invite_count) { 
    if(!cJSON_IsNumber(invite_count))
    {
    goto end; //Numeric
    }
    }

    // mission_response->accepted_count
    cJSON *accepted_count = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "acceptedCount");
    if (cJSON_IsNull(accepted_count)) {
        accepted_count = NULL;
    }
    if (accepted_count) { 
    if(!cJSON_IsNumber(accepted_count))
    {
    goto end; //Numeric
    }
    }

    // mission_response->child_count
    cJSON *child_count = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "childCount");
    if (cJSON_IsNull(child_count)) {
        child_count = NULL;
    }
    if (child_count) { 
    if(!cJSON_IsNumber(child_count))
    {
    goto end; //Numeric
    }
    }

    // mission_response->enable_buy_back
    cJSON *enable_buy_back = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "enableBuyBack");
    if (cJSON_IsNull(enable_buy_back)) {
        enable_buy_back = NULL;
    }
    if (enable_buy_back) { 
    if(!cJSON_IsBool(enable_buy_back))
    {
    goto end; //Bool
    }
    }

    // mission_response->minimum_to_play
    cJSON *minimum_to_play = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "minimumToPlay");
    if (cJSON_IsNull(minimum_to_play)) {
        minimum_to_play = NULL;
    }
    if (minimum_to_play) { 
    if(!cJSON_IsNumber(minimum_to_play))
    {
    goto end; //Numeric
    }
    }

    // mission_response->rewarded
    cJSON *rewarded = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "rewarded");
    if (cJSON_IsNull(rewarded)) {
        rewarded = NULL;
    }
    if (rewarded) { 
    if(!cJSON_IsBool(rewarded))
    {
    goto end; //Bool
    }
    }

    // mission_response->refunded
    cJSON *refunded = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "refunded");
    if (cJSON_IsNull(refunded)) {
        refunded = NULL;
    }
    if (refunded) { 
    if(!cJSON_IsBool(refunded))
    {
    goto end; //Bool
    }
    }

    // mission_response->join_code
    cJSON *join_code = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "joinCode");
    if (cJSON_IsNull(join_code)) {
        join_code = NULL;
    }
    if (join_code) { 
    if(!cJSON_IsString(join_code) && !cJSON_IsNull(join_code))
    {
    goto end; //String
    }
    }

    // mission_response->rewards
    cJSON *rewards = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "rewards");
    if (cJSON_IsNull(rewards)) {
        rewards = NULL;
    }
    if (rewards) { 
    cJSON *rewards_local_nonprimitive = NULL;
    if(!cJSON_IsArray(rewards)){
        goto end; //nonprimitive container
    }

    rewardsList = list_createList();

    cJSON_ArrayForEach(rewards_local_nonprimitive,rewards )
    {
        if(!cJSON_IsObject(rewards_local_nonprimitive)){
            goto end;
        }
        reward_response_t *rewardsItem = reward_response_parseFromJSON(rewards_local_nonprimitive);

        list_addElement(rewardsList, rewardsItem);
    }
    }

    // mission_response->games
    cJSON *games = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "games");
    if (cJSON_IsNull(games)) {
        games = NULL;
    }
    if (games) { 
    games_local_nonprim = game_list_response_parseFromJSON(games); //nonprimitive
    }

    // mission_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // mission_response->user_permissions_list
    cJSON *user_permissions_list = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "userPermissionsList");
    if (cJSON_IsNull(user_permissions_list)) {
        user_permissions_list = NULL;
    }
    if (user_permissions_list) { 
    user_permissions_list_local_nonprim = user_permissions_list_response_parseFromJSON(user_permissions_list); //nonprimitive
    }

    // mission_response->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "results");
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

    // mission_response->invite_status
    cJSON *invite_status = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "inviteStatus");
    if (cJSON_IsNull(invite_status)) {
        invite_status = NULL;
    }
    sirqul_iot_platform_mission_response_INVITESTATUS_e invite_statusVariable;
    if (invite_status) { 
    if(!cJSON_IsString(invite_status))
    {
    goto end; //Enum
    }
    invite_statusVariable = mission_response_invite_status_FromString(invite_status->valuestring);
    }

    // mission_response->audiences
    cJSON *audiences = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "audiences");
    if (cJSON_IsNull(audiences)) {
        audiences = NULL;
    }
    if (audiences) { 
    cJSON *audiences_local_nonprimitive = NULL;
    if(!cJSON_IsArray(audiences)){
        goto end; //nonprimitive container
    }

    audiencesList = list_createList();

    cJSON_ArrayForEach(audiences_local_nonprimitive,audiences )
    {
        if(!cJSON_IsObject(audiences_local_nonprimitive)){
            goto end;
        }
        audience_response_t *audiencesItem = audience_response_parseFromJSON(audiences_local_nonprimitive);

        list_addElement(audiencesList, audiencesItem);
    }
    }

    // mission_response->mission_invite_id
    cJSON *mission_invite_id = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "missionInviteId");
    if (cJSON_IsNull(mission_invite_id)) {
        mission_invite_id = NULL;
    }
    if (mission_invite_id) { 
    if(!cJSON_IsNumber(mission_invite_id))
    {
    goto end; //Numeric
    }
    }

    // mission_response->mission_invite
    cJSON *mission_invite = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "missionInvite");
    if (cJSON_IsNull(mission_invite)) {
        mission_invite = NULL;
    }
    if (mission_invite) { 
    mission_invite_local_nonprim = mission_invite_response_parseFromJSON(mission_invite); //nonprimitive
    }

    // mission_response->invitee
    cJSON *invitee = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "invitee");
    if (cJSON_IsNull(invitee)) {
        invitee = NULL;
    }
    if (invitee) { 
    invitee_local_nonprim = account_short_response_parseFromJSON(invitee); //nonprimitive
    }

    // mission_response->format_type
    cJSON *format_type = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "formatType");
    if (cJSON_IsNull(format_type)) {
        format_type = NULL;
    }
    if (format_type) { 
    if(!cJSON_IsString(format_type) && !cJSON_IsNull(format_type))
    {
    goto end; //String
    }
    }

    // mission_response->creatives
    cJSON *creatives = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "creatives");
    if (cJSON_IsNull(creatives)) {
        creatives = NULL;
    }
    if (creatives) { 
    cJSON *creatives_local_nonprimitive = NULL;
    if(!cJSON_IsArray(creatives)){
        goto end; //nonprimitive container
    }

    creativesList = list_createList();

    cJSON_ArrayForEach(creatives_local_nonprimitive,creatives )
    {
        if(!cJSON_IsObject(creatives_local_nonprimitive)){
            goto end;
        }
        creative_response_t *creativesItem = creative_response_parseFromJSON(creatives_local_nonprimitive);

        list_addElement(creativesList, creativesItem);
    }
    }

    // mission_response->fixed_reward
    cJSON *fixed_reward = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "fixedReward");
    if (cJSON_IsNull(fixed_reward)) {
        fixed_reward = NULL;
    }
    if (fixed_reward) { 
    if(!cJSON_IsBool(fixed_reward))
    {
    goto end; //Bool
    }
    }

    // mission_response->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // mission_response->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // mission_response->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // mission_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // mission_response->split_reward
    cJSON *split_reward = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "splitReward");
    if (cJSON_IsNull(split_reward)) {
        split_reward = NULL;
    }
    if (split_reward) { 
    if(!cJSON_IsString(split_reward) && !cJSON_IsNull(split_reward))
    {
    goto end; //String
    }
    }

    // mission_response->seconds_between_levels
    cJSON *seconds_between_levels = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "secondsBetweenLevels");
    if (cJSON_IsNull(seconds_between_levels)) {
        seconds_between_levels = NULL;
    }
    if (seconds_between_levels) { 
    if(!cJSON_IsNumber(seconds_between_levels))
    {
    goto end; //Numeric
    }
    }

    // mission_response->seconds_between_packs
    cJSON *seconds_between_packs = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "secondsBetweenPacks");
    if (cJSON_IsNull(seconds_between_packs)) {
        seconds_between_packs = NULL;
    }
    if (seconds_between_packs) { 
    if(!cJSON_IsNumber(seconds_between_packs))
    {
    goto end; //Numeric
    }
    }

    // mission_response->advanced_reporting
    cJSON *advanced_reporting = cJSON_GetObjectItemCaseSensitive(mission_responseJSON, "advancedReporting");
    if (cJSON_IsNull(advanced_reporting)) {
        advanced_reporting = NULL;
    }
    if (advanced_reporting) { 
    if(!cJSON_IsBool(advanced_reporting))
    {
    goto end; //Bool
    }
    }


    mission_response_local_var = mission_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_mission_response_ACTION_NULL,
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
        join_code && !cJSON_IsNull(join_code) ? strdup(join_code->valuestring) : NULL,
        rewards ? rewardsList : NULL,
        games ? games_local_nonprim : NULL,
        scores ? scores_local_nonprim : NULL,
        user_permissions_list ? user_permissions_list_local_nonprim : NULL,
        results ? resultsList : NULL,
        invite_status ? invite_statusVariable : sirqul_iot_platform_mission_response_INVITESTATUS_NULL,
        audiences ? audiencesList : NULL,
        mission_invite_id ? mission_invite_id->valuedouble : 0,
        mission_invite ? mission_invite_local_nonprim : NULL,
        invitee ? invitee_local_nonprim : NULL,
        format_type && !cJSON_IsNull(format_type) ? strdup(format_type->valuestring) : NULL,
        creatives ? creativesList : NULL,
        fixed_reward ? fixed_reward->valueint : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        points ? points->valuedouble : 0,
        split_reward && !cJSON_IsNull(split_reward) ? strdup(split_reward->valuestring) : NULL,
        seconds_between_levels ? seconds_between_levels->valuedouble : 0,
        seconds_between_packs ? seconds_between_packs->valuedouble : 0,
        advanced_reporting ? advanced_reporting->valueint : 0
        );

    return mission_response_local_var;
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
    if (rewardsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, rewardsList) {
            reward_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(rewardsList);
        rewardsList = NULL;
    }
    if (games_local_nonprim) {
        game_list_response_free(games_local_nonprim);
        games_local_nonprim = NULL;
    }
    if (scores_local_nonprim) {
        score_list_response_free(scores_local_nonprim);
        scores_local_nonprim = NULL;
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
    if (audiencesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, audiencesList) {
            audience_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(audiencesList);
        audiencesList = NULL;
    }
    if (mission_invite_local_nonprim) {
        mission_invite_response_free(mission_invite_local_nonprim);
        mission_invite_local_nonprim = NULL;
    }
    if (invitee_local_nonprim) {
        account_short_response_free(invitee_local_nonprim);
        invitee_local_nonprim = NULL;
    }
    if (creativesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, creativesList) {
            creative_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(creativesList);
        creativesList = NULL;
    }
    return NULL;

}
