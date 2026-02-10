/*
 * game_response.h
 *
 * 
 */

#ifndef _game_response_H_
#define _game_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct game_response_t game_response_t;

#include "account_short_response.h"
#include "asset_short_response.h"
#include "name_string_value_response.h"
#include "pack_list_response.h"
#include "rule_list_response.h"
#include "score_list_response.h"
#include "user_permissions_list_response.h"

// Enum ACTION for game_response

typedef enum  { sirqul_iot_platform_game_response_ACTION_NULL = 0, sirqul_iot_platform_game_response_ACTION_DATA, sirqul_iot_platform_game_response_ACTION_SAVE, sirqul_iot_platform_game_response_ACTION__DELETE, sirqul_iot_platform_game_response_ACTION_GET } sirqul_iot_platform_game_response_ACTION_e;

char* game_response_action_ToString(sirqul_iot_platform_game_response_ACTION_e action);

sirqul_iot_platform_game_response_ACTION_e game_response_action_FromString(char* action);



typedef struct game_response_t {
    sirqul_iot_platform_game_response_ACTION_e action; //enum
    char *highest_app_version; // string
    long game_id; //numeric
    char *game_type; // string
    struct pack_list_response_t *packs; //model
    struct score_list_response_t *scores; //model
    struct account_short_response_t *owner; //model
    struct user_permissions_list_response_t *user_permissions_list; //model
    struct rule_list_response_t *rules; //model
    list_t *results; //nonprimitive container
    long tickets_earned; //numeric
    char *title; // string
    char *description; // string
    char *author_override; // string
    struct asset_short_response_t *icon; //model
    struct asset_short_response_t *image; //model
    char *sequence_type; // string
    long updated_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    char *app_key; // string

    int _library_owned; // Is the library responsible for freeing this object?
} game_response_t;

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
);

void game_response_free(game_response_t *game_response);

game_response_t *game_response_parseFromJSON(cJSON *game_responseJSON);

cJSON *game_response_convertToJSON(game_response_t *game_response);

#endif /* _game_response_H_ */

