/*
 * subscription_option.h
 *
 * 
 */

#ifndef _subscription_option_H_
#define _subscription_option_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct subscription_option_t subscription_option_t;


// Enum OPTIONTYPE for subscription_option

typedef enum  { sirqul_iot_platform_subscription_option_OPTIONTYPE_NULL = 0, sirqul_iot_platform_subscription_option_OPTIONTYPE_MISSION, sirqul_iot_platform_subscription_option_OPTIONTYPE_LOCATION, sirqul_iot_platform_subscription_option_OPTIONTYPE_OFFER, sirqul_iot_platform_subscription_option_OPTIONTYPE_NOTIFICATION, sirqul_iot_platform_subscription_option_OPTIONTYPE_REQUEST, sirqul_iot_platform_subscription_option_OPTIONTYPE_STORAGE_S3, sirqul_iot_platform_subscription_option_OPTIONTYPE_STORAGE_DB } sirqul_iot_platform_subscription_option_OPTIONTYPE_e;

char* subscription_option_option_type_ToString(sirqul_iot_platform_subscription_option_OPTIONTYPE_e option_type);

sirqul_iot_platform_subscription_option_OPTIONTYPE_e subscription_option_option_type_FromString(char* option_type);

// Enum OFFERTYPE for subscription_option

typedef enum  { sirqul_iot_platform_subscription_option_OFFERTYPE_NULL = 0, sirqul_iot_platform_subscription_option_OFFERTYPE_VOUCHER, sirqul_iot_platform_subscription_option_OFFERTYPE_COUPON, sirqul_iot_platform_subscription_option_OFFERTYPE_PRODUCT, sirqul_iot_platform_subscription_option_OFFERTYPE_MEDIA, sirqul_iot_platform_subscription_option_OFFERTYPE_EVENT, sirqul_iot_platform_subscription_option_OFFERTYPE_DEVICE } sirqul_iot_platform_subscription_option_OFFERTYPE_e;

char* subscription_option_offer_type_ToString(sirqul_iot_platform_subscription_option_OFFERTYPE_e offer_type);

sirqul_iot_platform_subscription_option_OFFERTYPE_e subscription_option_offer_type_FromString(char* offer_type);



typedef struct subscription_option_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    double price; //numeric
    int quantity; //numeric
    int threshold; //numeric
    int visible; //boolean
    sirqul_iot_platform_subscription_option_OPTIONTYPE_e option_type; //enum
    sirqul_iot_platform_subscription_option_OFFERTYPE_e offer_type; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} subscription_option_t;

__attribute__((deprecated)) subscription_option_t *subscription_option_create(
    long id,
    int active,
    int valid,
    char *name,
    double price,
    int quantity,
    int threshold,
    int visible,
    sirqul_iot_platform_subscription_option_OPTIONTYPE_e option_type,
    sirqul_iot_platform_subscription_option_OFFERTYPE_e offer_type
);

void subscription_option_free(subscription_option_t *subscription_option);

subscription_option_t *subscription_option_parseFromJSON(cJSON *subscription_optionJSON);

cJSON *subscription_option_convertToJSON(subscription_option_t *subscription_option);

#endif /* _subscription_option_H_ */

