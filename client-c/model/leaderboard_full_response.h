/*
 * leaderboard_full_response.h
 *
 * 
 */

#ifndef _leaderboard_full_response_H_
#define _leaderboard_full_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct leaderboard_full_response_t leaderboard_full_response_t;

#include "application_mini_response.h"
#include "asset_response.h"
#include "rank_list_response.h"



typedef struct leaderboard_full_response_t {
    long leaderboard_id; //numeric
    char *rank_type; // string
    char *rank_mode; // string
    char *sort_type; // string
    int limitation; //numeric
    char *title; // string
    char *description; // string
    char *meta_data; // string
    struct asset_response_t *icon_asset; //model
    struct asset_response_t *banner_asset; //model
    int active; //boolean
    struct application_mini_response_t *application; //model
    struct rank_list_response_t *leaderboard_rankings; //model

    int _library_owned; // Is the library responsible for freeing this object?
} leaderboard_full_response_t;

__attribute__((deprecated)) leaderboard_full_response_t *leaderboard_full_response_create(
    long leaderboard_id,
    char *rank_type,
    char *rank_mode,
    char *sort_type,
    int limitation,
    char *title,
    char *description,
    char *meta_data,
    asset_response_t *icon_asset,
    asset_response_t *banner_asset,
    int active,
    application_mini_response_t *application,
    rank_list_response_t *leaderboard_rankings
);

void leaderboard_full_response_free(leaderboard_full_response_t *leaderboard_full_response);

leaderboard_full_response_t *leaderboard_full_response_parseFromJSON(cJSON *leaderboard_full_responseJSON);

cJSON *leaderboard_full_response_convertToJSON(leaderboard_full_response_t *leaderboard_full_response);

#endif /* _leaderboard_full_response_H_ */

