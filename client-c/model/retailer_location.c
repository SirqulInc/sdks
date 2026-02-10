#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_location.h"



static retailer_location_t *retailer_location_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    list_t *categories,
    list_t *filters,
    list_t *offer_locations,
    asset_t *logo,
    asset_t *picture1,
    asset_t *picture2,
    asset_t *qr_code,
    char *name,
    char *location_id,
    char *code,
    retailer_t *retailer,
    list_t *assignments,
    assignment_t *current_assignment,
    retailer_profile_t *profile,
    list_t *regions,
    char *offer_print_key_prefix,
    list_t *administrators,
    long sqoot_id,
    long yipit_id,
    char *location_token,
    building_t *building,
    list_t *notes,
    long note_count,
    char *search_index_updated,
    int in_search_index,
    long favorite_count,
    int has_ratings,
    char *google_place_id,
    char *yelp_id,
    char *display,
    char *app_key,
    char *category_tree,
    char *filter_tree,
    char *address_display,
    char *map_query,
    char *sort_name,
    char *full_display,
    int has_offers,
    long billable_id,
    char *sub_type,
    char *content_name,
    account_t *owner,
    char *secondary_type,
    char *location_address,
    list_t *valid_offer_location_ids
    ) {
    retailer_location_t *retailer_location_local_var = malloc(sizeof(retailer_location_t));
    if (!retailer_location_local_var) {
        return NULL;
    }
    retailer_location_local_var->id = id;
    retailer_location_local_var->active = active;
    retailer_location_local_var->valid = valid;
    retailer_location_local_var->latitude = latitude;
    retailer_location_local_var->longitude = longitude;
    retailer_location_local_var->location_description = location_description;
    retailer_location_local_var->categories = categories;
    retailer_location_local_var->filters = filters;
    retailer_location_local_var->offer_locations = offer_locations;
    retailer_location_local_var->logo = logo;
    retailer_location_local_var->picture1 = picture1;
    retailer_location_local_var->picture2 = picture2;
    retailer_location_local_var->qr_code = qr_code;
    retailer_location_local_var->name = name;
    retailer_location_local_var->location_id = location_id;
    retailer_location_local_var->code = code;
    retailer_location_local_var->retailer = retailer;
    retailer_location_local_var->assignments = assignments;
    retailer_location_local_var->current_assignment = current_assignment;
    retailer_location_local_var->profile = profile;
    retailer_location_local_var->regions = regions;
    retailer_location_local_var->offer_print_key_prefix = offer_print_key_prefix;
    retailer_location_local_var->administrators = administrators;
    retailer_location_local_var->sqoot_id = sqoot_id;
    retailer_location_local_var->yipit_id = yipit_id;
    retailer_location_local_var->location_token = location_token;
    retailer_location_local_var->building = building;
    retailer_location_local_var->notes = notes;
    retailer_location_local_var->note_count = note_count;
    retailer_location_local_var->search_index_updated = search_index_updated;
    retailer_location_local_var->in_search_index = in_search_index;
    retailer_location_local_var->favorite_count = favorite_count;
    retailer_location_local_var->has_ratings = has_ratings;
    retailer_location_local_var->google_place_id = google_place_id;
    retailer_location_local_var->yelp_id = yelp_id;
    retailer_location_local_var->display = display;
    retailer_location_local_var->app_key = app_key;
    retailer_location_local_var->category_tree = category_tree;
    retailer_location_local_var->filter_tree = filter_tree;
    retailer_location_local_var->address_display = address_display;
    retailer_location_local_var->map_query = map_query;
    retailer_location_local_var->sort_name = sort_name;
    retailer_location_local_var->full_display = full_display;
    retailer_location_local_var->has_offers = has_offers;
    retailer_location_local_var->billable_id = billable_id;
    retailer_location_local_var->sub_type = sub_type;
    retailer_location_local_var->content_name = content_name;
    retailer_location_local_var->owner = owner;
    retailer_location_local_var->secondary_type = secondary_type;
    retailer_location_local_var->location_address = location_address;
    retailer_location_local_var->valid_offer_location_ids = valid_offer_location_ids;

    retailer_location_local_var->_library_owned = 1;
    return retailer_location_local_var;
}

