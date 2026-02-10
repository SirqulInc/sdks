/*
 * offer.h
 *
 * 
 */

#ifndef _offer_H_
#define _offer_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct offer_t offer_t;

#include "account.h"
#include "asset.h"
#include "billable_entity.h"
#include "category.h"
#include "device.h"
#include "event.h"
#include "filter.h"
#include "flag.h"
#include "flag_threshold.h"
#include "media.h"
#include "mission.h"
#include "note.h"
#include "offer_location.h"
#include "product.h"
#include "yay_or_nay.h"

// Enum TYPE for offer

typedef enum  { sirqul_iot_platform_offer_TYPE_NULL = 0, sirqul_iot_platform_offer_TYPE_VOUCHER, sirqul_iot_platform_offer_TYPE_COUPON, sirqul_iot_platform_offer_TYPE_PRODUCT, sirqul_iot_platform_offer_TYPE_MEDIA, sirqul_iot_platform_offer_TYPE_EVENT, sirqul_iot_platform_offer_TYPE_DEVICE } sirqul_iot_platform_offer_TYPE_e;

char* offer_type_ToString(sirqul_iot_platform_offer_TYPE_e type);

sirqul_iot_platform_offer_TYPE_e offer_type_FromString(char* type);

// Enum SPECIALOFFERTYPE for offer

typedef enum  { sirqul_iot_platform_offer_SPECIALOFFERTYPE_NULL = 0, sirqul_iot_platform_offer_SPECIALOFFERTYPE_ALL, sirqul_iot_platform_offer_SPECIALOFFERTYPE_RESERVABLE, sirqul_iot_platform_offer_SPECIALOFFERTYPE_REGULAR_OFFER, sirqul_iot_platform_offer_SPECIALOFFERTYPE_ACT_NOW, sirqul_iot_platform_offer_SPECIALOFFERTYPE_GET_THERE_NOW, sirqul_iot_platform_offer_SPECIALOFFERTYPE_SQOOT, sirqul_iot_platform_offer_SPECIALOFFERTYPE_TICKETS, sirqul_iot_platform_offer_SPECIALOFFERTYPE_YIPIT } sirqul_iot_platform_offer_SPECIALOFFERTYPE_e;

char* offer_special_offer_type_ToString(sirqul_iot_platform_offer_SPECIALOFFERTYPE_e special_offer_type);

sirqul_iot_platform_offer_SPECIALOFFERTYPE_e offer_special_offer_type_FromString(char* special_offer_type);

// Enum BARCODETYPE for offer

typedef enum  { sirqul_iot_platform_offer_BARCODETYPE_NULL = 0, sirqul_iot_platform_offer_BARCODETYPE_NONE, sirqul_iot_platform_offer_BARCODETYPE_UPC, sirqul_iot_platform_offer_BARCODETYPE_CODE_128, sirqul_iot_platform_offer_BARCODETYPE_QR, sirqul_iot_platform_offer_BARCODETYPE_CUSTOM_MEDIA } sirqul_iot_platform_offer_BARCODETYPE_e;

char* offer_bar_code_type_ToString(sirqul_iot_platform_offer_BARCODETYPE_e bar_code_type);

sirqul_iot_platform_offer_BARCODETYPE_e offer_bar_code_type_FromString(char* bar_code_type);

// Enum OFFERVISIBILITY for offer

typedef enum  { sirqul_iot_platform_offer_OFFERVISIBILITY_NULL = 0, sirqul_iot_platform_offer_OFFERVISIBILITY__PUBLIC, sirqul_iot_platform_offer_OFFERVISIBILITY_LISTABLE, sirqul_iot_platform_offer_OFFERVISIBILITY_REWARDABLE, sirqul_iot_platform_offer_OFFERVISIBILITY_TRIGGERABLE, sirqul_iot_platform_offer_OFFERVISIBILITY__PRIVATE } sirqul_iot_platform_offer_OFFERVISIBILITY_e;

char* offer_offer_visibility_ToString(sirqul_iot_platform_offer_OFFERVISIBILITY_e offer_visibility);

sirqul_iot_platform_offer_OFFERVISIBILITY_e offer_offer_visibility_FromString(char* offer_visibility);

// Enum OFFERPROCESSORID for offer

typedef enum  { sirqul_iot_platform_offer_OFFERPROCESSORID_NULL = 0, sirqul_iot_platform_offer_OFFERPROCESSORID_SQOOT, sirqul_iot_platform_offer_OFFERPROCESSORID_YIPIT, sirqul_iot_platform_offer_OFFERPROCESSORID_API, sirqul_iot_platform_offer_OFFERPROCESSORID_CSV } sirqul_iot_platform_offer_OFFERPROCESSORID_e;

char* offer_offer_processor_id_ToString(sirqul_iot_platform_offer_OFFERPROCESSORID_e offer_processor_id);

sirqul_iot_platform_offer_OFFERPROCESSORID_e offer_offer_processor_id_FromString(char* offer_processor_id);



