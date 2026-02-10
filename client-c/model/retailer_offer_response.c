#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_offer_response.h"


char* retailer_offer_response_barcode_type_ToString(sirqul_iot_platform_retailer_offer_response_BARCODETYPE_e barcode_type) {
    char* barcode_typeArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    return barcode_typeArray[barcode_type];
}

sirqul_iot_platform_retailer_offer_response_BARCODETYPE_e retailer_offer_response_barcode_type_FromString(char* barcode_type){
    int stringToReturn = 0;
    char *barcode_typeArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    size_t sizeofArray = sizeof(barcode_typeArray) / sizeof(barcode_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(barcode_type, barcode_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* retailer_offer_response_special_offer_type_ToString(sirqul_iot_platform_retailer_offer_response_SPECIALOFFERTYPE_e special_offer_type) {
    char* special_offer_typeArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return special_offer_typeArray[special_offer_type];
}

sirqul_iot_platform_retailer_offer_response_SPECIALOFFERTYPE_e retailer_offer_response_special_offer_type_FromString(char* special_offer_type){
    int stringToReturn = 0;
    char *special_offer_typeArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    size_t sizeofArray = sizeof(special_offer_typeArray) / sizeof(special_offer_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(special_offer_type, special_offer_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static retailer_offer_response_t *retailer_offer_response_create_internal(
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
    sirqul_iot_platform_retailer_offer_response_BARCODETYPE_e barcode_type,
    long tickets_reward,
    char *tickets_reward_type,
    sirqul_iot_platform_retailer_offer_response_SPECIALOFFERTYPE_e special_offer_type,
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
    list_t *locations,
    char *returning
    ) {
    retailer_offer_response_t *retailer_offer_response_local_var = malloc(sizeof(retailer_offer_response_t));
    if (!retailer_offer_response_local_var) {
        return NULL;
    }
    retailer_offer_response_local_var->valid = valid;
    retailer_offer_response_local_var->message = message;
    retailer_offer_response_local_var->version = version;
    retailer_offer_response_local_var->serialize_nulls = serialize_nulls;
    retailer_offer_response_local_var->start_time_log = start_time_log;
    retailer_offer_response_local_var->error_code = error_code;
    retailer_offer_response_local_var->request = request;
    retailer_offer_response_local_var->offer_location_id = offer_location_id;
    retailer_offer_response_local_var->offer_id = offer_id;
    retailer_offer_response_local_var->retailer_id = retailer_id;
    retailer_offer_response_local_var->transaction_id = transaction_id;
    retailer_offer_response_local_var->favorite_id = favorite_id;
    retailer_offer_response_local_var->offer_name = offer_name;
    retailer_offer_response_local_var->sub_title = sub_title;
    retailer_offer_response_local_var->location_name = location_name;
    retailer_offer_response_local_var->starts = starts;
    retailer_offer_response_local_var->expires = expires;
    retailer_offer_response_local_var->activated = activated;
    retailer_offer_response_local_var->expiration = expiration;
    retailer_offer_response_local_var->redeemable_start = redeemable_start;
    retailer_offer_response_local_var->redeemable_end = redeemable_end;
    retailer_offer_response_local_var->distance = distance;
    retailer_offer_response_local_var->offer_type = offer_type;
    retailer_offer_response_local_var->longitude = longitude;
    retailer_offer_response_local_var->latitude = latitude;
    retailer_offer_response_local_var->favorite = favorite;
    retailer_offer_response_local_var->full_price = full_price;
    retailer_offer_response_local_var->discount_price = discount_price;
    retailer_offer_response_local_var->estimated_value = estimated_value;
    retailer_offer_response_local_var->voucher_discount_price = voucher_discount_price;
    retailer_offer_response_local_var->mission_list_response = mission_list_response;
    retailer_offer_response_local_var->image = image;
    retailer_offer_response_local_var->image1 = image1;
    retailer_offer_response_local_var->image2 = image2;
    retailer_offer_response_local_var->image3 = image3;
    retailer_offer_response_local_var->image4 = image4;
    retailer_offer_response_local_var->image5 = image5;
    retailer_offer_response_local_var->images = images;
    retailer_offer_response_local_var->barcode = barcode;
    retailer_offer_response_local_var->external_url = external_url;
    retailer_offer_response_local_var->sqoot_url = sqoot_url;
    retailer_offer_response_local_var->active = active;
    retailer_offer_response_local_var->location = location;
    retailer_offer_response_local_var->sub_details = sub_details;
    retailer_offer_response_local_var->external_redeem_auth = external_redeem_auth;
    retailer_offer_response_local_var->external_redeem_options = external_redeem_options;
    retailer_offer_response_local_var->publisher = publisher;
    retailer_offer_response_local_var->product = product;
    retailer_offer_response_local_var->event = event;
    retailer_offer_response_local_var->media = media;
    retailer_offer_response_local_var->viewed_count = viewed_count;
    retailer_offer_response_local_var->clicked_count = clicked_count;
    retailer_offer_response_local_var->added_limit = added_limit;
    retailer_offer_response_local_var->added_count = added_count;
    retailer_offer_response_local_var->used_count = used_count;
    retailer_offer_response_local_var->removed_count = removed_count;
    retailer_offer_response_local_var->location_added_count = location_added_count;
    retailer_offer_response_local_var->barcode_entry = barcode_entry;
    retailer_offer_response_local_var->barcode_type = barcode_type;
    retailer_offer_response_local_var->tickets_reward = tickets_reward;
    retailer_offer_response_local_var->tickets_reward_type = tickets_reward_type;
    retailer_offer_response_local_var->special_offer_type = special_offer_type;
    retailer_offer_response_local_var->like_count = like_count;
    retailer_offer_response_local_var->dislike_count = dislike_count;
    retailer_offer_response_local_var->favorite_count = favorite_count;
    retailer_offer_response_local_var->note_count = note_count;
    retailer_offer_response_local_var->log_id = log_id;
    retailer_offer_response_local_var->billable_entity_id = billable_entity_id;
    retailer_offer_response_local_var->responsible_account_id = responsible_account_id;
    retailer_offer_response_local_var->availability_summary = availability_summary;
    retailer_offer_response_local_var->external_id = external_id;
    retailer_offer_response_local_var->parent_offer = parent_offer;
    retailer_offer_response_local_var->address = address;
    retailer_offer_response_local_var->details = details;
    retailer_offer_response_local_var->fine_print = fine_print;
    retailer_offer_response_local_var->retailer_phone_number = retailer_phone_number;
    retailer_offer_response_local_var->ticket_price_type = ticket_price_type;
    retailer_offer_response_local_var->ticket_price = ticket_price;
    retailer_offer_response_local_var->discount_percentage = discount_percentage;
    retailer_offer_response_local_var->payment_fees = payment_fees;
    retailer_offer_response_local_var->voucher_price = voucher_price;
    retailer_offer_response_local_var->purchases_remaining = purchases_remaining;
    retailer_offer_response_local_var->redemptions_remaining = redemptions_remaining;
    retailer_offer_response_local_var->redemption_status = redemption_status;
    retailer_offer_response_local_var->redemption_code = redemption_code;
    retailer_offer_response_local_var->audiences = audiences;
    retailer_offer_response_local_var->audience_count = audience_count;
    retailer_offer_response_local_var->wallet_count = wallet_count;
    retailer_offer_response_local_var->qr_code_url = qr_code_url;
    retailer_offer_response_local_var->show_remaining = show_remaining;
    retailer_offer_response_local_var->show_redeemed = show_redeemed;
    retailer_offer_response_local_var->purchase_limit = purchase_limit;
    retailer_offer_response_local_var->purchase_limit_per_user = purchase_limit_per_user;
    retailer_offer_response_local_var->redemption_limit = redemption_limit;
    retailer_offer_response_local_var->user_redemption_limit = user_redemption_limit;
    retailer_offer_response_local_var->categories = categories;
    retailer_offer_response_local_var->filters = filters;
    retailer_offer_response_local_var->locations = locations;
    retailer_offer_response_local_var->returning = returning;

    retailer_offer_response_local_var->_library_owned = 1;
    return retailer_offer_response_local_var;
}

__attribute__((deprecated)) retailer_offer_response_t *retailer_offer_response_create(
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
    sirqul_iot_platform_retailer_offer_response_BARCODETYPE_e barcode_type,
    long tickets_reward,
    char *tickets_reward_type,
    sirqul_iot_platform_retailer_offer_response_SPECIALOFFERTYPE_e special_offer_type,
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
    list_t *locations,
    char *returning
    ) {
    return retailer_offer_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        offer_location_id,
        offer_id,
        retailer_id,
        transaction_id,
        favorite_id,
        offer_name,
        sub_title,
        location_name,
        starts,
        expires,
        activated,
        expiration,
        redeemable_start,
        redeemable_end,
        distance,
        offer_type,
        longitude,
        latitude,
        favorite,
        full_price,
        discount_price,
        estimated_value,
        voucher_discount_price,
        mission_list_response,
        image,
        image1,
        image2,
        image3,
        image4,
        image5,
        images,
        barcode,
        external_url,
        sqoot_url,
        active,
        location,
        sub_details,
        external_redeem_auth,
        external_redeem_options,
        publisher,
        product,
        event,
        media,
        viewed_count,
        clicked_count,
        added_limit,
        added_count,
        used_count,
        removed_count,
        location_added_count,
        barcode_entry,
        barcode_type,
        tickets_reward,
        tickets_reward_type,
        special_offer_type,
        like_count,
        dislike_count,
        favorite_count,
        note_count,
        log_id,
        billable_entity_id,
        responsible_account_id,
        availability_summary,
        external_id,
        parent_offer,
        address,
        details,
        fine_print,
        retailer_phone_number,
        ticket_price_type,
        ticket_price,
        discount_percentage,
        payment_fees,
        voucher_price,
        purchases_remaining,
        redemptions_remaining,
        redemption_status,
        redemption_code,
        audiences,
        audience_count,
        wallet_count,
        qr_code_url,
        show_remaining,
        show_redeemed,
        purchase_limit,
        purchase_limit_per_user,
        redemption_limit,
        user_redemption_limit,
        categories,
        filters,
        locations,
        returning
        );
}

void retailer_offer_response_free(retailer_offer_response_t *retailer_offer_response) {
    if(NULL == retailer_offer_response){
        return ;
    }
    if(retailer_offer_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_offer_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer_offer_response->message) {
        free(retailer_offer_response->message);
        retailer_offer_response->message = NULL;
    }
    if (retailer_offer_response->error_code) {
        free(retailer_offer_response->error_code);
        retailer_offer_response->error_code = NULL;
    }
    if (retailer_offer_response->request) {
        list_ForEach(listEntry, retailer_offer_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(retailer_offer_response->request);
        retailer_offer_response->request = NULL;
    }
    if (retailer_offer_response->offer_name) {
        free(retailer_offer_response->offer_name);
        retailer_offer_response->offer_name = NULL;
    }
    if (retailer_offer_response->sub_title) {
        free(retailer_offer_response->sub_title);
        retailer_offer_response->sub_title = NULL;
    }
    if (retailer_offer_response->location_name) {
        free(retailer_offer_response->location_name);
        retailer_offer_response->location_name = NULL;
    }
    if (retailer_offer_response->starts) {
        free(retailer_offer_response->starts);
        retailer_offer_response->starts = NULL;
    }
    if (retailer_offer_response->expires) {
        free(retailer_offer_response->expires);
        retailer_offer_response->expires = NULL;
    }
    if (retailer_offer_response->offer_type) {
        free(retailer_offer_response->offer_type);
        retailer_offer_response->offer_type = NULL;
    }
    if (retailer_offer_response->mission_list_response) {
        mission_list_response_free(retailer_offer_response->mission_list_response);
        retailer_offer_response->mission_list_response = NULL;
    }
    if (retailer_offer_response->image) {
        free(retailer_offer_response->image);
        retailer_offer_response->image = NULL;
    }
    if (retailer_offer_response->image1) {
        free(retailer_offer_response->image1);
        retailer_offer_response->image1 = NULL;
    }
    if (retailer_offer_response->image2) {
        free(retailer_offer_response->image2);
        retailer_offer_response->image2 = NULL;
    }
    if (retailer_offer_response->image3) {
        free(retailer_offer_response->image3);
        retailer_offer_response->image3 = NULL;
    }
    if (retailer_offer_response->image4) {
        free(retailer_offer_response->image4);
        retailer_offer_response->image4 = NULL;
    }
    if (retailer_offer_response->image5) {
        free(retailer_offer_response->image5);
        retailer_offer_response->image5 = NULL;
    }
    if (retailer_offer_response->images) {
        list_ForEach(listEntry, retailer_offer_response->images) {
            asset_response_free(listEntry->data);
        }
        list_freeList(retailer_offer_response->images);
        retailer_offer_response->images = NULL;
    }
    if (retailer_offer_response->barcode) {
        free(retailer_offer_response->barcode);
        retailer_offer_response->barcode = NULL;
    }
    if (retailer_offer_response->external_url) {
        free(retailer_offer_response->external_url);
        retailer_offer_response->external_url = NULL;
    }
    if (retailer_offer_response->sqoot_url) {
        free(retailer_offer_response->sqoot_url);
        retailer_offer_response->sqoot_url = NULL;
    }
    if (retailer_offer_response->location) {
        retailer_location_response_free(retailer_offer_response->location);
        retailer_offer_response->location = NULL;
    }
    if (retailer_offer_response->sub_details) {
        free(retailer_offer_response->sub_details);
        retailer_offer_response->sub_details = NULL;
    }
    if (retailer_offer_response->external_redeem_options) {
        free(retailer_offer_response->external_redeem_options);
        retailer_offer_response->external_redeem_options = NULL;
    }
    if (retailer_offer_response->publisher) {
        free(retailer_offer_response->publisher);
        retailer_offer_response->publisher = NULL;
    }
    if (retailer_offer_response->product) {
        product_response_free(retailer_offer_response->product);
        retailer_offer_response->product = NULL;
    }
    if (retailer_offer_response->event) {
        event_response_free(retailer_offer_response->event);
        retailer_offer_response->event = NULL;
    }
    if (retailer_offer_response->media) {
        media_response_free(retailer_offer_response->media);
        retailer_offer_response->media = NULL;
    }
    if (retailer_offer_response->barcode_entry) {
        free(retailer_offer_response->barcode_entry);
        retailer_offer_response->barcode_entry = NULL;
    }
    if (retailer_offer_response->tickets_reward_type) {
        free(retailer_offer_response->tickets_reward_type);
        retailer_offer_response->tickets_reward_type = NULL;
    }
    if (retailer_offer_response->availability_summary) {
        free(retailer_offer_response->availability_summary);
        retailer_offer_response->availability_summary = NULL;
    }
    if (retailer_offer_response->external_id) {
        free(retailer_offer_response->external_id);
        retailer_offer_response->external_id = NULL;
    }
    if (retailer_offer_response->parent_offer) {
        offer_short_response_free(retailer_offer_response->parent_offer);
        retailer_offer_response->parent_offer = NULL;
    }
    if (retailer_offer_response->address) {
        free(retailer_offer_response->address);
        retailer_offer_response->address = NULL;
    }
    if (retailer_offer_response->details) {
        free(retailer_offer_response->details);
        retailer_offer_response->details = NULL;
    }
    if (retailer_offer_response->fine_print) {
        free(retailer_offer_response->fine_print);
        retailer_offer_response->fine_print = NULL;
    }
    if (retailer_offer_response->retailer_phone_number) {
        free(retailer_offer_response->retailer_phone_number);
        retailer_offer_response->retailer_phone_number = NULL;
    }
    if (retailer_offer_response->ticket_price_type) {
        free(retailer_offer_response->ticket_price_type);
        retailer_offer_response->ticket_price_type = NULL;
    }
    if (retailer_offer_response->redemption_code) {
        free(retailer_offer_response->redemption_code);
        retailer_offer_response->redemption_code = NULL;
    }
    if (retailer_offer_response->audiences) {
        list_ForEach(listEntry, retailer_offer_response->audiences) {
            audience_response_free(listEntry->data);
        }
        list_freeList(retailer_offer_response->audiences);
        retailer_offer_response->audiences = NULL;
    }
    if (retailer_offer_response->qr_code_url) {
        free(retailer_offer_response->qr_code_url);
        retailer_offer_response->qr_code_url = NULL;
    }
    if (retailer_offer_response->categories) {
        list_ForEach(listEntry, retailer_offer_response->categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(retailer_offer_response->categories);
        retailer_offer_response->categories = NULL;
    }
    if (retailer_offer_response->filters) {
        list_ForEach(listEntry, retailer_offer_response->filters) {
            filter_response_free(listEntry->data);
        }
        list_freeList(retailer_offer_response->filters);
        retailer_offer_response->filters = NULL;
    }
    if (retailer_offer_response->locations) {
        list_ForEach(listEntry, retailer_offer_response->locations) {
            free(listEntry->data);
        }
        list_freeList(retailer_offer_response->locations);
        retailer_offer_response->locations = NULL;
    }
    if (retailer_offer_response->returning) {
        free(retailer_offer_response->returning);
        retailer_offer_response->returning = NULL;
    }
    free(retailer_offer_response);
}

cJSON *retailer_offer_response_convertToJSON(retailer_offer_response_t *retailer_offer_response) {
    cJSON *item = cJSON_CreateObject();

    // retailer_offer_response->valid
    if(retailer_offer_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", retailer_offer_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_offer_response->message
    if(retailer_offer_response->message) {
    if(cJSON_AddStringToObject(item, "message", retailer_offer_response->message) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->version
    if(retailer_offer_response->version) {
    if(cJSON_AddNumberToObject(item, "version", retailer_offer_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->serialize_nulls
    if(retailer_offer_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", retailer_offer_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_offer_response->start_time_log
    if(retailer_offer_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", retailer_offer_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->error_code
    if(retailer_offer_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", retailer_offer_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->request
    if(retailer_offer_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (retailer_offer_response->request) {
    list_ForEach(requestListEntry, retailer_offer_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // retailer_offer_response->offer_location_id
    if(retailer_offer_response->offer_location_id) {
    if(cJSON_AddNumberToObject(item, "offerLocationId", retailer_offer_response->offer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->offer_id
    if(retailer_offer_response->offer_id) {
    if(cJSON_AddNumberToObject(item, "offerId", retailer_offer_response->offer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->retailer_id
    if(retailer_offer_response->retailer_id) {
    if(cJSON_AddNumberToObject(item, "retailerId", retailer_offer_response->retailer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->transaction_id
    if(retailer_offer_response->transaction_id) {
    if(cJSON_AddNumberToObject(item, "transactionId", retailer_offer_response->transaction_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->favorite_id
    if(retailer_offer_response->favorite_id) {
    if(cJSON_AddNumberToObject(item, "favoriteId", retailer_offer_response->favorite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->offer_name
    if(retailer_offer_response->offer_name) {
    if(cJSON_AddStringToObject(item, "offerName", retailer_offer_response->offer_name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->sub_title
    if(retailer_offer_response->sub_title) {
    if(cJSON_AddStringToObject(item, "subTitle", retailer_offer_response->sub_title) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->location_name
    if(retailer_offer_response->location_name) {
    if(cJSON_AddStringToObject(item, "locationName", retailer_offer_response->location_name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->starts
    if(retailer_offer_response->starts) {
    if(cJSON_AddStringToObject(item, "starts", retailer_offer_response->starts) == NULL) {
    goto fail; //Date-Time
    }
    }


    // retailer_offer_response->expires
    if(retailer_offer_response->expires) {
    if(cJSON_AddStringToObject(item, "expires", retailer_offer_response->expires) == NULL) {
    goto fail; //Date-Time
    }
    }


    // retailer_offer_response->activated
    if(retailer_offer_response->activated) {
    if(cJSON_AddNumberToObject(item, "activated", retailer_offer_response->activated) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->expiration
    if(retailer_offer_response->expiration) {
    if(cJSON_AddNumberToObject(item, "expiration", retailer_offer_response->expiration) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->redeemable_start
    if(retailer_offer_response->redeemable_start) {
    if(cJSON_AddNumberToObject(item, "redeemableStart", retailer_offer_response->redeemable_start) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->redeemable_end
    if(retailer_offer_response->redeemable_end) {
    if(cJSON_AddNumberToObject(item, "redeemableEnd", retailer_offer_response->redeemable_end) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->distance
    if(retailer_offer_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", retailer_offer_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->offer_type
    if(retailer_offer_response->offer_type) {
    if(cJSON_AddStringToObject(item, "offerType", retailer_offer_response->offer_type) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->longitude
    if(retailer_offer_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", retailer_offer_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->latitude
    if(retailer_offer_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", retailer_offer_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->favorite
    if(retailer_offer_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", retailer_offer_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_offer_response->full_price
    if(retailer_offer_response->full_price) {
    if(cJSON_AddNumberToObject(item, "fullPrice", retailer_offer_response->full_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->discount_price
    if(retailer_offer_response->discount_price) {
    if(cJSON_AddNumberToObject(item, "discountPrice", retailer_offer_response->discount_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->estimated_value
    if(retailer_offer_response->estimated_value) {
    if(cJSON_AddNumberToObject(item, "estimatedValue", retailer_offer_response->estimated_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->voucher_discount_price
    if(retailer_offer_response->voucher_discount_price) {
    if(cJSON_AddNumberToObject(item, "voucherDiscountPrice", retailer_offer_response->voucher_discount_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->mission_list_response
    if(retailer_offer_response->mission_list_response) {
    cJSON *mission_list_response_local_JSON = mission_list_response_convertToJSON(retailer_offer_response->mission_list_response);
    if(mission_list_response_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "missionListResponse", mission_list_response_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_offer_response->image
    if(retailer_offer_response->image) {
    if(cJSON_AddStringToObject(item, "image", retailer_offer_response->image) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->image1
    if(retailer_offer_response->image1) {
    if(cJSON_AddStringToObject(item, "image1", retailer_offer_response->image1) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->image2
    if(retailer_offer_response->image2) {
    if(cJSON_AddStringToObject(item, "image2", retailer_offer_response->image2) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->image3
    if(retailer_offer_response->image3) {
    if(cJSON_AddStringToObject(item, "image3", retailer_offer_response->image3) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->image4
    if(retailer_offer_response->image4) {
    if(cJSON_AddStringToObject(item, "image4", retailer_offer_response->image4) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->image5
    if(retailer_offer_response->image5) {
    if(cJSON_AddStringToObject(item, "image5", retailer_offer_response->image5) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->images
    if(retailer_offer_response->images) {
    cJSON *images = cJSON_AddArrayToObject(item, "images");
    if(images == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *imagesListEntry;
    if (retailer_offer_response->images) {
    list_ForEach(imagesListEntry, retailer_offer_response->images) {
    cJSON *itemLocal = asset_response_convertToJSON(imagesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(images, itemLocal);
    }
    }
    }


    // retailer_offer_response->barcode
    if(retailer_offer_response->barcode) {
    if(cJSON_AddStringToObject(item, "barcode", retailer_offer_response->barcode) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->external_url
    if(retailer_offer_response->external_url) {
    if(cJSON_AddStringToObject(item, "externalUrl", retailer_offer_response->external_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->sqoot_url
    if(retailer_offer_response->sqoot_url) {
    if(cJSON_AddStringToObject(item, "sqootUrl", retailer_offer_response->sqoot_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->active
    if(retailer_offer_response->active) {
    if(cJSON_AddBoolToObject(item, "active", retailer_offer_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_offer_response->location
    if(retailer_offer_response->location) {
    cJSON *location_local_JSON = retailer_location_response_convertToJSON(retailer_offer_response->location);
    if(location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "location", location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_offer_response->sub_details
    if(retailer_offer_response->sub_details) {
    if(cJSON_AddStringToObject(item, "subDetails", retailer_offer_response->sub_details) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->external_redeem_auth
    if(retailer_offer_response->external_redeem_auth) {
    if(cJSON_AddNumberToObject(item, "externalRedeemAuth", retailer_offer_response->external_redeem_auth) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->external_redeem_options
    if(retailer_offer_response->external_redeem_options) {
    if(cJSON_AddStringToObject(item, "externalRedeemOptions", retailer_offer_response->external_redeem_options) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->publisher
    if(retailer_offer_response->publisher) {
    if(cJSON_AddStringToObject(item, "publisher", retailer_offer_response->publisher) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->product
    if(retailer_offer_response->product) {
    cJSON *product_local_JSON = product_response_convertToJSON(retailer_offer_response->product);
    if(product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "product", product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_offer_response->event
    if(retailer_offer_response->event) {
    cJSON *event_local_JSON = event_response_convertToJSON(retailer_offer_response->event);
    if(event_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "event", event_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_offer_response->media
    if(retailer_offer_response->media) {
    cJSON *media_local_JSON = media_response_convertToJSON(retailer_offer_response->media);
    if(media_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "media", media_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_offer_response->viewed_count
    if(retailer_offer_response->viewed_count) {
    if(cJSON_AddNumberToObject(item, "viewedCount", retailer_offer_response->viewed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->clicked_count
    if(retailer_offer_response->clicked_count) {
    if(cJSON_AddNumberToObject(item, "clickedCount", retailer_offer_response->clicked_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->added_limit
    if(retailer_offer_response->added_limit) {
    if(cJSON_AddNumberToObject(item, "addedLimit", retailer_offer_response->added_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->added_count
    if(retailer_offer_response->added_count) {
    if(cJSON_AddNumberToObject(item, "addedCount", retailer_offer_response->added_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->used_count
    if(retailer_offer_response->used_count) {
    if(cJSON_AddNumberToObject(item, "usedCount", retailer_offer_response->used_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->removed_count
    if(retailer_offer_response->removed_count) {
    if(cJSON_AddNumberToObject(item, "removedCount", retailer_offer_response->removed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->location_added_count
    if(retailer_offer_response->location_added_count) {
    if(cJSON_AddNumberToObject(item, "locationAddedCount", retailer_offer_response->location_added_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->barcode_entry
    if(retailer_offer_response->barcode_entry) {
    if(cJSON_AddStringToObject(item, "barcodeEntry", retailer_offer_response->barcode_entry) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->barcode_type
    if(retailer_offer_response->barcode_type != sirqul_iot_platform_retailer_offer_response_BARCODETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "barcodeType", retailer_offer_response_barcode_type_ToString(retailer_offer_response->barcode_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // retailer_offer_response->tickets_reward
    if(retailer_offer_response->tickets_reward) {
    if(cJSON_AddNumberToObject(item, "ticketsReward", retailer_offer_response->tickets_reward) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->tickets_reward_type
    if(retailer_offer_response->tickets_reward_type) {
    if(cJSON_AddStringToObject(item, "ticketsRewardType", retailer_offer_response->tickets_reward_type) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->special_offer_type
    if(retailer_offer_response->special_offer_type != sirqul_iot_platform_retailer_offer_response_SPECIALOFFERTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "specialOfferType", retailer_offer_response_special_offer_type_ToString(retailer_offer_response->special_offer_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // retailer_offer_response->like_count
    if(retailer_offer_response->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", retailer_offer_response->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->dislike_count
    if(retailer_offer_response->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", retailer_offer_response->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->favorite_count
    if(retailer_offer_response->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", retailer_offer_response->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->note_count
    if(retailer_offer_response->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", retailer_offer_response->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->log_id
    if(retailer_offer_response->log_id) {
    if(cJSON_AddNumberToObject(item, "logId", retailer_offer_response->log_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->billable_entity_id
    if(retailer_offer_response->billable_entity_id) {
    if(cJSON_AddNumberToObject(item, "billableEntityId", retailer_offer_response->billable_entity_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->responsible_account_id
    if(retailer_offer_response->responsible_account_id) {
    if(cJSON_AddNumberToObject(item, "responsibleAccountId", retailer_offer_response->responsible_account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->availability_summary
    if(retailer_offer_response->availability_summary) {
    if(cJSON_AddStringToObject(item, "availabilitySummary", retailer_offer_response->availability_summary) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->external_id
    if(retailer_offer_response->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", retailer_offer_response->external_id) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->parent_offer
    if(retailer_offer_response->parent_offer) {
    cJSON *parent_offer_local_JSON = offer_short_response_convertToJSON(retailer_offer_response->parent_offer);
    if(parent_offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentOffer", parent_offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_offer_response->address
    if(retailer_offer_response->address) {
    if(cJSON_AddStringToObject(item, "address", retailer_offer_response->address) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->details
    if(retailer_offer_response->details) {
    if(cJSON_AddStringToObject(item, "details", retailer_offer_response->details) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->fine_print
    if(retailer_offer_response->fine_print) {
    if(cJSON_AddStringToObject(item, "finePrint", retailer_offer_response->fine_print) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->retailer_phone_number
    if(retailer_offer_response->retailer_phone_number) {
    if(cJSON_AddStringToObject(item, "retailerPhoneNumber", retailer_offer_response->retailer_phone_number) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->ticket_price_type
    if(retailer_offer_response->ticket_price_type) {
    if(cJSON_AddStringToObject(item, "ticketPriceType", retailer_offer_response->ticket_price_type) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->ticket_price
    if(retailer_offer_response->ticket_price) {
    if(cJSON_AddNumberToObject(item, "ticketPrice", retailer_offer_response->ticket_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->discount_percentage
    if(retailer_offer_response->discount_percentage) {
    if(cJSON_AddNumberToObject(item, "discountPercentage", retailer_offer_response->discount_percentage) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->payment_fees
    if(retailer_offer_response->payment_fees) {
    if(cJSON_AddNumberToObject(item, "paymentFees", retailer_offer_response->payment_fees) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->voucher_price
    if(retailer_offer_response->voucher_price) {
    if(cJSON_AddNumberToObject(item, "voucherPrice", retailer_offer_response->voucher_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->purchases_remaining
    if(retailer_offer_response->purchases_remaining) {
    if(cJSON_AddNumberToObject(item, "purchasesRemaining", retailer_offer_response->purchases_remaining) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->redemptions_remaining
    if(retailer_offer_response->redemptions_remaining) {
    if(cJSON_AddNumberToObject(item, "redemptionsRemaining", retailer_offer_response->redemptions_remaining) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->redemption_status
    if(retailer_offer_response->redemption_status) {
    if(cJSON_AddNumberToObject(item, "redemptionStatus", retailer_offer_response->redemption_status) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->redemption_code
    if(retailer_offer_response->redemption_code) {
    if(cJSON_AddStringToObject(item, "redemptionCode", retailer_offer_response->redemption_code) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->audiences
    if(retailer_offer_response->audiences) {
    cJSON *audiences = cJSON_AddArrayToObject(item, "audiences");
    if(audiences == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *audiencesListEntry;
    if (retailer_offer_response->audiences) {
    list_ForEach(audiencesListEntry, retailer_offer_response->audiences) {
    cJSON *itemLocal = audience_response_convertToJSON(audiencesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(audiences, itemLocal);
    }
    }
    }


    // retailer_offer_response->audience_count
    if(retailer_offer_response->audience_count) {
    if(cJSON_AddNumberToObject(item, "audienceCount", retailer_offer_response->audience_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->wallet_count
    if(retailer_offer_response->wallet_count) {
    if(cJSON_AddNumberToObject(item, "walletCount", retailer_offer_response->wallet_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->qr_code_url
    if(retailer_offer_response->qr_code_url) {
    if(cJSON_AddStringToObject(item, "qrCodeUrl", retailer_offer_response->qr_code_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_offer_response->show_remaining
    if(retailer_offer_response->show_remaining) {
    if(cJSON_AddBoolToObject(item, "showRemaining", retailer_offer_response->show_remaining) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_offer_response->show_redeemed
    if(retailer_offer_response->show_redeemed) {
    if(cJSON_AddBoolToObject(item, "showRedeemed", retailer_offer_response->show_redeemed) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_offer_response->purchase_limit
    if(retailer_offer_response->purchase_limit) {
    if(cJSON_AddNumberToObject(item, "purchaseLimit", retailer_offer_response->purchase_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->purchase_limit_per_user
    if(retailer_offer_response->purchase_limit_per_user) {
    if(cJSON_AddNumberToObject(item, "purchaseLimitPerUser", retailer_offer_response->purchase_limit_per_user) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->redemption_limit
    if(retailer_offer_response->redemption_limit) {
    if(cJSON_AddNumberToObject(item, "redemptionLimit", retailer_offer_response->redemption_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->user_redemption_limit
    if(retailer_offer_response->user_redemption_limit) {
    if(cJSON_AddNumberToObject(item, "userRedemptionLimit", retailer_offer_response->user_redemption_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_offer_response->categories
    if(retailer_offer_response->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (retailer_offer_response->categories) {
    list_ForEach(categoriesListEntry, retailer_offer_response->categories) {
    cJSON *itemLocal = category_response_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // retailer_offer_response->filters
    if(retailer_offer_response->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (retailer_offer_response->filters) {
    list_ForEach(filtersListEntry, retailer_offer_response->filters) {
    cJSON *itemLocal = filter_response_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }


    // retailer_offer_response->locations
    if(retailer_offer_response->locations) {
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *locationsListEntry;
    list_ForEach(locationsListEntry, retailer_offer_response->locations) {
    }
    }


    // retailer_offer_response->returning
    if(retailer_offer_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", retailer_offer_response->returning) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

retailer_offer_response_t *retailer_offer_response_parseFromJSON(cJSON *retailer_offer_responseJSON){

    retailer_offer_response_t *retailer_offer_response_local_var = NULL;

    // define the local list for retailer_offer_response->request
    list_t *requestList = NULL;

    // define the local variable for retailer_offer_response->mission_list_response
    mission_list_response_t *mission_list_response_local_nonprim = NULL;

    // define the local list for retailer_offer_response->images
    list_t *imagesList = NULL;

    // define the local variable for retailer_offer_response->location
    retailer_location_response_t *location_local_nonprim = NULL;

    // define the local variable for retailer_offer_response->product
    product_response_t *product_local_nonprim = NULL;

    // define the local variable for retailer_offer_response->event
    event_response_t *event_local_nonprim = NULL;

    // define the local variable for retailer_offer_response->media
    media_response_t *media_local_nonprim = NULL;

    // define the local variable for retailer_offer_response->parent_offer
    offer_short_response_t *parent_offer_local_nonprim = NULL;

    // define the local list for retailer_offer_response->audiences
    list_t *audiencesList = NULL;

    // define the local list for retailer_offer_response->categories
    list_t *categoriesList = NULL;

    // define the local list for retailer_offer_response->filters
    list_t *filtersList = NULL;

    // define the local list for retailer_offer_response->locations
    list_t *locationsList = NULL;

    // retailer_offer_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // retailer_offer_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // retailer_offer_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }

    // retailer_offer_response->offer_location_id
    cJSON *offer_location_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "offerLocationId");
    if (cJSON_IsNull(offer_location_id)) {
        offer_location_id = NULL;
    }
    if (offer_location_id) { 
    if(!cJSON_IsNumber(offer_location_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->offer_id
    cJSON *offer_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "offerId");
    if (cJSON_IsNull(offer_id)) {
        offer_id = NULL;
    }
    if (offer_id) { 
    if(!cJSON_IsNumber(offer_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->retailer_id
    cJSON *retailer_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "retailerId");
    if (cJSON_IsNull(retailer_id)) {
        retailer_id = NULL;
    }
    if (retailer_id) { 
    if(!cJSON_IsNumber(retailer_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "transactionId");
    if (cJSON_IsNull(transaction_id)) {
        transaction_id = NULL;
    }
    if (transaction_id) { 
    if(!cJSON_IsNumber(transaction_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->favorite_id
    cJSON *favorite_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "favoriteId");
    if (cJSON_IsNull(favorite_id)) {
        favorite_id = NULL;
    }
    if (favorite_id) { 
    if(!cJSON_IsNumber(favorite_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->offer_name
    cJSON *offer_name = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "offerName");
    if (cJSON_IsNull(offer_name)) {
        offer_name = NULL;
    }
    if (offer_name) { 
    if(!cJSON_IsString(offer_name) && !cJSON_IsNull(offer_name))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->sub_title
    cJSON *sub_title = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "subTitle");
    if (cJSON_IsNull(sub_title)) {
        sub_title = NULL;
    }
    if (sub_title) { 
    if(!cJSON_IsString(sub_title) && !cJSON_IsNull(sub_title))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->location_name
    cJSON *location_name = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "locationName");
    if (cJSON_IsNull(location_name)) {
        location_name = NULL;
    }
    if (location_name) { 
    if(!cJSON_IsString(location_name) && !cJSON_IsNull(location_name))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->starts
    cJSON *starts = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "starts");
    if (cJSON_IsNull(starts)) {
        starts = NULL;
    }
    if (starts) { 
    if(!cJSON_IsString(starts) && !cJSON_IsNull(starts))
    {
    goto end; //DateTime
    }
    }

    // retailer_offer_response->expires
    cJSON *expires = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "expires");
    if (cJSON_IsNull(expires)) {
        expires = NULL;
    }
    if (expires) { 
    if(!cJSON_IsString(expires) && !cJSON_IsNull(expires))
    {
    goto end; //DateTime
    }
    }

    // retailer_offer_response->activated
    cJSON *activated = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "activated");
    if (cJSON_IsNull(activated)) {
        activated = NULL;
    }
    if (activated) { 
    if(!cJSON_IsNumber(activated))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->expiration
    cJSON *expiration = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "expiration");
    if (cJSON_IsNull(expiration)) {
        expiration = NULL;
    }
    if (expiration) { 
    if(!cJSON_IsNumber(expiration))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->redeemable_start
    cJSON *redeemable_start = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "redeemableStart");
    if (cJSON_IsNull(redeemable_start)) {
        redeemable_start = NULL;
    }
    if (redeemable_start) { 
    if(!cJSON_IsNumber(redeemable_start))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->redeemable_end
    cJSON *redeemable_end = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "redeemableEnd");
    if (cJSON_IsNull(redeemable_end)) {
        redeemable_end = NULL;
    }
    if (redeemable_end) { 
    if(!cJSON_IsNumber(redeemable_end))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->offer_type
    cJSON *offer_type = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "offerType");
    if (cJSON_IsNull(offer_type)) {
        offer_type = NULL;
    }
    if (offer_type) { 
    if(!cJSON_IsString(offer_type) && !cJSON_IsNull(offer_type))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }

    // retailer_offer_response->full_price
    cJSON *full_price = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "fullPrice");
    if (cJSON_IsNull(full_price)) {
        full_price = NULL;
    }
    if (full_price) { 
    if(!cJSON_IsNumber(full_price))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->discount_price
    cJSON *discount_price = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "discountPrice");
    if (cJSON_IsNull(discount_price)) {
        discount_price = NULL;
    }
    if (discount_price) { 
    if(!cJSON_IsNumber(discount_price))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->estimated_value
    cJSON *estimated_value = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "estimatedValue");
    if (cJSON_IsNull(estimated_value)) {
        estimated_value = NULL;
    }
    if (estimated_value) { 
    if(!cJSON_IsNumber(estimated_value))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->voucher_discount_price
    cJSON *voucher_discount_price = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "voucherDiscountPrice");
    if (cJSON_IsNull(voucher_discount_price)) {
        voucher_discount_price = NULL;
    }
    if (voucher_discount_price) { 
    if(!cJSON_IsNumber(voucher_discount_price))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->mission_list_response
    cJSON *mission_list_response = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "missionListResponse");
    if (cJSON_IsNull(mission_list_response)) {
        mission_list_response = NULL;
    }
    if (mission_list_response) { 
    mission_list_response_local_nonprim = mission_list_response_parseFromJSON(mission_list_response); //nonprimitive
    }

    // retailer_offer_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    if(!cJSON_IsString(image) && !cJSON_IsNull(image))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->image1
    cJSON *image1 = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "image1");
    if (cJSON_IsNull(image1)) {
        image1 = NULL;
    }
    if (image1) { 
    if(!cJSON_IsString(image1) && !cJSON_IsNull(image1))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->image2
    cJSON *image2 = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "image2");
    if (cJSON_IsNull(image2)) {
        image2 = NULL;
    }
    if (image2) { 
    if(!cJSON_IsString(image2) && !cJSON_IsNull(image2))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->image3
    cJSON *image3 = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "image3");
    if (cJSON_IsNull(image3)) {
        image3 = NULL;
    }
    if (image3) { 
    if(!cJSON_IsString(image3) && !cJSON_IsNull(image3))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->image4
    cJSON *image4 = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "image4");
    if (cJSON_IsNull(image4)) {
        image4 = NULL;
    }
    if (image4) { 
    if(!cJSON_IsString(image4) && !cJSON_IsNull(image4))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->image5
    cJSON *image5 = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "image5");
    if (cJSON_IsNull(image5)) {
        image5 = NULL;
    }
    if (image5) { 
    if(!cJSON_IsString(image5) && !cJSON_IsNull(image5))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->images
    cJSON *images = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "images");
    if (cJSON_IsNull(images)) {
        images = NULL;
    }
    if (images) { 
    cJSON *images_local_nonprimitive = NULL;
    if(!cJSON_IsArray(images)){
        goto end; //nonprimitive container
    }

    imagesList = list_createList();

    cJSON_ArrayForEach(images_local_nonprimitive,images )
    {
        if(!cJSON_IsObject(images_local_nonprimitive)){
            goto end;
        }
        asset_response_t *imagesItem = asset_response_parseFromJSON(images_local_nonprimitive);

        list_addElement(imagesList, imagesItem);
    }
    }

    // retailer_offer_response->barcode
    cJSON *barcode = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "barcode");
    if (cJSON_IsNull(barcode)) {
        barcode = NULL;
    }
    if (barcode) { 
    if(!cJSON_IsString(barcode) && !cJSON_IsNull(barcode))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->external_url
    cJSON *external_url = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "externalUrl");
    if (cJSON_IsNull(external_url)) {
        external_url = NULL;
    }
    if (external_url) { 
    if(!cJSON_IsString(external_url) && !cJSON_IsNull(external_url))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->sqoot_url
    cJSON *sqoot_url = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "sqootUrl");
    if (cJSON_IsNull(sqoot_url)) {
        sqoot_url = NULL;
    }
    if (sqoot_url) { 
    if(!cJSON_IsString(sqoot_url) && !cJSON_IsNull(sqoot_url))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // retailer_offer_response->location
    cJSON *location = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "location");
    if (cJSON_IsNull(location)) {
        location = NULL;
    }
    if (location) { 
    location_local_nonprim = retailer_location_response_parseFromJSON(location); //nonprimitive
    }

    // retailer_offer_response->sub_details
    cJSON *sub_details = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "subDetails");
    if (cJSON_IsNull(sub_details)) {
        sub_details = NULL;
    }
    if (sub_details) { 
    if(!cJSON_IsString(sub_details) && !cJSON_IsNull(sub_details))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->external_redeem_auth
    cJSON *external_redeem_auth = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "externalRedeemAuth");
    if (cJSON_IsNull(external_redeem_auth)) {
        external_redeem_auth = NULL;
    }
    if (external_redeem_auth) { 
    if(!cJSON_IsNumber(external_redeem_auth))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->external_redeem_options
    cJSON *external_redeem_options = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "externalRedeemOptions");
    if (cJSON_IsNull(external_redeem_options)) {
        external_redeem_options = NULL;
    }
    if (external_redeem_options) { 
    if(!cJSON_IsString(external_redeem_options) && !cJSON_IsNull(external_redeem_options))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->publisher
    cJSON *publisher = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "publisher");
    if (cJSON_IsNull(publisher)) {
        publisher = NULL;
    }
    if (publisher) { 
    if(!cJSON_IsString(publisher) && !cJSON_IsNull(publisher))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->product
    cJSON *product = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "product");
    if (cJSON_IsNull(product)) {
        product = NULL;
    }
    if (product) { 
    product_local_nonprim = product_response_parseFromJSON(product); //nonprimitive
    }

    // retailer_offer_response->event
    cJSON *event = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "event");
    if (cJSON_IsNull(event)) {
        event = NULL;
    }
    if (event) { 
    event_local_nonprim = event_response_parseFromJSON(event); //nonprimitive
    }

    // retailer_offer_response->media
    cJSON *media = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "media");
    if (cJSON_IsNull(media)) {
        media = NULL;
    }
    if (media) { 
    media_local_nonprim = media_response_parseFromJSON(media); //nonprimitive
    }

    // retailer_offer_response->viewed_count
    cJSON *viewed_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "viewedCount");
    if (cJSON_IsNull(viewed_count)) {
        viewed_count = NULL;
    }
    if (viewed_count) { 
    if(!cJSON_IsNumber(viewed_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->clicked_count
    cJSON *clicked_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "clickedCount");
    if (cJSON_IsNull(clicked_count)) {
        clicked_count = NULL;
    }
    if (clicked_count) { 
    if(!cJSON_IsNumber(clicked_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->added_limit
    cJSON *added_limit = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "addedLimit");
    if (cJSON_IsNull(added_limit)) {
        added_limit = NULL;
    }
    if (added_limit) { 
    if(!cJSON_IsNumber(added_limit))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->added_count
    cJSON *added_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "addedCount");
    if (cJSON_IsNull(added_count)) {
        added_count = NULL;
    }
    if (added_count) { 
    if(!cJSON_IsNumber(added_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->used_count
    cJSON *used_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "usedCount");
    if (cJSON_IsNull(used_count)) {
        used_count = NULL;
    }
    if (used_count) { 
    if(!cJSON_IsNumber(used_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->removed_count
    cJSON *removed_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "removedCount");
    if (cJSON_IsNull(removed_count)) {
        removed_count = NULL;
    }
    if (removed_count) { 
    if(!cJSON_IsNumber(removed_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->location_added_count
    cJSON *location_added_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "locationAddedCount");
    if (cJSON_IsNull(location_added_count)) {
        location_added_count = NULL;
    }
    if (location_added_count) { 
    if(!cJSON_IsNumber(location_added_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->barcode_entry
    cJSON *barcode_entry = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "barcodeEntry");
    if (cJSON_IsNull(barcode_entry)) {
        barcode_entry = NULL;
    }
    if (barcode_entry) { 
    if(!cJSON_IsString(barcode_entry) && !cJSON_IsNull(barcode_entry))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->barcode_type
    cJSON *barcode_type = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "barcodeType");
    if (cJSON_IsNull(barcode_type)) {
        barcode_type = NULL;
    }
    sirqul_iot_platform_retailer_offer_response_BARCODETYPE_e barcode_typeVariable;
    if (barcode_type) { 
    if(!cJSON_IsString(barcode_type))
    {
    goto end; //Enum
    }
    barcode_typeVariable = retailer_offer_response_barcode_type_FromString(barcode_type->valuestring);
    }

    // retailer_offer_response->tickets_reward
    cJSON *tickets_reward = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "ticketsReward");
    if (cJSON_IsNull(tickets_reward)) {
        tickets_reward = NULL;
    }
    if (tickets_reward) { 
    if(!cJSON_IsNumber(tickets_reward))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->tickets_reward_type
    cJSON *tickets_reward_type = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "ticketsRewardType");
    if (cJSON_IsNull(tickets_reward_type)) {
        tickets_reward_type = NULL;
    }
    if (tickets_reward_type) { 
    if(!cJSON_IsString(tickets_reward_type) && !cJSON_IsNull(tickets_reward_type))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->special_offer_type
    cJSON *special_offer_type = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "specialOfferType");
    if (cJSON_IsNull(special_offer_type)) {
        special_offer_type = NULL;
    }
    sirqul_iot_platform_retailer_offer_response_SPECIALOFFERTYPE_e special_offer_typeVariable;
    if (special_offer_type) { 
    if(!cJSON_IsString(special_offer_type))
    {
    goto end; //Enum
    }
    special_offer_typeVariable = retailer_offer_response_special_offer_type_FromString(special_offer_type->valuestring);
    }

    // retailer_offer_response->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->log_id
    cJSON *log_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "logId");
    if (cJSON_IsNull(log_id)) {
        log_id = NULL;
    }
    if (log_id) { 
    if(!cJSON_IsNumber(log_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->billable_entity_id
    cJSON *billable_entity_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "billableEntityId");
    if (cJSON_IsNull(billable_entity_id)) {
        billable_entity_id = NULL;
    }
    if (billable_entity_id) { 
    if(!cJSON_IsNumber(billable_entity_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->responsible_account_id
    cJSON *responsible_account_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "responsibleAccountId");
    if (cJSON_IsNull(responsible_account_id)) {
        responsible_account_id = NULL;
    }
    if (responsible_account_id) { 
    if(!cJSON_IsNumber(responsible_account_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->availability_summary
    cJSON *availability_summary = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "availabilitySummary");
    if (cJSON_IsNull(availability_summary)) {
        availability_summary = NULL;
    }
    if (availability_summary) { 
    if(!cJSON_IsString(availability_summary) && !cJSON_IsNull(availability_summary))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->parent_offer
    cJSON *parent_offer = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "parentOffer");
    if (cJSON_IsNull(parent_offer)) {
        parent_offer = NULL;
    }
    if (parent_offer) { 
    parent_offer_local_nonprim = offer_short_response_parseFromJSON(parent_offer); //nonprimitive
    }

    // retailer_offer_response->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->details
    cJSON *details = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "details");
    if (cJSON_IsNull(details)) {
        details = NULL;
    }
    if (details) { 
    if(!cJSON_IsString(details) && !cJSON_IsNull(details))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->fine_print
    cJSON *fine_print = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "finePrint");
    if (cJSON_IsNull(fine_print)) {
        fine_print = NULL;
    }
    if (fine_print) { 
    if(!cJSON_IsString(fine_print) && !cJSON_IsNull(fine_print))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->retailer_phone_number
    cJSON *retailer_phone_number = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "retailerPhoneNumber");
    if (cJSON_IsNull(retailer_phone_number)) {
        retailer_phone_number = NULL;
    }
    if (retailer_phone_number) { 
    if(!cJSON_IsString(retailer_phone_number) && !cJSON_IsNull(retailer_phone_number))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->ticket_price_type
    cJSON *ticket_price_type = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "ticketPriceType");
    if (cJSON_IsNull(ticket_price_type)) {
        ticket_price_type = NULL;
    }
    if (ticket_price_type) { 
    if(!cJSON_IsString(ticket_price_type) && !cJSON_IsNull(ticket_price_type))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->ticket_price
    cJSON *ticket_price = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "ticketPrice");
    if (cJSON_IsNull(ticket_price)) {
        ticket_price = NULL;
    }
    if (ticket_price) { 
    if(!cJSON_IsNumber(ticket_price))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->discount_percentage
    cJSON *discount_percentage = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "discountPercentage");
    if (cJSON_IsNull(discount_percentage)) {
        discount_percentage = NULL;
    }
    if (discount_percentage) { 
    if(!cJSON_IsNumber(discount_percentage))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->payment_fees
    cJSON *payment_fees = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "paymentFees");
    if (cJSON_IsNull(payment_fees)) {
        payment_fees = NULL;
    }
    if (payment_fees) { 
    if(!cJSON_IsNumber(payment_fees))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->voucher_price
    cJSON *voucher_price = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "voucherPrice");
    if (cJSON_IsNull(voucher_price)) {
        voucher_price = NULL;
    }
    if (voucher_price) { 
    if(!cJSON_IsNumber(voucher_price))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->purchases_remaining
    cJSON *purchases_remaining = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "purchasesRemaining");
    if (cJSON_IsNull(purchases_remaining)) {
        purchases_remaining = NULL;
    }
    if (purchases_remaining) { 
    if(!cJSON_IsNumber(purchases_remaining))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->redemptions_remaining
    cJSON *redemptions_remaining = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "redemptionsRemaining");
    if (cJSON_IsNull(redemptions_remaining)) {
        redemptions_remaining = NULL;
    }
    if (redemptions_remaining) { 
    if(!cJSON_IsNumber(redemptions_remaining))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->redemption_status
    cJSON *redemption_status = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "redemptionStatus");
    if (cJSON_IsNull(redemption_status)) {
        redemption_status = NULL;
    }
    if (redemption_status) { 
    if(!cJSON_IsNumber(redemption_status))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->redemption_code
    cJSON *redemption_code = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "redemptionCode");
    if (cJSON_IsNull(redemption_code)) {
        redemption_code = NULL;
    }
    if (redemption_code) { 
    if(!cJSON_IsString(redemption_code) && !cJSON_IsNull(redemption_code))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->audiences
    cJSON *audiences = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "audiences");
    if (cJSON_IsNull(audiences)) {
        audiences = NULL;
    }
    if (audiences) { 
    cJSON *audiences_local_nonprimitive = NULL;
    if(!cJSON_IsArray(audiences)){
        goto end; //nonprimitive container
    }

    audiencesList = list_createList();

    cJSON_ArrayForEach(audiences_local_nonprimitive,audiences )
    {
        if(!cJSON_IsObject(audiences_local_nonprimitive)){
            goto end;
        }
        audience_response_t *audiencesItem = audience_response_parseFromJSON(audiences_local_nonprimitive);

        list_addElement(audiencesList, audiencesItem);
    }
    }

    // retailer_offer_response->audience_count
    cJSON *audience_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "audienceCount");
    if (cJSON_IsNull(audience_count)) {
        audience_count = NULL;
    }
    if (audience_count) { 
    if(!cJSON_IsNumber(audience_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->wallet_count
    cJSON *wallet_count = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "walletCount");
    if (cJSON_IsNull(wallet_count)) {
        wallet_count = NULL;
    }
    if (wallet_count) { 
    if(!cJSON_IsNumber(wallet_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->qr_code_url
    cJSON *qr_code_url = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "qrCodeUrl");
    if (cJSON_IsNull(qr_code_url)) {
        qr_code_url = NULL;
    }
    if (qr_code_url) { 
    if(!cJSON_IsString(qr_code_url) && !cJSON_IsNull(qr_code_url))
    {
    goto end; //String
    }
    }

    // retailer_offer_response->show_remaining
    cJSON *show_remaining = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "showRemaining");
    if (cJSON_IsNull(show_remaining)) {
        show_remaining = NULL;
    }
    if (show_remaining) { 
    if(!cJSON_IsBool(show_remaining))
    {
    goto end; //Bool
    }
    }

    // retailer_offer_response->show_redeemed
    cJSON *show_redeemed = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "showRedeemed");
    if (cJSON_IsNull(show_redeemed)) {
        show_redeemed = NULL;
    }
    if (show_redeemed) { 
    if(!cJSON_IsBool(show_redeemed))
    {
    goto end; //Bool
    }
    }

    // retailer_offer_response->purchase_limit
    cJSON *purchase_limit = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "purchaseLimit");
    if (cJSON_IsNull(purchase_limit)) {
        purchase_limit = NULL;
    }
    if (purchase_limit) { 
    if(!cJSON_IsNumber(purchase_limit))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->purchase_limit_per_user
    cJSON *purchase_limit_per_user = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "purchaseLimitPerUser");
    if (cJSON_IsNull(purchase_limit_per_user)) {
        purchase_limit_per_user = NULL;
    }
    if (purchase_limit_per_user) { 
    if(!cJSON_IsNumber(purchase_limit_per_user))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->redemption_limit
    cJSON *redemption_limit = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "redemptionLimit");
    if (cJSON_IsNull(redemption_limit)) {
        redemption_limit = NULL;
    }
    if (redemption_limit) { 
    if(!cJSON_IsNumber(redemption_limit))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->user_redemption_limit
    cJSON *user_redemption_limit = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "userRedemptionLimit");
    if (cJSON_IsNull(user_redemption_limit)) {
        user_redemption_limit = NULL;
    }
    if (user_redemption_limit) { 
    if(!cJSON_IsNumber(user_redemption_limit))
    {
    goto end; //Numeric
    }
    }

    // retailer_offer_response->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "categories");
    if (cJSON_IsNull(categories)) {
        categories = NULL;
    }
    if (categories) { 
    cJSON *categories_local_nonprimitive = NULL;
    if(!cJSON_IsArray(categories)){
        goto end; //nonprimitive container
    }

    categoriesList = list_createList();

    cJSON_ArrayForEach(categories_local_nonprimitive,categories )
    {
        if(!cJSON_IsObject(categories_local_nonprimitive)){
            goto end;
        }
        category_response_t *categoriesItem = category_response_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // retailer_offer_response->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "filters");
    if (cJSON_IsNull(filters)) {
        filters = NULL;
    }
    if (filters) { 
    cJSON *filters_local_nonprimitive = NULL;
    if(!cJSON_IsArray(filters)){
        goto end; //nonprimitive container
    }

    filtersList = list_createList();

    cJSON_ArrayForEach(filters_local_nonprimitive,filters )
    {
        if(!cJSON_IsObject(filters_local_nonprimitive)){
            goto end;
        }
        filter_response_t *filtersItem = filter_response_parseFromJSON(filters_local_nonprimitive);

        list_addElement(filtersList, filtersItem);
    }
    }

    // retailer_offer_response->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "locations");
    if (cJSON_IsNull(locations)) {
        locations = NULL;
    }
    if (locations) { 
    cJSON *locations_local = NULL;
    if(!cJSON_IsArray(locations)) {
        goto end;//primitive container
    }
    locationsList = list_createList();

    cJSON_ArrayForEach(locations_local, locations)
    {
    }
    }

    // retailer_offer_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(retailer_offer_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    retailer_offer_response_local_var = retailer_offer_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        offer_location_id ? offer_location_id->valuedouble : 0,
        offer_id ? offer_id->valuedouble : 0,
        retailer_id ? retailer_id->valuedouble : 0,
        transaction_id ? transaction_id->valuedouble : 0,
        favorite_id ? favorite_id->valuedouble : 0,
        offer_name && !cJSON_IsNull(offer_name) ? strdup(offer_name->valuestring) : NULL,
        sub_title && !cJSON_IsNull(sub_title) ? strdup(sub_title->valuestring) : NULL,
        location_name && !cJSON_IsNull(location_name) ? strdup(location_name->valuestring) : NULL,
        starts && !cJSON_IsNull(starts) ? strdup(starts->valuestring) : NULL,
        expires && !cJSON_IsNull(expires) ? strdup(expires->valuestring) : NULL,
        activated ? activated->valuedouble : 0,
        expiration ? expiration->valuedouble : 0,
        redeemable_start ? redeemable_start->valuedouble : 0,
        redeemable_end ? redeemable_end->valuedouble : 0,
        distance ? distance->valuedouble : 0,
        offer_type && !cJSON_IsNull(offer_type) ? strdup(offer_type->valuestring) : NULL,
        longitude ? longitude->valuedouble : 0,
        latitude ? latitude->valuedouble : 0,
        favorite ? favorite->valueint : 0,
        full_price ? full_price->valuedouble : 0,
        discount_price ? discount_price->valuedouble : 0,
        estimated_value ? estimated_value->valuedouble : 0,
        voucher_discount_price ? voucher_discount_price->valuedouble : 0,
        mission_list_response ? mission_list_response_local_nonprim : NULL,
        image && !cJSON_IsNull(image) ? strdup(image->valuestring) : NULL,
        image1 && !cJSON_IsNull(image1) ? strdup(image1->valuestring) : NULL,
        image2 && !cJSON_IsNull(image2) ? strdup(image2->valuestring) : NULL,
        image3 && !cJSON_IsNull(image3) ? strdup(image3->valuestring) : NULL,
        image4 && !cJSON_IsNull(image4) ? strdup(image4->valuestring) : NULL,
        image5 && !cJSON_IsNull(image5) ? strdup(image5->valuestring) : NULL,
        images ? imagesList : NULL,
        barcode && !cJSON_IsNull(barcode) ? strdup(barcode->valuestring) : NULL,
        external_url && !cJSON_IsNull(external_url) ? strdup(external_url->valuestring) : NULL,
        sqoot_url && !cJSON_IsNull(sqoot_url) ? strdup(sqoot_url->valuestring) : NULL,
        active ? active->valueint : 0,
        location ? location_local_nonprim : NULL,
        sub_details && !cJSON_IsNull(sub_details) ? strdup(sub_details->valuestring) : NULL,
        external_redeem_auth ? external_redeem_auth->valuedouble : 0,
        external_redeem_options && !cJSON_IsNull(external_redeem_options) ? strdup(external_redeem_options->valuestring) : NULL,
        publisher && !cJSON_IsNull(publisher) ? strdup(publisher->valuestring) : NULL,
        product ? product_local_nonprim : NULL,
        event ? event_local_nonprim : NULL,
        media ? media_local_nonprim : NULL,
        viewed_count ? viewed_count->valuedouble : 0,
        clicked_count ? clicked_count->valuedouble : 0,
        added_limit ? added_limit->valuedouble : 0,
        added_count ? added_count->valuedouble : 0,
        used_count ? used_count->valuedouble : 0,
        removed_count ? removed_count->valuedouble : 0,
        location_added_count ? location_added_count->valuedouble : 0,
        barcode_entry && !cJSON_IsNull(barcode_entry) ? strdup(barcode_entry->valuestring) : NULL,
        barcode_type ? barcode_typeVariable : sirqul_iot_platform_retailer_offer_response_BARCODETYPE_NULL,
        tickets_reward ? tickets_reward->valuedouble : 0,
        tickets_reward_type && !cJSON_IsNull(tickets_reward_type) ? strdup(tickets_reward_type->valuestring) : NULL,
        special_offer_type ? special_offer_typeVariable : sirqul_iot_platform_retailer_offer_response_SPECIALOFFERTYPE_NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        favorite_count ? favorite_count->valuedouble : 0,
        note_count ? note_count->valuedouble : 0,
        log_id ? log_id->valuedouble : 0,
        billable_entity_id ? billable_entity_id->valuedouble : 0,
        responsible_account_id ? responsible_account_id->valuedouble : 0,
        availability_summary && !cJSON_IsNull(availability_summary) ? strdup(availability_summary->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        parent_offer ? parent_offer_local_nonprim : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        details && !cJSON_IsNull(details) ? strdup(details->valuestring) : NULL,
        fine_print && !cJSON_IsNull(fine_print) ? strdup(fine_print->valuestring) : NULL,
        retailer_phone_number && !cJSON_IsNull(retailer_phone_number) ? strdup(retailer_phone_number->valuestring) : NULL,
        ticket_price_type && !cJSON_IsNull(ticket_price_type) ? strdup(ticket_price_type->valuestring) : NULL,
        ticket_price ? ticket_price->valuedouble : 0,
        discount_percentage ? discount_percentage->valuedouble : 0,
        payment_fees ? payment_fees->valuedouble : 0,
        voucher_price ? voucher_price->valuedouble : 0,
        purchases_remaining ? purchases_remaining->valuedouble : 0,
        redemptions_remaining ? redemptions_remaining->valuedouble : 0,
        redemption_status ? redemption_status->valuedouble : 0,
        redemption_code && !cJSON_IsNull(redemption_code) ? strdup(redemption_code->valuestring) : NULL,
        audiences ? audiencesList : NULL,
        audience_count ? audience_count->valuedouble : 0,
        wallet_count ? wallet_count->valuedouble : 0,
        qr_code_url && !cJSON_IsNull(qr_code_url) ? strdup(qr_code_url->valuestring) : NULL,
        show_remaining ? show_remaining->valueint : 0,
        show_redeemed ? show_redeemed->valueint : 0,
        purchase_limit ? purchase_limit->valuedouble : 0,
        purchase_limit_per_user ? purchase_limit_per_user->valuedouble : 0,
        redemption_limit ? redemption_limit->valuedouble : 0,
        user_redemption_limit ? user_redemption_limit->valuedouble : 0,
        categories ? categoriesList : NULL,
        filters ? filtersList : NULL,
        locations ? locationsList : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return retailer_offer_response_local_var;
end:
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    if (mission_list_response_local_nonprim) {
        mission_list_response_free(mission_list_response_local_nonprim);
        mission_list_response_local_nonprim = NULL;
    }
    if (imagesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, imagesList) {
            asset_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(imagesList);
        imagesList = NULL;
    }
    if (location_local_nonprim) {
        retailer_location_response_free(location_local_nonprim);
        location_local_nonprim = NULL;
    }
    if (product_local_nonprim) {
        product_response_free(product_local_nonprim);
        product_local_nonprim = NULL;
    }
    if (event_local_nonprim) {
        event_response_free(event_local_nonprim);
        event_local_nonprim = NULL;
    }
    if (media_local_nonprim) {
        media_response_free(media_local_nonprim);
        media_local_nonprim = NULL;
    }
    if (parent_offer_local_nonprim) {
        offer_short_response_free(parent_offer_local_nonprim);
        parent_offer_local_nonprim = NULL;
    }
    if (audiencesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, audiencesList) {
            audience_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(audiencesList);
        audiencesList = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (filtersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, filtersList) {
            filter_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(filtersList);
        filtersList = NULL;
    }
    if (locationsList) {
        list_freeList(locationsList);
        locationsList = NULL;
    }
    return NULL;

}
