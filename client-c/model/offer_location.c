#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "offer_location.h"



static offer_location_t *offer_location_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    offer_t *offer,
    retailer_location_t *location,
    double distance,
    double altitude,
    double custom_value,
    char *location_detail,
    list_t *audiences,
    asset_t *qr_invite_code,
    list_t *notes,
    long note_count,
    char *search_index_updated,
    int in_search_index,
    long favorite_count,
    int added_count,
    char *display,
    char *app_key,
    double device_power,
    double power_loss,
    char *udid,
    long billable_id,
    char *sub_type,
    char *content_name,
    asset_t *content_asset,
    account_t *owner,
    char *secondary_type,
    list_t *category_ids,
    list_t *filter_ids
    ) {
    offer_location_t *offer_location_local_var = malloc(sizeof(offer_location_t));
    if (!offer_location_local_var) {
        return NULL;
    }
    offer_location_local_var->id = id;
    offer_location_local_var->active = active;
    offer_location_local_var->valid = valid;
    offer_location_local_var->latitude = latitude;
    offer_location_local_var->longitude = longitude;
    offer_location_local_var->location_description = location_description;
    offer_location_local_var->offer = offer;
    offer_location_local_var->location = location;
    offer_location_local_var->distance = distance;
    offer_location_local_var->altitude = altitude;
    offer_location_local_var->custom_value = custom_value;
    offer_location_local_var->location_detail = location_detail;
    offer_location_local_var->audiences = audiences;
    offer_location_local_var->qr_invite_code = qr_invite_code;
    offer_location_local_var->notes = notes;
    offer_location_local_var->note_count = note_count;
    offer_location_local_var->search_index_updated = search_index_updated;
    offer_location_local_var->in_search_index = in_search_index;
    offer_location_local_var->favorite_count = favorite_count;
    offer_location_local_var->added_count = added_count;
    offer_location_local_var->display = display;
    offer_location_local_var->app_key = app_key;
    offer_location_local_var->device_power = device_power;
    offer_location_local_var->power_loss = power_loss;
    offer_location_local_var->udid = udid;
    offer_location_local_var->billable_id = billable_id;
    offer_location_local_var->sub_type = sub_type;
    offer_location_local_var->content_name = content_name;
    offer_location_local_var->content_asset = content_asset;
    offer_location_local_var->owner = owner;
    offer_location_local_var->secondary_type = secondary_type;
    offer_location_local_var->category_ids = category_ids;
    offer_location_local_var->filter_ids = filter_ids;

    offer_location_local_var->_library_owned = 1;
    return offer_location_local_var;
}

__attribute__((deprecated)) offer_location_t *offer_location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    offer_t *offer,
    retailer_location_t *location,
    double distance,
    double altitude,
    double custom_value,
    char *location_detail,
    list_t *audiences,
    asset_t *qr_invite_code,
    list_t *notes,
    long note_count,
    char *search_index_updated,
    int in_search_index,
    long favorite_count,
    int added_count,
    char *display,
    char *app_key,
    double device_power,
    double power_loss,
    char *udid,
    long billable_id,
    char *sub_type,
    char *content_name,
    asset_t *content_asset,
    account_t *owner,
    char *secondary_type,
    list_t *category_ids,
    list_t *filter_ids
    ) {
    return offer_location_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        offer,
        location,
        distance,
        altitude,
        custom_value,
        location_detail,
        audiences,
        qr_invite_code,
        notes,
        note_count,
        search_index_updated,
        in_search_index,
        favorite_count,
        added_count,
        display,
        app_key,
        device_power,
        power_loss,
        udid,
        billable_id,
        sub_type,
        content_name,
        content_asset,
        owner,
        secondary_type,
        category_ids,
        filter_ids
        );
}