typedef struct offer_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *test_field; // string
    struct billable_entity_t *billable_entity; //model
    list_t *offer_locations; //nonprimitive container
    list_t *missions; //nonprimitive container
    char *activated; //date time
    char *expires; //date time
    char *redeemable_start; //date time
    char *redeemable_end; //date time
    char *title; // string
    char *sub_title; // string
    sirqul_iot_platform_offer_TYPE_e type; //enum
    sirqul_iot_platform_offer_SPECIALOFFERTYPE_e special_offer_type; //enum
    char *details; // string
    char *sub_details; // string
    char *fine_print; // string
    char *get_there_now_notification; // string
    int max_prints; //numeric
    int view_limit; //numeric
    int featured; //boolean
    int replaced; //boolean
    int show_remaining; //boolean
    int show_redeemed; //boolean
    struct offer_t *parent_offer; //model
    struct asset_t *artwork; //model
    struct asset_t *offer_image1; //model
    struct asset_t *offer_image2; //model
    struct asset_t *offer_image3; //model
    struct asset_t *offer_image4; //model
    struct asset_t *offer_image5; //model
    struct asset_t *bar_code; //model
    sirqul_iot_platform_offer_BARCODETYPE_e bar_code_type; //enum
    char *bar_code_entry; // string
    list_t *categories; //nonprimitive container
    list_t *filters; //nonprimitive container
    char *ticket_type; // string
    int allocate_tickets; //boolean
    char *ticket_price_type; // string
    long ticket_price; //numeric
    double full_price; //numeric
    double discount_price; //numeric
    int available_limit; //numeric
    int available_limit_per_user; //numeric
    int added_limit; //numeric
    int used_count; //numeric
    int added_count; //numeric
    int removed_count; //numeric
    int viewed_count; //numeric
    int clicked_count; //numeric
    sirqul_iot_platform_offer_OFFERVISIBILITY_e offer_visibility; //enum
    sirqul_iot_platform_offer_OFFERPROCESSORID_e offer_processor_id; //enum
    char *external_id; // string
    char *external_url; // string
    char *external_untracked_url; // string
    long sqoot_id; //numeric
    char *sqoot_url; // string
    char *sqoot_category_slug; // string
    char *sqoot_category_name; // string
    long yipit_id; //numeric
    char *redeem_auth_options; // string
    char *publisher; // string
    struct product_t *product; //model
    struct media_t *media; //model
    struct event_t *event; //model
    struct device_t *device; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    long favorite_count; //numeric
    int has_ratings; //boolean
    list_t *likes; //nonprimitive container
    long like_count; //numeric
    long dislike_count; //numeric
    char *availability_summary; // string
    list_t *flags; //nonprimitive container
    long flag_count; //numeric
    struct flag_threshold_t *flag_threshold; //model
    double savings; //numeric
    double click_stream; //numeric
    long ticket_count; //numeric
    char *display; // string
    char *app_key; // string
    char *category_tree; // string
    char *filter_tree; // string
    int indexable; //boolean
    long billable_id; //numeric
    char *sub_type; // string
    char *content_name; // string
    long default_threshold; //numeric
    struct asset_t *content_asset; //model
    struct account_t *owner; //model
    char *secondary_type; // string
    double discount_percentage; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} offer_t;

__attribute__((deprecated)) offer_t *offer_create(
    long id,
    int active,
    int valid,
    char *test_field,
    billable_entity_t *billable_entity,
    list_t *offer_locations,
    list_t *missions,
    char *activated,
    char *expires,
    char *redeemable_start,
    char *redeemable_end,
    char *title,
    char *sub_title,
    sirqul_iot_platform_offer_TYPE_e type,
    sirqul_iot_platform_offer_SPECIALOFFERTYPE_e special_offer_type,
    char *details,
    char *sub_details,
    char *fine_print,
    char *get_there_now_notification,
    int max_prints,
    int view_limit,
    int featured,
    int replaced,
    int show_remaining,
    int show_redeemed,
    offer_t *parent_offer,
    asset_t *artwork,
    asset_t *offer_image1,
    asset_t *offer_image2,
    asset_t *offer_image3,
    asset_t *offer_image4,
    asset_t *offer_image5,
    asset_t *bar_code,
    sirqul_iot_platform_offer_BARCODETYPE_e bar_code_type,
    char *bar_code_entry,
    list_t *categories,
    list_t *filters,
    char *ticket_type,
    int allocate_tickets,
    char *ticket_price_type,
    long ticket_price,
    double full_price,
    double discount_price,
    int available_limit,
    int available_limit_per_user,
    int added_limit,
    int used_count,
    int added_count,
    int removed_count,
    int viewed_count,
    int clicked_count,
    sirqul_iot_platform_offer_OFFERVISIBILITY_e offer_visibility,
    sirqul_iot_platform_offer_OFFERPROCESSORID_e offer_processor_id,
    char *external_id,
    char *external_url,
    char *external_untracked_url,
    long sqoot_id,
    char *sqoot_url,
    char *sqoot_category_slug,
    char *sqoot_category_name,
    long yipit_id,
    char *redeem_auth_options,
    char *publisher,
    product_t *product,
    media_t *media,
    event_t *event,
    device_t *device,
    list_t *notes,
    long note_count,
    long favorite_count,
    int has_ratings,
    list_t *likes,
    long like_count,
    long dislike_count,
    char *availability_summary,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    double savings,
    double click_stream,
    long ticket_count,
    char *display,
    char *app_key,
    char *category_tree,
    char *filter_tree,
    int indexable,
    long billable_id,
    char *sub_type,
    char *content_name,
    long default_threshold,
    asset_t *content_asset,
    account_t *owner,
    char *secondary_type,
    double discount_percentage
);

void offer_free(offer_t *offer);

offer_t *offer_parseFromJSON(cJSON *offerJSON);

cJSON *offer_convertToJSON(offer_t *offer);

#endif /* _offer_H_ */

