/*
 * ticket_response.h
 *
 * 
 */

#ifndef _ticket_response_H_
#define _ticket_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ticket_response_t ticket_response_t;

#include "account_short_response.h"
#include "application_short_response.h"
#include "asset_short_response.h"
#include "purchase_item_short_response.h"

// Enum ACTION for ticket_response

typedef enum  { sirqul_iot_platform_ticket_response_ACTION_NULL = 0, sirqul_iot_platform_ticket_response_ACTION_DATA, sirqul_iot_platform_ticket_response_ACTION_SAVE, sirqul_iot_platform_ticket_response_ACTION__DELETE, sirqul_iot_platform_ticket_response_ACTION_GET } sirqul_iot_platform_ticket_response_ACTION_e;

char* ticket_response_action_ToString(sirqul_iot_platform_ticket_response_ACTION_e action);

sirqul_iot_platform_ticket_response_ACTION_e ticket_response_action_FromString(char* action);

// Enum TYPE for ticket_response

typedef enum  { sirqul_iot_platform_ticket_response_TYPE_NULL = 0, sirqul_iot_platform_ticket_response_TYPE_GAME_OBJECT, sirqul_iot_platform_ticket_response_TYPE_GAME_LEVEL, sirqul_iot_platform_ticket_response_TYPE_PACK, sirqul_iot_platform_ticket_response_TYPE_GAME, sirqul_iot_platform_ticket_response_TYPE_MISSION, sirqul_iot_platform_ticket_response_TYPE_PROFILE, sirqul_iot_platform_ticket_response_TYPE_APPLICATION, sirqul_iot_platform_ticket_response_TYPE_TICKETS, sirqul_iot_platform_ticket_response_TYPE_ASSET, sirqul_iot_platform_ticket_response_TYPE_CUSTOM } sirqul_iot_platform_ticket_response_TYPE_e;

char* ticket_response_type_ToString(sirqul_iot_platform_ticket_response_TYPE_e type);

sirqul_iot_platform_ticket_response_TYPE_e ticket_response_type_FromString(char* type);

// Enum ACTIONTYPE for ticket_response

typedef enum  { sirqul_iot_platform_ticket_response_ACTIONTYPE_NULL = 0, sirqul_iot_platform_ticket_response_ACTIONTYPE_COMPLETED, sirqul_iot_platform_ticket_response_ACTIONTYPE_REDEEMED, sirqul_iot_platform_ticket_response_ACTIONTYPE_USERS_PLAYED, sirqul_iot_platform_ticket_response_ACTIONTYPE_TOURNAMENT_OWNER, sirqul_iot_platform_ticket_response_ACTIONTYPE_PURCHASED, sirqul_iot_platform_ticket_response_ACTIONTYPE_SUMATION, sirqul_iot_platform_ticket_response_ACTIONTYPE_GIFTED, sirqul_iot_platform_ticket_response_ACTIONTYPE_REFUNDED } sirqul_iot_platform_ticket_response_ACTIONTYPE_e;

char* ticket_response_action_type_ToString(sirqul_iot_platform_ticket_response_ACTIONTYPE_e action_type);

sirqul_iot_platform_ticket_response_ACTIONTYPE_e ticket_response_action_type_FromString(char* action_type);



typedef struct ticket_response_t {
    sirqul_iot_platform_ticket_response_ACTION_e action; //enum
    long id; //numeric
    long account_id; //numeric
    long object_id; //numeric
    sirqul_iot_platform_ticket_response_TYPE_e type; //enum
    sirqul_iot_platform_ticket_response_ACTIONTYPE_e action_type; //enum
    long used; //numeric
    long count; //numeric
    struct purchase_item_short_response_t *purchase_item; //model
    char *custom_message; // string
    struct account_short_response_t *sender; //model
    list_t *receiver; //nonprimitive container
    struct asset_short_response_t *custom_asset; //model
    char *receipt_token; // string
    char *ticket_type; // string
    struct application_short_response_t *application; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ticket_response_t;

__attribute__((deprecated)) ticket_response_t *ticket_response_create(
    sirqul_iot_platform_ticket_response_ACTION_e action,
    long id,
    long account_id,
    long object_id,
    sirqul_iot_platform_ticket_response_TYPE_e type,
    sirqul_iot_platform_ticket_response_ACTIONTYPE_e action_type,
    long used,
    long count,
    purchase_item_short_response_t *purchase_item,
    char *custom_message,
    account_short_response_t *sender,
    list_t *receiver,
    asset_short_response_t *custom_asset,
    char *receipt_token,
    char *ticket_type,
    application_short_response_t *application
);

void ticket_response_free(ticket_response_t *ticket_response);

ticket_response_t *ticket_response_parseFromJSON(cJSON *ticket_responseJSON);

cJSON *ticket_response_convertToJSON(ticket_response_t *ticket_response);

#endif /* _ticket_response_H_ */

