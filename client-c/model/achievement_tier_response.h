/*
 * achievement_tier_response.h
 *
 * 
 */

#ifndef _achievement_tier_response_H_
#define _achievement_tier_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct achievement_tier_response_t achievement_tier_response_t;

#include "asset_short_response.h"



typedef struct achievement_tier_response_t {
    long achievement_tier_id; //numeric
    char *title; // string
    char *description; // string
    long goal_count; //numeric
    struct asset_short_response_t *icon; //model
    long mission_id; //numeric
    long game_id; //numeric
    long pack_id; //numeric
    long game_level_id; //numeric
    long game_object_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} achievement_tier_response_t;

__attribute__((deprecated)) achievement_tier_response_t *achievement_tier_response_create(
    long achievement_tier_id,
    char *title,
    char *description,
    long goal_count,
    asset_short_response_t *icon,
    long mission_id,
    long game_id,
    long pack_id,
    long game_level_id,
    long game_object_id
);

void achievement_tier_response_free(achievement_tier_response_t *achievement_tier_response);

achievement_tier_response_t *achievement_tier_response_parseFromJSON(cJSON *achievement_tier_responseJSON);

cJSON *achievement_tier_response_convertToJSON(achievement_tier_response_t *achievement_tier_response);

#endif /* _achievement_tier_response_H_ */

