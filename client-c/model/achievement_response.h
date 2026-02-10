/*
 * achievement_response.h
 *
 * 
 */

#ifndef _achievement_response_H_
#define _achievement_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct achievement_response_t achievement_response_t;

#include "achievement_tier_response.h"
#include "name_string_value_response.h"



typedef struct achievement_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long achievement_id; //numeric
    char *title; // string
    char *description; // string
    char *analytics_tag; // string
    char *rank_type; // string
    int rank_increment; //numeric
    int validate; //boolean
    char *app_name; // string
    int active; //boolean
    long updated; //numeric
    long created; //numeric
    int tier_count; //numeric
    int min_increment; //numeric
    int max_increment; //numeric
    list_t *tiers; //nonprimitive container
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} achievement_response_t;

__attribute__((deprecated)) achievement_response_t *achievement_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long achievement_id,
    char *title,
    char *description,
    char *analytics_tag,
    char *rank_type,
    int rank_increment,
    int validate,
    char *app_name,
    int active,
    long updated,
    long created,
    int tier_count,
    int min_increment,
    int max_increment,
    list_t *tiers,
    char *returning
);

void achievement_response_free(achievement_response_t *achievement_response);

achievement_response_t *achievement_response_parseFromJSON(cJSON *achievement_responseJSON);

cJSON *achievement_response_convertToJSON(achievement_response_t *achievement_response);

#endif /* _achievement_response_H_ */

