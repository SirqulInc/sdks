/*
 * purchase_item_response.h
 *
 * 
 */

#ifndef _purchase_item_response_H_
#define _purchase_item_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct purchase_item_response_t purchase_item_response_t;

#include "asset_short_response.h"

// Enum SERVICEACTION for purchase_item_response

typedef enum  { sirqul_iot_platform_purchase_item_response_SERVICEACTION_NULL = 0, sirqul_iot_platform_purchase_item_response_SERVICEACTION_DAY_PREMIUM, sirqul_iot_platform_purchase_item_response_SERVICEACTION_WEEK_PREMIUM, sirqul_iot_platform_purchase_item_response_SERVICEACTION_MONTH_PREMIUM, sirqul_iot_platform_purchase_item_response_SERVICEACTION_YEAR_PREMIUM, sirqul_iot_platform_purchase_item_response_SERVICEACTION_LIFETIME_PREMIUM, sirqul_iot_platform_purchase_item_response_SERVICEACTION_ADD_TICKET, sirqul_iot_platform_purchase_item_response_SERVICEACTION_ADD_GIFT, sirqul_iot_platform_purchase_item_response_SERVICEACTION_ADD_POINTS } sirqul_iot_platform_purchase_item_response_SERVICEACTION_e;

char* purchase_item_response_service_action_ToString(sirqul_iot_platform_purchase_item_response_SERVICEACTION_e service_action);

sirqul_iot_platform_purchase_item_response_SERVICEACTION_e purchase_item_response_service_action_FromString(char* service_action);



typedef struct purchase_item_response_t {
    long id; //numeric
    char *name; // string
    char *description; // string
    int tickets; //numeric
    struct asset_short_response_t *cover_asset; //model
    struct asset_short_response_t *promo_asset; //model
    int giftable; //boolean
    int assetable; //boolean
    char *game_type; // string
    float price; //numeric
    char *purchase_type; // string
    char *purchase_code; // string
    int purchase_limit; //numeric
    int quantity; //numeric
    sirqul_iot_platform_purchase_item_response_SERVICEACTION_e service_action; //enum
    char *app_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} purchase_item_response_t;

__attribute__((deprecated)) purchase_item_response_t *purchase_item_response_create(
    long id,
    char *name,
    char *description,
    int tickets,
    asset_short_response_t *cover_asset,
    asset_short_response_t *promo_asset,
    int giftable,
    int assetable,
    char *game_type,
    float price,
    char *purchase_type,
    char *purchase_code,
    int purchase_limit,
    int quantity,
    sirqul_iot_platform_purchase_item_response_SERVICEACTION_e service_action,
    char *app_name
);

void purchase_item_response_free(purchase_item_response_t *purchase_item_response);

purchase_item_response_t *purchase_item_response_parseFromJSON(cJSON *purchase_item_responseJSON);

cJSON *purchase_item_response_convertToJSON(purchase_item_response_t *purchase_item_response);

#endif /* _purchase_item_response_H_ */

