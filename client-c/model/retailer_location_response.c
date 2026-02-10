#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_location_response.h"



static retailer_location_response_t *retailer_location_response_create_internal(
    long retailer_location_id,
    char *name,
    contact_info_response_t *contact,
    double latitude,
    double longitude,
    int active,
    long favorite_id,
    int favorite,
    profile_short_response_t *responsible,
    profile_short_response_t *manager,
    list_t *categories,
    list_t *filters,
    asset_short_response_t *logo,
    asset_short_response_t *picture1,
    asset_short_response_t *picture2,
    billable_entity_response_t *billable_entity,
    retailer_count_response_t *counts,
    retailer_short_response_t *retailer,
    list_response_t *offers,
    char *internal_id,
    char *details_header,
    char *details_body,
    char *hours,
    char *location_token,
    char *building,
    char *qr_code_url,
    double distance,
    char *google_place_id,
    char *yelp_id
    ) {
    retailer_location_response_t *retailer_location_response_local_var = malloc(sizeof(retailer_location_response_t));
    if (!retailer_location_response_local_var) {
        return NULL;
    }
    retailer_location_response_local_var->retailer_location_id = retailer_location_id;
    retailer_location_response_local_var->name = name;
    retailer_location_response_local_var->contact = contact;
    retailer_location_response_local_var->latitude = latitude;
    retailer_location_response_local_var->longitude = longitude;
    retailer_location_response_local_var->active = active;
    retailer_location_response_local_var->favorite_id = favorite_id;
    retailer_location_response_local_var->favorite = favorite;
    retailer_location_response_local_var->responsible = responsible;
    retailer_location_response_local_var->manager = manager;
    retailer_location_response_local_var->categories = categories;
    retailer_location_response_local_var->filters = filters;
    retailer_location_response_local_var->logo = logo;
    retailer_location_response_local_var->picture1 = picture1;
    retailer_location_response_local_var->picture2 = picture2;
    retailer_location_response_local_var->billable_entity = billable_entity;
    retailer_location_response_local_var->counts = counts;
    retailer_location_response_local_var->retailer = retailer;
    retailer_location_response_local_var->offers = offers;
    retailer_location_response_local_var->internal_id = internal_id;
    retailer_location_response_local_var->details_header = details_header;
    retailer_location_response_local_var->details_body = details_body;
    retailer_location_response_local_var->hours = hours;
    retailer_location_response_local_var->location_token = location_token;
    retailer_location_response_local_var->building = building;
    retailer_location_response_local_var->qr_code_url = qr_code_url;
    retailer_location_response_local_var->distance = distance;
    retailer_location_response_local_var->google_place_id = google_place_id;
    retailer_location_response_local_var->yelp_id = yelp_id;

    retailer_location_response_local_var->_library_owned = 1;
    return retailer_location_response_local_var;
}

__attribute__((deprecated)) retailer_location_response_t *retailer_location_response_create(
    long retailer_location_id,
    char *name,
    contact_info_response_t *contact,
    double latitude,
    double longitude,
    int active,
    long favorite_id,
    int favorite,
    profile_short_response_t *responsible,
    profile_short_response_t *manager,
    list_t *categories,
    list_t *filters,
    asset_short_response_t *logo,
    asset_short_response_t *picture1,
    asset_short_response_t *picture2,
    billable_entity_response_t *billable_entity,
    retailer_count_response_t *counts,
    retailer_short_response_t *retailer,
    list_response_t *offers,
    char *internal_id,
    char *details_header,
    char *details_body,
    char *hours,
    char *location_token,
    char *building,
    char *qr_code_url,
    double distance,
    char *google_place_id,
    char *yelp_id
    ) {
    return retailer_location_response_create_internal (
        retailer_location_id,
        name,
        contact,
        latitude,
        longitude,
        active,
        favorite_id,
        favorite,
        responsible,
        manager,
        categories,
        filters,
        logo,
        picture1,
        picture2,
        billable_entity,
        counts,
        retailer,
        offers,
        internal_id,
        details_header,
        details_body,
        hours,
        location_token,
        building,
        qr_code_url,
        distance,
        google_place_id,
        yelp_id
        );
}

