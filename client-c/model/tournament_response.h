/*
 * tournament_response.h
 *
 * 
 */

#ifndef _tournament_response_H_
#define _tournament_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct tournament_response_t tournament_response_t;

#include "account_short_response.h"
#include "asset_short_response.h"
#include "audience_response.h"
#include "creative_response.h"
#include "game_list_response.h"
#include "mission_invite_response.h"
#include "name_string_value_response.h"
#include "reward_response.h"
#include "score_list_response.h"
#include "user_permissions_list_response.h"

// Enum ACTION for tournament_response

typedef enum  { sirqul_iot_platform_tournament_response_ACTION_NULL = 0, sirqul_iot_platform_tournament_response_ACTION_DATA, sirqul_iot_platform_tournament_response_ACTION_SAVE, sirqul_iot_platform_tournament_response_ACTION__DELETE, sirqul_iot_platform_tournament_response_ACTION_GET } sirqul_iot_platform_tournament_response_ACTION_e;

char* tournament_response_action_ToString(sirqul_iot_platform_tournament_response_ACTION_e action);

sirqul_iot_platform_tournament_response_ACTION_e tournament_response_action_FromString(char* action);

// Enum INVITESTATUS for tournament_response

typedef enum  { sirqul_iot_platform_tournament_response_INVITESTATUS_NULL = 0, sirqul_iot_platform_tournament_response_INVITESTATUS_AVAILABLE, sirqul_iot_platform_tournament_response_INVITESTATUS_PENDING, sirqul_iot_platform_tournament_response_INVITESTATUS_UPDATED, sirqul_iot_platform_tournament_response_INVITESTATUS_ACCEPTED, sirqul_iot_platform_tournament_response_INVITESTATUS_ACTIVE, sirqul_iot_platform_tournament_response_INVITESTATUS_BUY_BACK, sirqul_iot_platform_tournament_response_INVITESTATUS_FAILED, sirqul_iot_platform_tournament_response_INVITESTATUS_QUIT, sirqul_iot_platform_tournament_response_INVITESTATUS_COMPLETED, sirqul_iot_platform_tournament_response_INVITESTATUS_PENDING_REVIEW, sirqul_iot_platform_tournament_response_INVITESTATUS_REJECTED } sirqul_iot_platform_tournament_response_INVITESTATUS_e;

char* tournament_response_invite_status_ToString(sirqul_iot_platform_tournament_response_INVITESTATUS_e invite_status);

sirqul_iot_platform_tournament_response_INVITESTATUS_e tournament_response_invite_status_FromString(char* invite_status);



typedef struct tournament_response_t {
    sirqul_iot_platform_tournament_response_ACTION_e action; //enum
    char *highest_app_version; // string
    long mission_id; //numeric
    long tickets_earned; //numeric
    int cost_to_play; //numeric
    char *cost_to_play_type; // string
    struct account_short_response_t *owner; //model
    char *title; // string
    char *description; // string
    char *author_override; // string
    struct asset_short_response_t *icon; //model
    struct asset_short_response_t *image; //model
    char *sequence_type; // string
    long updated_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    char *mission_type; // string
    int active; //boolean
    double balance; //numeric
    int available_limit; //numeric
    int invite_count; //numeric
    int accepted_count; //numeric
    long child_count; //numeric
    int enable_buy_back; //boolean
    int minimum_to_play; //numeric
    int rewarded; //boolean
    int refunded; //boolean
    char *join_code; // string
    list_t *rewards; //nonprimitive container
    struct game_list_response_t *games; //model
    struct score_list_response_t *scores; //model
    struct user_permissions_list_response_t *user_permissions_list; //model
    list_t *results; //nonprimitive container
    sirqul_iot_platform_tournament_response_INVITESTATUS_e invite_status; //enum
    list_t *audiences; //nonprimitive container
    long mission_invite_id; //numeric
    struct mission_invite_response_t *mission_invite; //model
    struct account_short_response_t *invitee; //model
    char *format_type; // string
    list_t *creatives; //nonprimitive container
    int fixed_reward; //boolean
    int allocate_tickets; //boolean
    char *ticket_type; // string
    long ticket_count; //numeric
    long points; //numeric
    char *split_reward; // string
    int seconds_between_levels; //numeric
    int seconds_between_packs; //numeric
    int advanced_reporting; //boolean
    char *tournament_data; // string

    int _library_owned; // Is the library responsible for freeing this object?
} tournament_response_t;

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
);

void tournament_response_free(tournament_response_t *tournament_response);

tournament_response_t *tournament_response_parseFromJSON(cJSON *tournament_responseJSON);

cJSON *tournament_response_convertToJSON(tournament_response_t *tournament_response);

#endif /* _tournament_response_H_ */

