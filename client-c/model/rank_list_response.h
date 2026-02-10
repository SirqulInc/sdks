/*
 * rank_list_response.h
 *
 * 
 */

#ifndef _rank_list_response_H_
#define _rank_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rank_list_response_t rank_list_response_t;

#include "rank_response.h"

// Enum LEADERBOARDMODE for rank_list_response

typedef enum  { sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_NULL = 0, sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_GLOBAL, sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_FRIENDS, sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_LOCAL, sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_SEARCH, sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_CUSTOM } sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e;

char* rank_list_response_leaderboard_mode_ToString(sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e leaderboard_mode);

sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e rank_list_response_leaderboard_mode_FromString(char* leaderboard_mode);



typedef struct rank_list_response_t {
    list_t *items; //nonprimitive container
    struct rank_response_t *user_rank; //model
    int has_more_results; //boolean
    int count; //numeric
    char *rank_type; // string
    char *app; // string
    char *sort_field; // string
    sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e leaderboard_mode; //enum
    long start; //numeric
    long limit; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} rank_list_response_t;

__attribute__((deprecated)) rank_list_response_t *rank_list_response_create(
    list_t *items,
    rank_response_t *user_rank,
    int has_more_results,
    int count,
    char *rank_type,
    char *app,
    char *sort_field,
    sirqul_iot_platform_rank_list_response_LEADERBOARDMODE_e leaderboard_mode,
    long start,
    long limit
);

void rank_list_response_free(rank_list_response_t *rank_list_response);

rank_list_response_t *rank_list_response_parseFromJSON(cJSON *rank_list_responseJSON);

cJSON *rank_list_response_convertToJSON(rank_list_response_t *rank_list_response);

#endif /* _rank_list_response_H_ */

