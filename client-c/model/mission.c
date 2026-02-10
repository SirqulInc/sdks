#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mission.h"


char* mission_mission_type_ToString(sirqul_iot_platform_mission_MISSIONTYPE_e mission_type) {
    char* mission_typeArray[] =  { "NULL", "PUBLIC", "SHARED", "TOURNAMENT", "POOLPLAY" };
    return mission_typeArray[mission_type];
}

sirqul_iot_platform_mission_MISSIONTYPE_e mission_mission_type_FromString(char* mission_type){
    int stringToReturn = 0;
    char *mission_typeArray[] =  { "NULL", "PUBLIC", "SHARED", "TOURNAMENT", "POOLPLAY" };
    size_t sizeofArray = sizeof(mission_typeArray) / sizeof(mission_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(mission_type, mission_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* mission_sequence_type_ToString(sirqul_iot_platform_mission_SEQUENCETYPE_e sequence_type) {
    char* sequence_typeArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    return sequence_typeArray[sequence_type];
}

sirqul_iot_platform_mission_SEQUENCETYPE_e mission_sequence_type_FromString(char* sequence_type){
    int stringToReturn = 0;
    char *sequence_typeArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    size_t sizeofArray = sizeof(sequence_typeArray) / sizeof(sequence_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(sequence_type, sequence_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* mission_visibility_ToString(sirqul_iot_platform_mission_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_mission_VISIBILITY_e mission_visibility_FromString(char* visibility){
    int stringToReturn = 0;
    char *visibilityArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    size_t sizeofArray = sizeof(visibilityArray) / sizeof(visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(visibility, visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* mission_invite_status_ToString(sirqul_iot_platform_mission_INVITESTATUS_e invite_status) {
    char* invite_statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    return invite_statusArray[invite_status];
}

sirqul_iot_platform_mission_INVITESTATUS_e mission_invite_status_FromString(char* invite_status){
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
char* mission_split_reward_ToString(sirqul_iot_platform_mission_SPLITREWARD_e split_reward) {
    char* split_rewardArray[] =  { "NULL", "EVEN", "ALL", "FIRST", "RANDOM" };
    return split_rewardArray[split_reward];
}

sirqul_iot_platform_mission_SPLITREWARD_e mission_split_reward_FromString(char* split_reward){
    int stringToReturn = 0;
    char *split_rewardArray[] =  { "NULL", "EVEN", "ALL", "FIRST", "RANDOM" };
    size_t sizeofArray = sizeof(split_rewardArray) / sizeof(split_rewardArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(split_reward, split_rewardArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static mission_t *mission_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    sirqul_iot_platform_mission_MISSIONTYPE_e mission_type,
    char *title,
    char *description,
    int cost_to_play,
    char *cost_to_play_type,
    list_t *games,
    list_t *audiences,
    char *start_date,
    char *end_date,
    sirqul_iot_platform_mission_SEQUENCETYPE_e sequence_type,
    char *author_override,
    asset_t *icon,
    asset_t *image,
    list_t *offers,
    sirqul_iot_platform_mission_VISIBILITY_e visibility,
    mission_task_t *task,
    long points,
    char *ticket_type,
    long ticket_count,
    int allocate_tickets,
    billable_entity_t *billable_entity,
    double balance,
    int starting_limit,
    int available_limit,
    int invite_count,
    int accepted_count,
    sirqul_iot_platform_mission_INVITESTATUS_e invite_status,
    long child_count,
    int seconds_between_levels,
    int seconds_between_packs,
    int maximum_level_length,
    int enable_buy_back,
    pack_t *active_pack,
    int minimum_to_play,
    int fixed_reward,
    int refunded,
    int notifications_created,
    int rewarded,
    long external_id,
    int advanced_reporting,
    sirqul_iot_platform_mission_SPLITREWARD_e split_reward,
    char *join_code,
    pack_t *first_pack,
    list_t *all_game_levels,
    list_t *all_packs
    ) {
    mission_t *mission_local_var = malloc(sizeof(mission_t));
    if (!mission_local_var) {
        return NULL;
    }
    mission_local_var->id = id;
    mission_local_var->active = active;
    mission_local_var->valid = valid;
    mission_local_var->owner = owner;
    mission_local_var->mission_type = mission_type;
    mission_local_var->title = title;
    mission_local_var->description = description;
    mission_local_var->cost_to_play = cost_to_play;
    mission_local_var->cost_to_play_type = cost_to_play_type;
    mission_local_var->games = games;
    mission_local_var->audiences = audiences;
    mission_local_var->start_date = start_date;
    mission_local_var->end_date = end_date;
    mission_local_var->sequence_type = sequence_type;
    mission_local_var->author_override = author_override;
    mission_local_var->icon = icon;
    mission_local_var->image = image;
    mission_local_var->offers = offers;
    mission_local_var->visibility = visibility;
    mission_local_var->task = task;
    mission_local_var->points = points;
    mission_local_var->ticket_type = ticket_type;
    mission_local_var->ticket_count = ticket_count;
    mission_local_var->allocate_tickets = allocate_tickets;
    mission_local_var->billable_entity = billable_entity;
    mission_local_var->balance = balance;
    mission_local_var->starting_limit = starting_limit;
    mission_local_var->available_limit = available_limit;
    mission_local_var->invite_count = invite_count;
    mission_local_var->accepted_count = accepted_count;
    mission_local_var->invite_status = invite_status;
    mission_local_var->child_count = child_count;
    mission_local_var->seconds_between_levels = seconds_between_levels;
    mission_local_var->seconds_between_packs = seconds_between_packs;
    mission_local_var->maximum_level_length = maximum_level_length;
    mission_local_var->enable_buy_back = enable_buy_back;
    mission_local_var->active_pack = active_pack;
    mission_local_var->minimum_to_play = minimum_to_play;
    mission_local_var->fixed_reward = fixed_reward;
    mission_local_var->refunded = refunded;
    mission_local_var->notifications_created = notifications_created;
    mission_local_var->rewarded = rewarded;
    mission_local_var->external_id = external_id;
    mission_local_var->advanced_reporting = advanced_reporting;
    mission_local_var->split_reward = split_reward;
    mission_local_var->join_code = join_code;
    mission_local_var->first_pack = first_pack;
    mission_local_var->all_game_levels = all_game_levels;
    mission_local_var->all_packs = all_packs;

    mission_local_var->_library_owned = 1;
    return mission_local_var;
}

__attribute__((deprecated)) mission_t *mission_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    sirqul_iot_platform_mission_MISSIONTYPE_e mission_type,
    char *title,
    char *description,
    int cost_to_play,
    char *cost_to_play_type,
    list_t *games,
    list_t *audiences,
    char *start_date,
    char *end_date,
    sirqul_iot_platform_mission_SEQUENCETYPE_e sequence_type,
    char *author_override,
    asset_t *icon,
    asset_t *image,
    list_t *offers,
    sirqul_iot_platform_mission_VISIBILITY_e visibility,
    mission_task_t *task,
    long points,
    char *ticket_type,
    long ticket_count,
    int allocate_tickets,
    billable_entity_t *billable_entity,
    double balance,
    int starting_limit,
    int available_limit,
    int invite_count,
    int accepted_count,
    sirqul_iot_platform_mission_INVITESTATUS_e invite_status,
    long child_count,
    int seconds_between_levels,
    int seconds_between_packs,
    int maximum_level_length,
    int enable_buy_back,
    pack_t *active_pack,
    int minimum_to_play,
    int fixed_reward,
    int refunded,
    int notifications_created,
    int rewarded,
    long external_id,
    int advanced_reporting,
    sirqul_iot_platform_mission_SPLITREWARD_e split_reward,
    char *join_code,
    pack_t *first_pack,
    list_t *all_game_levels,
    list_t *all_packs
    ) {
    return mission_create_internal (
        id,
        active,
        valid,
        owner,
        mission_type,
        title,
        description,
        cost_to_play,
        cost_to_play_type,
        games,
        audiences,
        start_date,
        end_date,
        sequence_type,
        author_override,
        icon,
        image,
        offers,
        visibility,
        task,
        points,
        ticket_type,
        ticket_count,
        allocate_tickets,
        billable_entity,
        balance,
        starting_limit,
        available_limit,
        invite_count,
        accepted_count,
        invite_status,
        child_count,
        seconds_between_levels,
        seconds_between_packs,
        maximum_level_length,
        enable_buy_back,
        active_pack,
        minimum_to_play,
        fixed_reward,
        refunded,
        notifications_created,
        rewarded,
        external_id,
        advanced_reporting,
        split_reward,
        join_code,
        first_pack,
        all_game_levels,
        all_packs
        );
}

void mission_free(mission_t *mission) {
    if(NULL == mission){
        return ;
    }
    if(mission->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mission_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mission->owner) {
        account_free(mission->owner);
        mission->owner = NULL;
    }
    if (mission->title) {
        free(mission->title);
        mission->title = NULL;
    }
    if (mission->description) {
        free(mission->description);
        mission->description = NULL;
    }
    if (mission->cost_to_play_type) {
        free(mission->cost_to_play_type);
        mission->cost_to_play_type = NULL;
    }
    if (mission->games) {
        list_ForEach(listEntry, mission->games) {
            game_free(listEntry->data);
        }
        list_freeList(mission->games);
        mission->games = NULL;
    }
    if (mission->audiences) {
        list_ForEach(listEntry, mission->audiences) {
            audience_free(listEntry->data);
        }
        list_freeList(mission->audiences);
        mission->audiences = NULL;
    }
    if (mission->start_date) {
        free(mission->start_date);
        mission->start_date = NULL;
    }
    if (mission->end_date) {
        free(mission->end_date);
        mission->end_date = NULL;
    }
    if (mission->author_override) {
        free(mission->author_override);
        mission->author_override = NULL;
    }
    if (mission->icon) {
        asset_free(mission->icon);
        mission->icon = NULL;
    }
    if (mission->image) {
        asset_free(mission->image);
        mission->image = NULL;
    }
    if (mission->offers) {
        list_ForEach(listEntry, mission->offers) {
            offer_free(listEntry->data);
        }
        list_freeList(mission->offers);
        mission->offers = NULL;
    }
    if (mission->task) {
        mission_task_free(mission->task);
        mission->task = NULL;
    }
    if (mission->ticket_type) {
        free(mission->ticket_type);
        mission->ticket_type = NULL;
    }
    if (mission->billable_entity) {
        billable_entity_free(mission->billable_entity);
        mission->billable_entity = NULL;
    }
    if (mission->active_pack) {
        pack_free(mission->active_pack);
        mission->active_pack = NULL;
    }
    if (mission->join_code) {
        free(mission->join_code);
        mission->join_code = NULL;
    }
    if (mission->first_pack) {
        pack_free(mission->first_pack);
        mission->first_pack = NULL;
    }
    if (mission->all_game_levels) {
        list_ForEach(listEntry, mission->all_game_levels) {
            game_level_free(listEntry->data);
        }
        list_freeList(mission->all_game_levels);
        mission->all_game_levels = NULL;
    }
    if (mission->all_packs) {
        list_ForEach(listEntry, mission->all_packs) {
            pack_free(listEntry->data);
        }
        list_freeList(mission->all_packs);
        mission->all_packs = NULL;
    }
    free(mission);
}

cJSON *mission_convertToJSON(mission_t *mission) {
    cJSON *item = cJSON_CreateObject();

    // mission->id
    if(mission->id) {
    if(cJSON_AddNumberToObject(item, "id", mission->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->active
    if(mission->active) {
    if(cJSON_AddBoolToObject(item, "active", mission->active) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->valid
    if(mission->valid) {
    if(cJSON_AddBoolToObject(item, "valid", mission->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->owner
    if(mission->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(mission->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission->mission_type
    if(mission->mission_type != sirqul_iot_platform_mission_MISSIONTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "missionType", mission_mission_type_ToString(mission->mission_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission->title
    if(mission->title) {
    if(cJSON_AddStringToObject(item, "title", mission->title) == NULL) {
    goto fail; //String
    }
    }


    // mission->description
    if(mission->description) {
    if(cJSON_AddStringToObject(item, "description", mission->description) == NULL) {
    goto fail; //String
    }
    }


    // mission->cost_to_play
    if(mission->cost_to_play) {
    if(cJSON_AddNumberToObject(item, "costToPlay", mission->cost_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->cost_to_play_type
    if(mission->cost_to_play_type) {
    if(cJSON_AddStringToObject(item, "costToPlayType", mission->cost_to_play_type) == NULL) {
    goto fail; //String
    }
    }


    // mission->games
    if(mission->games) {
    cJSON *games = cJSON_AddArrayToObject(item, "games");
    if(games == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *gamesListEntry;
    if (mission->games) {
    list_ForEach(gamesListEntry, mission->games) {
    cJSON *itemLocal = game_convertToJSON(gamesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(games, itemLocal);
    }
    }
    }


    // mission->audiences
    if(mission->audiences) {
    cJSON *audiences = cJSON_AddArrayToObject(item, "audiences");
    if(audiences == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *audiencesListEntry;
    if (mission->audiences) {
    list_ForEach(audiencesListEntry, mission->audiences) {
    cJSON *itemLocal = audience_convertToJSON(audiencesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(audiences, itemLocal);
    }
    }
    }


    // mission->start_date
    if(mission->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", mission->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // mission->end_date
    if(mission->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", mission->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // mission->sequence_type
    if(mission->sequence_type != sirqul_iot_platform_mission_SEQUENCETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "sequenceType", mission_sequence_type_ToString(mission->sequence_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission->author_override
    if(mission->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", mission->author_override) == NULL) {
    goto fail; //String
    }
    }


    // mission->icon
    if(mission->icon) {
    cJSON *icon_local_JSON = asset_convertToJSON(mission->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission->image
    if(mission->image) {
    cJSON *image_local_JSON = asset_convertToJSON(mission->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission->offers
    if(mission->offers) {
    cJSON *offers = cJSON_AddArrayToObject(item, "offers");
    if(offers == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *offersListEntry;
    if (mission->offers) {
    list_ForEach(offersListEntry, mission->offers) {
    cJSON *itemLocal = offer_convertToJSON(offersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(offers, itemLocal);
    }
    }
    }


    // mission->visibility
    if(mission->visibility != sirqul_iot_platform_mission_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", mission_visibility_ToString(mission->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission->task
    if(mission->task) {
    cJSON *task_local_JSON = mission_task_convertToJSON(mission->task);
    if(task_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "task", task_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission->points
    if(mission->points) {
    if(cJSON_AddNumberToObject(item, "points", mission->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->ticket_type
    if(mission->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", mission->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // mission->ticket_count
    if(mission->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", mission->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->allocate_tickets
    if(mission->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", mission->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->billable_entity
    if(mission->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_convertToJSON(mission->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission->balance
    if(mission->balance) {
    if(cJSON_AddNumberToObject(item, "balance", mission->balance) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->starting_limit
    if(mission->starting_limit) {
    if(cJSON_AddNumberToObject(item, "startingLimit", mission->starting_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->available_limit
    if(mission->available_limit) {
    if(cJSON_AddNumberToObject(item, "availableLimit", mission->available_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->invite_count
    if(mission->invite_count) {
    if(cJSON_AddNumberToObject(item, "inviteCount", mission->invite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->accepted_count
    if(mission->accepted_count) {
    if(cJSON_AddNumberToObject(item, "acceptedCount", mission->accepted_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->invite_status
    if(mission->invite_status != sirqul_iot_platform_mission_INVITESTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "inviteStatus", mission_invite_status_ToString(mission->invite_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission->child_count
    if(mission->child_count) {
    if(cJSON_AddNumberToObject(item, "childCount", mission->child_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->seconds_between_levels
    if(mission->seconds_between_levels) {
    if(cJSON_AddNumberToObject(item, "secondsBetweenLevels", mission->seconds_between_levels) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->seconds_between_packs
    if(mission->seconds_between_packs) {
    if(cJSON_AddNumberToObject(item, "secondsBetweenPacks", mission->seconds_between_packs) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->maximum_level_length
    if(mission->maximum_level_length) {
    if(cJSON_AddNumberToObject(item, "maximumLevelLength", mission->maximum_level_length) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->enable_buy_back
    if(mission->enable_buy_back) {
    if(cJSON_AddBoolToObject(item, "enableBuyBack", mission->enable_buy_back) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->active_pack
    if(mission->active_pack) {
    cJSON *active_pack_local_JSON = pack_convertToJSON(mission->active_pack);
    if(active_pack_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "activePack", active_pack_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission->minimum_to_play
    if(mission->minimum_to_play) {
    if(cJSON_AddNumberToObject(item, "minimumToPlay", mission->minimum_to_play) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->fixed_reward
    if(mission->fixed_reward) {
    if(cJSON_AddBoolToObject(item, "fixedReward", mission->fixed_reward) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->refunded
    if(mission->refunded) {
    if(cJSON_AddBoolToObject(item, "refunded", mission->refunded) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->notifications_created
    if(mission->notifications_created) {
    if(cJSON_AddBoolToObject(item, "notificationsCreated", mission->notifications_created) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->rewarded
    if(mission->rewarded) {
    if(cJSON_AddBoolToObject(item, "rewarded", mission->rewarded) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->external_id
    if(mission->external_id) {
    if(cJSON_AddNumberToObject(item, "externalId", mission->external_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission->advanced_reporting
    if(mission->advanced_reporting) {
    if(cJSON_AddBoolToObject(item, "advancedReporting", mission->advanced_reporting) == NULL) {
    goto fail; //Bool
    }
    }


    // mission->split_reward
    if(mission->split_reward != sirqul_iot_platform_mission_SPLITREWARD_NULL) {
    if(cJSON_AddStringToObject(item, "splitReward", mission_split_reward_ToString(mission->split_reward)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission->join_code
    if(mission->join_code) {
    if(cJSON_AddStringToObject(item, "joinCode", mission->join_code) == NULL) {
    goto fail; //String
    }
    }


    // mission->first_pack
    if(mission->first_pack) {
    cJSON *first_pack_local_JSON = pack_convertToJSON(mission->first_pack);
    if(first_pack_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "firstPack", first_pack_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission->all_game_levels
    if(mission->all_game_levels) {
    cJSON *all_game_levels = cJSON_AddArrayToObject(item, "allGameLevels");
    if(all_game_levels == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *all_game_levelsListEntry;
    if (mission->all_game_levels) {
    list_ForEach(all_game_levelsListEntry, mission->all_game_levels) {
    cJSON *itemLocal = game_level_convertToJSON(all_game_levelsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(all_game_levels, itemLocal);
    }
    }
    }


    // mission->all_packs
    if(mission->all_packs) {
    cJSON *all_packs = cJSON_AddArrayToObject(item, "allPacks");
    if(all_packs == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *all_packsListEntry;
    if (mission->all_packs) {
    list_ForEach(all_packsListEntry, mission->all_packs) {
    cJSON *itemLocal = pack_convertToJSON(all_packsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(all_packs, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

mission_t *mission_parseFromJSON(cJSON *missionJSON){

    mission_t *mission_local_var = NULL;

    // define the local variable for mission->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for mission->games
    list_t *gamesList = NULL;

    // define the local list for mission->audiences
    list_t *audiencesList = NULL;

    // define the local variable for mission->icon
    asset_t *icon_local_nonprim = NULL;

    // define the local variable for mission->image
    asset_t *image_local_nonprim = NULL;

    // define the local list for mission->offers
    list_t *offersList = NULL;

    // define the local variable for mission->task
    mission_task_t *task_local_nonprim = NULL;

    // define the local variable for mission->billable_entity
    billable_entity_t *billable_entity_local_nonprim = NULL;

    // define the local variable for mission->active_pack
    pack_t *active_pack_local_nonprim = NULL;

    // define the local variable for mission->first_pack
    pack_t *first_pack_local_nonprim = NULL;

    // define the local list for mission->all_game_levels
    list_t *all_game_levelsList = NULL;

    // define the local list for mission->all_packs
    list_t *all_packsList = NULL;

    // mission->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(missionJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // mission->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(missionJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // mission->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(missionJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // mission->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(missionJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // mission->mission_type
    cJSON *mission_type = cJSON_GetObjectItemCaseSensitive(missionJSON, "missionType");
    if (cJSON_IsNull(mission_type)) {
        mission_type = NULL;
    }
    sirqul_iot_platform_mission_MISSIONTYPE_e mission_typeVariable;
    if (mission_type) { 
    if(!cJSON_IsString(mission_type))
    {
    goto end; //Enum
    }
    mission_typeVariable = mission_mission_type_FromString(mission_type->valuestring);
    }

    // mission->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(missionJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // mission->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(missionJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // mission->cost_to_play
    cJSON *cost_to_play = cJSON_GetObjectItemCaseSensitive(missionJSON, "costToPlay");
    if (cJSON_IsNull(cost_to_play)) {
        cost_to_play = NULL;
    }
    if (cost_to_play) { 
    if(!cJSON_IsNumber(cost_to_play))
    {
    goto end; //Numeric
    }
    }

    // mission->cost_to_play_type
    cJSON *cost_to_play_type = cJSON_GetObjectItemCaseSensitive(missionJSON, "costToPlayType");
    if (cJSON_IsNull(cost_to_play_type)) {
        cost_to_play_type = NULL;
    }
    if (cost_to_play_type) { 
    if(!cJSON_IsString(cost_to_play_type) && !cJSON_IsNull(cost_to_play_type))
    {
    goto end; //String
    }
    }

    // mission->games
    cJSON *games = cJSON_GetObjectItemCaseSensitive(missionJSON, "games");
    if (cJSON_IsNull(games)) {
        games = NULL;
    }
    if (games) { 
    cJSON *games_local_nonprimitive = NULL;
    if(!cJSON_IsArray(games)){
        goto end; //nonprimitive container
    }

    gamesList = list_createList();

    cJSON_ArrayForEach(games_local_nonprimitive,games )
    {
        if(!cJSON_IsObject(games_local_nonprimitive)){
            goto end;
        }
        game_t *gamesItem = game_parseFromJSON(games_local_nonprimitive);

        list_addElement(gamesList, gamesItem);
    }
    }

    // mission->audiences
    cJSON *audiences = cJSON_GetObjectItemCaseSensitive(missionJSON, "audiences");
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
        audience_t *audiencesItem = audience_parseFromJSON(audiences_local_nonprimitive);

        list_addElement(audiencesList, audiencesItem);
    }
    }

    // mission->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(missionJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // mission->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(missionJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // mission->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(missionJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    sirqul_iot_platform_mission_SEQUENCETYPE_e sequence_typeVariable;
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type))
    {
    goto end; //Enum
    }
    sequence_typeVariable = mission_sequence_type_FromString(sequence_type->valuestring);
    }

    // mission->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(missionJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // mission->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(missionJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_parseFromJSON(icon); //nonprimitive
    }

    // mission->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(missionJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }

    // mission->offers
    cJSON *offers = cJSON_GetObjectItemCaseSensitive(missionJSON, "offers");
    if (cJSON_IsNull(offers)) {
        offers = NULL;
    }
    if (offers) { 
    cJSON *offers_local_nonprimitive = NULL;
    if(!cJSON_IsArray(offers)){
        goto end; //nonprimitive container
    }

    offersList = list_createList();

    cJSON_ArrayForEach(offers_local_nonprimitive,offers )
    {
        if(!cJSON_IsObject(offers_local_nonprimitive)){
            goto end;
        }
        offer_t *offersItem = offer_parseFromJSON(offers_local_nonprimitive);

        list_addElement(offersList, offersItem);
    }
    }

    // mission->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(missionJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_mission_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = mission_visibility_FromString(visibility->valuestring);
    }

    // mission->task
    cJSON *task = cJSON_GetObjectItemCaseSensitive(missionJSON, "task");
    if (cJSON_IsNull(task)) {
        task = NULL;
    }
    if (task) { 
    task_local_nonprim = mission_task_parseFromJSON(task); //nonprimitive
    }

    // mission->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(missionJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // mission->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(missionJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // mission->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(missionJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // mission->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(missionJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // mission->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(missionJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_parseFromJSON(billable_entity); //nonprimitive
    }

    // mission->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(missionJSON, "balance");
    if (cJSON_IsNull(balance)) {
        balance = NULL;
    }
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // mission->starting_limit
    cJSON *starting_limit = cJSON_GetObjectItemCaseSensitive(missionJSON, "startingLimit");
    if (cJSON_IsNull(starting_limit)) {
        starting_limit = NULL;
    }
    if (starting_limit) { 
    if(!cJSON_IsNumber(starting_limit))
    {
    goto end; //Numeric
    }
    }

    // mission->available_limit
    cJSON *available_limit = cJSON_GetObjectItemCaseSensitive(missionJSON, "availableLimit");
    if (cJSON_IsNull(available_limit)) {
        available_limit = NULL;
    }
    if (available_limit) { 
    if(!cJSON_IsNumber(available_limit))
    {
    goto end; //Numeric
    }
    }

    // mission->invite_count
    cJSON *invite_count = cJSON_GetObjectItemCaseSensitive(missionJSON, "inviteCount");
    if (cJSON_IsNull(invite_count)) {
        invite_count = NULL;
    }
    if (invite_count) { 
    if(!cJSON_IsNumber(invite_count))
    {
    goto end; //Numeric
    }
    }

    // mission->accepted_count
    cJSON *accepted_count = cJSON_GetObjectItemCaseSensitive(missionJSON, "acceptedCount");
    if (cJSON_IsNull(accepted_count)) {
        accepted_count = NULL;
    }
    if (accepted_count) { 
    if(!cJSON_IsNumber(accepted_count))
    {
    goto end; //Numeric
    }
    }

    // mission->invite_status
    cJSON *invite_status = cJSON_GetObjectItemCaseSensitive(missionJSON, "inviteStatus");
    if (cJSON_IsNull(invite_status)) {
        invite_status = NULL;
    }
    sirqul_iot_platform_mission_INVITESTATUS_e invite_statusVariable;
    if (invite_status) { 
    if(!cJSON_IsString(invite_status))
    {
    goto end; //Enum
    }
    invite_statusVariable = mission_invite_status_FromString(invite_status->valuestring);
    }

    // mission->child_count
    cJSON *child_count = cJSON_GetObjectItemCaseSensitive(missionJSON, "childCount");
    if (cJSON_IsNull(child_count)) {
        child_count = NULL;
    }
    if (child_count) { 
    if(!cJSON_IsNumber(child_count))
    {
    goto end; //Numeric
    }
    }

    // mission->seconds_between_levels
    cJSON *seconds_between_levels = cJSON_GetObjectItemCaseSensitive(missionJSON, "secondsBetweenLevels");
    if (cJSON_IsNull(seconds_between_levels)) {
        seconds_between_levels = NULL;
    }
    if (seconds_between_levels) { 
    if(!cJSON_IsNumber(seconds_between_levels))
    {
    goto end; //Numeric
    }
    }

    // mission->seconds_between_packs
    cJSON *seconds_between_packs = cJSON_GetObjectItemCaseSensitive(missionJSON, "secondsBetweenPacks");
    if (cJSON_IsNull(seconds_between_packs)) {
        seconds_between_packs = NULL;
    }
    if (seconds_between_packs) { 
    if(!cJSON_IsNumber(seconds_between_packs))
    {
    goto end; //Numeric
    }
    }

    // mission->maximum_level_length
    cJSON *maximum_level_length = cJSON_GetObjectItemCaseSensitive(missionJSON, "maximumLevelLength");
    if (cJSON_IsNull(maximum_level_length)) {
        maximum_level_length = NULL;
    }
    if (maximum_level_length) { 
    if(!cJSON_IsNumber(maximum_level_length))
    {
    goto end; //Numeric
    }
    }

    // mission->enable_buy_back
    cJSON *enable_buy_back = cJSON_GetObjectItemCaseSensitive(missionJSON, "enableBuyBack");
    if (cJSON_IsNull(enable_buy_back)) {
        enable_buy_back = NULL;
    }
    if (enable_buy_back) { 
    if(!cJSON_IsBool(enable_buy_back))
    {
    goto end; //Bool
    }
    }

    // mission->active_pack
    cJSON *active_pack = cJSON_GetObjectItemCaseSensitive(missionJSON, "activePack");
    if (cJSON_IsNull(active_pack)) {
        active_pack = NULL;
    }
    if (active_pack) { 
    active_pack_local_nonprim = pack_parseFromJSON(active_pack); //nonprimitive
    }

    // mission->minimum_to_play
    cJSON *minimum_to_play = cJSON_GetObjectItemCaseSensitive(missionJSON, "minimumToPlay");
    if (cJSON_IsNull(minimum_to_play)) {
        minimum_to_play = NULL;
    }
    if (minimum_to_play) { 
    if(!cJSON_IsNumber(minimum_to_play))
    {
    goto end; //Numeric
    }
    }

    // mission->fixed_reward
    cJSON *fixed_reward = cJSON_GetObjectItemCaseSensitive(missionJSON, "fixedReward");
    if (cJSON_IsNull(fixed_reward)) {
        fixed_reward = NULL;
    }
    if (fixed_reward) { 
    if(!cJSON_IsBool(fixed_reward))
    {
    goto end; //Bool
    }
    }

    // mission->refunded
    cJSON *refunded = cJSON_GetObjectItemCaseSensitive(missionJSON, "refunded");
    if (cJSON_IsNull(refunded)) {
        refunded = NULL;
    }
    if (refunded) { 
    if(!cJSON_IsBool(refunded))
    {
    goto end; //Bool
    }
    }

    // mission->notifications_created
    cJSON *notifications_created = cJSON_GetObjectItemCaseSensitive(missionJSON, "notificationsCreated");
    if (cJSON_IsNull(notifications_created)) {
        notifications_created = NULL;
    }
    if (notifications_created) { 
    if(!cJSON_IsBool(notifications_created))
    {
    goto end; //Bool
    }
    }

    // mission->rewarded
    cJSON *rewarded = cJSON_GetObjectItemCaseSensitive(missionJSON, "rewarded");
    if (cJSON_IsNull(rewarded)) {
        rewarded = NULL;
    }
    if (rewarded) { 
    if(!cJSON_IsBool(rewarded))
    {
    goto end; //Bool
    }
    }

    // mission->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(missionJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsNumber(external_id))
    {
    goto end; //Numeric
    }
    }

    // mission->advanced_reporting
    cJSON *advanced_reporting = cJSON_GetObjectItemCaseSensitive(missionJSON, "advancedReporting");
    if (cJSON_IsNull(advanced_reporting)) {
        advanced_reporting = NULL;
    }
    if (advanced_reporting) { 
    if(!cJSON_IsBool(advanced_reporting))
    {
    goto end; //Bool
    }
    }

    // mission->split_reward
    cJSON *split_reward = cJSON_GetObjectItemCaseSensitive(missionJSON, "splitReward");
    if (cJSON_IsNull(split_reward)) {
        split_reward = NULL;
    }
    sirqul_iot_platform_mission_SPLITREWARD_e split_rewardVariable;
    if (split_reward) { 
    if(!cJSON_IsString(split_reward))
    {
    goto end; //Enum
    }
    split_rewardVariable = mission_split_reward_FromString(split_reward->valuestring);
    }

    // mission->join_code
    cJSON *join_code = cJSON_GetObjectItemCaseSensitive(missionJSON, "joinCode");
    if (cJSON_IsNull(join_code)) {
        join_code = NULL;
    }
    if (join_code) { 
    if(!cJSON_IsString(join_code) && !cJSON_IsNull(join_code))
    {
    goto end; //String
    }
    }

    // mission->first_pack
    cJSON *first_pack = cJSON_GetObjectItemCaseSensitive(missionJSON, "firstPack");
    if (cJSON_IsNull(first_pack)) {
        first_pack = NULL;
    }
    if (first_pack) { 
    first_pack_local_nonprim = pack_parseFromJSON(first_pack); //nonprimitive
    }

    // mission->all_game_levels
    cJSON *all_game_levels = cJSON_GetObjectItemCaseSensitive(missionJSON, "allGameLevels");
    if (cJSON_IsNull(all_game_levels)) {
        all_game_levels = NULL;
    }
    if (all_game_levels) { 
    cJSON *all_game_levels_local_nonprimitive = NULL;
    if(!cJSON_IsArray(all_game_levels)){
        goto end; //nonprimitive container
    }

    all_game_levelsList = list_createList();

    cJSON_ArrayForEach(all_game_levels_local_nonprimitive,all_game_levels )
    {
        if(!cJSON_IsObject(all_game_levels_local_nonprimitive)){
            goto end;
        }
        game_level_t *all_game_levelsItem = game_level_parseFromJSON(all_game_levels_local_nonprimitive);

        list_addElement(all_game_levelsList, all_game_levelsItem);
    }
    }

    // mission->all_packs
    cJSON *all_packs = cJSON_GetObjectItemCaseSensitive(missionJSON, "allPacks");
    if (cJSON_IsNull(all_packs)) {
        all_packs = NULL;
    }
    if (all_packs) { 
    cJSON *all_packs_local_nonprimitive = NULL;
    if(!cJSON_IsArray(all_packs)){
        goto end; //nonprimitive container
    }

    all_packsList = list_createList();

    cJSON_ArrayForEach(all_packs_local_nonprimitive,all_packs )
    {
        if(!cJSON_IsObject(all_packs_local_nonprimitive)){
            goto end;
        }
        pack_t *all_packsItem = pack_parseFromJSON(all_packs_local_nonprimitive);

        list_addElement(all_packsList, all_packsItem);
    }
    }


    mission_local_var = mission_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        mission_type ? mission_typeVariable : sirqul_iot_platform_mission_MISSIONTYPE_NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        cost_to_play ? cost_to_play->valuedouble : 0,
        cost_to_play_type && !cJSON_IsNull(cost_to_play_type) ? strdup(cost_to_play_type->valuestring) : NULL,
        games ? gamesList : NULL,
        audiences ? audiencesList : NULL,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        sequence_type ? sequence_typeVariable : sirqul_iot_platform_mission_SEQUENCETYPE_NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        icon ? icon_local_nonprim : NULL,
        image ? image_local_nonprim : NULL,
        offers ? offersList : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_mission_VISIBILITY_NULL,
        task ? task_local_nonprim : NULL,
        points ? points->valuedouble : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        billable_entity ? billable_entity_local_nonprim : NULL,
        balance ? balance->valuedouble : 0,
        starting_limit ? starting_limit->valuedouble : 0,
        available_limit ? available_limit->valuedouble : 0,
        invite_count ? invite_count->valuedouble : 0,
        accepted_count ? accepted_count->valuedouble : 0,
        invite_status ? invite_statusVariable : sirqul_iot_platform_mission_INVITESTATUS_NULL,
        child_count ? child_count->valuedouble : 0,
        seconds_between_levels ? seconds_between_levels->valuedouble : 0,
        seconds_between_packs ? seconds_between_packs->valuedouble : 0,
        maximum_level_length ? maximum_level_length->valuedouble : 0,
        enable_buy_back ? enable_buy_back->valueint : 0,
        active_pack ? active_pack_local_nonprim : NULL,
        minimum_to_play ? minimum_to_play->valuedouble : 0,
        fixed_reward ? fixed_reward->valueint : 0,
        refunded ? refunded->valueint : 0,
        notifications_created ? notifications_created->valueint : 0,
        rewarded ? rewarded->valueint : 0,
        external_id ? external_id->valuedouble : 0,
        advanced_reporting ? advanced_reporting->valueint : 0,
        split_reward ? split_rewardVariable : sirqul_iot_platform_mission_SPLITREWARD_NULL,
        join_code && !cJSON_IsNull(join_code) ? strdup(join_code->valuestring) : NULL,
        first_pack ? first_pack_local_nonprim : NULL,
        all_game_levels ? all_game_levelsList : NULL,
        all_packs ? all_packsList : NULL
        );

    return mission_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (gamesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, gamesList) {
            game_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(gamesList);
        gamesList = NULL;
    }
    if (audiencesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, audiencesList) {
            audience_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(audiencesList);
        audiencesList = NULL;
    }
    if (icon_local_nonprim) {
        asset_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (offersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, offersList) {
            offer_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(offersList);
        offersList = NULL;
    }
    if (task_local_nonprim) {
        mission_task_free(task_local_nonprim);
        task_local_nonprim = NULL;
    }
    if (billable_entity_local_nonprim) {
        billable_entity_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    if (active_pack_local_nonprim) {
        pack_free(active_pack_local_nonprim);
        active_pack_local_nonprim = NULL;
    }
    if (first_pack_local_nonprim) {
        pack_free(first_pack_local_nonprim);
        first_pack_local_nonprim = NULL;
    }
    if (all_game_levelsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, all_game_levelsList) {
            game_level_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(all_game_levelsList);
        all_game_levelsList = NULL;
    }
    if (all_packsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, all_packsList) {
            pack_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(all_packsList);
        all_packsList = NULL;
    }
    return NULL;

}
