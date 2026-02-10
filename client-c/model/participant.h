/*
 * participant.h
 *
 * 
 */

#ifndef _participant_H_
#define _participant_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct participant_t participant_t;

#include "account.h"

// Enum TYPE for participant

typedef enum  { sirqul_iot_platform_participant_TYPE_NULL = 0, sirqul_iot_platform_participant_TYPE_TEAM, sirqul_iot_platform_participant_TYPE_LEAGUE, sirqul_iot_platform_participant_TYPE_SPORT } sirqul_iot_platform_participant_TYPE_e;

char* participant_type_ToString(sirqul_iot_platform_participant_TYPE_e type);

sirqul_iot_platform_participant_TYPE_e participant_type_FromString(char* type);



typedef struct participant_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *account; //model
    char *available_start; //date time
    char *available_end; //date time
    char *color1; // string
    char *color2; // string
    sirqul_iot_platform_participant_TYPE_e type; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} participant_t;

__attribute__((deprecated)) participant_t *participant_create(
    long id,
    int active,
    int valid,
    account_t *account,
    char *available_start,
    char *available_end,
    char *color1,
    char *color2,
    sirqul_iot_platform_participant_TYPE_e type
);

void participant_free(participant_t *participant);

participant_t *participant_parseFromJSON(cJSON *participantJSON);

cJSON *participant_convertToJSON(participant_t *participant);

#endif /* _participant_H_ */