void offer_location_free(offer_location_t *offer_location) {
    if(NULL == offer_location){
        return ;
    }
    if(offer_location->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "offer_location_free");
        return ;
    }
    listEntry_t *listEntry;
    if (offer_location->location_description) {
        free(offer_location->location_description);
        offer_location->location_description = NULL;
    }
    if (offer_location->offer) {
        offer_free(offer_location->offer);
        offer_location->offer = NULL;
    }
    if (offer_location->location) {
        retailer_location_free(offer_location->location);
        offer_location->location = NULL;
    }
    if (offer_location->location_detail) {
        free(offer_location->location_detail);
        offer_location->location_detail = NULL;
    }
    if (offer_location->audiences) {
        list_ForEach(listEntry, offer_location->audiences) {
            audience_free(listEntry->data);
        }
        list_freeList(offer_location->audiences);
        offer_location->audiences = NULL;
    }
    if (offer_location->qr_invite_code) {
        asset_free(offer_location->qr_invite_code);
        offer_location->qr_invite_code = NULL;
    }
    if (offer_location->notes) {
        list_ForEach(listEntry, offer_location->notes) {
            note_free(listEntry->data);
        }
        list_freeList(offer_location->notes);
        offer_location->notes = NULL;
    }
    if (offer_location->search_index_updated) {
        free(offer_location->search_index_updated);
        offer_location->search_index_updated = NULL;
    }
    if (offer_location->display) {
        free(offer_location->display);
        offer_location->display = NULL;
    }
    if (offer_location->app_key) {
        free(offer_location->app_key);
        offer_location->app_key = NULL;
    }
    if (offer_location->udid) {
        free(offer_location->udid);
        offer_location->udid = NULL;
    }
    if (offer_location->sub_type) {
        free(offer_location->sub_type);
        offer_location->sub_type = NULL;
    }
    if (offer_location->content_name) {
        free(offer_location->content_name);
        offer_location->content_name = NULL;
    }
    if (offer_location->content_asset) {
        asset_free(offer_location->content_asset);
        offer_location->content_asset = NULL;
    }
    if (offer_location->owner) {
        account_free(offer_location->owner);
        offer_location->owner = NULL;
    }
    if (offer_location->secondary_type) {
        free(offer_location->secondary_type);
        offer_location->secondary_type = NULL;
    }
    if (offer_location->category_ids) {
        list_ForEach(listEntry, offer_location->category_ids) {
            free(listEntry->data);
        }
        list_freeList(offer_location->category_ids);
        offer_location->category_ids = NULL;
    }
    if (offer_location->filter_ids) {
        list_ForEach(listEntry, offer_location->filter_ids) {
            free(listEntry->data);
        }
        list_freeList(offer_location->filter_ids);
        offer_location->filter_ids = NULL;
    }
    free(offer_location);
}

