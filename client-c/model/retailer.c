#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer.h"


char* retailer_visibility_ToString(sirqul_iot_platform_retailer_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_retailer_VISIBILITY_e retailer_visibility_FromString(char* visibility){
    int stringToReturn = 0;
    char *visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(visibilityArray) / sizeof(visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(visibility, visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static retailer_t *retailer_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    account_t *responsible,
    account_t *manager,
    char *details_header,
    char *details_body,
    char *details_line_left1,
    char *details_line_left2,
    char *details_line_right1,
    char *meta_description,
    char *directions,
    char *hours,
    char *home_phone,
    char *cell_phone,
    cell_carrier_t *cell_carrier,
    char *business_phone,
    char *business_phone_ext,
    char *fax_number,
    char *time_zone,
    char *utc_offset,
    char *code501c3,
    char *email_address,
    address_t *address,
    char *web,
    int featured,
    int listed,
    list_t *categories,
    territory_t *territory,
    list_t *locations,
    long yipit_id,
    char *facebook_url,
    char *twitter_url,
    sirqul_iot_platform_retailer_VISIBILITY_e visibility,
    list_t *notes,
    long note_count,
    char *app_key,
    char *category_tree,
    char *filter_tree,
    long billable_id,
    char *sub_type,
    char *content_name,
    account_t *owner
    ) {
    retailer_t *retailer_local_var = malloc(sizeof(retailer_t));
    if (!retailer_local_var) {
        return NULL;
    }
    retailer_local_var->id = id;
    retailer_local_var->active = active;
    retailer_local_var->valid = valid;
    retailer_local_var->latitude = latitude;
    retailer_local_var->longitude = longitude;
    retailer_local_var->location_description = location_description;
    retailer_local_var->name = name;
    retailer_local_var->responsible = responsible;
    retailer_local_var->manager = manager;
    retailer_local_var->details_header = details_header;
    retailer_local_var->details_body = details_body;
    retailer_local_var->details_line_left1 = details_line_left1;
    retailer_local_var->details_line_left2 = details_line_left2;
    retailer_local_var->details_line_right1 = details_line_right1;
    retailer_local_var->meta_description = meta_description;
    retailer_local_var->directions = directions;
    retailer_local_var->hours = hours;
    retailer_local_var->home_phone = home_phone;
    retailer_local_var->cell_phone = cell_phone;
    retailer_local_var->cell_carrier = cell_carrier;
    retailer_local_var->business_phone = business_phone;
    retailer_local_var->business_phone_ext = business_phone_ext;
    retailer_local_var->fax_number = fax_number;
    retailer_local_var->time_zone = time_zone;
    retailer_local_var->utc_offset = utc_offset;
    retailer_local_var->code501c3 = code501c3;
    retailer_local_var->email_address = email_address;
    retailer_local_var->address = address;
    retailer_local_var->web = web;
    retailer_local_var->featured = featured;
    retailer_local_var->listed = listed;
    retailer_local_var->categories = categories;
    retailer_local_var->territory = territory;
    retailer_local_var->locations = locations;
    retailer_local_var->yipit_id = yipit_id;
    retailer_local_var->facebook_url = facebook_url;
    retailer_local_var->twitter_url = twitter_url;
    retailer_local_var->visibility = visibility;
    retailer_local_var->notes = notes;
    retailer_local_var->note_count = note_count;
    retailer_local_var->app_key = app_key;
    retailer_local_var->category_tree = category_tree;
    retailer_local_var->filter_tree = filter_tree;
    retailer_local_var->billable_id = billable_id;
    retailer_local_var->sub_type = sub_type;
    retailer_local_var->content_name = content_name;
    retailer_local_var->owner = owner;

    retailer_local_var->_library_owned = 1;
    return retailer_local_var;
}

__attribute__((deprecated)) retailer_t *retailer_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    account_t *responsible,
    account_t *manager,
    char *details_header,
    char *details_body,
    char *details_line_left1,
    char *details_line_left2,
    char *details_line_right1,
    char *meta_description,
    char *directions,
    char *hours,
    char *home_phone,
    char *cell_phone,
    cell_carrier_t *cell_carrier,
    char *business_phone,
    char *business_phone_ext,
    char *fax_number,
    char *time_zone,
    char *utc_offset,
    char *code501c3,
    char *email_address,
    address_t *address,
    char *web,
    int featured,
    int listed,
    list_t *categories,
    territory_t *territory,
    list_t *locations,
    long yipit_id,
    char *facebook_url,
    char *twitter_url,
    sirqul_iot_platform_retailer_VISIBILITY_e visibility,
    list_t *notes,
    long note_count,
    char *app_key,
    char *category_tree,
    char *filter_tree,
    long billable_id,
    char *sub_type,
    char *content_name,
    account_t *owner
    ) {
    return retailer_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        name,
        responsible,
        manager,
        details_header,
        details_body,
        details_line_left1,
        details_line_left2,
        details_line_right1,
        meta_description,
        directions,
        hours,
        home_phone,
        cell_phone,
        cell_carrier,
        business_phone,
        business_phone_ext,
        fax_number,
        time_zone,
        utc_offset,
        code501c3,
        email_address,
        address,
        web,
        featured,
        listed,
        categories,
        territory,
        locations,
        yipit_id,
        facebook_url,
        twitter_url,
        visibility,
        notes,
        note_count,
        app_key,
        category_tree,
        filter_tree,
        billable_id,
        sub_type,
        content_name,
        owner
        );
}

void retailer_free(retailer_t *retailer) {
    if(NULL == retailer){
        return ;
    }
    if(retailer->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer->location_description) {
        free(retailer->location_description);
        retailer->location_description = NULL;
    }
    if (retailer->name) {
        free(retailer->name);
        retailer->name = NULL;
    }
    if (retailer->responsible) {
        account_free(retailer->responsible);
        retailer->responsible = NULL;
    }
    if (retailer->manager) {
        account_free(retailer->manager);
        retailer->manager = NULL;
    }
    if (retailer->details_header) {
        free(retailer->details_header);
        retailer->details_header = NULL;
    }
    if (retailer->details_body) {
        free(retailer->details_body);
        retailer->details_body = NULL;
    }
    if (retailer->details_line_left1) {
        free(retailer->details_line_left1);
        retailer->details_line_left1 = NULL;
    }
    if (retailer->details_line_left2) {
        free(retailer->details_line_left2);
        retailer->details_line_left2 = NULL;
    }
    if (retailer->details_line_right1) {
        free(retailer->details_line_right1);
        retailer->details_line_right1 = NULL;
    }
    if (retailer->meta_description) {
        free(retailer->meta_description);
        retailer->meta_description = NULL;
    }
    if (retailer->directions) {
        free(retailer->directions);
        retailer->directions = NULL;
    }
    if (retailer->hours) {
        free(retailer->hours);
        retailer->hours = NULL;
    }
    if (retailer->home_phone) {
        free(retailer->home_phone);
        retailer->home_phone = NULL;
    }
    if (retailer->cell_phone) {
        free(retailer->cell_phone);
        retailer->cell_phone = NULL;
    }
    if (retailer->cell_carrier) {
        cell_carrier_free(retailer->cell_carrier);
        retailer->cell_carrier = NULL;
    }
    if (retailer->business_phone) {
        free(retailer->business_phone);
        retailer->business_phone = NULL;
    }
    if (retailer->business_phone_ext) {
        free(retailer->business_phone_ext);
        retailer->business_phone_ext = NULL;
    }
    if (retailer->fax_number) {
        free(retailer->fax_number);
        retailer->fax_number = NULL;
    }
    if (retailer->time_zone) {
        free(retailer->time_zone);
        retailer->time_zone = NULL;
    }
    if (retailer->utc_offset) {
        free(retailer->utc_offset);
        retailer->utc_offset = NULL;
    }
    if (retailer->code501c3) {
        free(retailer->code501c3);
        retailer->code501c3 = NULL;
    }
    if (retailer->email_address) {
        free(retailer->email_address);
        retailer->email_address = NULL;
    }
    if (retailer->address) {
        address_free(retailer->address);
        retailer->address = NULL;
    }
    if (retailer->web) {
        free(retailer->web);
        retailer->web = NULL;
    }
    if (retailer->categories) {
        list_ForEach(listEntry, retailer->categories) {
            category_free(listEntry->data);
        }
        list_freeList(retailer->categories);
        retailer->categories = NULL;
    }
    if (retailer->territory) {
        territory_free(retailer->territory);
        retailer->territory = NULL;
    }
    if (retailer->locations) {
        list_ForEach(listEntry, retailer->locations) {
            retailer_location_free(listEntry->data);
        }
        list_freeList(retailer->locations);
        retailer->locations = NULL;
    }
    if (retailer->facebook_url) {
        free(retailer->facebook_url);
        retailer->facebook_url = NULL;
    }
    if (retailer->twitter_url) {
        free(retailer->twitter_url);
        retailer->twitter_url = NULL;
    }
    if (retailer->notes) {
        list_ForEach(listEntry, retailer->notes) {
            note_free(listEntry->data);
        }
        list_freeList(retailer->notes);
        retailer->notes = NULL;
    }
    if (retailer->app_key) {
        free(retailer->app_key);
        retailer->app_key = NULL;
    }
    if (retailer->category_tree) {
        free(retailer->category_tree);
        retailer->category_tree = NULL;
    }
    if (retailer->filter_tree) {
        free(retailer->filter_tree);
        retailer->filter_tree = NULL;
    }
    if (retailer->sub_type) {
        free(retailer->sub_type);
        retailer->sub_type = NULL;
    }
    if (retailer->content_name) {
        free(retailer->content_name);
        retailer->content_name = NULL;
    }
    if (retailer->owner) {
        account_free(retailer->owner);
        retailer->owner = NULL;
    }
    free(retailer);
}

cJSON *retailer_convertToJSON(retailer_t *retailer) {
    cJSON *item = cJSON_CreateObject();

    // retailer->id
    if(retailer->id) {
    if(cJSON_AddNumberToObject(item, "id", retailer->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer->active
    if(retailer->active) {
    if(cJSON_AddBoolToObject(item, "active", retailer->active) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer->valid
    if(retailer->valid) {
    if(cJSON_AddBoolToObject(item, "valid", retailer->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer->latitude
    if(retailer->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", retailer->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer->longitude
    if(retailer->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", retailer->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer->location_description
    if(retailer->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", retailer->location_description) == NULL) {
    goto fail; //String
    }
    }


    // retailer->name
    if(retailer->name) {
    if(cJSON_AddStringToObject(item, "name", retailer->name) == NULL) {
    goto fail; //String
    }
    }


    // retailer->responsible
    if(retailer->responsible) {
    cJSON *responsible_local_JSON = account_convertToJSON(retailer->responsible);
    if(responsible_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "responsible", responsible_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer->manager
    if(retailer->manager) {
    cJSON *manager_local_JSON = account_convertToJSON(retailer->manager);
    if(manager_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "manager", manager_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer->details_header
    if(retailer->details_header) {
    if(cJSON_AddStringToObject(item, "detailsHeader", retailer->details_header) == NULL) {
    goto fail; //String
    }
    }


    // retailer->details_body
    if(retailer->details_body) {
    if(cJSON_AddStringToObject(item, "detailsBody", retailer->details_body) == NULL) {
    goto fail; //String
    }
    }


    // retailer->details_line_left1
    if(retailer->details_line_left1) {
    if(cJSON_AddStringToObject(item, "detailsLineLeft1", retailer->details_line_left1) == NULL) {
    goto fail; //String
    }
    }


    // retailer->details_line_left2
    if(retailer->details_line_left2) {
    if(cJSON_AddStringToObject(item, "detailsLineLeft2", retailer->details_line_left2) == NULL) {
    goto fail; //String
    }
    }


    // retailer->details_line_right1
    if(retailer->details_line_right1) {
    if(cJSON_AddStringToObject(item, "detailsLineRight1", retailer->details_line_right1) == NULL) {
    goto fail; //String
    }
    }


    // retailer->meta_description
    if(retailer->meta_description) {
    if(cJSON_AddStringToObject(item, "metaDescription", retailer->meta_description) == NULL) {
    goto fail; //String
    }
    }


    // retailer->directions
    if(retailer->directions) {
    if(cJSON_AddStringToObject(item, "directions", retailer->directions) == NULL) {
    goto fail; //String
    }
    }


    // retailer->hours
    if(retailer->hours) {
    if(cJSON_AddStringToObject(item, "hours", retailer->hours) == NULL) {
    goto fail; //String
    }
    }


    // retailer->home_phone
    if(retailer->home_phone) {
    if(cJSON_AddStringToObject(item, "homePhone", retailer->home_phone) == NULL) {
    goto fail; //String
    }
    }


    // retailer->cell_phone
    if(retailer->cell_phone) {
    if(cJSON_AddStringToObject(item, "cellPhone", retailer->cell_phone) == NULL) {
    goto fail; //String
    }
    }


    // retailer->cell_carrier
    if(retailer->cell_carrier) {
    cJSON *cell_carrier_local_JSON = cell_carrier_convertToJSON(retailer->cell_carrier);
    if(cell_carrier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cellCarrier", cell_carrier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer->business_phone
    if(retailer->business_phone) {
    if(cJSON_AddStringToObject(item, "businessPhone", retailer->business_phone) == NULL) {
    goto fail; //String
    }
    }


    // retailer->business_phone_ext
    if(retailer->business_phone_ext) {
    if(cJSON_AddStringToObject(item, "businessPhoneExt", retailer->business_phone_ext) == NULL) {
    goto fail; //String
    }
    }


    // retailer->fax_number
    if(retailer->fax_number) {
    if(cJSON_AddStringToObject(item, "faxNumber", retailer->fax_number) == NULL) {
    goto fail; //String
    }
    }


    // retailer->time_zone
    if(retailer->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", retailer->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // retailer->utc_offset
    if(retailer->utc_offset) {
    if(cJSON_AddStringToObject(item, "utcOffset", retailer->utc_offset) == NULL) {
    goto fail; //String
    }
    }


    // retailer->code501c3
    if(retailer->code501c3) {
    if(cJSON_AddStringToObject(item, "code501c3", retailer->code501c3) == NULL) {
    goto fail; //String
    }
    }


    // retailer->email_address
    if(retailer->email_address) {
    if(cJSON_AddStringToObject(item, "emailAddress", retailer->email_address) == NULL) {
    goto fail; //String
    }
    }


    // retailer->address
    if(retailer->address) {
    cJSON *address_local_JSON = address_convertToJSON(retailer->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer->web
    if(retailer->web) {
    if(cJSON_AddStringToObject(item, "web", retailer->web) == NULL) {
    goto fail; //String
    }
    }


    // retailer->featured
    if(retailer->featured) {
    if(cJSON_AddBoolToObject(item, "featured", retailer->featured) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer->listed
    if(retailer->listed) {
    if(cJSON_AddBoolToObject(item, "listed", retailer->listed) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer->categories
    if(retailer->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (retailer->categories) {
    list_ForEach(categoriesListEntry, retailer->categories) {
    cJSON *itemLocal = category_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // retailer->territory
    if(retailer->territory) {
    cJSON *territory_local_JSON = territory_convertToJSON(retailer->territory);
    if(territory_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "territory", territory_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer->locations
    if(retailer->locations) {
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (retailer->locations) {
    list_ForEach(locationsListEntry, retailer->locations) {
    cJSON *itemLocal = retailer_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }
    }


    // retailer->yipit_id
    if(retailer->yipit_id) {
    if(cJSON_AddNumberToObject(item, "yipitId", retailer->yipit_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer->facebook_url
    if(retailer->facebook_url) {
    if(cJSON_AddStringToObject(item, "facebookUrl", retailer->facebook_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer->twitter_url
    if(retailer->twitter_url) {
    if(cJSON_AddStringToObject(item, "twitterUrl", retailer->twitter_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer->visibility
    if(retailer->visibility != sirqul_iot_platform_retailer_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", retailer_visibility_ToString(retailer->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // retailer->notes
    if(retailer->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (retailer->notes) {
    list_ForEach(notesListEntry, retailer->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // retailer->note_count
    if(retailer->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", retailer->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer->app_key
    if(retailer->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", retailer->app_key) == NULL) {
    goto fail; //String
    }
    }


    // retailer->category_tree
    if(retailer->category_tree) {
    if(cJSON_AddStringToObject(item, "categoryTree", retailer->category_tree) == NULL) {
    goto fail; //String
    }
    }


    // retailer->filter_tree
    if(retailer->filter_tree) {
    if(cJSON_AddStringToObject(item, "filterTree", retailer->filter_tree) == NULL) {
    goto fail; //String
    }
    }


    // retailer->billable_id
    if(retailer->billable_id) {
    if(cJSON_AddNumberToObject(item, "billableId", retailer->billable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer->sub_type
    if(retailer->sub_type) {
    if(cJSON_AddStringToObject(item, "subType", retailer->sub_type) == NULL) {
    goto fail; //String
    }
    }


    // retailer->content_name
    if(retailer->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", retailer->content_name) == NULL) {
    goto fail; //String
    }
    }


    // retailer->owner
    if(retailer->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(retailer->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

retailer_t *retailer_parseFromJSON(cJSON *retailerJSON){

    retailer_t *retailer_local_var = NULL;

    // define the local variable for retailer->responsible
    account_t *responsible_local_nonprim = NULL;

    // define the local variable for retailer->manager
    account_t *manager_local_nonprim = NULL;

    // define the local variable for retailer->cell_carrier
    cell_carrier_t *cell_carrier_local_nonprim = NULL;

    // define the local variable for retailer->address
    address_t *address_local_nonprim = NULL;

    // define the local list for retailer->categories
    list_t *categoriesList = NULL;

    // define the local variable for retailer->territory
    territory_t *territory_local_nonprim = NULL;

    // define the local list for retailer->locations
    list_t *locationsList = NULL;

    // define the local list for retailer->notes
    list_t *notesList = NULL;

    // define the local variable for retailer->owner
    account_t *owner_local_nonprim = NULL;

    // retailer->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(retailerJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // retailer->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(retailerJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // retailer->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(retailerJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // retailer->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(retailerJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // retailer->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(retailerJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // retailer->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(retailerJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // retailer->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(retailerJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // retailer->responsible
    cJSON *responsible = cJSON_GetObjectItemCaseSensitive(retailerJSON, "responsible");
    if (cJSON_IsNull(responsible)) {
        responsible = NULL;
    }
    if (responsible) { 
    responsible_local_nonprim = account_parseFromJSON(responsible); //nonprimitive
    }

    // retailer->manager
    cJSON *manager = cJSON_GetObjectItemCaseSensitive(retailerJSON, "manager");
    if (cJSON_IsNull(manager)) {
        manager = NULL;
    }
    if (manager) { 
    manager_local_nonprim = account_parseFromJSON(manager); //nonprimitive
    }

    // retailer->details_header
    cJSON *details_header = cJSON_GetObjectItemCaseSensitive(retailerJSON, "detailsHeader");
    if (cJSON_IsNull(details_header)) {
        details_header = NULL;
    }
    if (details_header) { 
    if(!cJSON_IsString(details_header) && !cJSON_IsNull(details_header))
    {
    goto end; //String
    }
    }

    // retailer->details_body
    cJSON *details_body = cJSON_GetObjectItemCaseSensitive(retailerJSON, "detailsBody");
    if (cJSON_IsNull(details_body)) {
        details_body = NULL;
    }
    if (details_body) { 
    if(!cJSON_IsString(details_body) && !cJSON_IsNull(details_body))
    {
    goto end; //String
    }
    }

    // retailer->details_line_left1
    cJSON *details_line_left1 = cJSON_GetObjectItemCaseSensitive(retailerJSON, "detailsLineLeft1");
    if (cJSON_IsNull(details_line_left1)) {
        details_line_left1 = NULL;
    }
    if (details_line_left1) { 
    if(!cJSON_IsString(details_line_left1) && !cJSON_IsNull(details_line_left1))
    {
    goto end; //String
    }
    }

    // retailer->details_line_left2
    cJSON *details_line_left2 = cJSON_GetObjectItemCaseSensitive(retailerJSON, "detailsLineLeft2");
    if (cJSON_IsNull(details_line_left2)) {
        details_line_left2 = NULL;
    }
    if (details_line_left2) { 
    if(!cJSON_IsString(details_line_left2) && !cJSON_IsNull(details_line_left2))
    {
    goto end; //String
    }
    }

    // retailer->details_line_right1
    cJSON *details_line_right1 = cJSON_GetObjectItemCaseSensitive(retailerJSON, "detailsLineRight1");
    if (cJSON_IsNull(details_line_right1)) {
        details_line_right1 = NULL;
    }
    if (details_line_right1) { 
    if(!cJSON_IsString(details_line_right1) && !cJSON_IsNull(details_line_right1))
    {
    goto end; //String
    }
    }

    // retailer->meta_description
    cJSON *meta_description = cJSON_GetObjectItemCaseSensitive(retailerJSON, "metaDescription");
    if (cJSON_IsNull(meta_description)) {
        meta_description = NULL;
    }
    if (meta_description) { 
    if(!cJSON_IsString(meta_description) && !cJSON_IsNull(meta_description))
    {
    goto end; //String
    }
    }

    // retailer->directions
    cJSON *directions = cJSON_GetObjectItemCaseSensitive(retailerJSON, "directions");
    if (cJSON_IsNull(directions)) {
        directions = NULL;
    }
    if (directions) { 
    if(!cJSON_IsString(directions) && !cJSON_IsNull(directions))
    {
    goto end; //String
    }
    }

    // retailer->hours
    cJSON *hours = cJSON_GetObjectItemCaseSensitive(retailerJSON, "hours");
    if (cJSON_IsNull(hours)) {
        hours = NULL;
    }
    if (hours) { 
    if(!cJSON_IsString(hours) && !cJSON_IsNull(hours))
    {
    goto end; //String
    }
    }

    // retailer->home_phone
    cJSON *home_phone = cJSON_GetObjectItemCaseSensitive(retailerJSON, "homePhone");
    if (cJSON_IsNull(home_phone)) {
        home_phone = NULL;
    }
    if (home_phone) { 
    if(!cJSON_IsString(home_phone) && !cJSON_IsNull(home_phone))
    {
    goto end; //String
    }
    }

    // retailer->cell_phone
    cJSON *cell_phone = cJSON_GetObjectItemCaseSensitive(retailerJSON, "cellPhone");
    if (cJSON_IsNull(cell_phone)) {
        cell_phone = NULL;
    }
    if (cell_phone) { 
    if(!cJSON_IsString(cell_phone) && !cJSON_IsNull(cell_phone))
    {
    goto end; //String
    }
    }

    // retailer->cell_carrier
    cJSON *cell_carrier = cJSON_GetObjectItemCaseSensitive(retailerJSON, "cellCarrier");
    if (cJSON_IsNull(cell_carrier)) {
        cell_carrier = NULL;
    }
    if (cell_carrier) { 
    cell_carrier_local_nonprim = cell_carrier_parseFromJSON(cell_carrier); //nonprimitive
    }

    // retailer->business_phone
    cJSON *business_phone = cJSON_GetObjectItemCaseSensitive(retailerJSON, "businessPhone");
    if (cJSON_IsNull(business_phone)) {
        business_phone = NULL;
    }
    if (business_phone) { 
    if(!cJSON_IsString(business_phone) && !cJSON_IsNull(business_phone))
    {
    goto end; //String
    }
    }

    // retailer->business_phone_ext
    cJSON *business_phone_ext = cJSON_GetObjectItemCaseSensitive(retailerJSON, "businessPhoneExt");
    if (cJSON_IsNull(business_phone_ext)) {
        business_phone_ext = NULL;
    }
    if (business_phone_ext) { 
    if(!cJSON_IsString(business_phone_ext) && !cJSON_IsNull(business_phone_ext))
    {
    goto end; //String
    }
    }

    // retailer->fax_number
    cJSON *fax_number = cJSON_GetObjectItemCaseSensitive(retailerJSON, "faxNumber");
    if (cJSON_IsNull(fax_number)) {
        fax_number = NULL;
    }
    if (fax_number) { 
    if(!cJSON_IsString(fax_number) && !cJSON_IsNull(fax_number))
    {
    goto end; //String
    }
    }

    // retailer->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(retailerJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // retailer->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(retailerJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsString(utc_offset) && !cJSON_IsNull(utc_offset))
    {
    goto end; //String
    }
    }

    // retailer->code501c3
    cJSON *code501c3 = cJSON_GetObjectItemCaseSensitive(retailerJSON, "code501c3");
    if (cJSON_IsNull(code501c3)) {
        code501c3 = NULL;
    }
    if (code501c3) { 
    if(!cJSON_IsString(code501c3) && !cJSON_IsNull(code501c3))
    {
    goto end; //String
    }
    }

    // retailer->email_address
    cJSON *email_address = cJSON_GetObjectItemCaseSensitive(retailerJSON, "emailAddress");
    if (cJSON_IsNull(email_address)) {
        email_address = NULL;
    }
    if (email_address) { 
    if(!cJSON_IsString(email_address) && !cJSON_IsNull(email_address))
    {
    goto end; //String
    }
    }

    // retailer->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(retailerJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = address_parseFromJSON(address); //nonprimitive
    }

    // retailer->web
    cJSON *web = cJSON_GetObjectItemCaseSensitive(retailerJSON, "web");
    if (cJSON_IsNull(web)) {
        web = NULL;
    }
    if (web) { 
    if(!cJSON_IsString(web) && !cJSON_IsNull(web))
    {
    goto end; //String
    }
    }

    // retailer->featured
    cJSON *featured = cJSON_GetObjectItemCaseSensitive(retailerJSON, "featured");
    if (cJSON_IsNull(featured)) {
        featured = NULL;
    }
    if (featured) { 
    if(!cJSON_IsBool(featured))
    {
    goto end; //Bool
    }
    }

    // retailer->listed
    cJSON *listed = cJSON_GetObjectItemCaseSensitive(retailerJSON, "listed");
    if (cJSON_IsNull(listed)) {
        listed = NULL;
    }
    if (listed) { 
    if(!cJSON_IsBool(listed))
    {
    goto end; //Bool
    }
    }

    // retailer->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(retailerJSON, "categories");
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

    // retailer->territory
    cJSON *territory = cJSON_GetObjectItemCaseSensitive(retailerJSON, "territory");
    if (cJSON_IsNull(territory)) {
        territory = NULL;
    }
    if (territory) { 
    territory_local_nonprim = territory_parseFromJSON(territory); //nonprimitive
    }

    // retailer->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(retailerJSON, "locations");
    if (cJSON_IsNull(locations)) {
        locations = NULL;
    }
    if (locations) { 
    cJSON *locations_local_nonprimitive = NULL;
    if(!cJSON_IsArray(locations)){
        goto end; //nonprimitive container
    }

    locationsList = list_createList();

    cJSON_ArrayForEach(locations_local_nonprimitive,locations )
    {
        if(!cJSON_IsObject(locations_local_nonprimitive)){
            goto end;
        }
        retailer_location_t *locationsItem = retailer_location_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }
    }

    // retailer->yipit_id
    cJSON *yipit_id = cJSON_GetObjectItemCaseSensitive(retailerJSON, "yipitId");
    if (cJSON_IsNull(yipit_id)) {
        yipit_id = NULL;
    }
    if (yipit_id) { 
    if(!cJSON_IsNumber(yipit_id))
    {
    goto end; //Numeric
    }
    }

    // retailer->facebook_url
    cJSON *facebook_url = cJSON_GetObjectItemCaseSensitive(retailerJSON, "facebookUrl");
    if (cJSON_IsNull(facebook_url)) {
        facebook_url = NULL;
    }
    if (facebook_url) { 
    if(!cJSON_IsString(facebook_url) && !cJSON_IsNull(facebook_url))
    {
    goto end; //String
    }
    }

    // retailer->twitter_url
    cJSON *twitter_url = cJSON_GetObjectItemCaseSensitive(retailerJSON, "twitterUrl");
    if (cJSON_IsNull(twitter_url)) {
        twitter_url = NULL;
    }
    if (twitter_url) { 
    if(!cJSON_IsString(twitter_url) && !cJSON_IsNull(twitter_url))
    {
    goto end; //String
    }
    }

    // retailer->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(retailerJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_retailer_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = retailer_visibility_FromString(visibility->valuestring);
    }

    // retailer->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(retailerJSON, "notes");
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

    // retailer->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(retailerJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // retailer->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(retailerJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // retailer->category_tree
    cJSON *category_tree = cJSON_GetObjectItemCaseSensitive(retailerJSON, "categoryTree");
    if (cJSON_IsNull(category_tree)) {
        category_tree = NULL;
    }
    if (category_tree) { 
    if(!cJSON_IsString(category_tree) && !cJSON_IsNull(category_tree))
    {
    goto end; //String
    }
    }

    // retailer->filter_tree
    cJSON *filter_tree = cJSON_GetObjectItemCaseSensitive(retailerJSON, "filterTree");
    if (cJSON_IsNull(filter_tree)) {
        filter_tree = NULL;
    }
    if (filter_tree) { 
    if(!cJSON_IsString(filter_tree) && !cJSON_IsNull(filter_tree))
    {
    goto end; //String
    }
    }

    // retailer->billable_id
    cJSON *billable_id = cJSON_GetObjectItemCaseSensitive(retailerJSON, "billableId");
    if (cJSON_IsNull(billable_id)) {
        billable_id = NULL;
    }
    if (billable_id) { 
    if(!cJSON_IsNumber(billable_id))
    {
    goto end; //Numeric
    }
    }

    // retailer->sub_type
    cJSON *sub_type = cJSON_GetObjectItemCaseSensitive(retailerJSON, "subType");
    if (cJSON_IsNull(sub_type)) {
        sub_type = NULL;
    }
    if (sub_type) { 
    if(!cJSON_IsString(sub_type) && !cJSON_IsNull(sub_type))
    {
    goto end; //String
    }
    }

    // retailer->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(retailerJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // retailer->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(retailerJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }


    retailer_local_var = retailer_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        responsible ? responsible_local_nonprim : NULL,
        manager ? manager_local_nonprim : NULL,
        details_header && !cJSON_IsNull(details_header) ? strdup(details_header->valuestring) : NULL,
        details_body && !cJSON_IsNull(details_body) ? strdup(details_body->valuestring) : NULL,
        details_line_left1 && !cJSON_IsNull(details_line_left1) ? strdup(details_line_left1->valuestring) : NULL,
        details_line_left2 && !cJSON_IsNull(details_line_left2) ? strdup(details_line_left2->valuestring) : NULL,
        details_line_right1 && !cJSON_IsNull(details_line_right1) ? strdup(details_line_right1->valuestring) : NULL,
        meta_description && !cJSON_IsNull(meta_description) ? strdup(meta_description->valuestring) : NULL,
        directions && !cJSON_IsNull(directions) ? strdup(directions->valuestring) : NULL,
        hours && !cJSON_IsNull(hours) ? strdup(hours->valuestring) : NULL,
        home_phone && !cJSON_IsNull(home_phone) ? strdup(home_phone->valuestring) : NULL,
        cell_phone && !cJSON_IsNull(cell_phone) ? strdup(cell_phone->valuestring) : NULL,
        cell_carrier ? cell_carrier_local_nonprim : NULL,
        business_phone && !cJSON_IsNull(business_phone) ? strdup(business_phone->valuestring) : NULL,
        business_phone_ext && !cJSON_IsNull(business_phone_ext) ? strdup(business_phone_ext->valuestring) : NULL,
        fax_number && !cJSON_IsNull(fax_number) ? strdup(fax_number->valuestring) : NULL,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL,
        utc_offset && !cJSON_IsNull(utc_offset) ? strdup(utc_offset->valuestring) : NULL,
        code501c3 && !cJSON_IsNull(code501c3) ? strdup(code501c3->valuestring) : NULL,
        email_address && !cJSON_IsNull(email_address) ? strdup(email_address->valuestring) : NULL,
        address ? address_local_nonprim : NULL,
        web && !cJSON_IsNull(web) ? strdup(web->valuestring) : NULL,
        featured ? featured->valueint : 0,
        listed ? listed->valueint : 0,
        categories ? categoriesList : NULL,
        territory ? territory_local_nonprim : NULL,
        locations ? locationsList : NULL,
        yipit_id ? yipit_id->valuedouble : 0,
        facebook_url && !cJSON_IsNull(facebook_url) ? strdup(facebook_url->valuestring) : NULL,
        twitter_url && !cJSON_IsNull(twitter_url) ? strdup(twitter_url->valuestring) : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_retailer_VISIBILITY_NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        category_tree && !cJSON_IsNull(category_tree) ? strdup(category_tree->valuestring) : NULL,
        filter_tree && !cJSON_IsNull(filter_tree) ? strdup(filter_tree->valuestring) : NULL,
        billable_id ? billable_id->valuedouble : 0,
        sub_type && !cJSON_IsNull(sub_type) ? strdup(sub_type->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL
        );

    return retailer_local_var;
end:
    if (responsible_local_nonprim) {
        account_free(responsible_local_nonprim);
        responsible_local_nonprim = NULL;
    }
    if (manager_local_nonprim) {
        account_free(manager_local_nonprim);
        manager_local_nonprim = NULL;
    }
    if (cell_carrier_local_nonprim) {
        cell_carrier_free(cell_carrier_local_nonprim);
        cell_carrier_local_nonprim = NULL;
    }
    if (address_local_nonprim) {
        address_free(address_local_nonprim);
        address_local_nonprim = NULL;
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
    if (territory_local_nonprim) {
        territory_free(territory_local_nonprim);
        territory_local_nonprim = NULL;
    }
    if (locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, locationsList) {
            retailer_location_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(locationsList);
        locationsList = NULL;
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
    return NULL;

}
