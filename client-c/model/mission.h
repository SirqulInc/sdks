/*
 * mission.h
 *
 * 
 */

#ifndef _mission_H_
#define _mission_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mission_t mission_t;

#include "account.h"
#include "asset.h"
#include "audience.h"
#include "billable_entity.h"
#include "game.h"
#include "game_level.h"
#include "mission_task.h"
#include "offer.h"
#include "pack.h"

// Enum MISSIONTYPE for mission

typedef enum  { sirqul_iot_platform_mission_MISSIONTYPE_NULL = 0, sirqul_iot_platform_mission_MISSIONTYPE__PUBLIC, sirqul_iot_platform_mission_MISSIONTYPE_SHARED, sirqul_iot_platform_mission_MISSIONTYPE_TOURNAMENT, sirqul_iot_platform_mission_MISSIONTYPE_POOLPLAY } sirqul_iot_platform_mission_MISSIONTYPE_e;

char* mission_mission_type_ToString(sirqul_iot_platform_mission_MISSIONTYPE_e mission_type);

sirqul_iot_platform_mission_MISSIONTYPE_e mission_mission_type_FromString(char* mission_type);

// Enum SEQUENCETYPE for mission

typedef enum  { sirqul_iot_platform_mission_SEQUENCETYPE_NULL = 0, sirqul_iot_platform_mission_SEQUENCETYPE_FIRST_AVAILABLE, sirqul_iot_platform_mission_SEQUENCETYPE_ALL_AVAILABLE } sirqul_iot_platform_mission_SEQUENCETYPE_e;

char* mission_sequence_type_ToString(sirqul_iot_platform_mission_SEQUENCETYPE_e sequence_type);

sirqul_iot_platform_mission_SEQUENCETYPE_e mission_sequence_type_FromString(char* sequence_type);

// Enum VISIBILITY for mission

typedef enum  { sirqul_iot_platform_mission_VISIBILITY_NULL = 0, sirqul_iot_platform_mission_VISIBILITY__PUBLIC, sirqul_iot_platform_mission_VISIBILITY_LISTABLE, sirqul_iot_platform_mission_VISIBILITY_REWARDABLE, sirqul_iot_platform_mission_VISIBILITY_TRIGGERABLE, sirqul_iot_platform_mission_VISIBILITY__PRIVATE } sirqul_iot_platform_mission_VISIBILITY_e;

char* mission_visibility_ToString(sirqul_iot_platform_mission_VISIBILITY_e visibility);

sirqul_iot_platform_mission_VISIBILITY_e mission_visibility_FromString(char* visibility);

// Enum INVITESTATUS for mission

typedef enum  { sirqul_iot_platform_mission_INVITESTATUS_NULL = 0, sirqul_iot_platform_mission_INVITESTATUS_AVAILABLE, sirqul_iot_platform_mission_INVITESTATUS_PENDING, sirqul_iot_platform_mission_INVITESTATUS_UPDATED, sirqul_iot_platform_mission_INVITESTATUS_ACCEPTED, sirqul_iot_platform_mission_INVITESTATUS_ACTIVE, sirqul_iot_platform_mission_INVITESTATUS_BUY_BACK, sirqul_iot_platform_mission_INVITESTATUS_FAILED, sirqul_iot_platform_mission_INVITESTATUS_QUIT, sirqul_iot_platform_mission_INVITESTATUS_COMPLETED, sirqul_iot_platform_mission_INVITESTATUS_PENDING_REVIEW, sirqul_iot_platform_mission_INVITESTATUS_REJECTED } sirqul_iot_platform_mission_INVITESTATUS_e;

char* mission_invite_status_ToString(sirqul_iot_platform_mission_INVITESTATUS_e invite_status);

sirqul_iot_platform_mission_INVITESTATUS_e mission_invite_status_FromString(char* invite_status);

// Enum SPLITREWARD for mission

typedef enum  { sirqul_iot_platform_mission_SPLITREWARD_NULL = 0, sirqul_iot_platform_mission_SPLITREWARD_EVEN, sirqul_iot_platform_mission_SPLITREWARD_ALL, sirqul_iot_platform_mission_SPLITREWARD_FIRST, sirqul_iot_platform_mission_SPLITREWARD_RANDOM } sirqul_iot_platform_mission_SPLITREWARD_e;

char* mission_split_reward_ToString(sirqul_iot_platform_mission_SPLITREWARD_e split_reward);

sirqul_iot_platform_mission_SPLITREWARD_e mission_split_reward_FromString(char* split_reward);



typedef struct mission_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    sirqul_iot_platform_mission_MISSIONTYPE_e mission_type; //enum
    char *title; // string
    char *description; // string
    int cost_to_play; //numeric
    char *cost_to_play_type; // string
    list_t *games; //nonprimitive container
    list_t *audiences; //nonprimitive container
    char *start_date; //date time
    char *end_date; //date time
    sirqul_iot_platform_mission_SEQUENCETYPE_e sequence_type; //enum
    char *author_override; // string
    struct asset_t *icon; //model
    struct asset_t *image; //model
    list_t *offers; //nonprimitive container
    sirqul_iot_platform_mission_VISIBILITY_e visibility; //enum
    struct mission_task_t *task; //model
    long points; //numeric
    char *ticket_type; // string
    long ticket_count; //numeric
    int allocate_tickets; //boolean
    struct billable_entity_t *billable_entity; //model
    double balance; //numeric
    int starting_limit; //numeric
    int available_limit; //numeric
    int invite_count; //numeric
    int accepted_count; //numeric
    sirqul_iot_platform_mission_INVITESTATUS_e invite_status; //enum
    long child_count; //numeric
    int seconds_between_levels; //numeric
    int seconds_between_packs; //numeric
    int maximum_level_length; //numeric
    int enable_buy_back; //boolean
    struct pack_t *active_pack; //model
    int minimum_to_play; //numeric
    int fixed_reward; //boolean
    int refunded; //boolean
    int notifications_created; //boolean
    int rewarded; //boolean
    long external_id; //numeric
    int advanced_reporting; //boolean
    sirqul_iot_platform_mission_SPLITREWARD_e split_reward; //enum
    char *join_code; // string
    struct pack_t *first_pack; //model
    list_t *all_game_levels; //nonprimitive container
    list_t *all_packs; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} mission_t;

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
);

void mission_free(mission_t *mission);

mission_t *mission_parseFromJSON(cJSON *missionJSON);

cJSON *mission_convertToJSON(mission_t *mission);

#endif /* _mission_H_ */

