#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "tournament_response.h"


char* tournament_response_action_ToString(sirqul_iot_platform_tournament_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_tournament_response_ACTION_e tournament_response_action_FromString(char* action){
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
char* tournament_response_invite_status_ToString(sirqul_iot_platform_tournament_response_INVITESTATUS_e invite_status) {
    char* invite_statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    return invite_statusArray[invite_status];
}

sirqul_iot_platform_tournament_response_INVITESTATUS_e tournament_response_invite_status_FromString(char* invite_status){
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

static tournament_response_t *tournament_response_create_internal(
    sirqul_iot_platform_tournament_response_ACTION_e action,
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
    sirqul_iot_platform_tournament_response_INVITESTATUS_e invite_status,
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
    int advanced_reporting,
    char *tournament_data
    ) {
    tournament_response_t *tournament_response_local_var = malloc(sizeof(tournament_response_t));
    if (!tournament_response_local_var) {
        return NULL;
    }
    tournament_response_local_var->action = action;
    tournament_response_local_var->highest_app_version = highest_app_version;
    tournament_response_local_var->mission_id = mission_id;
    tournament_response_local_var->tickets_earned = tickets_earned;
    tournament_response_local_var->cost_to_play = cost_to_play;
    tournament_response_local_var->cost_to_play_type = cost_to_play_type;
    tournament_response_local_var->owner = owner;
    tournament_response_local_var->title = title;
    tournament_response_local_var->description = description;
    tournament_response_local_var->author_override = author_override;
    tournament_response_local_var->icon = icon;
    tournament_response_local_var->image = image;
    tournament_response_local_var->sequence_type = sequence_type;
    tournament_response_local_var->updated_date = updated_date;
    tournament_response_local_var->start_date = start_date;
    tournament_response_local_var->end_date = end_date;
    tournament_response_local_var->mission_type = mission_type;
    tournament_response_local_var->active = active;
    tournament_response_local_var->balance = balance;
    tournament_response_local_var->available_limit = available_limit;
    tournament_response_local_var->invite_count = invite_count;
    tournament_response_local_var->accepted_count = accepted_count;
    tournament_response_local_var->child_count = child_count;
    tournament_response_local_var->enable_buy_back = enable_buy_back;
    tournament_response_local_var->minimum_to_play = minimum_to_play;
    tournament_response_local_var->rewarded = rewarded;
    tournament_response_local_var->refunded = refunded;
    tournament_response_local_var->join_code = join_code;
    tournament_response_local_var->rewards = rewards;
    tournament_response_local_var->games = games;
    tournament_response_local_var->scores = scores;
    tournament_response_local_var->user_permissions_list = user_permissions_list;
    tournament_response_local_var->results = results;
    tournament_response_local_var->invite_status = invite_status;
    tournament_response_local_var->audiences = audiences;
    tournament_response_local_var->mission_invite_id = mission_invite_id;
    tournament_response_local_var->mission_invite = mission_invite;
    tournament_response_local_var->invitee = invitee;
    tournament_response_local_var->format_type = format_type;
    tournament_response_local_var->creatives = creatives;
    tournament_response_local_var->fixed_reward = fixed_reward;
    tournament_response_local_var->allocate_tickets = allocate_tickets;
    tournament_response_local_var->ticket_type = ticket_type;
    tournament_response_local_var->ticket_count = ticket_count;
    tournament_response_local_var->points = points;
    tournament_response_local_var->split_reward = split_reward;
    tournament_response_local_var->seconds_between_levels = seconds_between_levels;
    tournament_response_local_var->seconds_between_packs = seconds_between_packs;
    tournament_response_local_var->advanced_reporting = advanced_reporting;
    tournament_response_local_var->tournament_data = tournament_data;

    tournament_response_local_var->_library_owned = 1;
    return tournament_response_local_var;
}

__attribute__((deprecated)) tournament_response_t *tournament_response_create(
    sirqul_iot_platform_tournament_response_ACTION_e action,
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
    sirqul_iot_platform_tournament_response_INVITESTATUS_e invite_status,
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
    int advanced_reporting,
    char *tournament_data
    ) {
    return tournament_response_create_internal (
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
        advanced_reporting,
        tournament_data
        );
}

void tournament_response_free(tournament_response_t *tournament_response) {
    if(NULL == tournament_response){
        return ;
    }
    if(tournament_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "tournament_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (tournament_response->highest_app_version) {
        free(tournament_response->highest_app_version);
        tournament_response->highest_app_version = NULL;
    }
    if (tournament_response->cost_to_play_type) {
        free(tournament_response->cost_to_play_type);
        tournament_response->cost_to_play_type = NULL;
    }
    if (tournament_response->owner) {
        account_short_response_free(tournament_response->owner);
        tournament_response->owner = NULL;
    }
    if (tournament_response->title) {
        free(tournament_response->title);
        tournament_response->title = NULL;
    }
    if (tournament_response->description) {
        free(tournament_response->description);
        tournament_response->description = NULL;
    }
    if (tournament_response->author_override) {
        free(tournament_response->author_override);
        tournament_response->author_override = NULL;
    }
    if (tournament_response->icon) {
        asset_short_response_free(tournament_response->icon);
        tournament_response->icon = NULL;
    }
    if (tournament_response->image) {
        asset_short_response_free(tournament_response->image);
        tournament_response->image = NULL;
    }
    if (tournament_response->sequence_type) {
        free(tournament_response->sequence_type);
        tournament_response->sequence_type = NULL;
    }
    if (tournament_response->mission_type) {
        free(tournament_response->mission_type);
        tournament_response->mission_type = NULL;
    }
    if (tournament_response->join_code) {
        free(tournament_response->join_code);
        tournament_response->join_code = NULL;
    }
    if (tournament_response->rewards) {
        list_ForEach(listEntry, tournament_response->rewards) {
            reward_response_free(listEntry->data);
        }
        list_freeList(tournament_response->rewards);
        tournament_response->rewards = NULL;
    }
    if (tournament_response->games) {
        game_list_response_free(tournament_response->games);
        tournament_response->games = NULL;
    }
    if (tournament_response->scores) {
        score_list_response_free(tournament_response->scores);
        tournament_response->scores = NULL;
    }
    if (tournament_response->user_permissions_list) {
        user_permissions_list_response_free(tournament_response->user_permissions_list);
        tournament_response->user_permissions_list = NULL;
    }
    if (tournament_response->results) {
        list_ForEach(listEntry, tournament_response->results) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(tournament_response->results);
        tournament_response->results = NULL;
    }
    if (tournament_response->audiences) {
        list_ForEach(listEntry, tournament_response->audiences) {
            audience_response_free(listEntry->data);
        }
        list_freeList(tournament_response->audiences);
        tournament_response->audiences = NULL;
    }
    if (tournament_response->mission_invite) {
        mission_invite_response_free(tournament_response->mission_invite);
        tournament_response->mission_invite = NULL;
    }
    if (tournament_response->invitee) {
        account_short_response_free(tournament_response->invitee);
        tournament_response->invitee = NULL;
    }
    if (tournament_response->format_type) {
        free(tournament_response->format_type);
        tournament_response->format_type = NULL;
    }
    if (tournament_response->creatives) {
        list_ForEach(listEntry, tournament_response->creatives) {
            creative_response_free(listEntry->data);
        }
        list_freeList(tournament_response->creatives);
        tournament_response->creatives = NULL;
    }
    if (tournament_response->ticket_type) {
        free(tournament_response->ticket_type);
        tournament_response->ticket_type = NULL;
    }
    if (tournament_response->split_reward) {
        free(tournament_response->split_reward);
        tournament_response->split_reward = NULL;
    }
    if (tournament_response->tournament_data) {
        free(tournament_response->tournament_data);
        tournament_response->tournament_data = NULL;
    }
    free(tournament_response);
}

cJSON *tournament_response_convertToJSON(tournament_response_t *tournament_response) {
    cJSON *item = cJSON_CreateObject();

    // tournament_response->action
    if(tournament_response->action != sirqul_iot_platform_tournament_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", tournament_response_action_ToString(tournament_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // tournament_response->highest_app_version
    if(tournament_response->highest_app_version) {
    if(cJSON_AddStringToObject(item, "highestAppVersion", tournament_response->highest_app_version) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->mission_id
    if(tournament_response->mission_id) {
    if(cJSON_AddNumberToObject(item, "missionId", tournament_response->mission_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->tickets_earned
    if(tournament_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", tournament_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->cost_to_play
    if(tournament_response->cost_to_play) {
    if(cJSON_AddNumberToObject(item, "costToPlay", tournament_response->cost_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->cost_to_play_type
    if(tournament_response->cost_to_play_type) {
    if(cJSON_AddStringToObject(item, "costToPlayType", tournament_response->cost_to_play_type) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->owner
    if(tournament_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(tournament_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->title
    if(tournament_response->title) {
    if(cJSON_AddStringToObject(item, "title", tournament_response->title) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->description
    if(tournament_response->description) {
    if(cJSON_AddStringToObject(item, "description", tournament_response->description) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->author_override
    if(tournament_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", tournament_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->icon
    if(tournament_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(tournament_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->image
    if(tournament_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(tournament_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->sequence_type
    if(tournament_response->sequence_type) {
    if(cJSON_AddStringToObject(item, "sequenceType", tournament_response->sequence_type) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->updated_date
    if(tournament_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", tournament_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->start_date
    if(tournament_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", tournament_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->end_date
    if(tournament_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", tournament_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->mission_type
    if(tournament_response->mission_type) {
    if(cJSON_AddStringToObject(item, "missionType", tournament_response->mission_type) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->active
    if(tournament_response->active) {
    if(cJSON_AddBoolToObject(item, "active", tournament_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // tournament_response->balance
    if(tournament_response->balance) {
    if(cJSON_AddNumberToObject(item, "balance", tournament_response->balance) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->available_limit
    if(tournament_response->available_limit) {
    if(cJSON_AddNumberToObject(item, "availableLimit", tournament_response->available_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->invite_count
    if(tournament_response->invite_count) {
    if(cJSON_AddNumberToObject(item, "inviteCount", tournament_response->invite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->accepted_count
    if(tournament_response->accepted_count) {
    if(cJSON_AddNumberToObject(item, "acceptedCount", tournament_response->accepted_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->child_count
    if(tournament_response->child_count) {
    if(cJSON_AddNumberToObject(item, "childCount", tournament_response->child_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->enable_buy_back
    if(tournament_response->enable_buy_back) {
    if(cJSON_AddBoolToObject(item, "enableBuyBack", tournament_response->enable_buy_back) == NULL) {
    goto fail; //Bool
    }
    }


    // tournament_response->minimum_to_play
    if(tournament_response->minimum_to_play) {
    if(cJSON_AddNumberToObject(item, "minimumToPlay", tournament_response->minimum_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->rewarded
    if(tournament_response->rewarded) {
    if(cJSON_AddBoolToObject(item, "rewarded", tournament_response->rewarded) == NULL) {
    goto fail; //Bool
    }
    }


    // tournament_response->refunded
    if(tournament_response->refunded) {
    if(cJSON_AddBoolToObject(item, "refunded", tournament_response->refunded) == NULL) {
    goto fail; //Bool
    }
    }


    // tournament_response->join_code
    if(tournament_response->join_code) {
    if(cJSON_AddStringToObject(item, "joinCode", tournament_response->join_code) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->rewards
    if(tournament_response->rewards) {
    cJSON *rewards = cJSON_AddArrayToObject(item, "rewards");
    if(rewards == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *rewardsListEntry;
    if (tournament_response->rewards) {
    list_ForEach(rewardsListEntry, tournament_response->rewards) {
    cJSON *itemLocal = reward_response_convertToJSON(rewardsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(rewards, itemLocal);
    }
    }
    }


    // tournament_response->games
    if(tournament_response->games) {
    cJSON *games_local_JSON = game_list_response_convertToJSON(tournament_response->games);
    if(games_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "games", games_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->scores
    if(tournament_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(tournament_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->user_permissions_list
    if(tournament_response->user_permissions_list) {
    cJSON *user_permissions_list_local_JSON = user_permissions_list_response_convertToJSON(tournament_response->user_permissions_list);
    if(user_permissions_list_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userPermissionsList", user_permissions_list_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->results
    if(tournament_response->results) {
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (tournament_response->results) {
    list_ForEach(resultsListEntry, tournament_response->results) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(resultsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(results, itemLocal);
    }
    }
    }


    // tournament_response->invite_status
    if(tournament_response->invite_status != sirqul_iot_platform_tournament_response_INVITESTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "inviteStatus", tournament_response_invite_status_ToString(tournament_response->invite_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // tournament_response->audiences
    if(tournament_response->audiences) {
    cJSON *audiences = cJSON_AddArrayToObject(item, "audiences");
    if(audiences == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *audiencesListEntry;
    if (tournament_response->audiences) {
    list_ForEach(audiencesListEntry, tournament_response->audiences) {
    cJSON *itemLocal = audience_response_convertToJSON(audiencesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(audiences, itemLocal);
    }
    }
    }


    // tournament_response->mission_invite_id
    if(tournament_response->mission_invite_id) {
    if(cJSON_AddNumberToObject(item, "missionInviteId", tournament_response->mission_invite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->mission_invite
    if(tournament_response->mission_invite) {
    cJSON *mission_invite_local_JSON = mission_invite_response_convertToJSON(tournament_response->mission_invite);
    if(mission_invite_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "missionInvite", mission_invite_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->invitee
    if(tournament_response->invitee) {
    cJSON *invitee_local_JSON = account_short_response_convertToJSON(tournament_response->invitee);
    if(invitee_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "invitee", invitee_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tournament_response->format_type
    if(tournament_response->format_type) {
    if(cJSON_AddStringToObject(item, "formatType", tournament_response->format_type) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->creatives
    if(tournament_response->creatives) {
    cJSON *creatives = cJSON_AddArrayToObject(item, "creatives");
    if(creatives == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *creativesListEntry;
    if (tournament_response->creatives) {
    list_ForEach(creativesListEntry, tournament_response->creatives) {
    cJSON *itemLocal = creative_response_convertToJSON(creativesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(creatives, itemLocal);
    }
    }
    }


    // tournament_response->fixed_reward
    if(tournament_response->fixed_reward) {
    if(cJSON_AddBoolToObject(item, "fixedReward", tournament_response->fixed_reward) == NULL) {
    goto fail; //Bool
    }
    }


    // tournament_response->allocate_tickets
    if(tournament_response->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", tournament_response->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // tournament_response->ticket_type
    if(tournament_response->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", tournament_response->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->ticket_count
    if(tournament_response->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", tournament_response->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->points
    if(tournament_response->points) {
    if(cJSON_AddNumberToObject(item, "points", tournament_response->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->split_reward
    if(tournament_response->split_reward) {
    if(cJSON_AddStringToObject(item, "splitReward", tournament_response->split_reward) == NULL) {
    goto fail; //String
    }
    }


    // tournament_response->seconds_between_levels
    if(tournament_response->seconds_between_levels) {
    if(cJSON_AddNumberToObject(item, "secondsBetweenLevels", tournament_response->seconds_between_levels) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->seconds_between_packs
    if(tournament_response->seconds_between_packs) {
    if(cJSON_AddNumberToObject(item, "secondsBetweenPacks", tournament_response->seconds_between_packs) == NULL) {
    goto fail; //Numeric
    }
    }


    // tournament_response->advanced_reporting
    if(tournament_response->advanced_reporting) {
    if(cJSON_AddBoolToObject(item, "advancedReporting", tournament_response->advanced_reporting) == NULL) {
    goto fail; //Bool
    }
    }


    // tournament_response->tournament_data
    if(tournament_response->tournament_data) {
    if(cJSON_AddStringToObject(item, "tournamentData", tournament_response->tournament_data) == NULL) {
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

tournament_response_t *tournament_response_parseFromJSON(cJSON *tournament_responseJSON){

    tournament_response_t *tournament_response_local_var = NULL;

    // define the local variable for tournament_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for tournament_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // define the local variable for tournament_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // define the local list for tournament_response->rewards
    list_t *rewardsList = NULL;

    // define the local variable for tournament_response->games
    game_list_response_t *games_local_nonprim = NULL;

    // define the local variable for tournament_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for tournament_response->user_permissions_list
    user_permissions_list_response_t *user_permissions_list_local_nonprim = NULL;

    // define the local list for tournament_response->results
    list_t *resultsList = NULL;

    // define the local list for tournament_response->audiences
    list_t *audiencesList = NULL;

    // define the local variable for tournament_response->mission_invite
    mission_invite_response_t *mission_invite_local_nonprim = NULL;

    // define the local variable for tournament_response->invitee
    account_short_response_t *invitee_local_nonprim = NULL;

    // define the local list for tournament_response->creatives
    list_t *creativesList = NULL;

    // tournament_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_tournament_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = tournament_response_action_FromString(action->valuestring);
    }

    // tournament_response->highest_app_version
    cJSON *highest_app_version = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "highestAppVersion");
    if (cJSON_IsNull(highest_app_version)) {
        highest_app_version = NULL;
    }
    if (highest_app_version) { 
    if(!cJSON_IsString(highest_app_version) && !cJSON_IsNull(highest_app_version))
    {
    goto end; //String
    }
    }

    // tournament_response->mission_id
    cJSON *mission_id = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "missionId");
    if (cJSON_IsNull(mission_id)) {
        mission_id = NULL;
    }
    if (mission_id) { 
    if(!cJSON_IsNumber(mission_id))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->cost_to_play
    cJSON *cost_to_play = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "costToPlay");
    if (cJSON_IsNull(cost_to_play)) {
        cost_to_play = NULL;
    }
    if (cost_to_play) { 
    if(!cJSON_IsNumber(cost_to_play))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->cost_to_play_type
    cJSON *cost_to_play_type = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "costToPlayType");
    if (cJSON_IsNull(cost_to_play_type)) {
        cost_to_play_type = NULL;
    }
    if (cost_to_play_type) { 
    if(!cJSON_IsString(cost_to_play_type) && !cJSON_IsNull(cost_to_play_type))
    {
    goto end; //String
    }
    }

    // tournament_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // tournament_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // tournament_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // tournament_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // tournament_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // tournament_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // tournament_response->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type) && !cJSON_IsNull(sequence_type))
    {
    goto end; //String
    }
    }

    // tournament_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->mission_type
    cJSON *mission_type = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "missionType");
    if (cJSON_IsNull(mission_type)) {
        mission_type = NULL;
    }
    if (mission_type) { 
    if(!cJSON_IsString(mission_type) && !cJSON_IsNull(mission_type))
    {
    goto end; //String
    }
    }

    // tournament_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // tournament_response->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "balance");
    if (cJSON_IsNull(balance)) {
        balance = NULL;
    }
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->available_limit
    cJSON *available_limit = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "availableLimit");
    if (cJSON_IsNull(available_limit)) {
        available_limit = NULL;
    }
    if (available_limit) { 
    if(!cJSON_IsNumber(available_limit))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->invite_count
    cJSON *invite_count = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "inviteCount");
    if (cJSON_IsNull(invite_count)) {
        invite_count = NULL;
    }
    if (invite_count) { 
    if(!cJSON_IsNumber(invite_count))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->accepted_count
    cJSON *accepted_count = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "acceptedCount");
    if (cJSON_IsNull(accepted_count)) {
        accepted_count = NULL;
    }
    if (accepted_count) { 
    if(!cJSON_IsNumber(accepted_count))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->child_count
    cJSON *child_count = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "childCount");
    if (cJSON_IsNull(child_count)) {
        child_count = NULL;
    }
    if (child_count) { 
    if(!cJSON_IsNumber(child_count))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->enable_buy_back
    cJSON *enable_buy_back = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "enableBuyBack");
    if (cJSON_IsNull(enable_buy_back)) {
        enable_buy_back = NULL;
    }
    if (enable_buy_back) { 
    if(!cJSON_IsBool(enable_buy_back))
    {
    goto end; //Bool
    }
    }

    // tournament_response->minimum_to_play
    cJSON *minimum_to_play = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "minimumToPlay");
    if (cJSON_IsNull(minimum_to_play)) {
        minimum_to_play = NULL;
    }
    if (minimum_to_play) { 
    if(!cJSON_IsNumber(minimum_to_play))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->rewarded
    cJSON *rewarded = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "rewarded");
    if (cJSON_IsNull(rewarded)) {
        rewarded = NULL;
    }
    if (rewarded) { 
    if(!cJSON_IsBool(rewarded))
    {
    goto end; //Bool
    }
    }

    // tournament_response->refunded
    cJSON *refunded = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "refunded");
    if (cJSON_IsNull(refunded)) {
        refunded = NULL;
    }
    if (refunded) { 
    if(!cJSON_IsBool(refunded))
    {
    goto end; //Bool
    }
    }

    // tournament_response->join_code
    cJSON *join_code = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "joinCode");
    if (cJSON_IsNull(join_code)) {
        join_code = NULL;
    }
    if (join_code) { 
    if(!cJSON_IsString(join_code) && !cJSON_IsNull(join_code))
    {
    goto end; //String
    }
    }

    // tournament_response->rewards
    cJSON *rewards = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "rewards");
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

    // tournament_response->games
    cJSON *games = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "games");
    if (cJSON_IsNull(games)) {
        games = NULL;
    }
    if (games) { 
    games_local_nonprim = game_list_response_parseFromJSON(games); //nonprimitive
    }

    // tournament_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // tournament_response->user_permissions_list
    cJSON *user_permissions_list = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "userPermissionsList");
    if (cJSON_IsNull(user_permissions_list)) {
        user_permissions_list = NULL;
    }
    if (user_permissions_list) { 
    user_permissions_list_local_nonprim = user_permissions_list_response_parseFromJSON(user_permissions_list); //nonprimitive
    }

    // tournament_response->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "results");
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

    // tournament_response->invite_status
    cJSON *invite_status = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "inviteStatus");
    if (cJSON_IsNull(invite_status)) {
        invite_status = NULL;
    }
    sirqul_iot_platform_tournament_response_INVITESTATUS_e invite_statusVariable;
    if (invite_status) { 
    if(!cJSON_IsString(invite_status))
    {
    goto end; //Enum
    }
    invite_statusVariable = tournament_response_invite_status_FromString(invite_status->valuestring);
    }

    // tournament_response->audiences
    cJSON *audiences = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "audiences");
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

    // tournament_response->mission_invite_id
    cJSON *mission_invite_id = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "missionInviteId");
    if (cJSON_IsNull(mission_invite_id)) {
        mission_invite_id = NULL;
    }
    if (mission_invite_id) { 
    if(!cJSON_IsNumber(mission_invite_id))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->mission_invite
    cJSON *mission_invite = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "missionInvite");
    if (cJSON_IsNull(mission_invite)) {
        mission_invite = NULL;
    }
    if (mission_invite) { 
    mission_invite_local_nonprim = mission_invite_response_parseFromJSON(mission_invite); //nonprimitive
    }

    // tournament_response->invitee
    cJSON *invitee = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "invitee");
    if (cJSON_IsNull(invitee)) {
        invitee = NULL;
    }
    if (invitee) { 
    invitee_local_nonprim = account_short_response_parseFromJSON(invitee); //nonprimitive
    }

    // tournament_response->format_type
    cJSON *format_type = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "formatType");
    if (cJSON_IsNull(format_type)) {
        format_type = NULL;
    }
    if (format_type) { 
    if(!cJSON_IsString(format_type) && !cJSON_IsNull(format_type))
    {
    goto end; //String
    }
    }

    // tournament_response->creatives
    cJSON *creatives = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "creatives");
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

    // tournament_response->fixed_reward
    cJSON *fixed_reward = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "fixedReward");
    if (cJSON_IsNull(fixed_reward)) {
        fixed_reward = NULL;
    }
    if (fixed_reward) { 
    if(!cJSON_IsBool(fixed_reward))
    {
    goto end; //Bool
    }
    }

    // tournament_response->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // tournament_response->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // tournament_response->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->split_reward
    cJSON *split_reward = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "splitReward");
    if (cJSON_IsNull(split_reward)) {
        split_reward = NULL;
    }
    if (split_reward) { 
    if(!cJSON_IsString(split_reward) && !cJSON_IsNull(split_reward))
    {
    goto end; //String
    }
    }

    // tournament_response->seconds_between_levels
    cJSON *seconds_between_levels = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "secondsBetweenLevels");
    if (cJSON_IsNull(seconds_between_levels)) {
        seconds_between_levels = NULL;
    }
    if (seconds_between_levels) { 
    if(!cJSON_IsNumber(seconds_between_levels))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->seconds_between_packs
    cJSON *seconds_between_packs = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "secondsBetweenPacks");
    if (cJSON_IsNull(seconds_between_packs)) {
        seconds_between_packs = NULL;
    }
    if (seconds_between_packs) { 
    if(!cJSON_IsNumber(seconds_between_packs))
    {
    goto end; //Numeric
    }
    }

    // tournament_response->advanced_reporting
    cJSON *advanced_reporting = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "advancedReporting");
    if (cJSON_IsNull(advanced_reporting)) {
        advanced_reporting = NULL;
    }
    if (advanced_reporting) { 
    if(!cJSON_IsBool(advanced_reporting))
    {
    goto end; //Bool
    }
    }

    // tournament_response->tournament_data
    cJSON *tournament_data = cJSON_GetObjectItemCaseSensitive(tournament_responseJSON, "tournamentData");
    if (cJSON_IsNull(tournament_data)) {
        tournament_data = NULL;
    }
    if (tournament_data) { 
    if(!cJSON_IsString(tournament_data) && !cJSON_IsNull(tournament_data))
    {
    goto end; //String
    }
    }


    tournament_response_local_var = tournament_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_tournament_response_ACTION_NULL,
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
        invite_status ? invite_statusVariable : sirqul_iot_platform_tournament_response_INVITESTATUS_NULL,
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
        advanced_reporting ? advanced_reporting->valueint : 0,
        tournament_data && !cJSON_IsNull(tournament_data) ? strdup(tournament_data->valuestring) : NULL
        );

    return tournament_response_local_var;
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