__attribute__((deprecated)) retailer_location_t *retailer_location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    list_t *categories,
    list_t *filters,
    list_t *offer_locations,
    asset_t *logo,
    asset_t *picture1,
    asset_t *picture2,
    asset_t *qr_code,
    char *name,
    char *location_id,
    char *code,
    retailer_t *retailer,
    list_t *assignments,
    assignment_t *current_assignment,
    retailer_profile_t *profile,
    list_t *regions,
    char *offer_print_key_prefix,
    list_t *administrators,
    long sqoot_id,
    long yipit_id,
    char *location_token,
    building_t *building,
    list_t *notes,
    long note_count,
    char *search_index_updated,
    int in_search_index,
    long favorite_count,
    int has_ratings,
    char *google_place_id,
    char *yelp_id,
    char *display,
    char *app_key,
    char *category_tree,
    char *filter_tree,
    char *address_display,
    char *map_query,
    char *sort_name,
    char *full_display,
    int has_offers,
    long billable_id,
    char *sub_type,
    char *content_name,
    account_t *owner,
    char *secondary_type,
    char *location_address,
    list_t *valid_offer_location_ids
    ) {
    return retailer_location_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        categories,
        filters,
        offer_locations,
        logo,
        picture1,
        picture2,
        qr_code,
        name,
        location_id,
        code,
        retailer,
        assignments,
        current_assignment,
        profile,
        regions,
        offer_print_key_prefix,
        administrators,
        sqoot_id,
        yipit_id,
        location_token,
        building,
        notes,
        note_count,
        search_index_updated,
        in_search_index,
        favorite_count,
        has_ratings,
        google_place_id,
        yelp_id,
        display,
        app_key,
        category_tree,
        filter_tree,
        address_display,
        map_query,
        sort_name,
        full_display,
        has_offers,
        billable_id,
        sub_type,
        content_name,
        owner,
        secondary_type,
        location_address,
        valid_offer_location_ids
        );
}

void retailer_location_free(retailer_location_t *retailer_location) {
    if(NULL == retailer_location){
        return ;
    }
    if(retailer_location->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_location_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer_location->location_description) {
        free(retailer_location->location_description);
        retailer_location->location_description = NULL;
    }
    if (retailer_location->categories) {
        list_ForEach(listEntry, retailer_location->categories) {
            category_free(listEntry->data);
        }
        list_freeList(retailer_location->categories);
        retailer_location->categories = NULL;
    }
    if (retailer_location->filters) {
        list_ForEach(listEntry, retailer_location->filters) {
            filter_free(listEntry->data);
        }
        list_freeList(retailer_location->filters);
        retailer_location->filters = NULL;
    }
    if (retailer_location->offer_locations) {
        list_ForEach(listEntry, retailer_location->offer_locations) {
            offer_location_free(listEntry->data);
        }
        list_freeList(retailer_location->offer_locations);
        retailer_location->offer_locations = NULL;
    }
    if (retailer_location->logo) {
        asset_free(retailer_location->logo);
        retailer_location->logo = NULL;
    }
    if (retailer_location->picture1) {
        asset_free(retailer_location->picture1);
        retailer_location->picture1 = NULL;
    }
    if (retailer_location->picture2) {
        asset_free(retailer_location->picture2);
        retailer_location->picture2 = NULL;
    }
    if (retailer_location->qr_code) {
        asset_free(retailer_location->qr_code);
        retailer_location->qr_code = NULL;
    }
    if (retailer_location->name) {
        free(retailer_location->name);
        retailer_location->name = NULL;
    }
    if (retailer_location->location_id) {
        free(retailer_location->location_id);
        retailer_location->location_id = NULL;
    }
    if (retailer_location->code) {
        free(retailer_location->code);
        retailer_location->code = NULL;
    }
    if (retailer_location->retailer) {
        retailer_free(retailer_location->retailer);
        retailer_location->retailer = NULL;
    }
    if (retailer_location->assignments) {
        list_ForEach(listEntry, retailer_location->assignments) {
            assignment_free(listEntry->data);
        }
        list_freeList(retailer_location->assignments);
        retailer_location->assignments = NULL;
    }
    if (retailer_location->current_assignment) {
        assignment_free(retailer_location->current_assignment);
        retailer_location->current_assignment = NULL;
    }
    if (retailer_location->profile) {
        retailer_profile_free(retailer_location->profile);
        retailer_location->profile = NULL;
    }
    if (retailer_location->regions) {
        list_ForEach(listEntry, retailer_location->regions) {
            region_free(listEntry->data);
        }
        list_freeList(retailer_location->regions);
        retailer_location->regions = NULL;
    }
    if (retailer_location->offer_print_key_prefix) {
        free(retailer_location->offer_print_key_prefix);
        retailer_location->offer_print_key_prefix = NULL;
    }
    if (retailer_location->administrators) {
        list_ForEach(listEntry, retailer_location->administrators) {
            account_free(listEntry->data);
        }
        list_freeList(retailer_location->administrators);
        retailer_location->administrators = NULL;
    }
    if (retailer_location->location_token) {
        free(retailer_location->location_token);
        retailer_location->location_token = NULL;
    }
    if (retailer_location->building) {
        building_free(retailer_location->building);
        retailer_location->building = NULL;
    }
    if (retailer_location->notes) {
        list_ForEach(listEntry, retailer_location->notes) {
            note_free(listEntry->data);
        }
        list_freeList(retailer_location->notes);
        retailer_location->notes = NULL;
    }
    if (retailer_location->search_index_updated) {
        free(retailer_location->search_index_updated);
        retailer_location->search_index_updated = NULL;
    }
    if (retailer_location->google_place_id) {
        free(retailer_location->google_place_id);
        retailer_location->google_place_id = NULL;
    }
    if (retailer_location->yelp_id) {
        free(retailer_location->yelp_id);
        retailer_location->yelp_id = NULL;
    }
    if (retailer_location->display) {
        free(retailer_location->display);
        retailer_location->display = NULL;
    }
    if (retailer_location->app_key) {
        free(retailer_location->app_key);
        retailer_location->app_key = NULL;
    }
    if (retailer_location->category_tree) {
        free(retailer_location->category_tree);
        retailer_location->category_tree = NULL;
    }
    if (retailer_location->filter_tree) {
        free(retailer_location->filter_tree);
        retailer_location->filter_tree = NULL;
    }
    if (retailer_location->address_display) {
        free(retailer_location->address_display);
        retailer_location->address_display = NULL;
    }
    if (retailer_location->map_query) {
        free(retailer_location->map_query);
        retailer_location->map_query = NULL;
    }
    if (retailer_location->sort_name) {
        free(retailer_location->sort_name);
        retailer_location->sort_name = NULL;
    }
    if (retailer_location->full_display) {
        free(retailer_location->full_display);
        retailer_location->full_display = NULL;
    }
    if (retailer_location->sub_type) {
        free(retailer_location->sub_type);
        retailer_location->sub_type = NULL;
    }
    if (retailer_location->content_name) {
        free(retailer_location->content_name);
        retailer_location->content_name = NULL;
    }
    if (retailer_location->owner) {
        account_free(retailer_location->owner);
        retailer_location->owner = NULL;
    }
    if (retailer_location->secondary_type) {
        free(retailer_location->secondary_type);
        retailer_location->secondary_type = NULL;
    }
    if (retailer_location->location_address) {
        free(retailer_location->location_address);
        retailer_location->location_address = NULL;
    }
    if (retailer_location->valid_offer_location_ids) {
        list_ForEach(listEntry, retailer_location->valid_offer_location_ids) {
            free(listEntry->data);
        }
        list_freeList(retailer_location->valid_offer_location_ids);
        retailer_location->valid_offer_location_ids = NULL;
    }
    free(retailer_location);
}

