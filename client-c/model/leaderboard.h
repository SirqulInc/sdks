/*
 * leaderboard.h
 *
 * 
 */

#ifndef _leaderboard_H_
#define _leaderboard_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct leaderboard_t leaderboard_t;

#include "application_mini_response.h"
#include "asset_response.h"



typedef struct leaderboard_t {
    long id; //numeric
    char *rank_type; // string
    char *rank_mode; // string
    char *sort_type; // string
    int limitation; //numeric
    char *title; // string
    char *description; // string
    struct asset_response_t *icon_asset; //model
    struct asset_response_t *banner_asset; //model
    struct application_mini_response_t *application; //model
    char *meta_data; // string
    int active; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} leaderboard_t;

__attribute__((deprecated)) leaderboard_t *leaderboard_create(
    long id,
    char *rank_type,
    char *rank_mode,
    char *sort_type,
    int limitation,
    char *title,
    char *description,
    asset_response_t *icon_asset,
    asset_response_t *banner_asset,
    application_mini_response_t *application,
    char *meta_data,
    int active
);

void leaderboard_free(leaderboard_t *leaderboard);

leaderboard_t *leaderboard_parseFromJSON(cJSON *leaderboardJSON);

cJSON *leaderboard_convertToJSON(leaderboard_t *leaderboard);

#endif /* _leaderboard_H_ */

