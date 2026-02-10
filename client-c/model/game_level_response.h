/*
 * game_level_response.h
 *
 * 
 */

#ifndef _game_level_response_H_
#define _game_level_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct game_level_response_t game_level_response_t;

#include "account_short_response.h"
#include "asset_short_response.h"
#include "game_object_list_response.h"
#include "name_string_value_response.h"
#include "note_response.h"
#include "offer_short_response.h"
#include "score_list_response.h"
#include "ticket_list_response.h"
#include "tutorial_response.h"
#include "user_permissions_list_response.h"

// Enum ACTION for game_level_response

typedef enum  { sirqul_iot_platform_game_level_response_ACTION_NULL = 0, sirqul_iot_platform_game_level_response_ACTION_DATA, sirqul_iot_platform_game_level_response_ACTION_SAVE, sirqul_iot_platform_game_level_response_ACTION__DELETE, sirqul_iot_platform_game_level_response_ACTION_GET } sirqul_iot_platform_game_level_response_ACTION_e;

char* game_level_response_action_ToString(sirqul_iot_platform_game_level_response_ACTION_e action);

sirqul_iot_platform_game_level_response_ACTION_e game_level_response_action_FromString(char* action);

// Enum SCORINGTYPE for game_level_response

typedef enum  { sirqul_iot_platform_game_level_response_SCORINGTYPE_NULL = 0, sirqul_iot_platform_game_level_response_SCORINGTYPE_GAME_LEVEL, sirqul_iot_platform_game_level_response_SCORINGTYPE_GAME_OBJECT } sirqul_iot_platform_game_level_response_SCORINGTYPE_e;

char* game_level_response_scoring_type_ToString(sirqul_iot_platform_game_level_response_SCORINGTYPE_e scoring_type);

sirqul_iot_platform_game_level_response_SCORINGTYPE_e game_level_response_scoring_type_FromString(char* scoring_type);



typedef struct game_level_response_t {
    sirqul_iot_platform_game_level_response_ACTION_e action; //enum
    long game_level_id; //numeric
    char *game_type; // string
    int active; //boolean
    char *name; // string
    char *description; // string
    char *difficulty; // string
    char *app_version; // string
    long likes_count; //numeric
    long dislikes_count; //numeric
    long comments_count; //numeric
    long download_count; //numeric
    list_t *comments; //nonprimitive container
    int locked; //boolean
    int completed; //boolean
    long tickets_earned; //numeric
    struct game_object_list_response_t *game_objects; //model
    int has_liked; //boolean
    struct asset_short_response_t *image; //model
    char *game_data; // string
    char *game_data_suffix; // string
    struct score_list_response_t *scores; //model
    struct account_short_response_t *owner; //model
    struct user_permissions_list_response_t *user_permissions_list; //model
    list_t *results; //nonprimitive container
    int randomize_game_objects; //boolean
    struct ticket_list_response_t *tickets; //model
    int assign_mission; //boolean
    struct asset_short_response_t *icon; //model
    char *author_override; // string
    long updated_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    char *splash_title; // string
    char *splash_message; // string
    int has_flagged; //boolean
    int allocate_tickets; //boolean
    char *ticket_type; // string
    long ticket_count; //numeric
    long points; //numeric
    char *winner_message; // string
    struct tutorial_response_t *tutorial; //model
    char *app_key; // string
    char *app_name; // string
    sirqul_iot_platform_game_level_response_SCORINGTYPE_e scoring_type; //enum
    char *tutorial_title; // string
    char *tutorial_message; // string
    char *tutorial_alignment; // string
    struct asset_short_response_t *tutorial_image; //model
    long next_level_id; //numeric
    struct offer_short_response_t *offer; //model

    int _library_owned; // Is the library responsible for freeing this object?
} game_level_response_t;

__attribute__((deprecated)) game_level_response_t *game_level_response_create(
    sirqul_iot_platform_game_level_response_ACTION_e action,
    long game_level_id,
    char *game_type,
    int active,
    char *name,
    char *description,
    char *difficulty,
    char *app_version,
    long likes_count,
    long dislikes_count,
    long comments_count,
    long download_count,
    list_t *comments,
    int locked,
    int completed,
    long tickets_earned,
    game_object_list_response_t *game_objects,
    int has_liked,
    asset_short_response_t *image,
    char *game_data,
    char *game_data_suffix,
    score_list_response_t *scores,
    account_short_response_t *owner,
    user_permissions_list_response_t *user_permissions_list,
    list_t *results,
    int randomize_game_objects,
    ticket_list_response_t *tickets,
    int assign_mission,
    asset_short_response_t *icon,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    char *splash_title,
    char *splash_message,
    int has_flagged,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points,
    char *winner_message,
    tutorial_response_t *tutorial,
    char *app_key,
    char *app_name,
    sirqul_iot_platform_game_level_response_SCORINGTYPE_e scoring_type,
    char *tutorial_title,
    char *tutorial_message,
    char *tutorial_alignment,
    asset_short_response_t *tutorial_image,
    long next_level_id,
    offer_short_response_t *offer
);

void game_level_response_free(game_level_response_t *game_level_response);

game_level_response_t *game_level_response_parseFromJSON(cJSON *game_level_responseJSON);

cJSON *game_level_response_convertToJSON(game_level_response_t *game_level_response);

#endif /* _game_level_response_H_ */

