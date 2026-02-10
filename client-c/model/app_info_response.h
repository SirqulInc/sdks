/*
 * app_info_response.h
 *
 * 
 */

#ifndef _app_info_response_H_
#define _app_info_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct app_info_response_t app_info_response_t;

#include "achievement_progress_response.h"
#include "purchase_item_list_response.h"
#include "ticket_count_response.h"

// Enum SCORINGTYPE for app_info_response

typedef enum  { sirqul_iot_platform_app_info_response_SCORINGTYPE_NULL = 0, sirqul_iot_platform_app_info_response_SCORINGTYPE_GAME_LEVEL, sirqul_iot_platform_app_info_response_SCORINGTYPE_GAME_OBJECT } sirqul_iot_platform_app_info_response_SCORINGTYPE_e;

char* app_info_response_scoring_type_ToString(sirqul_iot_platform_app_info_response_SCORINGTYPE_e scoring_type);

sirqul_iot_platform_app_info_response_SCORINGTYPE_e app_info_response_scoring_type_FromString(char* scoring_type);



typedef struct app_info_response_t {
    long points; //numeric
    long tickets_available; //numeric
    long tickets_earned; //numeric
    long tickets_purchased; //numeric
    long tickets_used; //numeric
    char *rank; // string
    long max_points; //numeric
    long max_tickets; //numeric
    float point_to_ticket_modifier; //numeric
    sirqul_iot_platform_app_info_response_SCORINGTYPE_e scoring_type; //enum
    struct purchase_item_list_response_t *purchase_item_list_response; //model
    long terms_accepted_date; //numeric
    int requires_terms_acceptance; //boolean
    list_t *completed_achievements; //nonprimitive container
    list_t *wip_achievements; //nonprimitive container
    char *app_blob; // string
    int enable_push; //boolean
    int enable_sms; //boolean
    int enable_email; //boolean
    list_t *ticket_counts; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} app_info_response_t;

__attribute__((deprecated)) app_info_response_t *app_info_response_create(
    long points,
    long tickets_available,
    long tickets_earned,
    long tickets_purchased,
    long tickets_used,
    char *rank,
    long max_points,
    long max_tickets,
    float point_to_ticket_modifier,
    sirqul_iot_platform_app_info_response_SCORINGTYPE_e scoring_type,
    purchase_item_list_response_t *purchase_item_list_response,
    long terms_accepted_date,
    int requires_terms_acceptance,
    list_t *completed_achievements,
    list_t *wip_achievements,
    char *app_blob,
    int enable_push,
    int enable_sms,
    int enable_email,
    list_t *ticket_counts
);

void app_info_response_free(app_info_response_t *app_info_response);

app_info_response_t *app_info_response_parseFromJSON(cJSON *app_info_responseJSON);

cJSON *app_info_response_convertToJSON(app_info_response_t *app_info_response);

#endif /* _app_info_response_H_ */

