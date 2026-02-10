#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "offer_short_response.h"


char* offer_short_response_barcode_type_ToString(sirqul_iot_platform_offer_short_response_BARCODETYPE_e barcode_type) {
    char* barcode_typeArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    return barcode_typeArray[barcode_type];
}

sirqul_iot_platform_offer_short_response_BARCODETYPE_e offer_short_response_barcode_type_FromString(char* barcode_type){
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
char* offer_short_response_special_offer_type_ToString(sirqul_iot_platform_offer_short_response_SPECIALOFFERTYPE_e special_offer_type) {
    char* special_offer_typeArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return special_offer_typeArray[special_offer_type];
}

sirqul_iot_platform_offer_short_response_SPECIALOFFERTYPE_e offer_short_response_special_offer_type_FromString(char* special_offer_type){
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

static offer_short_response_t *offer_short_response_create_internal(
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
    sirqul_iot_platform_offer_short_response_BARCODETYPE_e barcode_type,
    long tickets_reward,
    char *tickets_reward_type,
    sirqul_iot_platform_offer_short_response_SPECIALOFFERTYPE_e special_offer_type,
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
    char *returning
    ) {
    offer_short_response_t *offer_short_response_local_var = malloc(sizeof(offer_short_response_t));
    if (!offer_short_response_local_var) {
        return NULL;
    }
    offer_short_response_local_var->valid = valid;
    offer_short_response_local_var->message = message;
    offer_short_response_local_var->version = version;
    offer_short_response_local_var->serialize_nulls = serialize_nulls;
    offer_short_response_local_var->start_time_log = start_time_log;
    offer_short_response_local_var->error_code = error_code;
    offer_short_response_local_var->request = request;
    offer_short_response_local_var->offer_location_id = offer_location_id;
    offer_short_response_local_var->offer_id = offer_id;
    offer_short_response_local_var->retailer_id = retailer_id;
    offer_short_response_local_var->transaction_id = transaction_id;
    offer_short_response_local_var->favorite_id = favorite_id;
    offer_short_response_local_var->offer_name = offer_name;
    offer_short_response_local_var->sub_title = sub_title;
    offer_short_response_local_var->location_name = location_name;
    offer_short_response_local_var->starts = starts;
    offer_short_response_local_var->expires = expires;
    offer_short_response_local_var->activated = activated;
    offer_short_response_local_var->expiration = expiration;
    offer_short_response_local_var->redeemable_start = redeemable_start;
    offer_short_response_local_var->redeemable_end = redeemable_end;
    offer_short_response_local_var->distance = distance;
    offer_short_response_local_var->offer_type = offer_type;
    offer_short_response_local_var->longitude = longitude;
    offer_short_response_local_var->latitude = latitude;
    offer_short_response_local_var->favorite = favorite;
    offer_short_response_local_var->full_price = full_price;
    offer_short_response_local_var->discount_price = discount_price;
    offer_short_response_local_var->estimated_value = estimated_value;
    offer_short_response_local_var->voucher_discount_price = voucher_discount_price;
    offer_short_response_local_var->mission_list_response = mission_list_response;
    offer_short_response_local_var->image = image;
    offer_short_response_local_var->image1 = image1;
    offer_short_response_local_var->image2 = image2;
    offer_short_response_local_var->image3 = image3;
    offer_short_response_local_var->image4 = image4;
    offer_short_response_local_var->image5 = image5;
    offer_short_response_local_var->images = images;
    offer_short_response_local_var->barcode = barcode;
    offer_short_response_local_var->external_url = external_url;
    offer_short_response_local_var->sqoot_url = sqoot_url;
    offer_short_response_local_var->active = active;
    offer_short_response_local_var->location = location;
    offer_short_response_local_var->sub_details = sub_details;
    offer_short_response_local_var->external_redeem_auth = external_redeem_auth;
    offer_short_response_local_var->external_redeem_options = external_redeem_options;
    offer_short_response_local_var->publisher = publisher;
    offer_short_response_local_var->product = product;
    offer_short_response_local_var->event = event;
    offer_short_response_local_var->media = media;
    offer_short_response_local_var->viewed_count = viewed_count;
    offer_short_response_local_var->clicked_count = clicked_count;
    offer_short_response_local_var->added_limit = added_limit;
    offer_short_response_local_var->added_count = added_count;
    offer_short_response_local_var->used_count = used_count;
    offer_short_response_local_var->removed_count = removed_count;
    offer_short_response_local_var->location_added_count = location_added_count;
    offer_short_response_local_var->barcode_entry = barcode_entry;
    offer_short_response_local_var->barcode_type = barcode_type;
    offer_short_response_local_var->tickets_reward = tickets_reward;
    offer_short_response_local_var->tickets_reward_type = tickets_reward_type;
    offer_short_response_local_var->special_offer_type = special_offer_type;
    offer_short_response_local_var->like_count = like_count;
    offer_short_response_local_var->dislike_count = dislike_count;
    offer_short_response_local_var->favorite_count = favorite_count;
    offer_short_response_local_var->note_count = note_count;
    offer_short_response_local_var->log_id = log_id;
    offer_short_response_local_var->billable_entity_id = billable_entity_id;
    offer_short_response_local_var->responsible_account_id = responsible_account_id;
    offer_short_response_local_var->availability_summary = availability_summary;
    offer_short_response_local_var->external_id = external_id;
    offer_short_response_local_var->parent_offer = parent_offer;
    offer_short_response_local_var->returning = returning;

    offer_short_response_local_var->_library_owned = 1;
    return offer_short_response_local_var;
}

__attribute__((deprecated)) offer_short_response_t *offer_short_response_create(
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
    sirqul_iot_platform_offer_short_response_BARCODETYPE_e barcode_type,
    long tickets_reward,
    char *tickets_reward_type,
    sirqul_iot_platform_offer_short_response_SPECIALOFFERTYPE_e special_offer_type,
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
    char *returning
    ) {
    return offer_short_response_create_internal (
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
        returning
        );
}

void offer_short_response_free(offer_short_response_t *offer_short_response) {
    if(NULL == offer_short_response){
        return ;
    }
    if(offer_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "offer_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (offer_short_response->message) {
        free(offer_short_response->message);
        offer_short_response->message = NULL;
    }
    if (offer_short_response->error_code) {
        free(offer_short_response->error_code);
        offer_short_response->error_code = NULL;
    }
    if (offer_short_response->request) {
        list_ForEach(listEntry, offer_short_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(offer_short_response->request);
        offer_short_response->request = NULL;
    }
    if (offer_short_response->offer_name) {
        free(offer_short_response->offer_name);
        offer_short_response->offer_name = NULL;
    }
    if (offer_short_response->sub_title) {
        free(offer_short_response->sub_title);
        offer_short_response->sub_title = NULL;
    }
    if (offer_short_response->location_name) {
        free(offer_short_response->location_name);
        offer_short_response->location_name = NULL;
    }
    if (offer_short_response->starts) {
        free(offer_short_response->starts);
        offer_short_response->starts = NULL;
    }
    if (offer_short_response->expires) {
        free(offer_short_response->expires);
        offer_short_response->expires = NULL;
    }
    if (offer_short_response->offer_type) {
        free(offer_short_response->offer_type);
        offer_short_response->offer_type = NULL;
    }
    if (offer_short_response->mission_list_response) {
        mission_list_response_free(offer_short_response->mission_list_response);
        offer_short_response->mission_list_response = NULL;
    }
    if (offer_short_response->image) {
        free(offer_short_response->image);
        offer_short_response->image = NULL;
    }
    if (offer_short_response->image1) {
        free(offer_short_response->image1);
        offer_short_response->image1 = NULL;
    }
    if (offer_short_response->image2) {
        free(offer_short_response->image2);
        offer_short_response->image2 = NULL;
    }
    if (offer_short_response->image3) {
        free(offer_short_response->image3);
        offer_short_response->image3 = NULL;
    }
    if (offer_short_response->image4) {
        free(offer_short_response->image4);
        offer_short_response->image4 = NULL;
    }
    if (offer_short_response->image5) {
        free(offer_short_response->image5);
        offer_short_response->image5 = NULL;
    }
    if (offer_short_response->images) {
        list_ForEach(listEntry, offer_short_response->images) {
            asset_response_free(listEntry->data);
        }
        list_freeList(offer_short_response->images);
        offer_short_response->images = NULL;
    }
    if (offer_short_response->barcode) {
        free(offer_short_response->barcode);
        offer_short_response->barcode = NULL;
    }
    if (offer_short_response->external_url) {
        free(offer_short_response->external_url);
        offer_short_response->external_url = NULL;
    }
    if (offer_short_response->sqoot_url) {
        free(offer_short_response->sqoot_url);
        offer_short_response->sqoot_url = NULL;
    }
    if (offer_short_response->location) {
        retailer_location_response_free(offer_short_response->location);
        offer_short_response->location = NULL;
    }
    if (offer_short_response->sub_details) {
        free(offer_short_response->sub_details);
        offer_short_response->sub_details = NULL;
    }
    if (offer_short_response->external_redeem_options) {
        free(offer_short_response->external_redeem_options);
        offer_short_response->external_redeem_options = NULL;
    }
    if (offer_short_response->publisher) {
        free(offer_short_response->publisher);
        offer_short_response->publisher = NULL;
    }
    if (offer_short_response->product) {
        product_response_free(offer_short_response->product);
        offer_short_response->product = NULL;
    }
    if (offer_short_response->event) {
        event_response_free(offer_short_response->event);
        offer_short_response->event = NULL;
    }
    if (offer_short_response->media) {
        media_response_free(offer_short_response->media);
        offer_short_response->media = NULL;
    }
    if (offer_short_response->barcode_entry) {
        free(offer_short_response->barcode_entry);
        offer_short_response->barcode_entry = NULL;
    }
    if (offer_short_response->tickets_reward_type) {
        free(offer_short_response->tickets_reward_type);
        offer_short_response->tickets_reward_type = NULL;
    }
    if (offer_short_response->availability_summary) {
        free(offer_short_response->availability_summary);
        offer_short_response->availability_summary = NULL;
    }
    if (offer_short_response->external_id) {
        free(offer_short_response->external_id);
        offer_short_response->external_id = NULL;
    }
    if (offer_short_response->parent_offer) {
        offer_short_response_free(offer_short_response->parent_offer);
        offer_short_response->parent_offer = NULL;
    }
    if (offer_short_response->returning) {
        free(offer_short_response->returning);
        offer_short_response->returning = NULL;
    }
    free(offer_short_response);
}

cJSON *offer_short_response_convertToJSON(offer_short_response_t *offer_short_response) {
    cJSON *item = cJSON_CreateObject();

    // offer_short_response->valid
    if(offer_short_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", offer_short_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_short_response->message
    if(offer_short_response->message) {
    if(cJSON_AddStringToObject(item, "message", offer_short_response->message) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->version
    if(offer_short_response->version) {
    if(cJSON_AddNumberToObject(item, "version", offer_short_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->serialize_nulls
    if(offer_short_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", offer_short_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_short_response->start_time_log
    if(offer_short_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", offer_short_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->error_code
    if(offer_short_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", offer_short_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->request
    if(offer_short_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (offer_short_response->request) {
    list_ForEach(requestListEntry, offer_short_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // offer_short_response->offer_location_id
    if(offer_short_response->offer_location_id) {
    if(cJSON_AddNumberToObject(item, "offerLocationId", offer_short_response->offer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->offer_id
    if(offer_short_response->offer_id) {
    if(cJSON_AddNumberToObject(item, "offerId", offer_short_response->offer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->retailer_id
    if(offer_short_response->retailer_id) {
    if(cJSON_AddNumberToObject(item, "retailerId", offer_short_response->retailer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->transaction_id
    if(offer_short_response->transaction_id) {
    if(cJSON_AddNumberToObject(item, "transactionId", offer_short_response->transaction_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->favorite_id
    if(offer_short_response->favorite_id) {
    if(cJSON_AddNumberToObject(item, "favoriteId", offer_short_response->favorite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->offer_name
    if(offer_short_response->offer_name) {
    if(cJSON_AddStringToObject(item, "offerName", offer_short_response->offer_name) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->sub_title
    if(offer_short_response->sub_title) {
    if(cJSON_AddStringToObject(item, "subTitle", offer_short_response->sub_title) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->location_name
    if(offer_short_response->location_name) {
    if(cJSON_AddStringToObject(item, "locationName", offer_short_response->location_name) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->starts
    if(offer_short_response->starts) {
    if(cJSON_AddStringToObject(item, "starts", offer_short_response->starts) == NULL) {
    goto fail; //Date-Time
    }
    }


    // offer_short_response->expires
    if(offer_short_response->expires) {
    if(cJSON_AddStringToObject(item, "expires", offer_short_response->expires) == NULL) {
    goto fail; //Date-Time
    }
    }


    // offer_short_response->activated
    if(offer_short_response->activated) {
    if(cJSON_AddNumberToObject(item, "activated", offer_short_response->activated) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->expiration
    if(offer_short_response->expiration) {
    if(cJSON_AddNumberToObject(item, "expiration", offer_short_response->expiration) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->redeemable_start
    if(offer_short_response->redeemable_start) {
    if(cJSON_AddNumberToObject(item, "redeemableStart", offer_short_response->redeemable_start) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->redeemable_end
    if(offer_short_response->redeemable_end) {
    if(cJSON_AddNumberToObject(item, "redeemableEnd", offer_short_response->redeemable_end) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->distance
    if(offer_short_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", offer_short_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->offer_type
    if(offer_short_response->offer_type) {
    if(cJSON_AddStringToObject(item, "offerType", offer_short_response->offer_type) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->longitude
    if(offer_short_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", offer_short_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->latitude
    if(offer_short_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", offer_short_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->favorite
    if(offer_short_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", offer_short_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_short_response->full_price
    if(offer_short_response->full_price) {
    if(cJSON_AddNumberToObject(item, "fullPrice", offer_short_response->full_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->discount_price
    if(offer_short_response->discount_price) {
    if(cJSON_AddNumberToObject(item, "discountPrice", offer_short_response->discount_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->estimated_value
    if(offer_short_response->estimated_value) {
    if(cJSON_AddNumberToObject(item, "estimatedValue", offer_short_response->estimated_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->voucher_discount_price
    if(offer_short_response->voucher_discount_price) {
    if(cJSON_AddNumberToObject(item, "voucherDiscountPrice", offer_short_response->voucher_discount_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->mission_list_response
    if(offer_short_response->mission_list_response) {
    cJSON *mission_list_response_local_JSON = mission_list_response_convertToJSON(offer_short_response->mission_list_response);
    if(mission_list_response_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "missionListResponse", mission_list_response_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_short_response->image
    if(offer_short_response->image) {
    if(cJSON_AddStringToObject(item, "image", offer_short_response->image) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->image1
    if(offer_short_response->image1) {
    if(cJSON_AddStringToObject(item, "image1", offer_short_response->image1) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->image2
    if(offer_short_response->image2) {
    if(cJSON_AddStringToObject(item, "image2", offer_short_response->image2) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->image3
    if(offer_short_response->image3) {
    if(cJSON_AddStringToObject(item, "image3", offer_short_response->image3) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->image4
    if(offer_short_response->image4) {
    if(cJSON_AddStringToObject(item, "image4", offer_short_response->image4) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->image5
    if(offer_short_response->image5) {
    if(cJSON_AddStringToObject(item, "image5", offer_short_response->image5) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->images
    if(offer_short_response->images) {
    cJSON *images = cJSON_AddArrayToObject(item, "images");
    if(images == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *imagesListEntry;
    if (offer_short_response->images) {
    list_ForEach(imagesListEntry, offer_short_response->images) {
    cJSON *itemLocal = asset_response_convertToJSON(imagesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(images, itemLocal);
    }
    }
    }


    // offer_short_response->barcode
    if(offer_short_response->barcode) {
    if(cJSON_AddStringToObject(item, "barcode", offer_short_response->barcode) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->external_url
    if(offer_short_response->external_url) {
    if(cJSON_AddStringToObject(item, "externalUrl", offer_short_response->external_url) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->sqoot_url
    if(offer_short_response->sqoot_url) {
    if(cJSON_AddStringToObject(item, "sqootUrl", offer_short_response->sqoot_url) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->active
    if(offer_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", offer_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_short_response->location
    if(offer_short_response->location) {
    cJSON *location_local_JSON = retailer_location_response_convertToJSON(offer_short_response->location);
    if(location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "location", location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_short_response->sub_details
    if(offer_short_response->sub_details) {
    if(cJSON_AddStringToObject(item, "subDetails", offer_short_response->sub_details) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->external_redeem_auth
    if(offer_short_response->external_redeem_auth) {
    if(cJSON_AddNumberToObject(item, "externalRedeemAuth", offer_short_response->external_redeem_auth) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->external_redeem_options
    if(offer_short_response->external_redeem_options) {
    if(cJSON_AddStringToObject(item, "externalRedeemOptions", offer_short_response->external_redeem_options) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->publisher
    if(offer_short_response->publisher) {
    if(cJSON_AddStringToObject(item, "publisher", offer_short_response->publisher) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->product
    if(offer_short_response->product) {
    cJSON *product_local_JSON = product_response_convertToJSON(offer_short_response->product);
    if(product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "product", product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_short_response->event
    if(offer_short_response->event) {
    cJSON *event_local_JSON = event_response_convertToJSON(offer_short_response->event);
    if(event_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "event", event_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_short_response->media
    if(offer_short_response->media) {
    cJSON *media_local_JSON = media_response_convertToJSON(offer_short_response->media);
    if(media_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "media", media_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_short_response->viewed_count
    if(offer_short_response->viewed_count) {
    if(cJSON_AddNumberToObject(item, "viewedCount", offer_short_response->viewed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->clicked_count
    if(offer_short_response->clicked_count) {
    if(cJSON_AddNumberToObject(item, "clickedCount", offer_short_response->clicked_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->added_limit
    if(offer_short_response->added_limit) {
    if(cJSON_AddNumberToObject(item, "addedLimit", offer_short_response->added_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->added_count
    if(offer_short_response->added_count) {
    if(cJSON_AddNumberToObject(item, "addedCount", offer_short_response->added_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->used_count
    if(offer_short_response->used_count) {
    if(cJSON_AddNumberToObject(item, "usedCount", offer_short_response->used_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->removed_count
    if(offer_short_response->removed_count) {
    if(cJSON_AddNumberToObject(item, "removedCount", offer_short_response->removed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->location_added_count
    if(offer_short_response->location_added_count) {
    if(cJSON_AddNumberToObject(item, "locationAddedCount", offer_short_response->location_added_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->barcode_entry
    if(offer_short_response->barcode_entry) {
    if(cJSON_AddStringToObject(item, "barcodeEntry", offer_short_response->barcode_entry) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->barcode_type
    if(offer_short_response->barcode_type != sirqul_iot_platform_offer_short_response_BARCODETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "barcodeType", offer_short_response_barcode_type_ToString(offer_short_response->barcode_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // offer_short_response->tickets_reward
    if(offer_short_response->tickets_reward) {
    if(cJSON_AddNumberToObject(item, "ticketsReward", offer_short_response->tickets_reward) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->tickets_reward_type
    if(offer_short_response->tickets_reward_type) {
    if(cJSON_AddStringToObject(item, "ticketsRewardType", offer_short_response->tickets_reward_type) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->special_offer_type
    if(offer_short_response->special_offer_type != sirqul_iot_platform_offer_short_response_SPECIALOFFERTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "specialOfferType", offer_short_response_special_offer_type_ToString(offer_short_response->special_offer_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // offer_short_response->like_count
    if(offer_short_response->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", offer_short_response->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->dislike_count
    if(offer_short_response->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", offer_short_response->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->favorite_count
    if(offer_short_response->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", offer_short_response->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->note_count
    if(offer_short_response->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", offer_short_response->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->log_id
    if(offer_short_response->log_id) {
    if(cJSON_AddNumberToObject(item, "logId", offer_short_response->log_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->billable_entity_id
    if(offer_short_response->billable_entity_id) {
    if(cJSON_AddNumberToObject(item, "billableEntityId", offer_short_response->billable_entity_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->responsible_account_id
    if(offer_short_response->responsible_account_id) {
    if(cJSON_AddNumberToObject(item, "responsibleAccountId", offer_short_response->responsible_account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_short_response->availability_summary
    if(offer_short_response->availability_summary) {
    if(cJSON_AddStringToObject(item, "availabilitySummary", offer_short_response->availability_summary) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->external_id
    if(offer_short_response->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", offer_short_response->external_id) == NULL) {
    goto fail; //String
    }
    }


    // offer_short_response->parent_offer
    if(offer_short_response->parent_offer) {
    cJSON *parent_offer_local_JSON = offer_short_response_convertToJSON(offer_short_response->parent_offer);
    if(parent_offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentOffer", parent_offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_short_response->returning
    if(offer_short_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", offer_short_response->returning) == NULL) {
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

offer_short_response_t *offer_short_response_parseFromJSON(cJSON *offer_short_responseJSON){

    offer_short_response_t *offer_short_response_local_var = NULL;

    // define the local list for offer_short_response->request
    list_t *requestList = NULL;

    // define the local variable for offer_short_response->mission_list_response
    mission_list_response_t *mission_list_response_local_nonprim = NULL;

    // define the local list for offer_short_response->images
    list_t *imagesList = NULL;

    // define the local variable for offer_short_response->location
    retailer_location_response_t *location_local_nonprim = NULL;

    // define the local variable for offer_short_response->product
    product_response_t *product_local_nonprim = NULL;

    // define the local variable for offer_short_response->event
    event_response_t *event_local_nonprim = NULL;

    // define the local variable for offer_short_response->media
    media_response_t *media_local_nonprim = NULL;

    // define the local variable for offer_short_response->parent_offer
    offer_short_response_t *parent_offer_local_nonprim = NULL;

    // offer_short_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // offer_short_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // offer_short_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // offer_short_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // offer_short_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "request");
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

    // offer_short_response->offer_location_id
    cJSON *offer_location_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "offerLocationId");
    if (cJSON_IsNull(offer_location_id)) {
        offer_location_id = NULL;
    }
    if (offer_location_id) { 
    if(!cJSON_IsNumber(offer_location_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->offer_id
    cJSON *offer_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "offerId");
    if (cJSON_IsNull(offer_id)) {
        offer_id = NULL;
    }
    if (offer_id) { 
    if(!cJSON_IsNumber(offer_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->retailer_id
    cJSON *retailer_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "retailerId");
    if (cJSON_IsNull(retailer_id)) {
        retailer_id = NULL;
    }
    if (retailer_id) { 
    if(!cJSON_IsNumber(retailer_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "transactionId");
    if (cJSON_IsNull(transaction_id)) {
        transaction_id = NULL;
    }
    if (transaction_id) { 
    if(!cJSON_IsNumber(transaction_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->favorite_id
    cJSON *favorite_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "favoriteId");
    if (cJSON_IsNull(favorite_id)) {
        favorite_id = NULL;
    }
    if (favorite_id) { 
    if(!cJSON_IsNumber(favorite_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->offer_name
    cJSON *offer_name = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "offerName");
    if (cJSON_IsNull(offer_name)) {
        offer_name = NULL;
    }
    if (offer_name) { 
    if(!cJSON_IsString(offer_name) && !cJSON_IsNull(offer_name))
    {
    goto end; //String
    }
    }

    // offer_short_response->sub_title
    cJSON *sub_title = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "subTitle");
    if (cJSON_IsNull(sub_title)) {
        sub_title = NULL;
    }
    if (sub_title) { 
    if(!cJSON_IsString(sub_title) && !cJSON_IsNull(sub_title))
    {
    goto end; //String
    }
    }

    // offer_short_response->location_name
    cJSON *location_name = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "locationName");
    if (cJSON_IsNull(location_name)) {
        location_name = NULL;
    }
    if (location_name) { 
    if(!cJSON_IsString(location_name) && !cJSON_IsNull(location_name))
    {
    goto end; //String
    }
    }

    // offer_short_response->starts
    cJSON *starts = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "starts");
    if (cJSON_IsNull(starts)) {
        starts = NULL;
    }
    if (starts) { 
    if(!cJSON_IsString(starts) && !cJSON_IsNull(starts))
    {
    goto end; //DateTime
    }
    }

    // offer_short_response->expires
    cJSON *expires = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "expires");
    if (cJSON_IsNull(expires)) {
        expires = NULL;
    }
    if (expires) { 
    if(!cJSON_IsString(expires) && !cJSON_IsNull(expires))
    {
    goto end; //DateTime
    }
    }

    // offer_short_response->activated
    cJSON *activated = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "activated");
    if (cJSON_IsNull(activated)) {
        activated = NULL;
    }
    if (activated) { 
    if(!cJSON_IsNumber(activated))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->expiration
    cJSON *expiration = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "expiration");
    if (cJSON_IsNull(expiration)) {
        expiration = NULL;
    }
    if (expiration) { 
    if(!cJSON_IsNumber(expiration))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->redeemable_start
    cJSON *redeemable_start = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "redeemableStart");
    if (cJSON_IsNull(redeemable_start)) {
        redeemable_start = NULL;
    }
    if (redeemable_start) { 
    if(!cJSON_IsNumber(redeemable_start))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->redeemable_end
    cJSON *redeemable_end = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "redeemableEnd");
    if (cJSON_IsNull(redeemable_end)) {
        redeemable_end = NULL;
    }
    if (redeemable_end) { 
    if(!cJSON_IsNumber(redeemable_end))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->offer_type
    cJSON *offer_type = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "offerType");
    if (cJSON_IsNull(offer_type)) {
        offer_type = NULL;
    }
    if (offer_type) { 
    if(!cJSON_IsString(offer_type) && !cJSON_IsNull(offer_type))
    {
    goto end; //String
    }
    }

    // offer_short_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }

    // offer_short_response->full_price
    cJSON *full_price = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "fullPrice");
    if (cJSON_IsNull(full_price)) {
        full_price = NULL;
    }
    if (full_price) { 
    if(!cJSON_IsNumber(full_price))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->discount_price
    cJSON *discount_price = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "discountPrice");
    if (cJSON_IsNull(discount_price)) {
        discount_price = NULL;
    }
    if (discount_price) { 
    if(!cJSON_IsNumber(discount_price))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->estimated_value
    cJSON *estimated_value = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "estimatedValue");
    if (cJSON_IsNull(estimated_value)) {
        estimated_value = NULL;
    }
    if (estimated_value) { 
    if(!cJSON_IsNumber(estimated_value))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->voucher_discount_price
    cJSON *voucher_discount_price = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "voucherDiscountPrice");
    if (cJSON_IsNull(voucher_discount_price)) {
        voucher_discount_price = NULL;
    }
    if (voucher_discount_price) { 
    if(!cJSON_IsNumber(voucher_discount_price))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->mission_list_response
    cJSON *mission_list_response = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "missionListResponse");
    if (cJSON_IsNull(mission_list_response)) {
        mission_list_response = NULL;
    }
    if (mission_list_response) { 
    mission_list_response_local_nonprim = mission_list_response_parseFromJSON(mission_list_response); //nonprimitive
    }

    // offer_short_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    if(!cJSON_IsString(image) && !cJSON_IsNull(image))
    {
    goto end; //String
    }
    }

    // offer_short_response->image1
    cJSON *image1 = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "image1");
    if (cJSON_IsNull(image1)) {
        image1 = NULL;
    }
    if (image1) { 
    if(!cJSON_IsString(image1) && !cJSON_IsNull(image1))
    {
    goto end; //String
    }
    }

    // offer_short_response->image2
    cJSON *image2 = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "image2");
    if (cJSON_IsNull(image2)) {
        image2 = NULL;
    }
    if (image2) { 
    if(!cJSON_IsString(image2) && !cJSON_IsNull(image2))
    {
    goto end; //String
    }
    }

    // offer_short_response->image3
    cJSON *image3 = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "image3");
    if (cJSON_IsNull(image3)) {
        image3 = NULL;
    }
    if (image3) { 
    if(!cJSON_IsString(image3) && !cJSON_IsNull(image3))
    {
    goto end; //String
    }
    }

    // offer_short_response->image4
    cJSON *image4 = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "image4");
    if (cJSON_IsNull(image4)) {
        image4 = NULL;
    }
    if (image4) { 
    if(!cJSON_IsString(image4) && !cJSON_IsNull(image4))
    {
    goto end; //String
    }
    }

    // offer_short_response->image5
    cJSON *image5 = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "image5");
    if (cJSON_IsNull(image5)) {
        image5 = NULL;
    }
    if (image5) { 
    if(!cJSON_IsString(image5) && !cJSON_IsNull(image5))
    {
    goto end; //String
    }
    }

    // offer_short_response->images
    cJSON *images = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "images");
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

    // offer_short_response->barcode
    cJSON *barcode = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "barcode");
    if (cJSON_IsNull(barcode)) {
        barcode = NULL;
    }
    if (barcode) { 
    if(!cJSON_IsString(barcode) && !cJSON_IsNull(barcode))
    {
    goto end; //String
    }
    }

    // offer_short_response->external_url
    cJSON *external_url = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "externalUrl");
    if (cJSON_IsNull(external_url)) {
        external_url = NULL;
    }
    if (external_url) { 
    if(!cJSON_IsString(external_url) && !cJSON_IsNull(external_url))
    {
    goto end; //String
    }
    }

    // offer_short_response->sqoot_url
    cJSON *sqoot_url = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "sqootUrl");
    if (cJSON_IsNull(sqoot_url)) {
        sqoot_url = NULL;
    }
    if (sqoot_url) { 
    if(!cJSON_IsString(sqoot_url) && !cJSON_IsNull(sqoot_url))
    {
    goto end; //String
    }
    }

    // offer_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // offer_short_response->location
    cJSON *location = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "location");
    if (cJSON_IsNull(location)) {
        location = NULL;
    }
    if (location) { 
    location_local_nonprim = retailer_location_response_parseFromJSON(location); //nonprimitive
    }

    // offer_short_response->sub_details
    cJSON *sub_details = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "subDetails");
    if (cJSON_IsNull(sub_details)) {
        sub_details = NULL;
    }
    if (sub_details) { 
    if(!cJSON_IsString(sub_details) && !cJSON_IsNull(sub_details))
    {
    goto end; //String
    }
    }

    // offer_short_response->external_redeem_auth
    cJSON *external_redeem_auth = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "externalRedeemAuth");
    if (cJSON_IsNull(external_redeem_auth)) {
        external_redeem_auth = NULL;
    }
    if (external_redeem_auth) { 
    if(!cJSON_IsNumber(external_redeem_auth))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->external_redeem_options
    cJSON *external_redeem_options = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "externalRedeemOptions");
    if (cJSON_IsNull(external_redeem_options)) {
        external_redeem_options = NULL;
    }
    if (external_redeem_options) { 
    if(!cJSON_IsString(external_redeem_options) && !cJSON_IsNull(external_redeem_options))
    {
    goto end; //String
    }
    }

    // offer_short_response->publisher
    cJSON *publisher = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "publisher");
    if (cJSON_IsNull(publisher)) {
        publisher = NULL;
    }
    if (publisher) { 
    if(!cJSON_IsString(publisher) && !cJSON_IsNull(publisher))
    {
    goto end; //String
    }
    }

    // offer_short_response->product
    cJSON *product = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "product");
    if (cJSON_IsNull(product)) {
        product = NULL;
    }
    if (product) { 
    product_local_nonprim = product_response_parseFromJSON(product); //nonprimitive
    }

    // offer_short_response->event
    cJSON *event = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "event");
    if (cJSON_IsNull(event)) {
        event = NULL;
    }
    if (event) { 
    event_local_nonprim = event_response_parseFromJSON(event); //nonprimitive
    }

    // offer_short_response->media
    cJSON *media = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "media");
    if (cJSON_IsNull(media)) {
        media = NULL;
    }
    if (media) { 
    media_local_nonprim = media_response_parseFromJSON(media); //nonprimitive
    }

    // offer_short_response->viewed_count
    cJSON *viewed_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "viewedCount");
    if (cJSON_IsNull(viewed_count)) {
        viewed_count = NULL;
    }
    if (viewed_count) { 
    if(!cJSON_IsNumber(viewed_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->clicked_count
    cJSON *clicked_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "clickedCount");
    if (cJSON_IsNull(clicked_count)) {
        clicked_count = NULL;
    }
    if (clicked_count) { 
    if(!cJSON_IsNumber(clicked_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->added_limit
    cJSON *added_limit = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "addedLimit");
    if (cJSON_IsNull(added_limit)) {
        added_limit = NULL;
    }
    if (added_limit) { 
    if(!cJSON_IsNumber(added_limit))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->added_count
    cJSON *added_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "addedCount");
    if (cJSON_IsNull(added_count)) {
        added_count = NULL;
    }
    if (added_count) { 
    if(!cJSON_IsNumber(added_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->used_count
    cJSON *used_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "usedCount");
    if (cJSON_IsNull(used_count)) {
        used_count = NULL;
    }
    if (used_count) { 
    if(!cJSON_IsNumber(used_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->removed_count
    cJSON *removed_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "removedCount");
    if (cJSON_IsNull(removed_count)) {
        removed_count = NULL;
    }
    if (removed_count) { 
    if(!cJSON_IsNumber(removed_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->location_added_count
    cJSON *location_added_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "locationAddedCount");
    if (cJSON_IsNull(location_added_count)) {
        location_added_count = NULL;
    }
    if (location_added_count) { 
    if(!cJSON_IsNumber(location_added_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->barcode_entry
    cJSON *barcode_entry = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "barcodeEntry");
    if (cJSON_IsNull(barcode_entry)) {
        barcode_entry = NULL;
    }
    if (barcode_entry) { 
    if(!cJSON_IsString(barcode_entry) && !cJSON_IsNull(barcode_entry))
    {
    goto end; //String
    }
    }

    // offer_short_response->barcode_type
    cJSON *barcode_type = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "barcodeType");
    if (cJSON_IsNull(barcode_type)) {
        barcode_type = NULL;
    }
    sirqul_iot_platform_offer_short_response_BARCODETYPE_e barcode_typeVariable;
    if (barcode_type) { 
    if(!cJSON_IsString(barcode_type))
    {
    goto end; //Enum
    }
    barcode_typeVariable = offer_short_response_barcode_type_FromString(barcode_type->valuestring);
    }

    // offer_short_response->tickets_reward
    cJSON *tickets_reward = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "ticketsReward");
    if (cJSON_IsNull(tickets_reward)) {
        tickets_reward = NULL;
    }
    if (tickets_reward) { 
    if(!cJSON_IsNumber(tickets_reward))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->tickets_reward_type
    cJSON *tickets_reward_type = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "ticketsRewardType");
    if (cJSON_IsNull(tickets_reward_type)) {
        tickets_reward_type = NULL;
    }
    if (tickets_reward_type) { 
    if(!cJSON_IsString(tickets_reward_type) && !cJSON_IsNull(tickets_reward_type))
    {
    goto end; //String
    }
    }

    // offer_short_response->special_offer_type
    cJSON *special_offer_type = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "specialOfferType");
    if (cJSON_IsNull(special_offer_type)) {
        special_offer_type = NULL;
    }
    sirqul_iot_platform_offer_short_response_SPECIALOFFERTYPE_e special_offer_typeVariable;
    if (special_offer_type) { 
    if(!cJSON_IsString(special_offer_type))
    {
    goto end; //Enum
    }
    special_offer_typeVariable = offer_short_response_special_offer_type_FromString(special_offer_type->valuestring);
    }

    // offer_short_response->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->log_id
    cJSON *log_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "logId");
    if (cJSON_IsNull(log_id)) {
        log_id = NULL;
    }
    if (log_id) { 
    if(!cJSON_IsNumber(log_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->billable_entity_id
    cJSON *billable_entity_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "billableEntityId");
    if (cJSON_IsNull(billable_entity_id)) {
        billable_entity_id = NULL;
    }
    if (billable_entity_id) { 
    if(!cJSON_IsNumber(billable_entity_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->responsible_account_id
    cJSON *responsible_account_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "responsibleAccountId");
    if (cJSON_IsNull(responsible_account_id)) {
        responsible_account_id = NULL;
    }
    if (responsible_account_id) { 
    if(!cJSON_IsNumber(responsible_account_id))
    {
    goto end; //Numeric
    }
    }

    // offer_short_response->availability_summary
    cJSON *availability_summary = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "availabilitySummary");
    if (cJSON_IsNull(availability_summary)) {
        availability_summary = NULL;
    }
    if (availability_summary) { 
    if(!cJSON_IsString(availability_summary) && !cJSON_IsNull(availability_summary))
    {
    goto end; //String
    }
    }

    // offer_short_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // offer_short_response->parent_offer
    cJSON *parent_offer = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "parentOffer");
    if (cJSON_IsNull(parent_offer)) {
        parent_offer = NULL;
    }
    if (parent_offer) { 
    parent_offer_local_nonprim = offer_short_response_parseFromJSON(parent_offer); //nonprimitive
    }

    // offer_short_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(offer_short_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    offer_short_response_local_var = offer_short_response_create_internal (
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
        barcode_type ? barcode_typeVariable : sirqul_iot_platform_offer_short_response_BARCODETYPE_NULL,
        tickets_reward ? tickets_reward->valuedouble : 0,
        tickets_reward_type && !cJSON_IsNull(tickets_reward_type) ? strdup(tickets_reward_type->valuestring) : NULL,
        special_offer_type ? special_offer_typeVariable : sirqul_iot_platform_offer_short_response_SPECIALOFFERTYPE_NULL,
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
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return offer_short_response_local_var;
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
    return NULL;

}
