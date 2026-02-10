/*
 * score_response.h
 *
 * 
 */

#ifndef _score_response_H_
#define _score_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct score_response_t score_response_t;


// Enum ACTION for score_response

typedef enum  { sirqul_iot_platform_score_response_ACTION_NULL = 0, sirqul_iot_platform_score_response_ACTION_DATA, sirqul_iot_platform_score_response_ACTION_SAVE, sirqul_iot_platform_score_response_ACTION__DELETE, sirqul_iot_platform_score_response_ACTION_GET } sirqul_iot_platform_score_response_ACTION_e;

char* score_response_action_ToString(sirqul_iot_platform_score_response_ACTION_e action);

sirqul_iot_platform_score_response_ACTION_e score_response_action_FromString(char* action);

// Enum STATUS for score_response

typedef enum  { sirqul_iot_platform_score_response_STATUS_NULL = 0, sirqul_iot_platform_score_response_STATUS_COMPLETED, sirqul_iot_platform_score_response_STATUS_OWNER_CREDIT, sirqul_iot_platform_score_response_STATUS_SUMMATION, sirqul_iot_platform_score_response_STATUS_TOURNAMENT } sirqul_iot_platform_score_response_STATUS_e;

char* score_response_status_ToString(sirqul_iot_platform_score_response_STATUS_e status);

sirqul_iot_platform_score_response_STATUS_e score_response_status_FromString(char* status);



typedef struct score_response_t {
    sirqul_iot_platform_score_response_ACTION_e action; //enum
    long score_id; //numeric
    sirqul_iot_platform_score_response_STATUS_e status; //enum
    int points; //numeric
    int time_taken; //numeric
    long tickets_earned; //numeric
    char *game_type; // string
    long account_id; //numeric
    char *account_display; // string

    int _library_owned; // Is the library responsible for freeing this object?
} score_response_t;

__attribute__((deprecated)) score_response_t *score_response_create(
    sirqul_iot_platform_score_response_ACTION_e action,
    long score_id,
    sirqul_iot_platform_score_response_STATUS_e status,
    int points,
    int time_taken,
    long tickets_earned,
    char *game_type,
    long account_id,
    char *account_display
);

void score_response_free(score_response_t *score_response);

score_response_t *score_response_parseFromJSON(cJSON *score_responseJSON);

cJSON *score_response_convertToJSON(score_response_t *score_response);

#endif /* _score_response_H_ */

