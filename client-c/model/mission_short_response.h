/*
 * mission_short_response.h
 *
 * 
 */

#ifndef _mission_short_response_H_
#define _mission_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mission_short_response_t mission_short_response_t;

#include "account_short_response.h"
#include "asset_short_response.h"

// Enum ACTION for mission_short_response

typedef enum  { sirqul_iot_platform_mission_short_response_ACTION_NULL = 0, sirqul_iot_platform_mission_short_response_ACTION_DATA, sirqul_iot_platform_mission_short_response_ACTION_SAVE, sirqul_iot_platform_mission_short_response_ACTION__DELETE, sirqul_iot_platform_mission_short_response_ACTION_GET } sirqul_iot_platform_mission_short_response_ACTION_e;

char* mission_short_response_action_ToString(sirqul_iot_platform_mission_short_response_ACTION_e action);

sirqul_iot_platform_mission_short_response_ACTION_e mission_short_response_action_FromString(char* action);



typedef struct mission_short_response_t {
    sirqul_iot_platform_mission_short_response_ACTION_e action; //enum
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

    int _library_owned; // Is the library responsible for freeing this object?
} mission_short_response_t;

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
);

void mission_short_response_free(mission_short_response_t *mission_short_response);

mission_short_response_t *mission_short_response_parseFromJSON(cJSON *mission_short_responseJSON);

cJSON *mission_short_response_convertToJSON(mission_short_response_t *mission_short_response);

#endif /* _mission_short_response_H_ */

