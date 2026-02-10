#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "media_offer_response.h"


char* media_offer_response_special_offer_type_ToString(sirqul_iot_platform_media_offer_response_SPECIALOFFERTYPE_e special_offer_type) {
    char* special_offer_typeArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return special_offer_typeArray[special_offer_type];
}

sirqul_iot_platform_media_offer_response_SPECIALOFFERTYPE_e media_offer_response_special_offer_type_FromString(char* special_offer_type){
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

static media_offer_response_t *media_offer_response_create_internal(
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
    sirqul_iot_platform_media_offer_response_SPECIALOFFERTYPE_e special_offer_type,
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
    base_offer_response_t *parent_offer,
    list_t *categories,
    list_t *filters
    ) {
    media_offer_response_t *media_offer_response_local_var = malloc(sizeof(media_offer_response_t));
    if (!media_offer_response_local_var) {
        return NULL;
    }
    media_offer_response_local_var->title = title;
    media_offer_response_local_var->details = details;
    media_offer_response_local_var->sub_title = sub_title;
    media_offer_response_local_var->activated = activated;
    media_offer_response_local_var->expiration = expiration;
    media_offer_response_local_var->redeemable_start = redeemable_start;
    media_offer_response_local_var->redeemable_end = redeemable_end;
    media_offer_response_local_var->offer_type = offer_type;
    media_offer_response_local_var->offer_visibility = offer_visibility;
    media_offer_response_local_var->favorite = favorite;
    media_offer_response_local_var->deleted = deleted;
    media_offer_response_local_var->full_price = full_price;
    media_offer_response_local_var->discount_price = discount_price;
    media_offer_response_local_var->image = image;
    media_offer_response_local_var->image1 = image1;
    media_offer_response_local_var->image2 = image2;
    media_offer_response_local_var->image3 = image3;
    media_offer_response_local_var->image4 = image4;
    media_offer_response_local_var->image5 = image5;
    media_offer_response_local_var->images = images;
    media_offer_response_local_var->barcode = barcode;
    media_offer_response_local_var->external_url = external_url;
    media_offer_response_local_var->active = active;
    media_offer_response_local_var->sub_details = sub_details;
    media_offer_response_local_var->external_redeem_options = external_redeem_options;
    media_offer_response_local_var->publisher = publisher;
    media_offer_response_local_var->viewed_count = viewed_count;
    media_offer_response_local_var->clicked_count = clicked_count;
    media_offer_response_local_var->added_limit = added_limit;
    media_offer_response_local_var->added_count = added_count;
    media_offer_response_local_var->used_count = used_count;
    media_offer_response_local_var->removed_count = removed_count;
    media_offer_response_local_var->tickets_reward = tickets_reward;
    media_offer_response_local_var->tickets_reward_type = tickets_reward_type;
    media_offer_response_local_var->special_offer_type = special_offer_type;
    media_offer_response_local_var->like_count = like_count;
    media_offer_response_local_var->dislike_count = dislike_count;
    media_offer_response_local_var->favorite_count = favorite_count;
    media_offer_response_local_var->note_count = note_count;
    media_offer_response_local_var->billable_entity_id = billable_entity_id;
    media_offer_response_local_var->responsible_account_id = responsible_account_id;
    media_offer_response_local_var->availability_summary = availability_summary;
    media_offer_response_local_var->flag_count = flag_count;
    media_offer_response_local_var->flag_threshold = flag_threshold;
    media_offer_response_local_var->external_id = external_id;
    media_offer_response_local_var->parent_offer = parent_offer;
    media_offer_response_local_var->categories = categories;
    media_offer_response_local_var->filters = filters;

    media_offer_response_local_var->_library_owned = 1;
    return media_offer_response_local_var;
}

__attribute__((deprecated)) media_offer_response_t *media_offer_response_create(
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
    sirqul_iot_platform_media_offer_response_SPECIALOFFERTYPE_e special_offer_type,
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
    base_offer_response_t *parent_offer,
    list_t *categories,
    list_t *filters
    ) {
    return media_offer_response_create_internal (
        title,
        details,
        sub_title,
        activated,
        expiration,
        redeemable_start,
        redeemable_end,
        offer_type,
        offer_visibility,
        favorite,
        deleted,
        full_price,
        discount_price,
        image,
        image1,
        image2,
        image3,
        image4,
        image5,
        images,
        barcode,
        external_url,
        active,
        sub_details,
        external_redeem_options,
        publisher,
        viewed_count,
        clicked_count,
        added_limit,
        added_count,
        used_count,
        removed_count,
        tickets_reward,
        tickets_reward_type,
        special_offer_type,
        like_count,
        dislike_count,
        favorite_count,
        note_count,
        billable_entity_id,
        responsible_account_id,
        availability_summary,
        flag_count,
        flag_threshold,
        external_id,
        parent_offer,
        categories,
        filters
        );
}

void media_offer_response_free(media_offer_response_t *media_offer_response) {
    if(NULL == media_offer_response){
        return ;
    }
    if(media_offer_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "media_offer_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (media_offer_response->title) {
        free(media_offer_response->title);
        media_offer_response->title = NULL;
    }
    if (media_offer_response->details) {
        free(media_offer_response->details);
        media_offer_response->details = NULL;
    }
    if (media_offer_response->sub_title) {
        free(media_offer_response->sub_title);
        media_offer_response->sub_title = NULL;
    }
    if (media_offer_response->offer_type) {
        free(media_offer_response->offer_type);
        media_offer_response->offer_type = NULL;
    }
    if (media_offer_response->offer_visibility) {
        free(media_offer_response->offer_visibility);
        media_offer_response->offer_visibility = NULL;
    }
    if (media_offer_response->image) {
        free(media_offer_response->image);
        media_offer_response->image = NULL;
    }
    if (media_offer_response->image1) {
        free(media_offer_response->image1);
        media_offer_response->image1 = NULL;
    }
    if (media_offer_response->image2) {
        free(media_offer_response->image2);
        media_offer_response->image2 = NULL;
    }
    if (media_offer_response->image3) {
        free(media_offer_response->image3);
        media_offer_response->image3 = NULL;
    }
    if (media_offer_response->image4) {
        free(media_offer_response->image4);
        media_offer_response->image4 = NULL;
    }
    if (media_offer_response->image5) {
        free(media_offer_response->image5);
        media_offer_response->image5 = NULL;
    }
    if (media_offer_response->images) {
        list_ForEach(listEntry, media_offer_response->images) {
            asset_response_free(listEntry->data);
        }
        list_freeList(media_offer_response->images);
        media_offer_response->images = NULL;
    }
    if (media_offer_response->barcode) {
        free(media_offer_response->barcode);
        media_offer_response->barcode = NULL;
    }
    if (media_offer_response->external_url) {
        free(media_offer_response->external_url);
        media_offer_response->external_url = NULL;
    }
    if (media_offer_response->sub_details) {
        free(media_offer_response->sub_details);
        media_offer_response->sub_details = NULL;
    }
    if (media_offer_response->external_redeem_options) {
        free(media_offer_response->external_redeem_options);
        media_offer_response->external_redeem_options = NULL;
    }
    if (media_offer_response->publisher) {
        free(media_offer_response->publisher);
        media_offer_response->publisher = NULL;
    }
    if (media_offer_response->tickets_reward_type) {
        free(media_offer_response->tickets_reward_type);
        media_offer_response->tickets_reward_type = NULL;
    }
    if (media_offer_response->availability_summary) {
        free(media_offer_response->availability_summary);
        media_offer_response->availability_summary = NULL;
    }
    if (media_offer_response->external_id) {
        free(media_offer_response->external_id);
        media_offer_response->external_id = NULL;
    }
    if (media_offer_response->parent_offer) {
        base_offer_response_free(media_offer_response->parent_offer);
        media_offer_response->parent_offer = NULL;
    }
    if (media_offer_response->categories) {
        list_ForEach(listEntry, media_offer_response->categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(media_offer_response->categories);
        media_offer_response->categories = NULL;
    }
    if (media_offer_response->filters) {
        list_ForEach(listEntry, media_offer_response->filters) {
            filter_response_free(listEntry->data);
        }
        list_freeList(media_offer_response->filters);
        media_offer_response->filters = NULL;
    }
    free(media_offer_response);
}

cJSON *media_offer_response_convertToJSON(media_offer_response_t *media_offer_response) {
    cJSON *item = cJSON_CreateObject();

    // media_offer_response->title
    if(media_offer_response->title) {
    if(cJSON_AddStringToObject(item, "title", media_offer_response->title) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->details
    if(media_offer_response->details) {
    if(cJSON_AddStringToObject(item, "details", media_offer_response->details) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->sub_title
    if(media_offer_response->sub_title) {
    if(cJSON_AddStringToObject(item, "subTitle", media_offer_response->sub_title) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->activated
    if(media_offer_response->activated) {
    if(cJSON_AddNumberToObject(item, "activated", media_offer_response->activated) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->expiration
    if(media_offer_response->expiration) {
    if(cJSON_AddNumberToObject(item, "expiration", media_offer_response->expiration) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->redeemable_start
    if(media_offer_response->redeemable_start) {
    if(cJSON_AddNumberToObject(item, "redeemableStart", media_offer_response->redeemable_start) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->redeemable_end
    if(media_offer_response->redeemable_end) {
    if(cJSON_AddNumberToObject(item, "redeemableEnd", media_offer_response->redeemable_end) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->offer_type
    if(media_offer_response->offer_type) {
    if(cJSON_AddStringToObject(item, "offerType", media_offer_response->offer_type) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->offer_visibility
    if(media_offer_response->offer_visibility) {
    if(cJSON_AddStringToObject(item, "offerVisibility", media_offer_response->offer_visibility) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->favorite
    if(media_offer_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", media_offer_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }


    // media_offer_response->deleted
    if(media_offer_response->deleted) {
    if(cJSON_AddNumberToObject(item, "deleted", media_offer_response->deleted) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->full_price
    if(media_offer_response->full_price) {
    if(cJSON_AddNumberToObject(item, "fullPrice", media_offer_response->full_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->discount_price
    if(media_offer_response->discount_price) {
    if(cJSON_AddNumberToObject(item, "discountPrice", media_offer_response->discount_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->image
    if(media_offer_response->image) {
    if(cJSON_AddStringToObject(item, "image", media_offer_response->image) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->image1
    if(media_offer_response->image1) {
    if(cJSON_AddStringToObject(item, "image1", media_offer_response->image1) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->image2
    if(media_offer_response->image2) {
    if(cJSON_AddStringToObject(item, "image2", media_offer_response->image2) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->image3
    if(media_offer_response->image3) {
    if(cJSON_AddStringToObject(item, "image3", media_offer_response->image3) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->image4
    if(media_offer_response->image4) {
    if(cJSON_AddStringToObject(item, "image4", media_offer_response->image4) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->image5
    if(media_offer_response->image5) {
    if(cJSON_AddStringToObject(item, "image5", media_offer_response->image5) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->images
    if(media_offer_response->images) {
    cJSON *images = cJSON_AddArrayToObject(item, "images");
    if(images == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *imagesListEntry;
    if (media_offer_response->images) {
    list_ForEach(imagesListEntry, media_offer_response->images) {
    cJSON *itemLocal = asset_response_convertToJSON(imagesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(images, itemLocal);
    }
    }
    }


    // media_offer_response->barcode
    if(media_offer_response->barcode) {
    if(cJSON_AddStringToObject(item, "barcode", media_offer_response->barcode) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->external_url
    if(media_offer_response->external_url) {
    if(cJSON_AddStringToObject(item, "externalUrl", media_offer_response->external_url) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->active
    if(media_offer_response->active) {
    if(cJSON_AddBoolToObject(item, "active", media_offer_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // media_offer_response->sub_details
    if(media_offer_response->sub_details) {
    if(cJSON_AddStringToObject(item, "subDetails", media_offer_response->sub_details) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->external_redeem_options
    if(media_offer_response->external_redeem_options) {
    if(cJSON_AddStringToObject(item, "externalRedeemOptions", media_offer_response->external_redeem_options) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->publisher
    if(media_offer_response->publisher) {
    if(cJSON_AddStringToObject(item, "publisher", media_offer_response->publisher) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->viewed_count
    if(media_offer_response->viewed_count) {
    if(cJSON_AddNumberToObject(item, "viewedCount", media_offer_response->viewed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->clicked_count
    if(media_offer_response->clicked_count) {
    if(cJSON_AddNumberToObject(item, "clickedCount", media_offer_response->clicked_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->added_limit
    if(media_offer_response->added_limit) {
    if(cJSON_AddNumberToObject(item, "addedLimit", media_offer_response->added_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->added_count
    if(media_offer_response->added_count) {
    if(cJSON_AddNumberToObject(item, "addedCount", media_offer_response->added_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->used_count
    if(media_offer_response->used_count) {
    if(cJSON_AddNumberToObject(item, "usedCount", media_offer_response->used_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->removed_count
    if(media_offer_response->removed_count) {
    if(cJSON_AddNumberToObject(item, "removedCount", media_offer_response->removed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->tickets_reward
    if(media_offer_response->tickets_reward) {
    if(cJSON_AddNumberToObject(item, "ticketsReward", media_offer_response->tickets_reward) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->tickets_reward_type
    if(media_offer_response->tickets_reward_type) {
    if(cJSON_AddStringToObject(item, "ticketsRewardType", media_offer_response->tickets_reward_type) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->special_offer_type
    if(media_offer_response->special_offer_type != sirqul_iot_platform_media_offer_response_SPECIALOFFERTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "specialOfferType", media_offer_response_special_offer_type_ToString(media_offer_response->special_offer_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // media_offer_response->like_count
    if(media_offer_response->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", media_offer_response->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->dislike_count
    if(media_offer_response->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", media_offer_response->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->favorite_count
    if(media_offer_response->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", media_offer_response->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->note_count
    if(media_offer_response->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", media_offer_response->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->billable_entity_id
    if(media_offer_response->billable_entity_id) {
    if(cJSON_AddNumberToObject(item, "billableEntityId", media_offer_response->billable_entity_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->responsible_account_id
    if(media_offer_response->responsible_account_id) {
    if(cJSON_AddNumberToObject(item, "responsibleAccountId", media_offer_response->responsible_account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->availability_summary
    if(media_offer_response->availability_summary) {
    if(cJSON_AddStringToObject(item, "availabilitySummary", media_offer_response->availability_summary) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->flag_count
    if(media_offer_response->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", media_offer_response->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->flag_threshold
    if(media_offer_response->flag_threshold) {
    if(cJSON_AddNumberToObject(item, "flagThreshold", media_offer_response->flag_threshold) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_offer_response->external_id
    if(media_offer_response->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", media_offer_response->external_id) == NULL) {
    goto fail; //String
    }
    }


    // media_offer_response->parent_offer
    if(media_offer_response->parent_offer) {
    cJSON *parent_offer_local_JSON = base_offer_response_convertToJSON(media_offer_response->parent_offer);
    if(parent_offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentOffer", parent_offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // media_offer_response->categories
    if(media_offer_response->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (media_offer_response->categories) {
    list_ForEach(categoriesListEntry, media_offer_response->categories) {
    cJSON *itemLocal = category_response_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // media_offer_response->filters
    if(media_offer_response->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (media_offer_response->filters) {
    list_ForEach(filtersListEntry, media_offer_response->filters) {
    cJSON *itemLocal = filter_response_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

media_offer_response_t *media_offer_response_parseFromJSON(cJSON *media_offer_responseJSON){

    media_offer_response_t *media_offer_response_local_var = NULL;

    // define the local list for media_offer_response->images
    list_t *imagesList = NULL;

    // define the local variable for media_offer_response->parent_offer
    base_offer_response_t *parent_offer_local_nonprim = NULL;

    // define the local list for media_offer_response->categories
    list_t *categoriesList = NULL;

    // define the local list for media_offer_response->filters
    list_t *filtersList = NULL;

    // media_offer_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // media_offer_response->details
    cJSON *details = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "details");
    if (cJSON_IsNull(details)) {
        details = NULL;
    }
    if (details) { 
    if(!cJSON_IsString(details) && !cJSON_IsNull(details))
    {
    goto end; //String
    }
    }

    // media_offer_response->sub_title
    cJSON *sub_title = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "subTitle");
    if (cJSON_IsNull(sub_title)) {
        sub_title = NULL;
    }
    if (sub_title) { 
    if(!cJSON_IsString(sub_title) && !cJSON_IsNull(sub_title))
    {
    goto end; //String
    }
    }

    // media_offer_response->activated
    cJSON *activated = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "activated");
    if (cJSON_IsNull(activated)) {
        activated = NULL;
    }
    if (activated) { 
    if(!cJSON_IsNumber(activated))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->expiration
    cJSON *expiration = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "expiration");
    if (cJSON_IsNull(expiration)) {
        expiration = NULL;
    }
    if (expiration) { 
    if(!cJSON_IsNumber(expiration))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->redeemable_start
    cJSON *redeemable_start = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "redeemableStart");
    if (cJSON_IsNull(redeemable_start)) {
        redeemable_start = NULL;
    }
    if (redeemable_start) { 
    if(!cJSON_IsNumber(redeemable_start))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->redeemable_end
    cJSON *redeemable_end = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "redeemableEnd");
    if (cJSON_IsNull(redeemable_end)) {
        redeemable_end = NULL;
    }
    if (redeemable_end) { 
    if(!cJSON_IsNumber(redeemable_end))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->offer_type
    cJSON *offer_type = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "offerType");
    if (cJSON_IsNull(offer_type)) {
        offer_type = NULL;
    }
    if (offer_type) { 
    if(!cJSON_IsString(offer_type) && !cJSON_IsNull(offer_type))
    {
    goto end; //String
    }
    }

    // media_offer_response->offer_visibility
    cJSON *offer_visibility = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "offerVisibility");
    if (cJSON_IsNull(offer_visibility)) {
        offer_visibility = NULL;
    }
    if (offer_visibility) { 
    if(!cJSON_IsString(offer_visibility) && !cJSON_IsNull(offer_visibility))
    {
    goto end; //String
    }
    }

    // media_offer_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }

    // media_offer_response->deleted
    cJSON *deleted = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "deleted");
    if (cJSON_IsNull(deleted)) {
        deleted = NULL;
    }
    if (deleted) { 
    if(!cJSON_IsNumber(deleted))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->full_price
    cJSON *full_price = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "fullPrice");
    if (cJSON_IsNull(full_price)) {
        full_price = NULL;
    }
    if (full_price) { 
    if(!cJSON_IsNumber(full_price))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->discount_price
    cJSON *discount_price = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "discountPrice");
    if (cJSON_IsNull(discount_price)) {
        discount_price = NULL;
    }
    if (discount_price) { 
    if(!cJSON_IsNumber(discount_price))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    if(!cJSON_IsString(image) && !cJSON_IsNull(image))
    {
    goto end; //String
    }
    }

    // media_offer_response->image1
    cJSON *image1 = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "image1");
    if (cJSON_IsNull(image1)) {
        image1 = NULL;
    }
    if (image1) { 
    if(!cJSON_IsString(image1) && !cJSON_IsNull(image1))
    {
    goto end; //String
    }
    }

    // media_offer_response->image2
    cJSON *image2 = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "image2");
    if (cJSON_IsNull(image2)) {
        image2 = NULL;
    }
    if (image2) { 
    if(!cJSON_IsString(image2) && !cJSON_IsNull(image2))
    {
    goto end; //String
    }
    }

    // media_offer_response->image3
    cJSON *image3 = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "image3");
    if (cJSON_IsNull(image3)) {
        image3 = NULL;
    }
    if (image3) { 
    if(!cJSON_IsString(image3) && !cJSON_IsNull(image3))
    {
    goto end; //String
    }
    }

    // media_offer_response->image4
    cJSON *image4 = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "image4");
    if (cJSON_IsNull(image4)) {
        image4 = NULL;
    }
    if (image4) { 
    if(!cJSON_IsString(image4) && !cJSON_IsNull(image4))
    {
    goto end; //String
    }
    }

    // media_offer_response->image5
    cJSON *image5 = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "image5");
    if (cJSON_IsNull(image5)) {
        image5 = NULL;
    }
    if (image5) { 
    if(!cJSON_IsString(image5) && !cJSON_IsNull(image5))
    {
    goto end; //String
    }
    }

    // media_offer_response->images
    cJSON *images = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "images");
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

    // media_offer_response->barcode
    cJSON *barcode = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "barcode");
    if (cJSON_IsNull(barcode)) {
        barcode = NULL;
    }
    if (barcode) { 
    if(!cJSON_IsString(barcode) && !cJSON_IsNull(barcode))
    {
    goto end; //String
    }
    }

    // media_offer_response->external_url
    cJSON *external_url = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "externalUrl");
    if (cJSON_IsNull(external_url)) {
        external_url = NULL;
    }
    if (external_url) { 
    if(!cJSON_IsString(external_url) && !cJSON_IsNull(external_url))
    {
    goto end; //String
    }
    }

    // media_offer_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // media_offer_response->sub_details
    cJSON *sub_details = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "subDetails");
    if (cJSON_IsNull(sub_details)) {
        sub_details = NULL;
    }
    if (sub_details) { 
    if(!cJSON_IsString(sub_details) && !cJSON_IsNull(sub_details))
    {
    goto end; //String
    }
    }

    // media_offer_response->external_redeem_options
    cJSON *external_redeem_options = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "externalRedeemOptions");
    if (cJSON_IsNull(external_redeem_options)) {
        external_redeem_options = NULL;
    }
    if (external_redeem_options) { 
    if(!cJSON_IsString(external_redeem_options) && !cJSON_IsNull(external_redeem_options))
    {
    goto end; //String
    }
    }

    // media_offer_response->publisher
    cJSON *publisher = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "publisher");
    if (cJSON_IsNull(publisher)) {
        publisher = NULL;
    }
    if (publisher) { 
    if(!cJSON_IsString(publisher) && !cJSON_IsNull(publisher))
    {
    goto end; //String
    }
    }

    // media_offer_response->viewed_count
    cJSON *viewed_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "viewedCount");
    if (cJSON_IsNull(viewed_count)) {
        viewed_count = NULL;
    }
    if (viewed_count) { 
    if(!cJSON_IsNumber(viewed_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->clicked_count
    cJSON *clicked_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "clickedCount");
    if (cJSON_IsNull(clicked_count)) {
        clicked_count = NULL;
    }
    if (clicked_count) { 
    if(!cJSON_IsNumber(clicked_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->added_limit
    cJSON *added_limit = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "addedLimit");
    if (cJSON_IsNull(added_limit)) {
        added_limit = NULL;
    }
    if (added_limit) { 
    if(!cJSON_IsNumber(added_limit))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->added_count
    cJSON *added_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "addedCount");
    if (cJSON_IsNull(added_count)) {
        added_count = NULL;
    }
    if (added_count) { 
    if(!cJSON_IsNumber(added_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->used_count
    cJSON *used_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "usedCount");
    if (cJSON_IsNull(used_count)) {
        used_count = NULL;
    }
    if (used_count) { 
    if(!cJSON_IsNumber(used_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->removed_count
    cJSON *removed_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "removedCount");
    if (cJSON_IsNull(removed_count)) {
        removed_count = NULL;
    }
    if (removed_count) { 
    if(!cJSON_IsNumber(removed_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->tickets_reward
    cJSON *tickets_reward = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "ticketsReward");
    if (cJSON_IsNull(tickets_reward)) {
        tickets_reward = NULL;
    }
    if (tickets_reward) { 
    if(!cJSON_IsNumber(tickets_reward))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->tickets_reward_type
    cJSON *tickets_reward_type = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "ticketsRewardType");
    if (cJSON_IsNull(tickets_reward_type)) {
        tickets_reward_type = NULL;
    }
    if (tickets_reward_type) { 
    if(!cJSON_IsString(tickets_reward_type) && !cJSON_IsNull(tickets_reward_type))
    {
    goto end; //String
    }
    }

    // media_offer_response->special_offer_type
    cJSON *special_offer_type = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "specialOfferType");
    if (cJSON_IsNull(special_offer_type)) {
        special_offer_type = NULL;
    }
    sirqul_iot_platform_media_offer_response_SPECIALOFFERTYPE_e special_offer_typeVariable;
    if (special_offer_type) { 
    if(!cJSON_IsString(special_offer_type))
    {
    goto end; //Enum
    }
    special_offer_typeVariable = media_offer_response_special_offer_type_FromString(special_offer_type->valuestring);
    }

    // media_offer_response->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->billable_entity_id
    cJSON *billable_entity_id = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "billableEntityId");
    if (cJSON_IsNull(billable_entity_id)) {
        billable_entity_id = NULL;
    }
    if (billable_entity_id) { 
    if(!cJSON_IsNumber(billable_entity_id))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->responsible_account_id
    cJSON *responsible_account_id = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "responsibleAccountId");
    if (cJSON_IsNull(responsible_account_id)) {
        responsible_account_id = NULL;
    }
    if (responsible_account_id) { 
    if(!cJSON_IsNumber(responsible_account_id))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->availability_summary
    cJSON *availability_summary = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "availabilitySummary");
    if (cJSON_IsNull(availability_summary)) {
        availability_summary = NULL;
    }
    if (availability_summary) { 
    if(!cJSON_IsString(availability_summary) && !cJSON_IsNull(availability_summary))
    {
    goto end; //String
    }
    }

    // media_offer_response->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->flag_threshold
    cJSON *flag_threshold = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "flagThreshold");
    if (cJSON_IsNull(flag_threshold)) {
        flag_threshold = NULL;
    }
    if (flag_threshold) { 
    if(!cJSON_IsNumber(flag_threshold))
    {
    goto end; //Numeric
    }
    }

    // media_offer_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // media_offer_response->parent_offer
    cJSON *parent_offer = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "parentOffer");
    if (cJSON_IsNull(parent_offer)) {
        parent_offer = NULL;
    }
    if (parent_offer) { 
    parent_offer_local_nonprim = base_offer_response_parseFromJSON(parent_offer); //nonprimitive
    }

    // media_offer_response->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "categories");
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

    // media_offer_response->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(media_offer_responseJSON, "filters");
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


    media_offer_response_local_var = media_offer_response_create_internal (
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        details && !cJSON_IsNull(details) ? strdup(details->valuestring) : NULL,
        sub_title && !cJSON_IsNull(sub_title) ? strdup(sub_title->valuestring) : NULL,
        activated ? activated->valuedouble : 0,
        expiration ? expiration->valuedouble : 0,
        redeemable_start ? redeemable_start->valuedouble : 0,
        redeemable_end ? redeemable_end->valuedouble : 0,
        offer_type && !cJSON_IsNull(offer_type) ? strdup(offer_type->valuestring) : NULL,
        offer_visibility && !cJSON_IsNull(offer_visibility) ? strdup(offer_visibility->valuestring) : NULL,
        favorite ? favorite->valueint : 0,
        deleted ? deleted->valuedouble : 0,
        full_price ? full_price->valuedouble : 0,
        discount_price ? discount_price->valuedouble : 0,
        image && !cJSON_IsNull(image) ? strdup(image->valuestring) : NULL,
        image1 && !cJSON_IsNull(image1) ? strdup(image1->valuestring) : NULL,
        image2 && !cJSON_IsNull(image2) ? strdup(image2->valuestring) : NULL,
        image3 && !cJSON_IsNull(image3) ? strdup(image3->valuestring) : NULL,
        image4 && !cJSON_IsNull(image4) ? strdup(image4->valuestring) : NULL,
        image5 && !cJSON_IsNull(image5) ? strdup(image5->valuestring) : NULL,
        images ? imagesList : NULL,
        barcode && !cJSON_IsNull(barcode) ? strdup(barcode->valuestring) : NULL,
        external_url && !cJSON_IsNull(external_url) ? strdup(external_url->valuestring) : NULL,
        active ? active->valueint : 0,
        sub_details && !cJSON_IsNull(sub_details) ? strdup(sub_details->valuestring) : NULL,
        external_redeem_options && !cJSON_IsNull(external_redeem_options) ? strdup(external_redeem_options->valuestring) : NULL,
        publisher && !cJSON_IsNull(publisher) ? strdup(publisher->valuestring) : NULL,
        viewed_count ? viewed_count->valuedouble : 0,
        clicked_count ? clicked_count->valuedouble : 0,
        added_limit ? added_limit->valuedouble : 0,
        added_count ? added_count->valuedouble : 0,
        used_count ? used_count->valuedouble : 0,
        removed_count ? removed_count->valuedouble : 0,
        tickets_reward ? tickets_reward->valuedouble : 0,
        tickets_reward_type && !cJSON_IsNull(tickets_reward_type) ? strdup(tickets_reward_type->valuestring) : NULL,
        special_offer_type ? special_offer_typeVariable : sirqul_iot_platform_media_offer_response_SPECIALOFFERTYPE_NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        favorite_count ? favorite_count->valuedouble : 0,
        note_count ? note_count->valuedouble : 0,
        billable_entity_id ? billable_entity_id->valuedouble : 0,
        responsible_account_id ? responsible_account_id->valuedouble : 0,
        availability_summary && !cJSON_IsNull(availability_summary) ? strdup(availability_summary->valuestring) : NULL,
        flag_count ? flag_count->valuedouble : 0,
        flag_threshold ? flag_threshold->valuedouble : 0,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        parent_offer ? parent_offer_local_nonprim : NULL,
        categories ? categoriesList : NULL,
        filters ? filtersList : NULL
        );

    return media_offer_response_local_var;
end:
    if (imagesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, imagesList) {
            asset_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(imagesList);
        imagesList = NULL;
    }
    if (parent_offer_local_nonprim) {
        base_offer_response_free(parent_offer_local_nonprim);
        parent_offer_local_nonprim = NULL;
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
    return NULL;

}
