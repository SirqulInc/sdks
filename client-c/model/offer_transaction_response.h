/*
 * offer_transaction_response.h
 *
 * 
 */

#ifndef _offer_transaction_response_H_
#define _offer_transaction_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct offer_transaction_response_t offer_transaction_response_t;

#include "account_short_response.h"
#include "asset_response.h"
#include "audience_response.h"
#include "category_response.h"
#include "event_response.h"
#include "filter_response.h"
#include "media_response.h"
#include "mission_list_response.h"
#include "name_string_value_response.h"
#include "offer_short_response.h"
#include "product_response.h"
#include "retailer_location_response.h"

// Enum BARCODETYPE for offer_transaction_response

typedef enum  { sirqul_iot_platform_offer_transaction_response_BARCODETYPE_NULL = 0, sirqul_iot_platform_offer_transaction_response_BARCODETYPE_NONE, sirqul_iot_platform_offer_transaction_response_BARCODETYPE_UPC, sirqul_iot_platform_offer_transaction_response_BARCODETYPE_CODE_128, sirqul_iot_platform_offer_transaction_response_BARCODETYPE_QR, sirqul_iot_platform_offer_transaction_response_BARCODETYPE_CUSTOM_MEDIA } sirqul_iot_platform_offer_transaction_response_BARCODETYPE_e;

char* offer_transaction_response_barcode_type_ToString(sirqul_iot_platform_offer_transaction_response_BARCODETYPE_e barcode_type);

sirqul_iot_platform_offer_transaction_response_BARCODETYPE_e offer_transaction_response_barcode_type_FromString(char* barcode_type);

// Enum SPECIALOFFERTYPE for offer_transaction_response

typedef enum  { sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_NULL = 0, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_ALL, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_RESERVABLE, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_REGULAR_OFFER, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_ACT_NOW, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_GET_THERE_NOW, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_SQOOT, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_TICKETS, sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_YIPIT } sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_e;

char* offer_transaction_response_special_offer_type_ToString(sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_e special_offer_type);

sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_e offer_transaction_response_special_offer_type_FromString(char* special_offer_type);



typedef struct offer_transaction_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long offer_location_id; //numeric
    long offer_id; //numeric
    long retailer_id; //numeric
    long transaction_id; //numeric
    long favorite_id; //numeric
    char *offer_name; // string
    char *sub_title; // string
    char *location_name; // string
    char *starts; //date time
    char *expires; //date time
    long activated; //numeric
    long expiration; //numeric
    long redeemable_start; //numeric
    long redeemable_end; //numeric
    double distance; //numeric
    char *offer_type; // string
    double longitude; //numeric
    double latitude; //numeric
    int favorite; //boolean
    double full_price; //numeric
    double discount_price; //numeric
    double estimated_value; //numeric
    double voucher_discount_price; //numeric
    struct mission_list_response_t *mission_list_response; //model
    char *image; // string
    char *image1; // string
    char *image2; // string
    char *image3; // string
    char *image4; // string
    char *image5; // string
    list_t *images; //nonprimitive container
    char *barcode; // string
    char *external_url; // string
    char *sqoot_url; // string
    int active; //boolean
    struct retailer_location_response_t *location; //model
    char *sub_details; // string
    int external_redeem_auth; //numeric
    char *external_redeem_options; // string
    char *publisher; // string
    struct product_response_t *product; //model
    struct event_response_t *event; //model
    struct media_response_t *media; //model
    int viewed_count; //numeric
    int clicked_count; //numeric
    int added_limit; //numeric
    int added_count; //numeric
    int used_count; //numeric
    int removed_count; //numeric
    int location_added_count; //numeric
    char *barcode_entry; // string
    sirqul_iot_platform_offer_transaction_response_BARCODETYPE_e barcode_type; //enum
    long tickets_reward; //numeric
    char *tickets_reward_type; // string
    sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_e special_offer_type; //enum
    long like_count; //numeric
    long dislike_count; //numeric
    long favorite_count; //numeric
    long note_count; //numeric
    long log_id; //numeric
    long billable_entity_id; //numeric
    long responsible_account_id; //numeric
    char *availability_summary; // string
    char *external_id; // string
    struct offer_short_response_t *parent_offer; //model
    char *address; // string
    char *details; // string
    char *fine_print; // string
    char *retailer_phone_number; // string
    char *ticket_price_type; // string
    long ticket_price; //numeric
    double discount_percentage; //numeric
    double payment_fees; //numeric
    double voucher_price; //numeric
    int purchases_remaining; //numeric
    int redemptions_remaining; //numeric
    int redemption_status; //numeric
    char *redemption_code; // string
    list_t *audiences; //nonprimitive container
    int audience_count; //numeric
    int wallet_count; //numeric
    char *qr_code_url; // string
    int show_remaining; //boolean
    int show_redeemed; //boolean
    int purchase_limit; //numeric
    int purchase_limit_per_user; //numeric
    int redemption_limit; //numeric
    int user_redemption_limit; //numeric
    list_t *categories; //nonprimitive container
    list_t *filters; //nonprimitive container
    struct account_short_response_t *customer; //model
    long purchased_date; //numeric
    long used_date; //numeric
    long transaction_created; //numeric
    long transaction_updated; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} offer_transaction_response_t;