void retailer_location_response_free(retailer_location_response_t *retailer_location_response) {
    if(NULL == retailer_location_response){
        return ;
    }
    if(retailer_location_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_location_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer_location_response->name) {
        free(retailer_location_response->name);
        retailer_location_response->name = NULL;
    }
    if (retailer_location_response->contact) {
        contact_info_response_free(retailer_location_response->contact);
        retailer_location_response->contact = NULL;
    }
    if (retailer_location_response->responsible) {
        profile_short_response_free(retailer_location_response->responsible);
        retailer_location_response->responsible = NULL;
    }
    if (retailer_location_response->manager) {
        profile_short_response_free(retailer_location_response->manager);
        retailer_location_response->manager = NULL;
    }
    if (retailer_location_response->categories) {
        list_ForEach(listEntry, retailer_location_response->categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(retailer_location_response->categories);
        retailer_location_response->categories = NULL;
    }
    if (retailer_location_response->filters) {
        list_ForEach(listEntry, retailer_location_response->filters) {
            filter_response_free(listEntry->data);
        }
        list_freeList(retailer_location_response->filters);
        retailer_location_response->filters = NULL;
    }
    if (retailer_location_response->logo) {
        asset_short_response_free(retailer_location_response->logo);
        retailer_location_response->logo = NULL;
    }
    if (retailer_location_response->picture1) {
        asset_short_response_free(retailer_location_response->picture1);
        retailer_location_response->picture1 = NULL;
    }
    if (retailer_location_response->picture2) {
        asset_short_response_free(retailer_location_response->picture2);
        retailer_location_response->picture2 = NULL;
    }
    if (retailer_location_response->billable_entity) {
        billable_entity_response_free(retailer_location_response->billable_entity);
        retailer_location_response->billable_entity = NULL;
    }
    if (retailer_location_response->counts) {
        retailer_count_response_free(retailer_location_response->counts);
        retailer_location_response->counts = NULL;
    }
    if (retailer_location_response->retailer) {
        retailer_short_response_free(retailer_location_response->retailer);
        retailer_location_response->retailer = NULL;
    }
    if (retailer_location_response->offers) {
        list_response_free(retailer_location_response->offers);
        retailer_location_response->offers = NULL;
    }
    if (retailer_location_response->internal_id) {
        free(retailer_location_response->internal_id);
        retailer_location_response->internal_id = NULL;
    }
    if (retailer_location_response->details_header) {
        free(retailer_location_response->details_header);
        retailer_location_response->details_header = NULL;
    }
    if (retailer_location_response->details_body) {
        free(retailer_location_response->details_body);
        retailer_location_response->details_body = NULL;
    }
    if (retailer_location_response->hours) {
        free(retailer_location_response->hours);
        retailer_location_response->hours = NULL;
    }
    if (retailer_location_response->location_token) {
        free(retailer_location_response->location_token);
        retailer_location_response->location_token = NULL;
    }
    if (retailer_location_response->building) {
        free(retailer_location_response->building);
        retailer_location_response->building = NULL;
    }
    if (retailer_location_response->qr_code_url) {
        free(retailer_location_response->qr_code_url);
        retailer_location_response->qr_code_url = NULL;
    }
    if (retailer_location_response->google_place_id) {
        free(retailer_location_response->google_place_id);
        retailer_location_response->google_place_id = NULL;
    }
    if (retailer_location_response->yelp_id) {
        free(retailer_location_response->yelp_id);
        retailer_location_response->yelp_id = NULL;
    }
    free(retailer_location_response);
}

cJSON *retailer_location_response_convertToJSON(retailer_location_response_t *retailer_location_response) {
    cJSON *item = cJSON_CreateObject();

    // retailer_location_response->retailer_location_id
    if(retailer_location_response->retailer_location_id) {
    if(cJSON_AddNumberToObject(item, "retailerLocationId", retailer_location_response->retailer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_response->name
    if(retailer_location_response->name) {
    if(cJSON_AddStringToObject(item, "name", retailer_location_response->name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->contact
    if(retailer_location_response->contact) {
    cJSON *contact_local_JSON = contact_info_response_convertToJSON(retailer_location_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->latitude
    if(retailer_location_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", retailer_location_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_response->longitude
    if(retailer_location_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", retailer_location_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_response->active
    if(retailer_location_response->active) {
    if(cJSON_AddBoolToObject(item, "active", retailer_location_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location_response->favorite_id
    if(retailer_location_response->favorite_id) {
    if(cJSON_AddNumberToObject(item, "favoriteId", retailer_location_response->favorite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_response->favorite
    if(retailer_location_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", retailer_location_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location_response->responsible
    if(retailer_location_response->responsible) {
    cJSON *responsible_local_JSON = profile_short_response_convertToJSON(retailer_location_response->responsible);
    if(responsible_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "responsible", responsible_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->manager
    if(retailer_location_response->manager) {
    cJSON *manager_local_JSON = profile_short_response_convertToJSON(retailer_location_response->manager);
    if(manager_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "manager", manager_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->categories
    if(retailer_location_response->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (retailer_location_response->categories) {
    list_ForEach(categoriesListEntry, retailer_location_response->categories) {
    cJSON *itemLocal = category_response_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // retailer_location_response->filters
    if(retailer_location_response->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (retailer_location_response->filters) {
    list_ForEach(filtersListEntry, retailer_location_response->filters) {
    cJSON *itemLocal = filter_response_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }


    // retailer_location_response->logo
    if(retailer_location_response->logo) {
    cJSON *logo_local_JSON = asset_short_response_convertToJSON(retailer_location_response->logo);
    if(logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "logo", logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->picture1
    if(retailer_location_response->picture1) {
    cJSON *picture1_local_JSON = asset_short_response_convertToJSON(retailer_location_response->picture1);
    if(picture1_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture1", picture1_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->picture2
    if(retailer_location_response->picture2) {
    cJSON *picture2_local_JSON = asset_short_response_convertToJSON(retailer_location_response->picture2);
    if(picture2_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture2", picture2_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->billable_entity
    if(retailer_location_response->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_response_convertToJSON(retailer_location_response->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->counts
    if(retailer_location_response->counts) {
    cJSON *counts_local_JSON = retailer_count_response_convertToJSON(retailer_location_response->counts);
    if(counts_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "counts", counts_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->retailer
    if(retailer_location_response->retailer) {
    cJSON *retailer_local_JSON = retailer_short_response_convertToJSON(retailer_location_response->retailer);
    if(retailer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retailer", retailer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->offers
    if(retailer_location_response->offers) {
    cJSON *offers_local_JSON = list_response_convertToJSON(retailer_location_response->offers);
    if(offers_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offers", offers_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_response->internal_id
    if(retailer_location_response->internal_id) {
    if(cJSON_AddStringToObject(item, "internalId", retailer_location_response->internal_id) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->details_header
    if(retailer_location_response->details_header) {
    if(cJSON_AddStringToObject(item, "detailsHeader", retailer_location_response->details_header) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->details_body
    if(retailer_location_response->details_body) {
    if(cJSON_AddStringToObject(item, "detailsBody", retailer_location_response->details_body) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->hours
    if(retailer_location_response->hours) {
    if(cJSON_AddStringToObject(item, "hours", retailer_location_response->hours) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->location_token
    if(retailer_location_response->location_token) {
    if(cJSON_AddStringToObject(item, "locationToken", retailer_location_response->location_token) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->building
    if(retailer_location_response->building) {
    if(cJSON_AddStringToObject(item, "building", retailer_location_response->building) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->qr_code_url
    if(retailer_location_response->qr_code_url) {
    if(cJSON_AddStringToObject(item, "qrCodeUrl", retailer_location_response->qr_code_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->distance
    if(retailer_location_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", retailer_location_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_response->google_place_id
    if(retailer_location_response->google_place_id) {
    if(cJSON_AddStringToObject(item, "googlePlaceId", retailer_location_response->google_place_id) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_response->yelp_id
    if(retailer_location_response->yelp_id) {
    if(cJSON_AddStringToObject(item, "yelpId", retailer_location_response->yelp_id) == NULL) {
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

retailer_location_response_t *retailer_location_response_parseFromJSON(cJSON *retailer_location_responseJSON){

    retailer_location_response_t *retailer_location_response_local_var = NULL;

    // define the local variable for retailer_location_response->contact
    contact_info_response_t *contact_local_nonprim = NULL;

    // define the local variable for retailer_location_response->responsible
    profile_short_response_t *responsible_local_nonprim = NULL;

    // define the local variable for retailer_location_response->manager
    profile_short_response_t *manager_local_nonprim = NULL;

    // define the local list for retailer_location_response->categories
    list_t *categoriesList = NULL;

    // define the local list for retailer_location_response->filters
    list_t *filtersList = NULL;

    // define the local variable for retailer_location_response->logo
    asset_short_response_t *logo_local_nonprim = NULL;

    // define the local variable for retailer_location_response->picture1
    asset_short_response_t *picture1_local_nonprim = NULL;

    // define the local variable for retailer_location_response->picture2
    asset_short_response_t *picture2_local_nonprim = NULL;

    // define the local variable for retailer_location_response->billable_entity
    billable_entity_response_t *billable_entity_local_nonprim = NULL;

    // define the local variable for retailer_location_response->counts
    retailer_count_response_t *counts_local_nonprim = NULL;

    // define the local variable for retailer_location_response->retailer
    retailer_short_response_t *retailer_local_nonprim = NULL;

    // define the local variable for retailer_location_response->offers
    list_response_t *offers_local_nonprim = NULL;

    // retailer_location_response->retailer_location_id
    cJSON *retailer_location_id = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "retailerLocationId");
    if (cJSON_IsNull(retailer_location_id)) {
        retailer_location_id = NULL;
    }
    if (retailer_location_id) { 
    if(!cJSON_IsNumber(retailer_location_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // retailer_location_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_info_response_parseFromJSON(contact); //nonprimitive
    }

    // retailer_location_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // retailer_location_response->favorite_id
    cJSON *favorite_id = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "favoriteId");
    if (cJSON_IsNull(favorite_id)) {
        favorite_id = NULL;
    }
    if (favorite_id) { 
    if(!cJSON_IsNumber(favorite_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }

    // retailer_location_response->responsible
    cJSON *responsible = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "responsible");
    if (cJSON_IsNull(responsible)) {
        responsible = NULL;
    }
    if (responsible) { 
    responsible_local_nonprim = profile_short_response_parseFromJSON(responsible); //nonprimitive
    }

    // retailer_location_response->manager
    cJSON *manager = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "manager");
    if (cJSON_IsNull(manager)) {
        manager = NULL;
    }
    if (manager) { 
    manager_local_nonprim = profile_short_response_parseFromJSON(manager); //nonprimitive
    }

    // retailer_location_response->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "categories");
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

    // retailer_location_response->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "filters");
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

    // retailer_location_response->logo
    cJSON *logo = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "logo");
    if (cJSON_IsNull(logo)) {
        logo = NULL;
    }
    if (logo) { 
    logo_local_nonprim = asset_short_response_parseFromJSON(logo); //nonprimitive
    }

    // retailer_location_response->picture1
    cJSON *picture1 = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "picture1");
    if (cJSON_IsNull(picture1)) {
        picture1 = NULL;
    }
    if (picture1) { 
    picture1_local_nonprim = asset_short_response_parseFromJSON(picture1); //nonprimitive
    }

    // retailer_location_response->picture2
    cJSON *picture2 = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "picture2");
    if (cJSON_IsNull(picture2)) {
        picture2 = NULL;
    }
    if (picture2) { 
    picture2_local_nonprim = asset_short_response_parseFromJSON(picture2); //nonprimitive
    }

    // retailer_location_response->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_response_parseFromJSON(billable_entity); //nonprimitive
    }

    // retailer_location_response->counts
    cJSON *counts = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "counts");
    if (cJSON_IsNull(counts)) {
        counts = NULL;
    }
    if (counts) { 
    counts_local_nonprim = retailer_count_response_parseFromJSON(counts); //nonprimitive
    }

    // retailer_location_response->retailer
    cJSON *retailer = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "retailer");
    if (cJSON_IsNull(retailer)) {
        retailer = NULL;
    }
    if (retailer) { 
    retailer_local_nonprim = retailer_short_response_parseFromJSON(retailer); //nonprimitive
    }

    // retailer_location_response->offers
    cJSON *offers = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "offers");
    if (cJSON_IsNull(offers)) {
        offers = NULL;
    }
    if (offers) { 
    offers_local_nonprim = list_response_parseFromJSON(offers); //nonprimitive
    }

    // retailer_location_response->internal_id
    cJSON *internal_id = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "internalId");
    if (cJSON_IsNull(internal_id)) {
        internal_id = NULL;
    }
    if (internal_id) { 
    if(!cJSON_IsString(internal_id) && !cJSON_IsNull(internal_id))
    {
    goto end; //String
    }
    }

    // retailer_location_response->details_header
    cJSON *details_header = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "detailsHeader");
    if (cJSON_IsNull(details_header)) {
        details_header = NULL;
    }
    if (details_header) { 
    if(!cJSON_IsString(details_header) && !cJSON_IsNull(details_header))
    {
    goto end; //String
    }
    }

    // retailer_location_response->details_body
    cJSON *details_body = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "detailsBody");
    if (cJSON_IsNull(details_body)) {
        details_body = NULL;
    }
    if (details_body) { 
    if(!cJSON_IsString(details_body) && !cJSON_IsNull(details_body))
    {
    goto end; //String
    }
    }

    // retailer_location_response->hours
    cJSON *hours = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "hours");
    if (cJSON_IsNull(hours)) {
        hours = NULL;
    }
    if (hours) { 
    if(!cJSON_IsString(hours) && !cJSON_IsNull(hours))
    {
    goto end; //String
    }
    }

    // retailer_location_response->location_token
    cJSON *location_token = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "locationToken");
    if (cJSON_IsNull(location_token)) {
        location_token = NULL;
    }
    if (location_token) { 
    if(!cJSON_IsString(location_token) && !cJSON_IsNull(location_token))
    {
    goto end; //String
    }
    }

    // retailer_location_response->building
    cJSON *building = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "building");
    if (cJSON_IsNull(building)) {
        building = NULL;
    }
    if (building) { 
    if(!cJSON_IsString(building) && !cJSON_IsNull(building))
    {
    goto end; //String
    }
    }

    // retailer_location_response->qr_code_url
    cJSON *qr_code_url = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "qrCodeUrl");
    if (cJSON_IsNull(qr_code_url)) {
        qr_code_url = NULL;
    }
    if (qr_code_url) { 
    if(!cJSON_IsString(qr_code_url) && !cJSON_IsNull(qr_code_url))
    {
    goto end; //String
    }
    }

    // retailer_location_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_response->google_place_id
    cJSON *google_place_id = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "googlePlaceId");
    if (cJSON_IsNull(google_place_id)) {
        google_place_id = NULL;
    }
    if (google_place_id) { 
    if(!cJSON_IsString(google_place_id) && !cJSON_IsNull(google_place_id))
    {
    goto end; //String
    }
    }

    // retailer_location_response->yelp_id
    cJSON *yelp_id = cJSON_GetObjectItemCaseSensitive(retailer_location_responseJSON, "yelpId");
    if (cJSON_IsNull(yelp_id)) {
        yelp_id = NULL;
    }
    if (yelp_id) { 
    if(!cJSON_IsString(yelp_id) && !cJSON_IsNull(yelp_id))
    {
    goto end; //String
    }
    }


    retailer_location_response_local_var = retailer_location_response_create_internal (
        retailer_location_id ? retailer_location_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        contact ? contact_local_nonprim : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        active ? active->valueint : 0,
        favorite_id ? favorite_id->valuedouble : 0,
        favorite ? favorite->valueint : 0,
        responsible ? responsible_local_nonprim : NULL,
        manager ? manager_local_nonprim : NULL,
        categories ? categoriesList : NULL,
        filters ? filtersList : NULL,
        logo ? logo_local_nonprim : NULL,
        picture1 ? picture1_local_nonprim : NULL,
        picture2 ? picture2_local_nonprim : NULL,
        billable_entity ? billable_entity_local_nonprim : NULL,
        counts ? counts_local_nonprim : NULL,
        retailer ? retailer_local_nonprim : NULL,
        offers ? offers_local_nonprim : NULL,
        internal_id && !cJSON_IsNull(internal_id) ? strdup(internal_id->valuestring) : NULL,
        details_header && !cJSON_IsNull(details_header) ? strdup(details_header->valuestring) : NULL,
        details_body && !cJSON_IsNull(details_body) ? strdup(details_body->valuestring) : NULL,
        hours && !cJSON_IsNull(hours) ? strdup(hours->valuestring) : NULL,
        location_token && !cJSON_IsNull(location_token) ? strdup(location_token->valuestring) : NULL,
        building && !cJSON_IsNull(building) ? strdup(building->valuestring) : NULL,
        qr_code_url && !cJSON_IsNull(qr_code_url) ? strdup(qr_code_url->valuestring) : NULL,
        distance ? distance->valuedouble : 0,
        google_place_id && !cJSON_IsNull(google_place_id) ? strdup(google_place_id->valuestring) : NULL,
        yelp_id && !cJSON_IsNull(yelp_id) ? strdup(yelp_id->valuestring) : NULL
        );

    return retailer_location_response_local_var;
end:
    if (contact_local_nonprim) {
        contact_info_response_free(contact_local_nonprim);
        contact_local_nonprim = NULL;
    }
    if (responsible_local_nonprim) {
        profile_short_response_free(responsible_local_nonprim);
        responsible_local_nonprim = NULL;
    }
    if (manager_local_nonprim) {
        profile_short_response_free(manager_local_nonprim);
        manager_local_nonprim = NULL;
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
    if (logo_local_nonprim) {
        asset_short_response_free(logo_local_nonprim);
        logo_local_nonprim = NULL;
    }
    if (picture1_local_nonprim) {
        asset_short_response_free(picture1_local_nonprim);
        picture1_local_nonprim = NULL;
    }
    if (picture2_local_nonprim) {
        asset_short_response_free(picture2_local_nonprim);
        picture2_local_nonprim = NULL;
    }
    if (billable_entity_local_nonprim) {
        billable_entity_response_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    if (counts_local_nonprim) {
        retailer_count_response_free(counts_local_nonprim);
        counts_local_nonprim = NULL;
    }
    if (retailer_local_nonprim) {
        retailer_short_response_free(retailer_local_nonprim);
        retailer_local_nonprim = NULL;
    }
    if (offers_local_nonprim) {
        list_response_free(offers_local_nonprim);
        offers_local_nonprim = NULL;
    }
    return NULL;

}
