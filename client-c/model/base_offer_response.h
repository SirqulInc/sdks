/*
 * base_offer_response.h
 *
 * 
 */

#ifndef _base_offer_response_H_
#define _base_offer_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct base_offer_response_t base_offer_response_t;

#include "asset_response.h"

// Enum SPECIALOFFERTYPE for base_offer_response

typedef enum  { sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_NULL = 0, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_ALL, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_RESERVABLE, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_REGULAR_OFFER, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_ACT_NOW, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_GET_THERE_NOW, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_SQOOT, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_TICKETS, sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_YIPIT } sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_e;

char* base_offer_response_special_offer_type_ToString(sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_e special_offer_type);

sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_e base_offer_response_special_offer_type_FromString(char* special_offer_type);



typedef struct base_offer_response_t {
    char *title; // string
    char *details; // string
    char *sub_title; // string
    long activated; //numeric
    long expiration; //numeric
    long redeemable_start; //numeric
    long redeemable_end; //numeric
    char *offer_type; // string
    char *offer_visibility; // string
    int favorite; //boolean
    long deleted; //numeric
    double full_price; //numeric
    double discount_price; //numeric
    char *image; // string
    char *image1; // string
    char *image2; // string
    char *image3; // string
    char *image4; // string
    char *image5; // string
    list_t *images; //nonprimitive container
    char *barcode; // string
    char *external_url; // string
    int active; //boolean
    char *sub_details; // string
    char *external_redeem_options; // string
    char *publisher; // string
    int viewed_count; //numeric
    int clicked_count; //numeric
    int added_limit; //numeric
    int added_count; //numeric
    int used_count; //numeric
    int removed_count; //numeric
    long tickets_reward; //numeric
    char *tickets_reward_type; // string
    sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_e special_offer_type; //enum
    long like_count; //numeric
    long dislike_count; //numeric
    long favorite_count; //numeric
    long note_count; //numeric
    long billable_entity_id; //numeric
    long responsible_account_id; //numeric
    char *availability_summary; // string
    long flag_count; //numeric
    long flag_threshold; //numeric
    char *external_id; // string
    struct base_offer_response_t *parent_offer; //model

    int _library_owned; // Is the library responsible for freeing this object?
} base_offer_response_t;

__attribute__((deprecated)) base_offer_response_t *base_offer_response_create(
    char *title,
    char *details,
    char *sub_title,
    long activated,
    long expiration,
    long redeemable_start,
    long redeemable_end,
    char *offer_type,
    char *offer_visibility,
    int favorite,
    long deleted,
    double full_price,
    double discount_price,
    char *image,
    char *image1,
    char *image2,
    char *image3,
    char *image4,
    char *image5,
    list_t *images,
    char *barcode,
    char *external_url,
    int active,
    char *sub_details,
    char *external_redeem_options,
    char *publisher,
    int viewed_count,
    int clicked_count,
    int added_limit,
    int added_count,
    int used_count,
    int removed_count,
    long tickets_reward,
    char *tickets_reward_type,
    sirqul_iot_platform_base_offer_response_SPECIALOFFERTYPE_e special_offer_type,
    long like_count,
    long dislike_count,
    long favorite_count,
    long note_count,
    long billable_entity_id,
    long responsible_account_id,
    char *availability_summary,
    long flag_count,
    long flag_threshold,
    char *external_id,
    base_offer_response_t *parent_offer
);

void base_offer_response_free(base_offer_response_t *base_offer_response);

base_offer_response_t *base_offer_response_parseFromJSON(cJSON *base_offer_responseJSON);

cJSON *base_offer_response_convertToJSON(base_offer_response_t *base_offer_response);

#endif /* _base_offer_response_H_ */