__attribute__((deprecated)) offer_transaction_response_t *offer_transaction_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long offer_location_id,
    long offer_id,
    long retailer_id,
    long transaction_id,
    long favorite_id,
    char *offer_name,
    char *sub_title,
    char *location_name,
    char *starts,
    char *expires,
    long activated,
    long expiration,
    long redeemable_start,
    long redeemable_end,
    double distance,
    char *offer_type,
    double longitude,
    double latitude,
    int favorite,
    double full_price,
    double discount_price,
    double estimated_value,
    double voucher_discount_price,
    mission_list_response_t *mission_list_response,
    char *image,
    char *image1,
    char *image2,
    char *image3,
    char *image4,
    char *image5,
    list_t *images,
    char *barcode,
    char *external_url,
    char *sqoot_url,
    int active,
    retailer_location_response_t *location,
    char *sub_details,
    int external_redeem_auth,
    char *external_redeem_options,
    char *publisher,
    product_response_t *product,
    event_response_t *event,
    media_response_t *media,
    int viewed_count,
    int clicked_count,
    int added_limit,
    int added_count,
    int used_count,
    int removed_count,
    int location_added_count,
    char *barcode_entry,
    sirqul_iot_platform_offer_transaction_response_BARCODETYPE_e barcode_type,
    long tickets_reward,
    char *tickets_reward_type,
    sirqul_iot_platform_offer_transaction_response_SPECIALOFFERTYPE_e special_offer_type,
    long like_count,
    long dislike_count,
    long favorite_count,
    long note_count,
    long log_id,
    long billable_entity_id,
    long responsible_account_id,
    char *availability_summary,
    char *external_id,
    offer_short_response_t *parent_offer,
    char *address,
    char *details,
    char *fine_print,
    char *retailer_phone_number,
    char *ticket_price_type,
    long ticket_price,
    double discount_percentage,
    double payment_fees,
    double voucher_price,
    int purchases_remaining,
    int redemptions_remaining,
    int redemption_status,
    char *redemption_code,
    list_t *audiences,
    int audience_count,
    int wallet_count,
    char *qr_code_url,
    int show_remaining,
    int show_redeemed,
    int purchase_limit,
    int purchase_limit_per_user,
    int redemption_limit,
    int user_redemption_limit,
    list_t *categories,
    list_t *filters,
    account_short_response_t *customer,
    long purchased_date,
    long used_date,
    long transaction_created,
    long transaction_updated,
    char *returning
);

void offer_transaction_response_free(offer_transaction_response_t *offer_transaction_response);

offer_transaction_response_t *offer_transaction_response_parseFromJSON(cJSON *offer_transaction_responseJSON);

cJSON *offer_transaction_response_convertToJSON(offer_transaction_response_t *offer_transaction_response);

#endif /* _offer_transaction_response_H_ */

