#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "offer.h"


char* offer_type_ToString(sirqul_iot_platform_offer_TYPE_e type) {
    char* typeArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return typeArray[type];
}

sirqul_iot_platform_offer_TYPE_e offer_type_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* offer_special_offer_type_ToString(sirqul_iot_platform_offer_SPECIALOFFERTYPE_e special_offer_type) {
    char* special_offer_typeArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return special_offer_typeArray[special_offer_type];
}

sirqul_iot_platform_offer_SPECIALOFFERTYPE_e offer_special_offer_type_FromString(char* special_offer_type){
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
char* offer_bar_code_type_ToString(sirqul_iot_platform_offer_BARCODETYPE_e bar_code_type) {
    char* bar_code_typeArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    return bar_code_typeArray[bar_code_type];
}

sirqul_iot_platform_offer_BARCODETYPE_e offer_bar_code_type_FromString(char* bar_code_type){
    int stringToReturn = 0;
    char *bar_code_typeArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    size_t sizeofArray = sizeof(bar_code_typeArray) / sizeof(bar_code_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(bar_code_type, bar_code_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* offer_offer_visibility_ToString(sirqul_iot_platform_offer_OFFERVISIBILITY_e offer_visibility) {
    char* offer_visibilityArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return offer_visibilityArray[offer_visibility];
}

sirqul_iot_platform_offer_OFFERVISIBILITY_e offer_offer_visibility_FromString(char* offer_visibility){
    int stringToReturn = 0;
    char *offer_visibilityArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    size_t sizeofArray = sizeof(offer_visibilityArray) / sizeof(offer_visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(offer_visibility, offer_visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* offer_offer_processor_id_ToString(sirqul_iot_platform_offer_OFFERPROCESSORID_e offer_processor_id) {
    char* offer_processor_idArray[] =  { "NULL", "SQOOT", "YIPIT", "API", "CSV" };
    return offer_processor_idArray[offer_processor_id];
}

sirqul_iot_platform_offer_OFFERPROCESSORID_e offer_offer_processor_id_FromString(char* offer_processor_id){
    int stringToReturn = 0;
    char *offer_processor_idArray[] =  { "NULL", "SQOOT", "YIPIT", "API", "CSV" };
    size_t sizeofArray = sizeof(offer_processor_idArray) / sizeof(offer_processor_idArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(offer_processor_id, offer_processor_idArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static offer_t *offer_create_internal(
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
    ) {
    offer_t *offer_local_var = malloc(sizeof(offer_t));
    if (!offer_local_var) {
        return NULL;
    }
    offer_local_var->id = id;
    offer_local_var->active = active;
    offer_local_var->valid = valid;
    offer_local_var->test_field = test_field;
    offer_local_var->billable_entity = billable_entity;
    offer_local_var->offer_locations = offer_locations;
    offer_local_var->missions = missions;
    offer_local_var->activated = activated;
    offer_local_var->expires = expires;
    offer_local_var->redeemable_start = redeemable_start;
    offer_local_var->redeemable_end = redeemable_end;
    offer_local_var->title = title;
    offer_local_var->sub_title = sub_title;
    offer_local_var->type = type;
    offer_local_var->special_offer_type = special_offer_type;
    offer_local_var->details = details;
    offer_local_var->sub_details = sub_details;
    offer_local_var->fine_print = fine_print;
    offer_local_var->get_there_now_notification = get_there_now_notification;
    offer_local_var->max_prints = max_prints;
    offer_local_var->view_limit = view_limit;
    offer_local_var->featured = featured;
    offer_local_var->replaced = replaced;
    offer_local_var->show_remaining = show_remaining;
    offer_local_var->show_redeemed = show_redeemed;
    offer_local_var->parent_offer = parent_offer;
    offer_local_var->artwork = artwork;
    offer_local_var->offer_image1 = offer_image1;
    offer_local_var->offer_image2 = offer_image2;
    offer_local_var->offer_image3 = offer_image3;
    offer_local_var->offer_image4 = offer_image4;
    offer_local_var->offer_image5 = offer_image5;
    offer_local_var->bar_code = bar_code;
    offer_local_var->bar_code_type = bar_code_type;
    offer_local_var->bar_code_entry = bar_code_entry;
    offer_local_var->categories = categories;
    offer_local_var->filters = filters;
    offer_local_var->ticket_type = ticket_type;
    offer_local_var->allocate_tickets = allocate_tickets;
    offer_local_var->ticket_price_type = ticket_price_type;
    offer_local_var->ticket_price = ticket_price;
    offer_local_var->full_price = full_price;
    offer_local_var->discount_price = discount_price;
    offer_local_var->available_limit = available_limit;
    offer_local_var->available_limit_per_user = available_limit_per_user;
    offer_local_var->added_limit = added_limit;
    offer_local_var->used_count = used_count;
    offer_local_var->added_count = added_count;
    offer_local_var->removed_count = removed_count;
    offer_local_var->viewed_count = viewed_count;
    offer_local_var->clicked_count = clicked_count;
    offer_local_var->offer_visibility = offer_visibility;
    offer_local_var->offer_processor_id = offer_processor_id;
    offer_local_var->external_id = external_id;
    offer_local_var->external_url = external_url;
    offer_local_var->external_untracked_url = external_untracked_url;
    offer_local_var->sqoot_id = sqoot_id;
    offer_local_var->sqoot_url = sqoot_url;
    offer_local_var->sqoot_category_slug = sqoot_category_slug;
    offer_local_var->sqoot_category_name = sqoot_category_name;
    offer_local_var->yipit_id = yipit_id;
    offer_local_var->redeem_auth_options = redeem_auth_options;
    offer_local_var->publisher = publisher;
    offer_local_var->product = product;
    offer_local_var->media = media;
    offer_local_var->event = event;
    offer_local_var->device = device;
    offer_local_var->notes = notes;
    offer_local_var->note_count = note_count;
    offer_local_var->favorite_count = favorite_count;
    offer_local_var->has_ratings = has_ratings;
    offer_local_var->likes = likes;
    offer_local_var->like_count = like_count;
    offer_local_var->dislike_count = dislike_count;
    offer_local_var->availability_summary = availability_summary;
    offer_local_var->flags = flags;
    offer_local_var->flag_count = flag_count;
    offer_local_var->flag_threshold = flag_threshold;
    offer_local_var->savings = savings;
    offer_local_var->click_stream = click_stream;
    offer_local_var->ticket_count = ticket_count;
    offer_local_var->display = display;
    offer_local_var->app_key = app_key;
    offer_local_var->category_tree = category_tree;
    offer_local_var->filter_tree = filter_tree;
    offer_local_var->indexable = indexable;
    offer_local_var->billable_id = billable_id;
    offer_local_var->sub_type = sub_type;
    offer_local_var->content_name = content_name;
    offer_local_var->default_threshold = default_threshold;
    offer_local_var->content_asset = content_asset;
    offer_local_var->owner = owner;
    offer_local_var->secondary_type = secondary_type;
    offer_local_var->discount_percentage = discount_percentage;

    offer_local_var->_library_owned = 1;
    return offer_local_var;
}

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
    ) {
    return offer_create_internal (
        id,
        active,
        valid,
        test_field,
        billable_entity,
        offer_locations,
        missions,
        activated,
        expires,
        redeemable_start,
        redeemable_end,
        title,
        sub_title,
        type,
        special_offer_type,
        details,
        sub_details,
        fine_print,
        get_there_now_notification,
        max_prints,
        view_limit,
        featured,
        replaced,
        show_remaining,
        show_redeemed,
        parent_offer,
        artwork,
        offer_image1,
        offer_image2,
        offer_image3,
        offer_image4,
        offer_image5,
        bar_code,
        bar_code_type,
        bar_code_entry,
        categories,
        filters,
        ticket_type,
        allocate_tickets,
        ticket_price_type,
        ticket_price,
        full_price,
        discount_price,
        available_limit,
        available_limit_per_user,
        added_limit,
        used_count,
        added_count,
        removed_count,
        viewed_count,
        clicked_count,
        offer_visibility,
        offer_processor_id,
        external_id,
        external_url,
        external_untracked_url,
        sqoot_id,
        sqoot_url,
        sqoot_category_slug,
        sqoot_category_name,
        yipit_id,
        redeem_auth_options,
        publisher,
        product,
        media,
        event,
        device,
        notes,
        note_count,
        favorite_count,
        has_ratings,
        likes,
        like_count,
        dislike_count,
        availability_summary,
        flags,
        flag_count,
        flag_threshold,
        savings,
        click_stream,
        ticket_count,
        display,
        app_key,
        category_tree,
        filter_tree,
        indexable,
        billable_id,
        sub_type,
        content_name,
        default_threshold,
        content_asset,
        owner,
        secondary_type,
        discount_percentage
        );
}

void offer_free(offer_t *offer) {
    if(NULL == offer){
        return ;
    }
    if(offer->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "offer_free");
        return ;
    }
    listEntry_t *listEntry;
    if (offer->test_field) {
        free(offer->test_field);
        offer->test_field = NULL;
    }
    if (offer->billable_entity) {
        billable_entity_free(offer->billable_entity);
        offer->billable_entity = NULL;
    }
    if (offer->offer_locations) {
        list_ForEach(listEntry, offer->offer_locations) {
            offer_location_free(listEntry->data);
        }
        list_freeList(offer->offer_locations);
        offer->offer_locations = NULL;
    }
    if (offer->missions) {
        list_ForEach(listEntry, offer->missions) {
            mission_free(listEntry->data);
        }
        list_freeList(offer->missions);
        offer->missions = NULL;
    }
    if (offer->activated) {
        free(offer->activated);
        offer->activated = NULL;
    }
    if (offer->expires) {
        free(offer->expires);
        offer->expires = NULL;
    }
    if (offer->redeemable_start) {
        free(offer->redeemable_start);
        offer->redeemable_start = NULL;
    }
    if (offer->redeemable_end) {
        free(offer->redeemable_end);
        offer->redeemable_end = NULL;
    }
    if (offer->title) {
        free(offer->title);
        offer->title = NULL;
    }
    if (offer->sub_title) {
        free(offer->sub_title);
        offer->sub_title = NULL;
    }
    if (offer->details) {
        free(offer->details);
        offer->details = NULL;
    }
    if (offer->sub_details) {
        free(offer->sub_details);
        offer->sub_details = NULL;
    }
    if (offer->fine_print) {
        free(offer->fine_print);
        offer->fine_print = NULL;
    }
    if (offer->get_there_now_notification) {
        free(offer->get_there_now_notification);
        offer->get_there_now_notification = NULL;
    }
    if (offer->parent_offer) {
        offer_free(offer->parent_offer);
        offer->parent_offer = NULL;
    }
    if (offer->artwork) {
        asset_free(offer->artwork);
        offer->artwork = NULL;
    }
    if (offer->offer_image1) {
        asset_free(offer->offer_image1);
        offer->offer_image1 = NULL;
    }
    if (offer->offer_image2) {
        asset_free(offer->offer_image2);
        offer->offer_image2 = NULL;
    }
    if (offer->offer_image3) {
        asset_free(offer->offer_image3);
        offer->offer_image3 = NULL;
    }
    if (offer->offer_image4) {
        asset_free(offer->offer_image4);
        offer->offer_image4 = NULL;
    }
    if (offer->offer_image5) {
        asset_free(offer->offer_image5);
        offer->offer_image5 = NULL;
    }
    if (offer->bar_code) {
        asset_free(offer->bar_code);
        offer->bar_code = NULL;
    }
    if (offer->bar_code_entry) {
        free(offer->bar_code_entry);
        offer->bar_code_entry = NULL;
    }
    if (offer->categories) {
        list_ForEach(listEntry, offer->categories) {
            category_free(listEntry->data);
        }
        list_freeList(offer->categories);
        offer->categories = NULL;
    }
    if (offer->filters) {
        list_ForEach(listEntry, offer->filters) {
            filter_free(listEntry->data);
        }
        list_freeList(offer->filters);
        offer->filters = NULL;
    }
    if (offer->ticket_type) {
        free(offer->ticket_type);
        offer->ticket_type = NULL;
    }
    if (offer->ticket_price_type) {
        free(offer->ticket_price_type);
        offer->ticket_price_type = NULL;
    }
    if (offer->external_id) {
        free(offer->external_id);
        offer->external_id = NULL;
    }
    if (offer->external_url) {
        free(offer->external_url);
        offer->external_url = NULL;
    }
    if (offer->external_untracked_url) {
        free(offer->external_untracked_url);
        offer->external_untracked_url = NULL;
    }
    if (offer->sqoot_url) {
        free(offer->sqoot_url);
        offer->sqoot_url = NULL;
    }
    if (offer->sqoot_category_slug) {
        free(offer->sqoot_category_slug);
        offer->sqoot_category_slug = NULL;
    }
    if (offer->sqoot_category_name) {
        free(offer->sqoot_category_name);
        offer->sqoot_category_name = NULL;
    }
    if (offer->redeem_auth_options) {
        free(offer->redeem_auth_options);
        offer->redeem_auth_options = NULL;
    }
    if (offer->publisher) {
        free(offer->publisher);
        offer->publisher = NULL;
    }
    if (offer->product) {
        product_free(offer->product);
        offer->product = NULL;
    }
    if (offer->media) {
        media_free(offer->media);
        offer->media = NULL;
    }
    if (offer->event) {
        event_free(offer->event);
        offer->event = NULL;
    }
    if (offer->device) {
        device_free(offer->device);
        offer->device = NULL;
    }
    if (offer->notes) {
        list_ForEach(listEntry, offer->notes) {
            note_free(listEntry->data);
        }
        list_freeList(offer->notes);
        offer->notes = NULL;
    }
    if (offer->likes) {
        list_ForEach(listEntry, offer->likes) {
            yay_or_nay_free(listEntry->data);
        }
        list_freeList(offer->likes);
        offer->likes = NULL;
    }
    if (offer->availability_summary) {
        free(offer->availability_summary);
        offer->availability_summary = NULL;
    }
    if (offer->flags) {
        list_ForEach(listEntry, offer->flags) {
            flag_free(listEntry->data);
        }
        list_freeList(offer->flags);
        offer->flags = NULL;
    }
    if (offer->flag_threshold) {
        flag_threshold_free(offer->flag_threshold);
        offer->flag_threshold = NULL;
    }
    if (offer->display) {
        free(offer->display);
        offer->display = NULL;
    }
    if (offer->app_key) {
        free(offer->app_key);
        offer->app_key = NULL;
    }
    if (offer->category_tree) {
        free(offer->category_tree);
        offer->category_tree = NULL;
    }
    if (offer->filter_tree) {
        free(offer->filter_tree);
        offer->filter_tree = NULL;
    }
    if (offer->sub_type) {
        free(offer->sub_type);
        offer->sub_type = NULL;
    }
    if (offer->content_name) {
        free(offer->content_name);
        offer->content_name = NULL;
    }
    if (offer->content_asset) {
        asset_free(offer->content_asset);
        offer->content_asset = NULL;
    }
    if (offer->owner) {
        account_free(offer->owner);
        offer->owner = NULL;
    }
    if (offer->secondary_type) {
        free(offer->secondary_type);
        offer->secondary_type = NULL;
    }
    free(offer);
}

cJSON *offer_convertToJSON(offer_t *offer) {
    cJSON *item = cJSON_CreateObject();

    // offer->id
    if(offer->id) {
    if(cJSON_AddNumberToObject(item, "id", offer->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->active
    if(offer->active) {
    if(cJSON_AddBoolToObject(item, "active", offer->active) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->valid
    if(offer->valid) {
    if(cJSON_AddBoolToObject(item, "valid", offer->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->test_field
    if(offer->test_field) {
    if(cJSON_AddStringToObject(item, "testField", offer->test_field) == NULL) {
    goto fail; //String
    }
    }


    // offer->billable_entity
    if(offer->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_convertToJSON(offer->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->offer_locations
    if(offer->offer_locations) {
    cJSON *offer_locations = cJSON_AddArrayToObject(item, "offerLocations");
    if(offer_locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *offer_locationsListEntry;
    if (offer->offer_locations) {
    list_ForEach(offer_locationsListEntry, offer->offer_locations) {
    cJSON *itemLocal = offer_location_convertToJSON(offer_locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(offer_locations, itemLocal);
    }
    }
    }


    // offer->missions
    if(offer->missions) {
    cJSON *missions = cJSON_AddArrayToObject(item, "missions");
    if(missions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *missionsListEntry;
    if (offer->missions) {
    list_ForEach(missionsListEntry, offer->missions) {
    cJSON *itemLocal = mission_convertToJSON(missionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(missions, itemLocal);
    }
    }
    }


    // offer->activated
    if(offer->activated) {
    if(cJSON_AddStringToObject(item, "activated", offer->activated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // offer->expires
    if(offer->expires) {
    if(cJSON_AddStringToObject(item, "expires", offer->expires) == NULL) {
    goto fail; //Date-Time
    }
    }


    // offer->redeemable_start
    if(offer->redeemable_start) {
    if(cJSON_AddStringToObject(item, "redeemableStart", offer->redeemable_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // offer->redeemable_end
    if(offer->redeemable_end) {
    if(cJSON_AddStringToObject(item, "redeemableEnd", offer->redeemable_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // offer->title
    if(offer->title) {
    if(cJSON_AddStringToObject(item, "title", offer->title) == NULL) {
    goto fail; //String
    }
    }


    // offer->sub_title
    if(offer->sub_title) {
    if(cJSON_AddStringToObject(item, "subTitle", offer->sub_title) == NULL) {
    goto fail; //String
    }
    }


    // offer->type
    if(offer->type != sirqul_iot_platform_offer_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", offer_type_ToString(offer->type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // offer->special_offer_type
    if(offer->special_offer_type != sirqul_iot_platform_offer_SPECIALOFFERTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "specialOfferType", offer_special_offer_type_ToString(offer->special_offer_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // offer->details
    if(offer->details) {
    if(cJSON_AddStringToObject(item, "details", offer->details) == NULL) {
    goto fail; //String
    }
    }


    // offer->sub_details
    if(offer->sub_details) {
    if(cJSON_AddStringToObject(item, "subDetails", offer->sub_details) == NULL) {
    goto fail; //String
    }
    }


    // offer->fine_print
    if(offer->fine_print) {
    if(cJSON_AddStringToObject(item, "finePrint", offer->fine_print) == NULL) {
    goto fail; //String
    }
    }


    // offer->get_there_now_notification
    if(offer->get_there_now_notification) {
    if(cJSON_AddStringToObject(item, "getThereNowNotification", offer->get_there_now_notification) == NULL) {
    goto fail; //String
    }
    }


    // offer->max_prints
    if(offer->max_prints) {
    if(cJSON_AddNumberToObject(item, "maxPrints", offer->max_prints) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->view_limit
    if(offer->view_limit) {
    if(cJSON_AddNumberToObject(item, "viewLimit", offer->view_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->featured
    if(offer->featured) {
    if(cJSON_AddBoolToObject(item, "featured", offer->featured) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->replaced
    if(offer->replaced) {
    if(cJSON_AddBoolToObject(item, "replaced", offer->replaced) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->show_remaining
    if(offer->show_remaining) {
    if(cJSON_AddBoolToObject(item, "showRemaining", offer->show_remaining) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->show_redeemed
    if(offer->show_redeemed) {
    if(cJSON_AddBoolToObject(item, "showRedeemed", offer->show_redeemed) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->parent_offer
    if(offer->parent_offer) {
    cJSON *parent_offer_local_JSON = offer_convertToJSON(offer->parent_offer);
    if(parent_offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentOffer", parent_offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->artwork
    if(offer->artwork) {
    cJSON *artwork_local_JSON = asset_convertToJSON(offer->artwork);
    if(artwork_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "artwork", artwork_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->offer_image1
    if(offer->offer_image1) {
    cJSON *offer_image1_local_JSON = asset_convertToJSON(offer->offer_image1);
    if(offer_image1_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offerImage1", offer_image1_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->offer_image2
    if(offer->offer_image2) {
    cJSON *offer_image2_local_JSON = asset_convertToJSON(offer->offer_image2);
    if(offer_image2_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offerImage2", offer_image2_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->offer_image3
    if(offer->offer_image3) {
    cJSON *offer_image3_local_JSON = asset_convertToJSON(offer->offer_image3);
    if(offer_image3_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offerImage3", offer_image3_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->offer_image4
    if(offer->offer_image4) {
    cJSON *offer_image4_local_JSON = asset_convertToJSON(offer->offer_image4);
    if(offer_image4_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offerImage4", offer_image4_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->offer_image5
    if(offer->offer_image5) {
    cJSON *offer_image5_local_JSON = asset_convertToJSON(offer->offer_image5);
    if(offer_image5_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offerImage5", offer_image5_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->bar_code
    if(offer->bar_code) {
    cJSON *bar_code_local_JSON = asset_convertToJSON(offer->bar_code);
    if(bar_code_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "barCode", bar_code_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->bar_code_type
    if(offer->bar_code_type != sirqul_iot_platform_offer_BARCODETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "barCodeType", offer_bar_code_type_ToString(offer->bar_code_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // offer->bar_code_entry
    if(offer->bar_code_entry) {
    if(cJSON_AddStringToObject(item, "barCodeEntry", offer->bar_code_entry) == NULL) {
    goto fail; //String
    }
    }


    // offer->categories
    if(offer->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (offer->categories) {
    list_ForEach(categoriesListEntry, offer->categories) {
    cJSON *itemLocal = category_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // offer->filters
    if(offer->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (offer->filters) {
    list_ForEach(filtersListEntry, offer->filters) {
    cJSON *itemLocal = filter_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }


    // offer->ticket_type
    if(offer->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", offer->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // offer->allocate_tickets
    if(offer->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", offer->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->ticket_price_type
    if(offer->ticket_price_type) {
    if(cJSON_AddStringToObject(item, "ticketPriceType", offer->ticket_price_type) == NULL) {
    goto fail; //String
    }
    }


    // offer->ticket_price
    if(offer->ticket_price) {
    if(cJSON_AddNumberToObject(item, "ticketPrice", offer->ticket_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->full_price
    if(offer->full_price) {
    if(cJSON_AddNumberToObject(item, "fullPrice", offer->full_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->discount_price
    if(offer->discount_price) {
    if(cJSON_AddNumberToObject(item, "discountPrice", offer->discount_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->available_limit
    if(offer->available_limit) {
    if(cJSON_AddNumberToObject(item, "availableLimit", offer->available_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->available_limit_per_user
    if(offer->available_limit_per_user) {
    if(cJSON_AddNumberToObject(item, "availableLimitPerUser", offer->available_limit_per_user) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->added_limit
    if(offer->added_limit) {
    if(cJSON_AddNumberToObject(item, "addedLimit", offer->added_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->used_count
    if(offer->used_count) {
    if(cJSON_AddNumberToObject(item, "usedCount", offer->used_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->added_count
    if(offer->added_count) {
    if(cJSON_AddNumberToObject(item, "addedCount", offer->added_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->removed_count
    if(offer->removed_count) {
    if(cJSON_AddNumberToObject(item, "removedCount", offer->removed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->viewed_count
    if(offer->viewed_count) {
    if(cJSON_AddNumberToObject(item, "viewedCount", offer->viewed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->clicked_count
    if(offer->clicked_count) {
    if(cJSON_AddNumberToObject(item, "clickedCount", offer->clicked_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->offer_visibility
    if(offer->offer_visibility != sirqul_iot_platform_offer_OFFERVISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "offerVisibility", offer_offer_visibility_ToString(offer->offer_visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // offer->offer_processor_id
    if(offer->offer_processor_id != sirqul_iot_platform_offer_OFFERPROCESSORID_NULL) {
    if(cJSON_AddStringToObject(item, "offerProcessorId", offer_offer_processor_id_ToString(offer->offer_processor_id)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // offer->external_id
    if(offer->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", offer->external_id) == NULL) {
    goto fail; //String
    }
    }


    // offer->external_url
    if(offer->external_url) {
    if(cJSON_AddStringToObject(item, "externalUrl", offer->external_url) == NULL) {
    goto fail; //String
    }
    }


    // offer->external_untracked_url
    if(offer->external_untracked_url) {
    if(cJSON_AddStringToObject(item, "externalUntrackedUrl", offer->external_untracked_url) == NULL) {
    goto fail; //String
    }
    }


    // offer->sqoot_id
    if(offer->sqoot_id) {
    if(cJSON_AddNumberToObject(item, "sqootId", offer->sqoot_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->sqoot_url
    if(offer->sqoot_url) {
    if(cJSON_AddStringToObject(item, "sqootUrl", offer->sqoot_url) == NULL) {
    goto fail; //String
    }
    }


    // offer->sqoot_category_slug
    if(offer->sqoot_category_slug) {
    if(cJSON_AddStringToObject(item, "sqootCategorySlug", offer->sqoot_category_slug) == NULL) {
    goto fail; //String
    }
    }


    // offer->sqoot_category_name
    if(offer->sqoot_category_name) {
    if(cJSON_AddStringToObject(item, "sqootCategoryName", offer->sqoot_category_name) == NULL) {
    goto fail; //String
    }
    }


    // offer->yipit_id
    if(offer->yipit_id) {
    if(cJSON_AddNumberToObject(item, "yipitId", offer->yipit_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->redeem_auth_options
    if(offer->redeem_auth_options) {
    if(cJSON_AddStringToObject(item, "redeemAuthOptions", offer->redeem_auth_options) == NULL) {
    goto fail; //String
    }
    }


    // offer->publisher
    if(offer->publisher) {
    if(cJSON_AddStringToObject(item, "publisher", offer->publisher) == NULL) {
    goto fail; //String
    }
    }


    // offer->product
    if(offer->product) {
    cJSON *product_local_JSON = product_convertToJSON(offer->product);
    if(product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "product", product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->media
    if(offer->media) {
    cJSON *media_local_JSON = media_convertToJSON(offer->media);
    if(media_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "media", media_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->event
    if(offer->event) {
    cJSON *event_local_JSON = event_convertToJSON(offer->event);
    if(event_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "event", event_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->device
    if(offer->device) {
    cJSON *device_local_JSON = device_convertToJSON(offer->device);
    if(device_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "device", device_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->notes
    if(offer->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (offer->notes) {
    list_ForEach(notesListEntry, offer->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // offer->note_count
    if(offer->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", offer->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->favorite_count
    if(offer->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", offer->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->has_ratings
    if(offer->has_ratings) {
    if(cJSON_AddBoolToObject(item, "hasRatings", offer->has_ratings) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->likes
    if(offer->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (offer->likes) {
    list_ForEach(likesListEntry, offer->likes) {
    cJSON *itemLocal = yay_or_nay_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // offer->like_count
    if(offer->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", offer->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->dislike_count
    if(offer->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", offer->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->availability_summary
    if(offer->availability_summary) {
    if(cJSON_AddStringToObject(item, "availabilitySummary", offer->availability_summary) == NULL) {
    goto fail; //String
    }
    }


    // offer->flags
    if(offer->flags) {
    cJSON *flags = cJSON_AddArrayToObject(item, "flags");
    if(flags == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *flagsListEntry;
    if (offer->flags) {
    list_ForEach(flagsListEntry, offer->flags) {
    cJSON *itemLocal = flag_convertToJSON(flagsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(flags, itemLocal);
    }
    }
    }


    // offer->flag_count
    if(offer->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", offer->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->flag_threshold
    if(offer->flag_threshold) {
    cJSON *flag_threshold_local_JSON = flag_threshold_convertToJSON(offer->flag_threshold);
    if(flag_threshold_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "flagThreshold", flag_threshold_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->savings
    if(offer->savings) {
    if(cJSON_AddNumberToObject(item, "savings", offer->savings) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->click_stream
    if(offer->click_stream) {
    if(cJSON_AddNumberToObject(item, "clickStream", offer->click_stream) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->ticket_count
    if(offer->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", offer->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->display
    if(offer->display) {
    if(cJSON_AddStringToObject(item, "display", offer->display) == NULL) {
    goto fail; //String
    }
    }


    // offer->app_key
    if(offer->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", offer->app_key) == NULL) {
    goto fail; //String
    }
    }


    // offer->category_tree
    if(offer->category_tree) {
    if(cJSON_AddStringToObject(item, "categoryTree", offer->category_tree) == NULL) {
    goto fail; //String
    }
    }


    // offer->filter_tree
    if(offer->filter_tree) {
    if(cJSON_AddStringToObject(item, "filterTree", offer->filter_tree) == NULL) {
    goto fail; //String
    }
    }


    // offer->indexable
    if(offer->indexable) {
    if(cJSON_AddBoolToObject(item, "indexable", offer->indexable) == NULL) {
    goto fail; //Bool
    }
    }


    // offer->billable_id
    if(offer->billable_id) {
    if(cJSON_AddNumberToObject(item, "billableId", offer->billable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->sub_type
    if(offer->sub_type) {
    if(cJSON_AddStringToObject(item, "subType", offer->sub_type) == NULL) {
    goto fail; //String
    }
    }


    // offer->content_name
    if(offer->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", offer->content_name) == NULL) {
    goto fail; //String
    }
    }


    // offer->default_threshold
    if(offer->default_threshold) {
    if(cJSON_AddNumberToObject(item, "defaultThreshold", offer->default_threshold) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer->content_asset
    if(offer->content_asset) {
    cJSON *content_asset_local_JSON = asset_convertToJSON(offer->content_asset);
    if(content_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contentAsset", content_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->owner
    if(offer->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(offer->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer->secondary_type
    if(offer->secondary_type) {
    if(cJSON_AddStringToObject(item, "secondaryType", offer->secondary_type) == NULL) {
    goto fail; //String
    }
    }


    // offer->discount_percentage
    if(offer->discount_percentage) {
    if(cJSON_AddNumberToObject(item, "discountPercentage", offer->discount_percentage) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

offer_t *offer_parseFromJSON(cJSON *offerJSON){

    offer_t *offer_local_var = NULL;

    // define the local variable for offer->billable_entity
    billable_entity_t *billable_entity_local_nonprim = NULL;

    // define the local list for offer->offer_locations
    list_t *offer_locationsList = NULL;

    // define the local list for offer->missions
    list_t *missionsList = NULL;

    // define the local variable for offer->parent_offer
    offer_t *parent_offer_local_nonprim = NULL;

    // define the local variable for offer->artwork
    asset_t *artwork_local_nonprim = NULL;

    // define the local variable for offer->offer_image1
    asset_t *offer_image1_local_nonprim = NULL;

    // define the local variable for offer->offer_image2
    asset_t *offer_image2_local_nonprim = NULL;

    // define the local variable for offer->offer_image3
    asset_t *offer_image3_local_nonprim = NULL;

    // define the local variable for offer->offer_image4
    asset_t *offer_image4_local_nonprim = NULL;

    // define the local variable for offer->offer_image5
    asset_t *offer_image5_local_nonprim = NULL;

    // define the local variable for offer->bar_code
    asset_t *bar_code_local_nonprim = NULL;

    // define the local list for offer->categories
    list_t *categoriesList = NULL;

    // define the local list for offer->filters
    list_t *filtersList = NULL;

    // define the local variable for offer->product
    product_t *product_local_nonprim = NULL;

    // define the local variable for offer->media
    media_t *media_local_nonprim = NULL;

    // define the local variable for offer->event
    event_t *event_local_nonprim = NULL;

    // define the local variable for offer->device
    device_t *device_local_nonprim = NULL;

    // define the local list for offer->notes
    list_t *notesList = NULL;

    // define the local list for offer->likes
    list_t *likesList = NULL;

    // define the local list for offer->flags
    list_t *flagsList = NULL;

    // define the local variable for offer->flag_threshold
    flag_threshold_t *flag_threshold_local_nonprim = NULL;

    // define the local variable for offer->content_asset
    asset_t *content_asset_local_nonprim = NULL;

    // define the local variable for offer->owner
    account_t *owner_local_nonprim = NULL;

    // offer->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(offerJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // offer->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(offerJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // offer->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(offerJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // offer->test_field
    cJSON *test_field = cJSON_GetObjectItemCaseSensitive(offerJSON, "testField");
    if (cJSON_IsNull(test_field)) {
        test_field = NULL;
    }
    if (test_field) { 
    if(!cJSON_IsString(test_field) && !cJSON_IsNull(test_field))
    {
    goto end; //String
    }
    }

    // offer->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(offerJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_parseFromJSON(billable_entity); //nonprimitive
    }

    // offer->offer_locations
    cJSON *offer_locations = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerLocations");
    if (cJSON_IsNull(offer_locations)) {
        offer_locations = NULL;
    }
    if (offer_locations) { 
    cJSON *offer_locations_local_nonprimitive = NULL;
    if(!cJSON_IsArray(offer_locations)){
        goto end; //nonprimitive container
    }

    offer_locationsList = list_createList();

    cJSON_ArrayForEach(offer_locations_local_nonprimitive,offer_locations )
    {
        if(!cJSON_IsObject(offer_locations_local_nonprimitive)){
            goto end;
        }
        offer_location_t *offer_locationsItem = offer_location_parseFromJSON(offer_locations_local_nonprimitive);

        list_addElement(offer_locationsList, offer_locationsItem);
    }
    }

    // offer->missions
    cJSON *missions = cJSON_GetObjectItemCaseSensitive(offerJSON, "missions");
    if (cJSON_IsNull(missions)) {
        missions = NULL;
    }
    if (missions) { 
    cJSON *missions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(missions)){
        goto end; //nonprimitive container
    }

    missionsList = list_createList();

    cJSON_ArrayForEach(missions_local_nonprimitive,missions )
    {
        if(!cJSON_IsObject(missions_local_nonprimitive)){
            goto end;
        }
        mission_t *missionsItem = mission_parseFromJSON(missions_local_nonprimitive);

        list_addElement(missionsList, missionsItem);
    }
    }

    // offer->activated
    cJSON *activated = cJSON_GetObjectItemCaseSensitive(offerJSON, "activated");
    if (cJSON_IsNull(activated)) {
        activated = NULL;
    }
    if (activated) { 
    if(!cJSON_IsString(activated) && !cJSON_IsNull(activated))
    {
    goto end; //DateTime
    }
    }

    // offer->expires
    cJSON *expires = cJSON_GetObjectItemCaseSensitive(offerJSON, "expires");
    if (cJSON_IsNull(expires)) {
        expires = NULL;
    }
    if (expires) { 
    if(!cJSON_IsString(expires) && !cJSON_IsNull(expires))
    {
    goto end; //DateTime
    }
    }

    // offer->redeemable_start
    cJSON *redeemable_start = cJSON_GetObjectItemCaseSensitive(offerJSON, "redeemableStart");
    if (cJSON_IsNull(redeemable_start)) {
        redeemable_start = NULL;
    }
    if (redeemable_start) { 
    if(!cJSON_IsString(redeemable_start) && !cJSON_IsNull(redeemable_start))
    {
    goto end; //DateTime
    }
    }

    // offer->redeemable_end
    cJSON *redeemable_end = cJSON_GetObjectItemCaseSensitive(offerJSON, "redeemableEnd");
    if (cJSON_IsNull(redeemable_end)) {
        redeemable_end = NULL;
    }
    if (redeemable_end) { 
    if(!cJSON_IsString(redeemable_end) && !cJSON_IsNull(redeemable_end))
    {
    goto end; //DateTime
    }
    }

    // offer->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(offerJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // offer->sub_title
    cJSON *sub_title = cJSON_GetObjectItemCaseSensitive(offerJSON, "subTitle");
    if (cJSON_IsNull(sub_title)) {
        sub_title = NULL;
    }
    if (sub_title) { 
    if(!cJSON_IsString(sub_title) && !cJSON_IsNull(sub_title))
    {
    goto end; //String
    }
    }

    // offer->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(offerJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    sirqul_iot_platform_offer_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = offer_type_FromString(type->valuestring);
    }

    // offer->special_offer_type
    cJSON *special_offer_type = cJSON_GetObjectItemCaseSensitive(offerJSON, "specialOfferType");
    if (cJSON_IsNull(special_offer_type)) {
        special_offer_type = NULL;
    }
    sirqul_iot_platform_offer_SPECIALOFFERTYPE_e special_offer_typeVariable;
    if (special_offer_type) { 
    if(!cJSON_IsString(special_offer_type))
    {
    goto end; //Enum
    }
    special_offer_typeVariable = offer_special_offer_type_FromString(special_offer_type->valuestring);
    }

    // offer->details
    cJSON *details = cJSON_GetObjectItemCaseSensitive(offerJSON, "details");
    if (cJSON_IsNull(details)) {
        details = NULL;
    }
    if (details) { 
    if(!cJSON_IsString(details) && !cJSON_IsNull(details))
    {
    goto end; //String
    }
    }

    // offer->sub_details
    cJSON *sub_details = cJSON_GetObjectItemCaseSensitive(offerJSON, "subDetails");
    if (cJSON_IsNull(sub_details)) {
        sub_details = NULL;
    }
    if (sub_details) { 
    if(!cJSON_IsString(sub_details) && !cJSON_IsNull(sub_details))
    {
    goto end; //String
    }
    }

    // offer->fine_print
    cJSON *fine_print = cJSON_GetObjectItemCaseSensitive(offerJSON, "finePrint");
    if (cJSON_IsNull(fine_print)) {
        fine_print = NULL;
    }
    if (fine_print) { 
    if(!cJSON_IsString(fine_print) && !cJSON_IsNull(fine_print))
    {
    goto end; //String
    }
    }

    // offer->get_there_now_notification
    cJSON *get_there_now_notification = cJSON_GetObjectItemCaseSensitive(offerJSON, "getThereNowNotification");
    if (cJSON_IsNull(get_there_now_notification)) {
        get_there_now_notification = NULL;
    }
    if (get_there_now_notification) { 
    if(!cJSON_IsString(get_there_now_notification) && !cJSON_IsNull(get_there_now_notification))
    {
    goto end; //String
    }
    }

    // offer->max_prints
    cJSON *max_prints = cJSON_GetObjectItemCaseSensitive(offerJSON, "maxPrints");
    if (cJSON_IsNull(max_prints)) {
        max_prints = NULL;
    }
    if (max_prints) { 
    if(!cJSON_IsNumber(max_prints))
    {
    goto end; //Numeric
    }
    }

    // offer->view_limit
    cJSON *view_limit = cJSON_GetObjectItemCaseSensitive(offerJSON, "viewLimit");
    if (cJSON_IsNull(view_limit)) {
        view_limit = NULL;
    }
    if (view_limit) { 
    if(!cJSON_IsNumber(view_limit))
    {
    goto end; //Numeric
    }
    }

    // offer->featured
    cJSON *featured = cJSON_GetObjectItemCaseSensitive(offerJSON, "featured");
    if (cJSON_IsNull(featured)) {
        featured = NULL;
    }
    if (featured) { 
    if(!cJSON_IsBool(featured))
    {
    goto end; //Bool
    }
    }

    // offer->replaced
    cJSON *replaced = cJSON_GetObjectItemCaseSensitive(offerJSON, "replaced");
    if (cJSON_IsNull(replaced)) {
        replaced = NULL;
    }
    if (replaced) { 
    if(!cJSON_IsBool(replaced))
    {
    goto end; //Bool
    }
    }

    // offer->show_remaining
    cJSON *show_remaining = cJSON_GetObjectItemCaseSensitive(offerJSON, "showRemaining");
    if (cJSON_IsNull(show_remaining)) {
        show_remaining = NULL;
    }
    if (show_remaining) { 
    if(!cJSON_IsBool(show_remaining))
    {
    goto end; //Bool
    }
    }

    // offer->show_redeemed
    cJSON *show_redeemed = cJSON_GetObjectItemCaseSensitive(offerJSON, "showRedeemed");
    if (cJSON_IsNull(show_redeemed)) {
        show_redeemed = NULL;
    }
    if (show_redeemed) { 
    if(!cJSON_IsBool(show_redeemed))
    {
    goto end; //Bool
    }
    }

    // offer->parent_offer
    cJSON *parent_offer = cJSON_GetObjectItemCaseSensitive(offerJSON, "parentOffer");
    if (cJSON_IsNull(parent_offer)) {
        parent_offer = NULL;
    }
    if (parent_offer) { 
    parent_offer_local_nonprim = offer_parseFromJSON(parent_offer); //nonprimitive
    }

    // offer->artwork
    cJSON *artwork = cJSON_GetObjectItemCaseSensitive(offerJSON, "artwork");
    if (cJSON_IsNull(artwork)) {
        artwork = NULL;
    }
    if (artwork) { 
    artwork_local_nonprim = asset_parseFromJSON(artwork); //nonprimitive
    }

    // offer->offer_image1
    cJSON *offer_image1 = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerImage1");
    if (cJSON_IsNull(offer_image1)) {
        offer_image1 = NULL;
    }
    if (offer_image1) { 
    offer_image1_local_nonprim = asset_parseFromJSON(offer_image1); //nonprimitive
    }

    // offer->offer_image2
    cJSON *offer_image2 = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerImage2");
    if (cJSON_IsNull(offer_image2)) {
        offer_image2 = NULL;
    }
    if (offer_image2) { 
    offer_image2_local_nonprim = asset_parseFromJSON(offer_image2); //nonprimitive
    }

    // offer->offer_image3
    cJSON *offer_image3 = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerImage3");
    if (cJSON_IsNull(offer_image3)) {
        offer_image3 = NULL;
    }
    if (offer_image3) { 
    offer_image3_local_nonprim = asset_parseFromJSON(offer_image3); //nonprimitive
    }

    // offer->offer_image4
    cJSON *offer_image4 = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerImage4");
    if (cJSON_IsNull(offer_image4)) {
        offer_image4 = NULL;
    }
    if (offer_image4) { 
    offer_image4_local_nonprim = asset_parseFromJSON(offer_image4); //nonprimitive
    }

    // offer->offer_image5
    cJSON *offer_image5 = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerImage5");
    if (cJSON_IsNull(offer_image5)) {
        offer_image5 = NULL;
    }
    if (offer_image5) { 
    offer_image5_local_nonprim = asset_parseFromJSON(offer_image5); //nonprimitive
    }

    // offer->bar_code
    cJSON *bar_code = cJSON_GetObjectItemCaseSensitive(offerJSON, "barCode");
    if (cJSON_IsNull(bar_code)) {
        bar_code = NULL;
    }
    if (bar_code) { 
    bar_code_local_nonprim = asset_parseFromJSON(bar_code); //nonprimitive
    }

    // offer->bar_code_type
    cJSON *bar_code_type = cJSON_GetObjectItemCaseSensitive(offerJSON, "barCodeType");
    if (cJSON_IsNull(bar_code_type)) {
        bar_code_type = NULL;
    }
    sirqul_iot_platform_offer_BARCODETYPE_e bar_code_typeVariable;
    if (bar_code_type) { 
    if(!cJSON_IsString(bar_code_type))
    {
    goto end; //Enum
    }
    bar_code_typeVariable = offer_bar_code_type_FromString(bar_code_type->valuestring);
    }

    // offer->bar_code_entry
    cJSON *bar_code_entry = cJSON_GetObjectItemCaseSensitive(offerJSON, "barCodeEntry");
    if (cJSON_IsNull(bar_code_entry)) {
        bar_code_entry = NULL;
    }
    if (bar_code_entry) { 
    if(!cJSON_IsString(bar_code_entry) && !cJSON_IsNull(bar_code_entry))
    {
    goto end; //String
    }
    }

    // offer->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(offerJSON, "categories");
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
        category_t *categoriesItem = category_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // offer->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(offerJSON, "filters");
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
        filter_t *filtersItem = filter_parseFromJSON(filters_local_nonprimitive);

        list_addElement(filtersList, filtersItem);
    }
    }

    // offer->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(offerJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // offer->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(offerJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // offer->ticket_price_type
    cJSON *ticket_price_type = cJSON_GetObjectItemCaseSensitive(offerJSON, "ticketPriceType");
    if (cJSON_IsNull(ticket_price_type)) {
        ticket_price_type = NULL;
    }
    if (ticket_price_type) { 
    if(!cJSON_IsString(ticket_price_type) && !cJSON_IsNull(ticket_price_type))
    {
    goto end; //String
    }
    }

    // offer->ticket_price
    cJSON *ticket_price = cJSON_GetObjectItemCaseSensitive(offerJSON, "ticketPrice");
    if (cJSON_IsNull(ticket_price)) {
        ticket_price = NULL;
    }
    if (ticket_price) { 
    if(!cJSON_IsNumber(ticket_price))
    {
    goto end; //Numeric
    }
    }

    // offer->full_price
    cJSON *full_price = cJSON_GetObjectItemCaseSensitive(offerJSON, "fullPrice");
    if (cJSON_IsNull(full_price)) {
        full_price = NULL;
    }
    if (full_price) { 
    if(!cJSON_IsNumber(full_price))
    {
    goto end; //Numeric
    }
    }

    // offer->discount_price
    cJSON *discount_price = cJSON_GetObjectItemCaseSensitive(offerJSON, "discountPrice");
    if (cJSON_IsNull(discount_price)) {
        discount_price = NULL;
    }
    if (discount_price) { 
    if(!cJSON_IsNumber(discount_price))
    {
    goto end; //Numeric
    }
    }

    // offer->available_limit
    cJSON *available_limit = cJSON_GetObjectItemCaseSensitive(offerJSON, "availableLimit");
    if (cJSON_IsNull(available_limit)) {
        available_limit = NULL;
    }
    if (available_limit) { 
    if(!cJSON_IsNumber(available_limit))
    {
    goto end; //Numeric
    }
    }

    // offer->available_limit_per_user
    cJSON *available_limit_per_user = cJSON_GetObjectItemCaseSensitive(offerJSON, "availableLimitPerUser");
    if (cJSON_IsNull(available_limit_per_user)) {
        available_limit_per_user = NULL;
    }
    if (available_limit_per_user) { 
    if(!cJSON_IsNumber(available_limit_per_user))
    {
    goto end; //Numeric
    }
    }

    // offer->added_limit
    cJSON *added_limit = cJSON_GetObjectItemCaseSensitive(offerJSON, "addedLimit");
    if (cJSON_IsNull(added_limit)) {
        added_limit = NULL;
    }
    if (added_limit) { 
    if(!cJSON_IsNumber(added_limit))
    {
    goto end; //Numeric
    }
    }

    // offer->used_count
    cJSON *used_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "usedCount");
    if (cJSON_IsNull(used_count)) {
        used_count = NULL;
    }
    if (used_count) { 
    if(!cJSON_IsNumber(used_count))
    {
    goto end; //Numeric
    }
    }

    // offer->added_count
    cJSON *added_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "addedCount");
    if (cJSON_IsNull(added_count)) {
        added_count = NULL;
    }
    if (added_count) { 
    if(!cJSON_IsNumber(added_count))
    {
    goto end; //Numeric
    }
    }

    // offer->removed_count
    cJSON *removed_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "removedCount");
    if (cJSON_IsNull(removed_count)) {
        removed_count = NULL;
    }
    if (removed_count) { 
    if(!cJSON_IsNumber(removed_count))
    {
    goto end; //Numeric
    }
    }

    // offer->viewed_count
    cJSON *viewed_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "viewedCount");
    if (cJSON_IsNull(viewed_count)) {
        viewed_count = NULL;
    }
    if (viewed_count) { 
    if(!cJSON_IsNumber(viewed_count))
    {
    goto end; //Numeric
    }
    }

    // offer->clicked_count
    cJSON *clicked_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "clickedCount");
    if (cJSON_IsNull(clicked_count)) {
        clicked_count = NULL;
    }
    if (clicked_count) { 
    if(!cJSON_IsNumber(clicked_count))
    {
    goto end; //Numeric
    }
    }

    // offer->offer_visibility
    cJSON *offer_visibility = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerVisibility");
    if (cJSON_IsNull(offer_visibility)) {
        offer_visibility = NULL;
    }
    sirqul_iot_platform_offer_OFFERVISIBILITY_e offer_visibilityVariable;
    if (offer_visibility) { 
    if(!cJSON_IsString(offer_visibility))
    {
    goto end; //Enum
    }
    offer_visibilityVariable = offer_offer_visibility_FromString(offer_visibility->valuestring);
    }

    // offer->offer_processor_id
    cJSON *offer_processor_id = cJSON_GetObjectItemCaseSensitive(offerJSON, "offerProcessorId");
    if (cJSON_IsNull(offer_processor_id)) {
        offer_processor_id = NULL;
    }
    sirqul_iot_platform_offer_OFFERPROCESSORID_e offer_processor_idVariable;
    if (offer_processor_id) { 
    if(!cJSON_IsString(offer_processor_id))
    {
    goto end; //Enum
    }
    offer_processor_idVariable = offer_offer_processor_id_FromString(offer_processor_id->valuestring);
    }

    // offer->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(offerJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // offer->external_url
    cJSON *external_url = cJSON_GetObjectItemCaseSensitive(offerJSON, "externalUrl");
    if (cJSON_IsNull(external_url)) {
        external_url = NULL;
    }
    if (external_url) { 
    if(!cJSON_IsString(external_url) && !cJSON_IsNull(external_url))
    {
    goto end; //String
    }
    }

    // offer->external_untracked_url
    cJSON *external_untracked_url = cJSON_GetObjectItemCaseSensitive(offerJSON, "externalUntrackedUrl");
    if (cJSON_IsNull(external_untracked_url)) {
        external_untracked_url = NULL;
    }
    if (external_untracked_url) { 
    if(!cJSON_IsString(external_untracked_url) && !cJSON_IsNull(external_untracked_url))
    {
    goto end; //String
    }
    }

    // offer->sqoot_id
    cJSON *sqoot_id = cJSON_GetObjectItemCaseSensitive(offerJSON, "sqootId");
    if (cJSON_IsNull(sqoot_id)) {
        sqoot_id = NULL;
    }
    if (sqoot_id) { 
    if(!cJSON_IsNumber(sqoot_id))
    {
    goto end; //Numeric
    }
    }

    // offer->sqoot_url
    cJSON *sqoot_url = cJSON_GetObjectItemCaseSensitive(offerJSON, "sqootUrl");
    if (cJSON_IsNull(sqoot_url)) {
        sqoot_url = NULL;
    }
    if (sqoot_url) { 
    if(!cJSON_IsString(sqoot_url) && !cJSON_IsNull(sqoot_url))
    {
    goto end; //String
    }
    }

    // offer->sqoot_category_slug
    cJSON *sqoot_category_slug = cJSON_GetObjectItemCaseSensitive(offerJSON, "sqootCategorySlug");
    if (cJSON_IsNull(sqoot_category_slug)) {
        sqoot_category_slug = NULL;
    }
    if (sqoot_category_slug) { 
    if(!cJSON_IsString(sqoot_category_slug) && !cJSON_IsNull(sqoot_category_slug))
    {
    goto end; //String
    }
    }

    // offer->sqoot_category_name
    cJSON *sqoot_category_name = cJSON_GetObjectItemCaseSensitive(offerJSON, "sqootCategoryName");
    if (cJSON_IsNull(sqoot_category_name)) {
        sqoot_category_name = NULL;
    }
    if (sqoot_category_name) { 
    if(!cJSON_IsString(sqoot_category_name) && !cJSON_IsNull(sqoot_category_name))
    {
    goto end; //String
    }
    }

    // offer->yipit_id
    cJSON *yipit_id = cJSON_GetObjectItemCaseSensitive(offerJSON, "yipitId");
    if (cJSON_IsNull(yipit_id)) {
        yipit_id = NULL;
    }
    if (yipit_id) { 
    if(!cJSON_IsNumber(yipit_id))
    {
    goto end; //Numeric
    }
    }

    // offer->redeem_auth_options
    cJSON *redeem_auth_options = cJSON_GetObjectItemCaseSensitive(offerJSON, "redeemAuthOptions");
    if (cJSON_IsNull(redeem_auth_options)) {
        redeem_auth_options = NULL;
    }
    if (redeem_auth_options) { 
    if(!cJSON_IsString(redeem_auth_options) && !cJSON_IsNull(redeem_auth_options))
    {
    goto end; //String
    }
    }

    // offer->publisher
    cJSON *publisher = cJSON_GetObjectItemCaseSensitive(offerJSON, "publisher");
    if (cJSON_IsNull(publisher)) {
        publisher = NULL;
    }
    if (publisher) { 
    if(!cJSON_IsString(publisher) && !cJSON_IsNull(publisher))
    {
    goto end; //String
    }
    }

    // offer->product
    cJSON *product = cJSON_GetObjectItemCaseSensitive(offerJSON, "product");
    if (cJSON_IsNull(product)) {
        product = NULL;
    }
    if (product) { 
    product_local_nonprim = product_parseFromJSON(product); //nonprimitive
    }

    // offer->media
    cJSON *media = cJSON_GetObjectItemCaseSensitive(offerJSON, "media");
    if (cJSON_IsNull(media)) {
        media = NULL;
    }
    if (media) { 
    media_local_nonprim = media_parseFromJSON(media); //nonprimitive
    }

    // offer->event
    cJSON *event = cJSON_GetObjectItemCaseSensitive(offerJSON, "event");
    if (cJSON_IsNull(event)) {
        event = NULL;
    }
    if (event) { 
    event_local_nonprim = event_parseFromJSON(event); //nonprimitive
    }

    // offer->device
    cJSON *device = cJSON_GetObjectItemCaseSensitive(offerJSON, "device");
    if (cJSON_IsNull(device)) {
        device = NULL;
    }
    if (device) { 
    device_local_nonprim = device_parseFromJSON(device); //nonprimitive
    }

    // offer->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(offerJSON, "notes");
    if (cJSON_IsNull(notes)) {
        notes = NULL;
    }
    if (notes) { 
    cJSON *notes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(notes)){
        goto end; //nonprimitive container
    }

    notesList = list_createList();

    cJSON_ArrayForEach(notes_local_nonprimitive,notes )
    {
        if(!cJSON_IsObject(notes_local_nonprimitive)){
            goto end;
        }
        note_t *notesItem = note_parseFromJSON(notes_local_nonprimitive);

        list_addElement(notesList, notesItem);
    }
    }

    // offer->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // offer->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // offer->has_ratings
    cJSON *has_ratings = cJSON_GetObjectItemCaseSensitive(offerJSON, "hasRatings");
    if (cJSON_IsNull(has_ratings)) {
        has_ratings = NULL;
    }
    if (has_ratings) { 
    if(!cJSON_IsBool(has_ratings))
    {
    goto end; //Bool
    }
    }

    // offer->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(offerJSON, "likes");
    if (cJSON_IsNull(likes)) {
        likes = NULL;
    }
    if (likes) { 
    cJSON *likes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(likes)){
        goto end; //nonprimitive container
    }

    likesList = list_createList();

    cJSON_ArrayForEach(likes_local_nonprimitive,likes )
    {
        if(!cJSON_IsObject(likes_local_nonprimitive)){
            goto end;
        }
        yay_or_nay_t *likesItem = yay_or_nay_parseFromJSON(likes_local_nonprimitive);

        list_addElement(likesList, likesItem);
    }
    }

    // offer->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // offer->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // offer->availability_summary
    cJSON *availability_summary = cJSON_GetObjectItemCaseSensitive(offerJSON, "availabilitySummary");
    if (cJSON_IsNull(availability_summary)) {
        availability_summary = NULL;
    }
    if (availability_summary) { 
    if(!cJSON_IsString(availability_summary) && !cJSON_IsNull(availability_summary))
    {
    goto end; //String
    }
    }

    // offer->flags
    cJSON *flags = cJSON_GetObjectItemCaseSensitive(offerJSON, "flags");
    if (cJSON_IsNull(flags)) {
        flags = NULL;
    }
    if (flags) { 
    cJSON *flags_local_nonprimitive = NULL;
    if(!cJSON_IsArray(flags)){
        goto end; //nonprimitive container
    }

    flagsList = list_createList();

    cJSON_ArrayForEach(flags_local_nonprimitive,flags )
    {
        if(!cJSON_IsObject(flags_local_nonprimitive)){
            goto end;
        }
        flag_t *flagsItem = flag_parseFromJSON(flags_local_nonprimitive);

        list_addElement(flagsList, flagsItem);
    }
    }

    // offer->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // offer->flag_threshold
    cJSON *flag_threshold = cJSON_GetObjectItemCaseSensitive(offerJSON, "flagThreshold");
    if (cJSON_IsNull(flag_threshold)) {
        flag_threshold = NULL;
    }
    if (flag_threshold) { 
    flag_threshold_local_nonprim = flag_threshold_parseFromJSON(flag_threshold); //nonprimitive
    }

    // offer->savings
    cJSON *savings = cJSON_GetObjectItemCaseSensitive(offerJSON, "savings");
    if (cJSON_IsNull(savings)) {
        savings = NULL;
    }
    if (savings) { 
    if(!cJSON_IsNumber(savings))
    {
    goto end; //Numeric
    }
    }

    // offer->click_stream
    cJSON *click_stream = cJSON_GetObjectItemCaseSensitive(offerJSON, "clickStream");
    if (cJSON_IsNull(click_stream)) {
        click_stream = NULL;
    }
    if (click_stream) { 
    if(!cJSON_IsNumber(click_stream))
    {
    goto end; //Numeric
    }
    }

    // offer->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(offerJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // offer->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(offerJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // offer->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(offerJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // offer->category_tree
    cJSON *category_tree = cJSON_GetObjectItemCaseSensitive(offerJSON, "categoryTree");
    if (cJSON_IsNull(category_tree)) {
        category_tree = NULL;
    }
    if (category_tree) { 
    if(!cJSON_IsString(category_tree) && !cJSON_IsNull(category_tree))
    {
    goto end; //String
    }
    }

    // offer->filter_tree
    cJSON *filter_tree = cJSON_GetObjectItemCaseSensitive(offerJSON, "filterTree");
    if (cJSON_IsNull(filter_tree)) {
        filter_tree = NULL;
    }
    if (filter_tree) { 
    if(!cJSON_IsString(filter_tree) && !cJSON_IsNull(filter_tree))
    {
    goto end; //String
    }
    }

    // offer->indexable
    cJSON *indexable = cJSON_GetObjectItemCaseSensitive(offerJSON, "indexable");
    if (cJSON_IsNull(indexable)) {
        indexable = NULL;
    }
    if (indexable) { 
    if(!cJSON_IsBool(indexable))
    {
    goto end; //Bool
    }
    }

    // offer->billable_id
    cJSON *billable_id = cJSON_GetObjectItemCaseSensitive(offerJSON, "billableId");
    if (cJSON_IsNull(billable_id)) {
        billable_id = NULL;
    }
    if (billable_id) { 
    if(!cJSON_IsNumber(billable_id))
    {
    goto end; //Numeric
    }
    }

    // offer->sub_type
    cJSON *sub_type = cJSON_GetObjectItemCaseSensitive(offerJSON, "subType");
    if (cJSON_IsNull(sub_type)) {
        sub_type = NULL;
    }
    if (sub_type) { 
    if(!cJSON_IsString(sub_type) && !cJSON_IsNull(sub_type))
    {
    goto end; //String
    }
    }

    // offer->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(offerJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // offer->default_threshold
    cJSON *default_threshold = cJSON_GetObjectItemCaseSensitive(offerJSON, "defaultThreshold");
    if (cJSON_IsNull(default_threshold)) {
        default_threshold = NULL;
    }
    if (default_threshold) { 
    if(!cJSON_IsNumber(default_threshold))
    {
    goto end; //Numeric
    }
    }

    // offer->content_asset
    cJSON *content_asset = cJSON_GetObjectItemCaseSensitive(offerJSON, "contentAsset");
    if (cJSON_IsNull(content_asset)) {
        content_asset = NULL;
    }
    if (content_asset) { 
    content_asset_local_nonprim = asset_parseFromJSON(content_asset); //nonprimitive
    }

    // offer->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(offerJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // offer->secondary_type
    cJSON *secondary_type = cJSON_GetObjectItemCaseSensitive(offerJSON, "secondaryType");
    if (cJSON_IsNull(secondary_type)) {
        secondary_type = NULL;
    }
    if (secondary_type) { 
    if(!cJSON_IsString(secondary_type) && !cJSON_IsNull(secondary_type))
    {
    goto end; //String
    }
    }

    // offer->discount_percentage
    cJSON *discount_percentage = cJSON_GetObjectItemCaseSensitive(offerJSON, "discountPercentage");
    if (cJSON_IsNull(discount_percentage)) {
        discount_percentage = NULL;
    }
    if (discount_percentage) { 
    if(!cJSON_IsNumber(discount_percentage))
    {
    goto end; //Numeric
    }
    }


    offer_local_var = offer_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        test_field && !cJSON_IsNull(test_field) ? strdup(test_field->valuestring) : NULL,
        billable_entity ? billable_entity_local_nonprim : NULL,
        offer_locations ? offer_locationsList : NULL,
        missions ? missionsList : NULL,
        activated && !cJSON_IsNull(activated) ? strdup(activated->valuestring) : NULL,
        expires && !cJSON_IsNull(expires) ? strdup(expires->valuestring) : NULL,
        redeemable_start && !cJSON_IsNull(redeemable_start) ? strdup(redeemable_start->valuestring) : NULL,
        redeemable_end && !cJSON_IsNull(redeemable_end) ? strdup(redeemable_end->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        sub_title && !cJSON_IsNull(sub_title) ? strdup(sub_title->valuestring) : NULL,
        type ? typeVariable : sirqul_iot_platform_offer_TYPE_NULL,
        special_offer_type ? special_offer_typeVariable : sirqul_iot_platform_offer_SPECIALOFFERTYPE_NULL,
        details && !cJSON_IsNull(details) ? strdup(details->valuestring) : NULL,
        sub_details && !cJSON_IsNull(sub_details) ? strdup(sub_details->valuestring) : NULL,
        fine_print && !cJSON_IsNull(fine_print) ? strdup(fine_print->valuestring) : NULL,
        get_there_now_notification && !cJSON_IsNull(get_there_now_notification) ? strdup(get_there_now_notification->valuestring) : NULL,
        max_prints ? max_prints->valuedouble : 0,
        view_limit ? view_limit->valuedouble : 0,
        featured ? featured->valueint : 0,
        replaced ? replaced->valueint : 0,
        show_remaining ? show_remaining->valueint : 0,
        show_redeemed ? show_redeemed->valueint : 0,
        parent_offer ? parent_offer_local_nonprim : NULL,
        artwork ? artwork_local_nonprim : NULL,
        offer_image1 ? offer_image1_local_nonprim : NULL,
        offer_image2 ? offer_image2_local_nonprim : NULL,
        offer_image3 ? offer_image3_local_nonprim : NULL,
        offer_image4 ? offer_image4_local_nonprim : NULL,
        offer_image5 ? offer_image5_local_nonprim : NULL,
        bar_code ? bar_code_local_nonprim : NULL,
        bar_code_type ? bar_code_typeVariable : sirqul_iot_platform_offer_BARCODETYPE_NULL,
        bar_code_entry && !cJSON_IsNull(bar_code_entry) ? strdup(bar_code_entry->valuestring) : NULL,
        categories ? categoriesList : NULL,
        filters ? filtersList : NULL,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        allocate_tickets ? allocate_tickets->valueint : 0,
        ticket_price_type && !cJSON_IsNull(ticket_price_type) ? strdup(ticket_price_type->valuestring) : NULL,
        ticket_price ? ticket_price->valuedouble : 0,
        full_price ? full_price->valuedouble : 0,
        discount_price ? discount_price->valuedouble : 0,
        available_limit ? available_limit->valuedouble : 0,
        available_limit_per_user ? available_limit_per_user->valuedouble : 0,
        added_limit ? added_limit->valuedouble : 0,
        used_count ? used_count->valuedouble : 0,
        added_count ? added_count->valuedouble : 0,
        removed_count ? removed_count->valuedouble : 0,
        viewed_count ? viewed_count->valuedouble : 0,
        clicked_count ? clicked_count->valuedouble : 0,
        offer_visibility ? offer_visibilityVariable : sirqul_iot_platform_offer_OFFERVISIBILITY_NULL,
        offer_processor_id ? offer_processor_idVariable : sirqul_iot_platform_offer_OFFERPROCESSORID_NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        external_url && !cJSON_IsNull(external_url) ? strdup(external_url->valuestring) : NULL,
        external_untracked_url && !cJSON_IsNull(external_untracked_url) ? strdup(external_untracked_url->valuestring) : NULL,
        sqoot_id ? sqoot_id->valuedouble : 0,
        sqoot_url && !cJSON_IsNull(sqoot_url) ? strdup(sqoot_url->valuestring) : NULL,
        sqoot_category_slug && !cJSON_IsNull(sqoot_category_slug) ? strdup(sqoot_category_slug->valuestring) : NULL,
        sqoot_category_name && !cJSON_IsNull(sqoot_category_name) ? strdup(sqoot_category_name->valuestring) : NULL,
        yipit_id ? yipit_id->valuedouble : 0,
        redeem_auth_options && !cJSON_IsNull(redeem_auth_options) ? strdup(redeem_auth_options->valuestring) : NULL,
        publisher && !cJSON_IsNull(publisher) ? strdup(publisher->valuestring) : NULL,
        product ? product_local_nonprim : NULL,
        media ? media_local_nonprim : NULL,
        event ? event_local_nonprim : NULL,
        device ? device_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        favorite_count ? favorite_count->valuedouble : 0,
        has_ratings ? has_ratings->valueint : 0,
        likes ? likesList : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        availability_summary && !cJSON_IsNull(availability_summary) ? strdup(availability_summary->valuestring) : NULL,
        flags ? flagsList : NULL,
        flag_count ? flag_count->valuedouble : 0,
        flag_threshold ? flag_threshold_local_nonprim : NULL,
        savings ? savings->valuedouble : 0,
        click_stream ? click_stream->valuedouble : 0,
        ticket_count ? ticket_count->valuedouble : 0,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        category_tree && !cJSON_IsNull(category_tree) ? strdup(category_tree->valuestring) : NULL,
        filter_tree && !cJSON_IsNull(filter_tree) ? strdup(filter_tree->valuestring) : NULL,
        indexable ? indexable->valueint : 0,
        billable_id ? billable_id->valuedouble : 0,
        sub_type && !cJSON_IsNull(sub_type) ? strdup(sub_type->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        default_threshold ? default_threshold->valuedouble : 0,
        content_asset ? content_asset_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL,
        secondary_type && !cJSON_IsNull(secondary_type) ? strdup(secondary_type->valuestring) : NULL,
        discount_percentage ? discount_percentage->valuedouble : 0
        );

    return offer_local_var;
end:
    if (billable_entity_local_nonprim) {
        billable_entity_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    if (offer_locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, offer_locationsList) {
            offer_location_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(offer_locationsList);
        offer_locationsList = NULL;
    }
    if (missionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, missionsList) {
            mission_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(missionsList);
        missionsList = NULL;
    }
    if (parent_offer_local_nonprim) {
        offer_free(parent_offer_local_nonprim);
        parent_offer_local_nonprim = NULL;
    }
    if (artwork_local_nonprim) {
        asset_free(artwork_local_nonprim);
        artwork_local_nonprim = NULL;
    }
    if (offer_image1_local_nonprim) {
        asset_free(offer_image1_local_nonprim);
        offer_image1_local_nonprim = NULL;
    }
    if (offer_image2_local_nonprim) {
        asset_free(offer_image2_local_nonprim);
        offer_image2_local_nonprim = NULL;
    }
    if (offer_image3_local_nonprim) {
        asset_free(offer_image3_local_nonprim);
        offer_image3_local_nonprim = NULL;
    }
    if (offer_image4_local_nonprim) {
        asset_free(offer_image4_local_nonprim);
        offer_image4_local_nonprim = NULL;
    }
    if (offer_image5_local_nonprim) {
        asset_free(offer_image5_local_nonprim);
        offer_image5_local_nonprim = NULL;
    }
    if (bar_code_local_nonprim) {
        asset_free(bar_code_local_nonprim);
        bar_code_local_nonprim = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (filtersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, filtersList) {
            filter_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(filtersList);
        filtersList = NULL;
    }
    if (product_local_nonprim) {
        product_free(product_local_nonprim);
        product_local_nonprim = NULL;
    }
    if (media_local_nonprim) {
        media_free(media_local_nonprim);
        media_local_nonprim = NULL;
    }
    if (event_local_nonprim) {
        event_free(event_local_nonprim);
        event_local_nonprim = NULL;
    }
    if (device_local_nonprim) {
        device_free(device_local_nonprim);
        device_local_nonprim = NULL;
    }
    if (notesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, notesList) {
            note_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(notesList);
        notesList = NULL;
    }
    if (likesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, likesList) {
            yay_or_nay_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(likesList);
        likesList = NULL;
    }
    if (flagsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, flagsList) {
            flag_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(flagsList);
        flagsList = NULL;
    }
    if (flag_threshold_local_nonprim) {
        flag_threshold_free(flag_threshold_local_nonprim);
        flag_threshold_local_nonprim = NULL;
    }
    if (content_asset_local_nonprim) {
        asset_free(content_asset_local_nonprim);
        content_asset_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