cJSON *retailer_location_convertToJSON(retailer_location_t *retailer_location) {
    cJSON *item = cJSON_CreateObject();

    // retailer_location->id
    if(retailer_location->id) {
    if(cJSON_AddNumberToObject(item, "id", retailer_location->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->active
    if(retailer_location->active) {
    if(cJSON_AddBoolToObject(item, "active", retailer_location->active) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location->valid
    if(retailer_location->valid) {
    if(cJSON_AddBoolToObject(item, "valid", retailer_location->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location->latitude
    if(retailer_location->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", retailer_location->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->longitude
    if(retailer_location->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", retailer_location->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->location_description
    if(retailer_location->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", retailer_location->location_description) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->categories
    if(retailer_location->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (retailer_location->categories) {
    list_ForEach(categoriesListEntry, retailer_location->categories) {
    cJSON *itemLocal = category_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // retailer_location->filters
    if(retailer_location->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (retailer_location->filters) {
    list_ForEach(filtersListEntry, retailer_location->filters) {
    cJSON *itemLocal = filter_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }


    // retailer_location->offer_locations
    if(retailer_location->offer_locations) {
    cJSON *offer_locations = cJSON_AddArrayToObject(item, "offerLocations");
    if(offer_locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *offer_locationsListEntry;
    if (retailer_location->offer_locations) {
    list_ForEach(offer_locationsListEntry, retailer_location->offer_locations) {
    cJSON *itemLocal = offer_location_convertToJSON(offer_locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(offer_locations, itemLocal);
    }
    }
    }


    // retailer_location->logo
    if(retailer_location->logo) {
    cJSON *logo_local_JSON = asset_convertToJSON(retailer_location->logo);
    if(logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "logo", logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->picture1
    if(retailer_location->picture1) {
    cJSON *picture1_local_JSON = asset_convertToJSON(retailer_location->picture1);
    if(picture1_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture1", picture1_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->picture2
    if(retailer_location->picture2) {
    cJSON *picture2_local_JSON = asset_convertToJSON(retailer_location->picture2);
    if(picture2_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture2", picture2_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->qr_code
    if(retailer_location->qr_code) {
    cJSON *qr_code_local_JSON = asset_convertToJSON(retailer_location->qr_code);
    if(qr_code_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrCode", qr_code_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->name
    if(retailer_location->name) {
    if(cJSON_AddStringToObject(item, "name", retailer_location->name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->location_id
    if(retailer_location->location_id) {
    if(cJSON_AddStringToObject(item, "locationId", retailer_location->location_id) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->code
    if(retailer_location->code) {
    if(cJSON_AddStringToObject(item, "code", retailer_location->code) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->retailer
    if(retailer_location->retailer) {
    cJSON *retailer_local_JSON = retailer_convertToJSON(retailer_location->retailer);
    if(retailer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retailer", retailer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->assignments
    if(retailer_location->assignments) {
    cJSON *assignments = cJSON_AddArrayToObject(item, "assignments");
    if(assignments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *assignmentsListEntry;
    if (retailer_location->assignments) {
    list_ForEach(assignmentsListEntry, retailer_location->assignments) {
    cJSON *itemLocal = assignment_convertToJSON(assignmentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(assignments, itemLocal);
    }
    }
    }


    // retailer_location->current_assignment
    if(retailer_location->current_assignment) {
    cJSON *current_assignment_local_JSON = assignment_convertToJSON(retailer_location->current_assignment);
    if(current_assignment_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "currentAssignment", current_assignment_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->profile
    if(retailer_location->profile) {
    cJSON *profile_local_JSON = retailer_profile_convertToJSON(retailer_location->profile);
    if(profile_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "profile", profile_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->regions
    if(retailer_location->regions) {
    cJSON *regions = cJSON_AddArrayToObject(item, "regions");
    if(regions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *regionsListEntry;
    if (retailer_location->regions) {
    list_ForEach(regionsListEntry, retailer_location->regions) {
    cJSON *itemLocal = region_convertToJSON(regionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(regions, itemLocal);
    }
    }
    }


    // retailer_location->offer_print_key_prefix
    if(retailer_location->offer_print_key_prefix) {
    if(cJSON_AddStringToObject(item, "offerPrintKeyPrefix", retailer_location->offer_print_key_prefix) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->administrators
    if(retailer_location->administrators) {
    cJSON *administrators = cJSON_AddArrayToObject(item, "administrators");
    if(administrators == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *administratorsListEntry;
    if (retailer_location->administrators) {
    list_ForEach(administratorsListEntry, retailer_location->administrators) {
    cJSON *itemLocal = account_convertToJSON(administratorsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(administrators, itemLocal);
    }
    }
    }


    // retailer_location->sqoot_id
    if(retailer_location->sqoot_id) {
    if(cJSON_AddNumberToObject(item, "sqootId", retailer_location->sqoot_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->yipit_id
    if(retailer_location->yipit_id) {
    if(cJSON_AddNumberToObject(item, "yipitId", retailer_location->yipit_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->location_token
    if(retailer_location->location_token) {
    if(cJSON_AddStringToObject(item, "locationToken", retailer_location->location_token) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->building
    if(retailer_location->building) {
    cJSON *building_local_JSON = building_convertToJSON(retailer_location->building);
    if(building_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "building", building_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->notes
    if(retailer_location->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (retailer_location->notes) {
    list_ForEach(notesListEntry, retailer_location->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // retailer_location->note_count
    if(retailer_location->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", retailer_location->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->search_index_updated
    if(retailer_location->search_index_updated) {
    if(cJSON_AddStringToObject(item, "searchIndexUpdated", retailer_location->search_index_updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // retailer_location->in_search_index
    if(retailer_location->in_search_index) {
    if(cJSON_AddBoolToObject(item, "inSearchIndex", retailer_location->in_search_index) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location->favorite_count
    if(retailer_location->favorite_count) {
    if(cJSON_AddNumberToObject(item, "favoriteCount", retailer_location->favorite_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->has_ratings
    if(retailer_location->has_ratings) {
    if(cJSON_AddBoolToObject(item, "hasRatings", retailer_location->has_ratings) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location->google_place_id
    if(retailer_location->google_place_id) {
    if(cJSON_AddStringToObject(item, "googlePlaceId", retailer_location->google_place_id) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->yelp_id
    if(retailer_location->yelp_id) {
    if(cJSON_AddStringToObject(item, "yelpId", retailer_location->yelp_id) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->display
    if(retailer_location->display) {
    if(cJSON_AddStringToObject(item, "display", retailer_location->display) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->app_key
    if(retailer_location->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", retailer_location->app_key) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->category_tree
    if(retailer_location->category_tree) {
    if(cJSON_AddStringToObject(item, "categoryTree", retailer_location->category_tree) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->filter_tree
    if(retailer_location->filter_tree) {
    if(cJSON_AddStringToObject(item, "filterTree", retailer_location->filter_tree) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->address_display
    if(retailer_location->address_display) {
    if(cJSON_AddStringToObject(item, "addressDisplay", retailer_location->address_display) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->map_query
    if(retailer_location->map_query) {
    if(cJSON_AddStringToObject(item, "mapQuery", retailer_location->map_query) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->sort_name
    if(retailer_location->sort_name) {
    if(cJSON_AddStringToObject(item, "sortName", retailer_location->sort_name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->full_display
    if(retailer_location->full_display) {
    if(cJSON_AddStringToObject(item, "fullDisplay", retailer_location->full_display) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->has_offers
    if(retailer_location->has_offers) {
    if(cJSON_AddBoolToObject(item, "hasOffers", retailer_location->has_offers) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location->billable_id
    if(retailer_location->billable_id) {
    if(cJSON_AddNumberToObject(item, "billableId", retailer_location->billable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location->sub_type
    if(retailer_location->sub_type) {
    if(cJSON_AddStringToObject(item, "subType", retailer_location->sub_type) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->content_name
    if(retailer_location->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", retailer_location->content_name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->owner
    if(retailer_location->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(retailer_location->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location->secondary_type
    if(retailer_location->secondary_type) {
    if(cJSON_AddStringToObject(item, "secondaryType", retailer_location->secondary_type) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->location_address
    if(retailer_location->location_address) {
    if(cJSON_AddStringToObject(item, "locationAddress", retailer_location->location_address) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location->valid_offer_location_ids
    if(retailer_location->valid_offer_location_ids) {
    cJSON *valid_offer_location_ids = cJSON_AddArrayToObject(item, "validOfferLocationIds");
    if(valid_offer_location_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *valid_offer_location_idsListEntry;
    list_ForEach(valid_offer_location_idsListEntry, retailer_location->valid_offer_location_ids) {
    if(cJSON_AddNumberToObject(valid_offer_location_ids, "", *(double *)valid_offer_location_idsListEntry->data) == NULL)
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

retailer_location_t *retailer_location_parseFromJSON(cJSON *retailer_locationJSON){

    retailer_location_t *retailer_location_local_var = NULL;

    // define the local list for retailer_location->categories
    list_t *categoriesList = NULL;

    // define the local list for retailer_location->filters
    list_t *filtersList = NULL;

    // define the local list for retailer_location->offer_locations
    list_t *offer_locationsList = NULL;

    // define the local variable for retailer_location->logo
    asset_t *logo_local_nonprim = NULL;

    // define the local variable for retailer_location->picture1
    asset_t *picture1_local_nonprim = NULL;

    // define the local variable for retailer_location->picture2
    asset_t *picture2_local_nonprim = NULL;

    // define the local variable for retailer_location->qr_code
    asset_t *qr_code_local_nonprim = NULL;

    // define the local variable for retailer_location->retailer
    retailer_t *retailer_local_nonprim = NULL;

    // define the local list for retailer_location->assignments
    list_t *assignmentsList = NULL;

    // define the local variable for retailer_location->current_assignment
    assignment_t *current_assignment_local_nonprim = NULL;

    // define the local variable for retailer_location->profile
    retailer_profile_t *profile_local_nonprim = NULL;

    // define the local list for retailer_location->regions
    list_t *regionsList = NULL;

    // define the local list for retailer_location->administrators
    list_t *administratorsList = NULL;

    // define the local variable for retailer_location->building
    building_t *building_local_nonprim = NULL;

    // define the local list for retailer_location->notes
    list_t *notesList = NULL;

    // define the local variable for retailer_location->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for retailer_location->valid_offer_location_ids
    list_t *valid_offer_location_idsList = NULL;

    // retailer_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // retailer_location->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // retailer_location->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // retailer_location->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "categories");
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

    // retailer_location->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "filters");
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

    // retailer_location->offer_locations
    cJSON *offer_locations = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "offerLocations");
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

    // retailer_location->logo
    cJSON *logo = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "logo");
    if (cJSON_IsNull(logo)) {
        logo = NULL;
    }
    if (logo) { 
    logo_local_nonprim = asset_parseFromJSON(logo); //nonprimitive
    }

    // retailer_location->picture1
    cJSON *picture1 = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "picture1");
    if (cJSON_IsNull(picture1)) {
        picture1 = NULL;
    }
    if (picture1) { 
    picture1_local_nonprim = asset_parseFromJSON(picture1); //nonprimitive
    }

    // retailer_location->picture2
    cJSON *picture2 = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "picture2");
    if (cJSON_IsNull(picture2)) {
        picture2 = NULL;
    }
    if (picture2) { 
    picture2_local_nonprim = asset_parseFromJSON(picture2); //nonprimitive
    }

    // retailer_location->qr_code
    cJSON *qr_code = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "qrCode");
    if (cJSON_IsNull(qr_code)) {
        qr_code = NULL;
    }
    if (qr_code) { 
    qr_code_local_nonprim = asset_parseFromJSON(qr_code); //nonprimitive
    }

    // retailer_location->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // retailer_location->location_id
    cJSON *location_id = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "locationId");
    if (cJSON_IsNull(location_id)) {
        location_id = NULL;
    }
    if (location_id) { 
    if(!cJSON_IsString(location_id) && !cJSON_IsNull(location_id))
    {
    goto end; //String
    }
    }

    // retailer_location->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    if(!cJSON_IsString(code) && !cJSON_IsNull(code))
    {
    goto end; //String
    }
    }

    // retailer_location->retailer
    cJSON *retailer = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "retailer");
    if (cJSON_IsNull(retailer)) {
        retailer = NULL;
    }
    if (retailer) { 
    retailer_local_nonprim = retailer_parseFromJSON(retailer); //nonprimitive
    }

    // retailer_location->assignments
    cJSON *assignments = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "assignments");
    if (cJSON_IsNull(assignments)) {
        assignments = NULL;
    }
    if (assignments) { 
    cJSON *assignments_local_nonprimitive = NULL;
    if(!cJSON_IsArray(assignments)){
        goto end; //nonprimitive container
    }

    assignmentsList = list_createList();

    cJSON_ArrayForEach(assignments_local_nonprimitive,assignments )
    {
        if(!cJSON_IsObject(assignments_local_nonprimitive)){
            goto end;
        }
        assignment_t *assignmentsItem = assignment_parseFromJSON(assignments_local_nonprimitive);

        list_addElement(assignmentsList, assignmentsItem);
    }
    }

    // retailer_location->current_assignment
    cJSON *current_assignment = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "currentAssignment");
    if (cJSON_IsNull(current_assignment)) {
        current_assignment = NULL;
    }
    if (current_assignment) { 
    current_assignment_local_nonprim = assignment_parseFromJSON(current_assignment); //nonprimitive
    }

    // retailer_location->profile
    cJSON *profile = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "profile");
    if (cJSON_IsNull(profile)) {
        profile = NULL;
    }
    if (profile) { 
    profile_local_nonprim = retailer_profile_parseFromJSON(profile); //nonprimitive
    }

    // retailer_location->regions
    cJSON *regions = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "regions");
    if (cJSON_IsNull(regions)) {
        regions = NULL;
    }
    if (regions) { 
    cJSON *regions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(regions)){
        goto end; //nonprimitive container
    }

    regionsList = list_createList();

    cJSON_ArrayForEach(regions_local_nonprimitive,regions )
    {
        if(!cJSON_IsObject(regions_local_nonprimitive)){
            goto end;
        }
        region_t *regionsItem = region_parseFromJSON(regions_local_nonprimitive);

        list_addElement(regionsList, regionsItem);
    }
    }

    // retailer_location->offer_print_key_prefix
    cJSON *offer_print_key_prefix = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "offerPrintKeyPrefix");
    if (cJSON_IsNull(offer_print_key_prefix)) {
        offer_print_key_prefix = NULL;
    }
    if (offer_print_key_prefix) { 
    if(!cJSON_IsString(offer_print_key_prefix) && !cJSON_IsNull(offer_print_key_prefix))
    {
    goto end; //String
    }
    }

    // retailer_location->administrators
    cJSON *administrators = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "administrators");
    if (cJSON_IsNull(administrators)) {
        administrators = NULL;
    }
    if (administrators) { 
    cJSON *administrators_local_nonprimitive = NULL;
    if(!cJSON_IsArray(administrators)){
        goto end; //nonprimitive container
    }

    administratorsList = list_createList();

    cJSON_ArrayForEach(administrators_local_nonprimitive,administrators )
    {
        if(!cJSON_IsObject(administrators_local_nonprimitive)){
            goto end;
        }
        account_t *administratorsItem = account_parseFromJSON(administrators_local_nonprimitive);

        list_addElement(administratorsList, administratorsItem);
    }
    }

    // retailer_location->sqoot_id
    cJSON *sqoot_id = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "sqootId");
    if (cJSON_IsNull(sqoot_id)) {
        sqoot_id = NULL;
    }
    if (sqoot_id) { 
    if(!cJSON_IsNumber(sqoot_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->yipit_id
    cJSON *yipit_id = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "yipitId");
    if (cJSON_IsNull(yipit_id)) {
        yipit_id = NULL;
    }
    if (yipit_id) { 
    if(!cJSON_IsNumber(yipit_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->location_token
    cJSON *location_token = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "locationToken");
    if (cJSON_IsNull(location_token)) {
        location_token = NULL;
    }
    if (location_token) { 
    if(!cJSON_IsString(location_token) && !cJSON_IsNull(location_token))
    {
    goto end; //String
    }
    }

    // retailer_location->building
    cJSON *building = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "building");
    if (cJSON_IsNull(building)) {
        building = NULL;
    }
    if (building) { 
    building_local_nonprim = building_parseFromJSON(building); //nonprimitive
    }

    // retailer_location->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "notes");
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

    // retailer_location->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->search_index_updated
    cJSON *search_index_updated = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "searchIndexUpdated");
    if (cJSON_IsNull(search_index_updated)) {
        search_index_updated = NULL;
    }
    if (search_index_updated) { 
    if(!cJSON_IsString(search_index_updated) && !cJSON_IsNull(search_index_updated))
    {
    goto end; //DateTime
    }
    }

    // retailer_location->in_search_index
    cJSON *in_search_index = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "inSearchIndex");
    if (cJSON_IsNull(in_search_index)) {
        in_search_index = NULL;
    }
    if (in_search_index) { 
    if(!cJSON_IsBool(in_search_index))
    {
    goto end; //Bool
    }
    }

    // retailer_location->favorite_count
    cJSON *favorite_count = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "favoriteCount");
    if (cJSON_IsNull(favorite_count)) {
        favorite_count = NULL;
    }
    if (favorite_count) { 
    if(!cJSON_IsNumber(favorite_count))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->has_ratings
    cJSON *has_ratings = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "hasRatings");
    if (cJSON_IsNull(has_ratings)) {
        has_ratings = NULL;
    }
    if (has_ratings) { 
    if(!cJSON_IsBool(has_ratings))
    {
    goto end; //Bool
    }
    }

    // retailer_location->google_place_id
    cJSON *google_place_id = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "googlePlaceId");
    if (cJSON_IsNull(google_place_id)) {
        google_place_id = NULL;
    }
    if (google_place_id) { 
    if(!cJSON_IsString(google_place_id) && !cJSON_IsNull(google_place_id))
    {
    goto end; //String
    }
    }

    // retailer_location->yelp_id
    cJSON *yelp_id = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "yelpId");
    if (cJSON_IsNull(yelp_id)) {
        yelp_id = NULL;
    }
    if (yelp_id) { 
    if(!cJSON_IsString(yelp_id) && !cJSON_IsNull(yelp_id))
    {
    goto end; //String
    }
    }

    // retailer_location->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // retailer_location->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // retailer_location->category_tree
    cJSON *category_tree = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "categoryTree");
    if (cJSON_IsNull(category_tree)) {
        category_tree = NULL;
    }
    if (category_tree) { 
    if(!cJSON_IsString(category_tree) && !cJSON_IsNull(category_tree))
    {
    goto end; //String
    }
    }

    // retailer_location->filter_tree
    cJSON *filter_tree = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "filterTree");
    if (cJSON_IsNull(filter_tree)) {
        filter_tree = NULL;
    }
    if (filter_tree) { 
    if(!cJSON_IsString(filter_tree) && !cJSON_IsNull(filter_tree))
    {
    goto end; //String
    }
    }

    // retailer_location->address_display
    cJSON *address_display = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "addressDisplay");
    if (cJSON_IsNull(address_display)) {
        address_display = NULL;
    }
    if (address_display) { 
    if(!cJSON_IsString(address_display) && !cJSON_IsNull(address_display))
    {
    goto end; //String
    }
    }

    // retailer_location->map_query
    cJSON *map_query = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "mapQuery");
    if (cJSON_IsNull(map_query)) {
        map_query = NULL;
    }
    if (map_query) { 
    if(!cJSON_IsString(map_query) && !cJSON_IsNull(map_query))
    {
    goto end; //String
    }
    }

    // retailer_location->sort_name
    cJSON *sort_name = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "sortName");
    if (cJSON_IsNull(sort_name)) {
        sort_name = NULL;
    }
    if (sort_name) { 
    if(!cJSON_IsString(sort_name) && !cJSON_IsNull(sort_name))
    {
    goto end; //String
    }
    }

    // retailer_location->full_display
    cJSON *full_display = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "fullDisplay");
    if (cJSON_IsNull(full_display)) {
        full_display = NULL;
    }
    if (full_display) { 
    if(!cJSON_IsString(full_display) && !cJSON_IsNull(full_display))
    {
    goto end; //String
    }
    }

    // retailer_location->has_offers
    cJSON *has_offers = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "hasOffers");
    if (cJSON_IsNull(has_offers)) {
        has_offers = NULL;
    }
    if (has_offers) { 
    if(!cJSON_IsBool(has_offers))
    {
    goto end; //Bool
    }
    }

    // retailer_location->billable_id
    cJSON *billable_id = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "billableId");
    if (cJSON_IsNull(billable_id)) {
        billable_id = NULL;
    }
    if (billable_id) { 
    if(!cJSON_IsNumber(billable_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location->sub_type
    cJSON *sub_type = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "subType");
    if (cJSON_IsNull(sub_type)) {
        sub_type = NULL;
    }
    if (sub_type) { 
    if(!cJSON_IsString(sub_type) && !cJSON_IsNull(sub_type))
    {
    goto end; //String
    }
    }

    // retailer_location->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // retailer_location->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // retailer_location->secondary_type
    cJSON *secondary_type = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "secondaryType");
    if (cJSON_IsNull(secondary_type)) {
        secondary_type = NULL;
    }
    if (secondary_type) { 
    if(!cJSON_IsString(secondary_type) && !cJSON_IsNull(secondary_type))
    {
    goto end; //String
    }
    }

    // retailer_location->location_address
    cJSON *location_address = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "locationAddress");
    if (cJSON_IsNull(location_address)) {
        location_address = NULL;
    }
    if (location_address) { 
    if(!cJSON_IsString(location_address) && !cJSON_IsNull(location_address))
    {
    goto end; //String
    }
    }

    // retailer_location->valid_offer_location_ids
    cJSON *valid_offer_location_ids = cJSON_GetObjectItemCaseSensitive(retailer_locationJSON, "validOfferLocationIds");
    if (cJSON_IsNull(valid_offer_location_ids)) {
        valid_offer_location_ids = NULL;
    }
    if (valid_offer_location_ids) { 
    cJSON *valid_offer_location_ids_local = NULL;
    if(!cJSON_IsArray(valid_offer_location_ids)) {
        goto end;//primitive container
    }
    valid_offer_location_idsList = list_createList();

    cJSON_ArrayForEach(valid_offer_location_ids_local, valid_offer_location_ids)
    {
        if(!cJSON_IsNumber(valid_offer_location_ids_local))
        {
            goto end;
        }
        double *valid_offer_location_ids_local_value = calloc(1, sizeof(double));
        if(!valid_offer_location_ids_local_value)
        {
            goto end;
        }
        *valid_offer_location_ids_local_value = valid_offer_location_ids_local->valuedouble;
        list_addElement(valid_offer_location_idsList , valid_offer_location_ids_local_value);
    }
    }


    retailer_location_local_var = retailer_location_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        categories ? categoriesList : NULL,
        filters ? filtersList : NULL,
        offer_locations ? offer_locationsList : NULL,
        logo ? logo_local_nonprim : NULL,
        picture1 ? picture1_local_nonprim : NULL,
        picture2 ? picture2_local_nonprim : NULL,
        qr_code ? qr_code_local_nonprim : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        location_id && !cJSON_IsNull(location_id) ? strdup(location_id->valuestring) : NULL,
        code && !cJSON_IsNull(code) ? strdup(code->valuestring) : NULL,
        retailer ? retailer_local_nonprim : NULL,
        assignments ? assignmentsList : NULL,
        current_assignment ? current_assignment_local_nonprim : NULL,
        profile ? profile_local_nonprim : NULL,
        regions ? regionsList : NULL,
        offer_print_key_prefix && !cJSON_IsNull(offer_print_key_prefix) ? strdup(offer_print_key_prefix->valuestring) : NULL,
        administrators ? administratorsList : NULL,
        sqoot_id ? sqoot_id->valuedouble : 0,
        yipit_id ? yipit_id->valuedouble : 0,
        location_token && !cJSON_IsNull(location_token) ? strdup(location_token->valuestring) : NULL,
        building ? building_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        search_index_updated && !cJSON_IsNull(search_index_updated) ? strdup(search_index_updated->valuestring) : NULL,
        in_search_index ? in_search_index->valueint : 0,
        favorite_count ? favorite_count->valuedouble : 0,
        has_ratings ? has_ratings->valueint : 0,
        google_place_id && !cJSON_IsNull(google_place_id) ? strdup(google_place_id->valuestring) : NULL,
        yelp_id && !cJSON_IsNull(yelp_id) ? strdup(yelp_id->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        category_tree && !cJSON_IsNull(category_tree) ? strdup(category_tree->valuestring) : NULL,
        filter_tree && !cJSON_IsNull(filter_tree) ? strdup(filter_tree->valuestring) : NULL,
        address_display && !cJSON_IsNull(address_display) ? strdup(address_display->valuestring) : NULL,
        map_query && !cJSON_IsNull(map_query) ? strdup(map_query->valuestring) : NULL,
        sort_name && !cJSON_IsNull(sort_name) ? strdup(sort_name->valuestring) : NULL,
        full_display && !cJSON_IsNull(full_display) ? strdup(full_display->valuestring) : NULL,
        has_offers ? has_offers->valueint : 0,
        billable_id ? billable_id->valuedouble : 0,
        sub_type && !cJSON_IsNull(sub_type) ? strdup(sub_type->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        secondary_type && !cJSON_IsNull(secondary_type) ? strdup(secondary_type->valuestring) : NULL,
        location_address && !cJSON_IsNull(location_address) ? strdup(location_address->valuestring) : NULL,
        valid_offer_location_ids ? valid_offer_location_idsList : NULL
        );

    return retailer_location_local_var;
end:
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
    if (offer_locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, offer_locationsList) {
            offer_location_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(offer_locationsList);
        offer_locationsList = NULL;
    }
    if (logo_local_nonprim) {
        asset_free(logo_local_nonprim);
        logo_local_nonprim = NULL;
    }
    if (picture1_local_nonprim) {
        asset_free(picture1_local_nonprim);
        picture1_local_nonprim = NULL;
    }
    if (picture2_local_nonprim) {
        asset_free(picture2_local_nonprim);
        picture2_local_nonprim = NULL;
    }
    if (qr_code_local_nonprim) {
        asset_free(qr_code_local_nonprim);
        qr_code_local_nonprim = NULL;
    }
    if (retailer_local_nonprim) {
        retailer_free(retailer_local_nonprim);
        retailer_local_nonprim = NULL;
    }
    if (assignmentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, assignmentsList) {
            assignment_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(assignmentsList);
        assignmentsList = NULL;
    }
    if (current_assignment_local_nonprim) {
        assignment_free(current_assignment_local_nonprim);
        current_assignment_local_nonprim = NULL;
    }
    if (profile_local_nonprim) {
        retailer_profile_free(profile_local_nonprim);
        profile_local_nonprim = NULL;
    }
    if (regionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, regionsList) {
            region_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(regionsList);
        regionsList = NULL;
    }
    if (administratorsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, administratorsList) {
            account_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(administratorsList);
        administratorsList = NULL;
    }
    if (building_local_nonprim) {
        building_free(building_local_nonprim);
        building_local_nonprim = NULL;
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
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (valid_offer_location_idsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, valid_offer_location_idsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(valid_offer_location_idsList);
        valid_offer_location_idsList = NULL;
    }
    return NULL;

}
