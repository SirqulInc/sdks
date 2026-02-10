/*
 * achievement_progress_response.h
 *
 * 
 */

#ifndef _achievement_progress_response_H_
#define _achievement_progress_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct achievement_progress_response_t achievement_progress_response_t;

#include "asset_short_response.h"



typedef struct achievement_progress_response_t {
    long achievement_id; //numeric
    long achievement_tier_id; //numeric
    char *title; // string
    char *description; // string
    struct asset_short_response_t *icon; //model
    int completed; //boolean
    long progress_count; //numeric
    long goal_count; //numeric
    long date_updated; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} achievement_progress_response_t;

__attribute__((deprecated)) achievement_progress_response_t *achievement_progress_response_create(
    long achievement_id,
    long achievement_tier_id,
    char *title,
    char *description,
    asset_short_response_t *icon,
    int completed,
    long progress_count,
    long goal_count,
    long date_updated
);

void achievement_progress_response_free(achievement_progress_response_t *achievement_progress_response);

achievement_progress_response_t *achievement_progress_response_parseFromJSON(cJSON *achievement_progress_responseJSON);

cJSON *achievement_progress_response_convertToJSON(achievement_progress_response_t *achievement_progress_response);

#endif /* _achievement_progress_response_H_ */

