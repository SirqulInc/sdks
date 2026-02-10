/*
 * mission_invite_response.h
 *
 * 
 */

#ifndef _mission_invite_response_H_
#define _mission_invite_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mission_invite_response_t mission_invite_response_t;

#include "account_short_response.h"

// Enum STATUS for mission_invite_response

typedef enum  { sirqul_iot_platform_mission_invite_response_STATUS_NULL = 0, sirqul_iot_platform_mission_invite_response_STATUS_AVAILABLE, sirqul_iot_platform_mission_invite_response_STATUS_PENDING, sirqul_iot_platform_mission_invite_response_STATUS_UPDATED, sirqul_iot_platform_mission_invite_response_STATUS_ACCEPTED, sirqul_iot_platform_mission_invite_response_STATUS_ACTIVE, sirqul_iot_platform_mission_invite_response_STATUS_BUY_BACK, sirqul_iot_platform_mission_invite_response_STATUS_FAILED, sirqul_iot_platform_mission_invite_response_STATUS_QUIT, sirqul_iot_platform_mission_invite_response_STATUS_COMPLETED, sirqul_iot_platform_mission_invite_response_STATUS_PENDING_REVIEW, sirqul_iot_platform_mission_invite_response_STATUS_REJECTED } sirqul_iot_platform_mission_invite_response_STATUS_e;

char* mission_invite_response_status_ToString(sirqul_iot_platform_mission_invite_response_STATUS_e status);

sirqul_iot_platform_mission_invite_response_STATUS_e mission_invite_response_status_FromString(char* status);

// Enum INVITESTATUS for mission_invite_response

typedef enum  { sirqul_iot_platform_mission_invite_response_INVITESTATUS_NULL = 0, sirqul_iot_platform_mission_invite_response_INVITESTATUS_AVAILABLE, sirqul_iot_platform_mission_invite_response_INVITESTATUS_PENDING, sirqul_iot_platform_mission_invite_response_INVITESTATUS_UPDATED, sirqul_iot_platform_mission_invite_response_INVITESTATUS_ACCEPTED, sirqul_iot_platform_mission_invite_response_INVITESTATUS_ACTIVE, sirqul_iot_platform_mission_invite_response_INVITESTATUS_BUY_BACK, sirqul_iot_platform_mission_invite_response_INVITESTATUS_FAILED, sirqul_iot_platform_mission_invite_response_INVITESTATUS_QUIT, sirqul_iot_platform_mission_invite_response_INVITESTATUS_COMPLETED, sirqul_iot_platform_mission_invite_response_INVITESTATUS_PENDING_REVIEW, sirqul_iot_platform_mission_invite_response_INVITESTATUS_REJECTED } sirqul_iot_platform_mission_invite_response_INVITESTATUS_e;

char* mission_invite_response_invite_status_ToString(sirqul_iot_platform_mission_invite_response_INVITESTATUS_e invite_status);

sirqul_iot_platform_mission_invite_response_INVITESTATUS_e mission_invite_response_invite_status_FromString(char* invite_status);



typedef struct mission_invite_response_t {
    long id; //numeric
    sirqul_iot_platform_mission_invite_response_STATUS_e status; //enum
    char *title; // string
    char *description; // string
    struct account_short_response_t *owner; //model
    long permissionable_id; //numeric
    char *permissionable_type; // string
    int ranked; //boolean
    int rewarded; //boolean
    long start_date; //numeric
    long end_date; //numeric
    long updated; //numeric
    int buy_back_available; //boolean
    sirqul_iot_platform_mission_invite_response_INVITESTATUS_e invite_status; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} mission_invite_response_t;

__attribute__((deprecated)) mission_invite_response_t *mission_invite_response_create(
    long id,
    sirqul_iot_platform_mission_invite_response_STATUS_e status,
    char *title,
    char *description,
    account_short_response_t *owner,
    long permissionable_id,
    char *permissionable_type,
    int ranked,
    int rewarded,
    long start_date,
    long end_date,
    long updated,
    int buy_back_available,
    sirqul_iot_platform_mission_invite_response_INVITESTATUS_e invite_status
);

void mission_invite_response_free(mission_invite_response_t *mission_invite_response);

mission_invite_response_t *mission_invite_response_parseFromJSON(cJSON *mission_invite_responseJSON);

cJSON *mission_invite_response_convertToJSON(mission_invite_response_t *mission_invite_response);

#endif /* _mission_invite_response_H_ */