cJSON *offer_location_convertToJSON(offer_location_t *offer_location) {
    cJSON *item = cJSON_CreateObject();

    // offer_location->id
    if(offer_location->id) {
    if(cJSON_AddNumberToObject(item, "id", offer_location->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->active
    if(offer_location->active) {
    if(cJSON_AddBoolToObject(item, "active", offer_location->active) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_location->valid
    if(offer_location->valid) {
    if(cJSON_AddBoolToObject(item, "valid", offer_location->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_location->latitude
    if(offer_location->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", offer_location->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->longitude
    if(offer_location->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", offer_location->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->location_description
    if(offer_location->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", offer_location->location_description) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->offer
    if(offer_location->offer) {
    cJSON *offer_local_JSON = offer_convertToJSON(offer_location->offer);
    if(offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offer", offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_location->location
    if(offer_location->location) {
    cJSON *location_local_JSON = retailer_location_convertToJSON(offer_location->location);
    if(location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "location", location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_location->distance
    if(offer_location->distance) {
    if(cJSON_AddNumberToObject(item, "distance", offer_location->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->altitude
    if(offer_location->altitude) {
    if(cJSON_AddNumberToObject(item, "altitude", offer_location->altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->custom_value
    if(offer_location->custom_value) {
    if(cJSON_AddNumberToObject(item, "customValue", offer_location->custom_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->location_detail
    if(offer_location->location_detail) {
    if(cJSON_AddStringToObject(item, "locationDetail", offer_location->location_detail) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->audiences
    if(offer_location->audiences) {
    cJSON *audiences = cJSON_AddArrayToObject(item, "audiences");
    if(audiences == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *audiencesListEntry;
    if (offer_location->audiences) {
    list_ForEach(audiencesListEntry, offer_location->audiences) {
    cJSON *itemLocal = audience_convertToJSON(audiencesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(audiences, itemLocal);
    }
    }
    }


    // offer_location->qr_invite_code
    if(offer_location->qr_invite_code) {
    cJSON *qr_invite_code_local_JSON = asset_convertToJSON(offer_location->qr_invite_code);
    if(qr_invite_code_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrInviteCode", qr_invite_code_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_location->notes
    if(offer_location->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (offer_location->notes) {
    list_ForEach(notesListEntry, offer_location->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // offer_location->note_count
    if(offer_location->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", offer_location->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->search_index_updated
    if(offer_location->search_index_updated) {
    if(cJSON_AddStringToObject(item, "searchIndexUpdated", offer_location->search_index_updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // offer_location->in_search_index
    if(offer_location->in_search_index) {
    if(cJSON_AddBoolToObject(item, "inSearchIndex", offer_location->in_search_index) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_location->favorite_count
    if(offer_location->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", offer_location->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->added_count
    if(offer_location->added_count) {
    if(cJSON_AddNumberToObject(item, "addedCount", offer_location->added_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->display
    if(offer_location->display) {
    if(cJSON_AddStringToObject(item, "display", offer_location->display) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->app_key
    if(offer_location->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", offer_location->app_key) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->device_power
    if(offer_location->device_power) {
    if(cJSON_AddNumberToObject(item, "devicePower", offer_location->device_power) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->power_loss
    if(offer_location->power_loss) {
    if(cJSON_AddNumberToObject(item, "powerLoss", offer_location->power_loss) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->udid
    if(offer_location->udid) {
    if(cJSON_AddStringToObject(item, "udid", offer_location->udid) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->billable_id
    if(offer_location->billable_id) {
    if(cJSON_AddNumberToObject(item, "billableId", offer_location->billable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_location->sub_type
    if(offer_location->sub_type) {
    if(cJSON_AddStringToObject(item, "subType", offer_location->sub_type) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->content_name
    if(offer_location->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", offer_location->content_name) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->content_asset
    if(offer_location->content_asset) {
    cJSON *content_asset_local_JSON = asset_convertToJSON(offer_location->content_asset);
    if(content_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contentAsset", content_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_location->owner
    if(offer_location->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(offer_location->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // offer_location->secondary_type
    if(offer_location->secondary_type) {
    if(cJSON_AddStringToObject(item, "secondaryType", offer_location->secondary_type) == NULL) {
    goto fail; //String
    }
    }


    // offer_location->category_ids
    if(offer_location->category_ids) {
    cJSON *category_ids = cJSON_AddArrayToObject(item, "categoryIds");
    if(category_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *category_idsListEntry;
    list_ForEach(category_idsListEntry, offer_location->category_ids) {
    if(cJSON_AddNumberToObject(category_ids, "", *(double *)category_idsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // offer_location->filter_ids
    if(offer_location->filter_ids) {
    cJSON *filter_ids = cJSON_AddArrayToObject(item, "filterIds");
    if(filter_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *filter_idsListEntry;
    list_ForEach(filter_idsListEntry, offer_location->filter_ids) {
    if(cJSON_AddNumberToObject(filter_ids, "", *(double *)filter_idsListEntry->data) == NULL)
    {
        goto fail;
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

offer_location_t *offer_location_parseFromJSON(cJSON *offer_locationJSON){

    offer_location_t *offer_location_local_var = NULL;

    // define the local variable for offer_location->offer
    offer_t *offer_local_nonprim = NULL;

    // define the local variable for offer_location->location
    retailer_location_t *location_local_nonprim = NULL;

    // define the local list for offer_location->audiences
    list_t *audiencesList = NULL;

    // define the local variable for offer_location->qr_invite_code
    asset_t *qr_invite_code_local_nonprim = NULL;

    // define the local list for offer_location->notes
    list_t *notesList = NULL;

    // define the local variable for offer_location->content_asset
    asset_t *content_asset_local_nonprim = NULL;

    // define the local variable for offer_location->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for offer_location->category_ids
    list_t *category_idsList = NULL;

    // define the local list for offer_location->filter_ids
    list_t *filter_idsList = NULL;

    // offer_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // offer_location->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // offer_location->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // offer_location->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // offer_location->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // offer_location->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // offer_location->offer
    cJSON *offer = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "offer");
    if (cJSON_IsNull(offer)) {
        offer = NULL;
    }
    if (offer) { 
    offer_local_nonprim = offer_parseFromJSON(offer); //nonprimitive
    }

    // offer_location->location
    cJSON *location = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "location");
    if (cJSON_IsNull(location)) {
        location = NULL;
    }
    if (location) { 
    location_local_nonprim = retailer_location_parseFromJSON(location); //nonprimitive
    }

    // offer_location->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // offer_location->altitude
    cJSON *altitude = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "altitude");
    if (cJSON_IsNull(altitude)) {
        altitude = NULL;
    }
    if (altitude) { 
    if(!cJSON_IsNumber(altitude))
    {
    goto end; //Numeric
    }
    }

    // offer_location->custom_value
    cJSON *custom_value = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "customValue");
    if (cJSON_IsNull(custom_value)) {
        custom_value = NULL;
    }
    if (custom_value) { 
    if(!cJSON_IsNumber(custom_value))
    {
    goto end; //Numeric
    }
    }

    // offer_location->location_detail
    cJSON *location_detail = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "locationDetail");
    if (cJSON_IsNull(location_detail)) {
        location_detail = NULL;
    }
    if (location_detail) { 
    if(!cJSON_IsString(location_detail) && !cJSON_IsNull(location_detail))
    {
    goto end; //String
    }
    }

    // offer_location->audiences
    cJSON *audiences = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "audiences");
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
        audience_t *audiencesItem = audience_parseFromJSON(audiences_local_nonprimitive);

        list_addElement(audiencesList, audiencesItem);
    }
    }

    // offer_location->qr_invite_code
    cJSON *qr_invite_code = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "qrInviteCode");
    if (cJSON_IsNull(qr_invite_code)) {
        qr_invite_code = NULL;
    }
    if (qr_invite_code) { 
    qr_invite_code_local_nonprim = asset_parseFromJSON(qr_invite_code); //nonprimitive
    }

    // offer_location->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "notes");
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

    // offer_location->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // offer_location->search_index_updated
    cJSON *search_index_updated = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "searchIndexUpdated");
    if (cJSON_IsNull(search_index_updated)) {
        search_index_updated = NULL;
    }
    if (search_index_updated) { 
    if(!cJSON_IsString(search_index_updated) && !cJSON_IsNull(search_index_updated))
    {
    goto end; //DateTime
    }
    }

    // offer_location->in_search_index
    cJSON *in_search_index = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "inSearchIndex");
    if (cJSON_IsNull(in_search_index)) {
        in_search_index = NULL;
    }
    if (in_search_index) { 
    if(!cJSON_IsBool(in_search_index))
    {
    goto end; //Bool
    }
    }

    // offer_location->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // offer_location->added_count
    cJSON *added_count = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "addedCount");
    if (cJSON_IsNull(added_count)) {
        added_count = NULL;
    }
    if (added_count) { 
    if(!cJSON_IsNumber(added_count))
    {
    goto end; //Numeric
    }
    }

    // offer_location->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // offer_location->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // offer_location->device_power
    cJSON *device_power = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "devicePower");
    if (cJSON_IsNull(device_power)) {
        device_power = NULL;
    }
    if (device_power) { 
    if(!cJSON_IsNumber(device_power))
    {
    goto end; //Numeric
    }
    }

    // offer_location->power_loss
    cJSON *power_loss = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "powerLoss");
    if (cJSON_IsNull(power_loss)) {
        power_loss = NULL;
    }
    if (power_loss) { 
    if(!cJSON_IsNumber(power_loss))
    {
    goto end; //Numeric
    }
    }

    // offer_location->udid
    cJSON *udid = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "udid");
    if (cJSON_IsNull(udid)) {
        udid = NULL;
    }
    if (udid) { 
    if(!cJSON_IsString(udid) && !cJSON_IsNull(udid))
    {
    goto end; //String
    }
    }

    // offer_location->billable_id
    cJSON *billable_id = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "billableId");
    if (cJSON_IsNull(billable_id)) {
        billable_id = NULL;
    }
    if (billable_id) { 
    if(!cJSON_IsNumber(billable_id))
    {
    goto end; //Numeric
    }
    }

    // offer_location->sub_type
    cJSON *sub_type = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "subType");
    if (cJSON_IsNull(sub_type)) {
        sub_type = NULL;
    }
    if (sub_type) { 
    if(!cJSON_IsString(sub_type) && !cJSON_IsNull(sub_type))
    {
    goto end; //String
    }
    }

    // offer_location->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // offer_location->content_asset
    cJSON *content_asset = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "contentAsset");
    if (cJSON_IsNull(content_asset)) {
        content_asset = NULL;
    }
    if (content_asset) { 
    content_asset_local_nonprim = asset_parseFromJSON(content_asset); //nonprimitive
    }

    // offer_location->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // offer_location->secondary_type
    cJSON *secondary_type = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "secondaryType");
    if (cJSON_IsNull(secondary_type)) {
        secondary_type = NULL;
    }
    if (secondary_type) { 
    if(!cJSON_IsString(secondary_type) && !cJSON_IsNull(secondary_type))
    {
    goto end; //String
    }
    }

    // offer_location->category_ids
    cJSON *category_ids = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "categoryIds");
    if (cJSON_IsNull(category_ids)) {
        category_ids = NULL;
    }
    if (category_ids) { 
    cJSON *category_ids_local = NULL;
    if(!cJSON_IsArray(category_ids)) {
        goto end;//primitive container
    }
    category_idsList = list_createList();

    cJSON_ArrayForEach(category_ids_local, category_ids)
    {
        if(!cJSON_IsNumber(category_ids_local))
        {
            goto end;
        }
        double *category_ids_local_value = calloc(1, sizeof(double));
        if(!category_ids_local_value)
        {
            goto end;
        }
        *category_ids_local_value = category_ids_local->valuedouble;
        list_addElement(category_idsList , category_ids_local_value);
    }
    }

    // offer_location->filter_ids
    cJSON *filter_ids = cJSON_GetObjectItemCaseSensitive(offer_locationJSON, "filterIds");
    if (cJSON_IsNull(filter_ids)) {
        filter_ids = NULL;
    }
    if (filter_ids) { 
    cJSON *filter_ids_local = NULL;
    if(!cJSON_IsArray(filter_ids)) {
        goto end;//primitive container
    }
    filter_idsList = list_createList();

    cJSON_ArrayForEach(filter_ids_local, filter_ids)
    {
        if(!cJSON_IsNumber(filter_ids_local))
        {
            goto end;
        }
        double *filter_ids_local_value = calloc(1, sizeof(double));
        if(!filter_ids_local_value)
        {
            goto end;
        }
        *filter_ids_local_value = filter_ids_local->valuedouble;
        list_addElement(filter_idsList , filter_ids_local_value);
    }
    }


    offer_location_local_var = offer_location_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        offer ? offer_local_nonprim : NULL,
        location ? location_local_nonprim : NULL,
        distance ? distance->valuedouble : 0,
        altitude ? altitude->valuedouble : 0,
        custom_value ? custom_value->valuedouble : 0,
        location_detail && !cJSON_IsNull(location_detail) ? strdup(location_detail->valuestring) : NULL,
        audiences ? audiencesList : NULL,
        qr_invite_code ? qr_invite_code_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        search_index_updated && !cJSON_IsNull(search_index_updated) ? strdup(search_index_updated->valuestring) : NULL,
        in_search_index ? in_search_index->valueint : 0,
        favorite_count ? favorite_count->valuedouble : 0,
        added_count ? added_count->valuedouble : 0,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        device_power ? device_power->valuedouble : 0,
        power_loss ? power_loss->valuedouble : 0,
        udid && !cJSON_IsNull(udid) ? strdup(udid->valuestring) : NULL,
        billable_id ? billable_id->valuedouble : 0,
        sub_type && !cJSON_IsNull(sub_type) ? strdup(sub_type->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        content_asset ? content_asset_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL,
        secondary_type && !cJSON_IsNull(secondary_type) ? strdup(secondary_type->valuestring) : NULL,
        category_ids ? category_idsList : NULL,
        filter_ids ? filter_idsList : NULL
        );

    return offer_location_local_var;
end:
    if (offer_local_nonprim) {
        offer_free(offer_local_nonprim);
        offer_local_nonprim = NULL;
    }
    if (location_local_nonprim) {
        retailer_location_free(location_local_nonprim);
        location_local_nonprim = NULL;
    }
    if (audiencesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, audiencesList) {
            audience_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(audiencesList);
        audiencesList = NULL;
    }
    if (qr_invite_code_local_nonprim) {
        asset_free(qr_invite_code_local_nonprim);
        qr_invite_code_local_nonprim = NULL;
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
    if (content_asset_local_nonprim) {
        asset_free(content_asset_local_nonprim);
        content_asset_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (category_idsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, category_idsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(category_idsList);
        category_idsList = NULL;
    }
    if (filter_idsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, filter_idsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(filter_idsList);
        filter_idsList = NULL;
    }
    return NULL;

}
