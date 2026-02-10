/*
 * pack_response.h
 *
 * 
 */

#ifndef _pack_response_H_
#define _pack_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pack_response_t pack_response_t;

#include "account_short_response.h"
#include "application_short_response.h"
#include "asset_short_response.h"
#include "game_level_list_response.h"
#include "name_string_value_response.h"
#include "score_list_response.h"
#include "ticket_list_response.h"
#include "user_permissions_list_response.h"

// Enum ACTION for pack_response

typedef enum  { sirqul_iot_platform_pack_response_ACTION_NULL = 0, sirqul_iot_platform_pack_response_ACTION_DATA, sirqul_iot_platform_pack_response_ACTION_SAVE, sirqul_iot_platform_pack_response_ACTION__DELETE, sirqul_iot_platform_pack_response_ACTION_GET } sirqul_iot_platform_pack_response_ACTION_e;

char* pack_response_action_ToString(sirqul_iot_platform_pack_response_ACTION_e action);

sirqul_iot_platform_pack_response_ACTION_e pack_response_action_FromString(char* action);

// Enum PACKTYPE for pack_response

typedef enum  { sirqul_iot_platform_pack_response_PACKTYPE_NULL = 0, sirqul_iot_platform_pack_response_PACKTYPE_TUTORIAL, sirqul_iot_platform_pack_response_PACKTYPE_BUILTIN, sirqul_iot_platform_pack_response_PACKTYPE_DOWNLOAD, sirqul_iot_platform_pack_response_PACKTYPE_THRESHOLD, sirqul_iot_platform_pack_response_PACKTYPE_THEME, sirqul_iot_platform_pack_response_PACKTYPE_TOURNAMENT } sirqul_iot_platform_pack_response_PACKTYPE_e;

char* pack_response_pack_type_ToString(sirqul_iot_platform_pack_response_PACKTYPE_e pack_type);

sirqul_iot_platform_pack_response_PACKTYPE_e pack_response_pack_type_FromString(char* pack_type);



typedef struct pack_response_t {
    sirqul_iot_platform_pack_response_ACTION_e action; //enum
    char *highest_app_version; // string
    char *game_type; // string
    long pack_id; //numeric
    char *name; // string
    char *description; // string
    int active; //boolean
    int downloaded; //boolean
    int completed; //boolean
    struct asset_short_response_t *icon; //model
    struct asset_short_response_t *background; //model
    long tickets_earned; //numeric
    struct game_level_list_response_t *levels; //model
    char *sequence_type; // string
    struct score_list_response_t *scores; //model
    struct account_short_response_t *owner; //model
    long cost_to_redeem; //numeric
    long price; //numeric
    char *price_type; // string
    struct user_permissions_list_response_t *user_permissions_list; //model
    list_t *results; //nonprimitive container
    struct ticket_list_response_t *tickets; //model
    char *author_override; // string
    long updated_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    sirqul_iot_platform_pack_response_PACKTYPE_e pack_type; //enum
    long pack_order; //numeric
    char *app_key; // string
    struct application_short_response_t *application; //model
    int in_game; //boolean
    int highest; //boolean
    int allocate_tickets; //boolean
    char *ticket_type; // string
    long ticket_count; //numeric
    long points; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} pack_response_t;

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
);

void pack_response_free(pack_response_t *pack_response);

pack_response_t *pack_response_parseFromJSON(cJSON *pack_responseJSON);

cJSON *pack_response_convertToJSON(pack_response_t *pack_response);

#endif /* _pack_response_H_ */

