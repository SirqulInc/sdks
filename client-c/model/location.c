#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "location.h"


char* location_visibility_ToString(sirqul_iot_platform_location_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_location_VISIBILITY_e location_visibility_FromString(char* visibility){
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

static location_t *location_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    territory_t *territory,
    service_hub_t *hub,
    asset_t *picture,
    list_t *notes,
    long note_count,
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
    program_t *program,
    sirqul_iot_platform_location_VISIBILITY_e visibility,
    char *grouping_id,
    int destination,
    long docking_time,
    long usage_count,
    char *time_frames_allowed,
    list_t *likes,
    long like_count,
    long dislike_count,
    char *owner_display,
    char *content_name
    ) {
    location_t *location_local_var = malloc(sizeof(location_t));
    if (!location_local_var) {
        return NULL;
    }
    location_local_var->id = id;
    location_local_var->active = active;
    location_local_var->valid = valid;
    location_local_var->latitude = latitude;
    location_local_var->longitude = longitude;
    location_local_var->location_description = location_description;
    location_local_var->name = name;
    location_local_var->territory = territory;
    location_local_var->hub = hub;
    location_local_var->picture = picture;
    location_local_var->notes = notes;
    location_local_var->note_count = note_count;
    location_local_var->home_phone = home_phone;
    location_local_var->cell_phone = cell_phone;
    location_local_var->cell_carrier = cell_carrier;
    location_local_var->business_phone = business_phone;
    location_local_var->business_phone_ext = business_phone_ext;
    location_local_var->fax_number = fax_number;
    location_local_var->time_zone = time_zone;
    location_local_var->utc_offset = utc_offset;
    location_local_var->code501c3 = code501c3;
    location_local_var->email_address = email_address;
    location_local_var->address = address;
    location_local_var->web = web;
    location_local_var->program = program;
    location_local_var->visibility = visibility;
    location_local_var->grouping_id = grouping_id;
    location_local_var->destination = destination;
    location_local_var->docking_time = docking_time;
    location_local_var->usage_count = usage_count;
    location_local_var->time_frames_allowed = time_frames_allowed;
    location_local_var->likes = likes;
    location_local_var->like_count = like_count;
    location_local_var->dislike_count = dislike_count;
    location_local_var->owner_display = owner_display;
    location_local_var->content_name = content_name;

    location_local_var->_library_owned = 1;
    return location_local_var;
}

__attribute__((deprecated)) location_t *location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    territory_t *territory,
    service_hub_t *hub,
    asset_t *picture,
    list_t *notes,
    long note_count,
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
    program_t *program,
    sirqul_iot_platform_location_VISIBILITY_e visibility,
    char *grouping_id,
    int destination,
    long docking_time,
    long usage_count,
    char *time_frames_allowed,
    list_t *likes,
    long like_count,
    long dislike_count,
    char *owner_display,
    char *content_name
    ) {
    return location_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        name,
        territory,
        hub,
        picture,
        notes,
        note_count,
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
        program,
        visibility,
        grouping_id,
        destination,
        docking_time,
        usage_count,
        time_frames_allowed,
        likes,
        like_count,
        dislike_count,
        owner_display,
        content_name
        );
}

void location_free(location_t *location) {
    if(NULL == location){
        return ;
    }
    if(location->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "location_free");
        return ;
    }
    listEntry_t *listEntry;
    if (location->location_description) {
        free(location->location_description);
        location->location_description = NULL;
    }
    if (location->name) {
        free(location->name);
        location->name = NULL;
    }
    if (location->territory) {
        territory_free(location->territory);
        location->territory = NULL;
    }
    if (location->hub) {
        service_hub_free(location->hub);
        location->hub = NULL;
    }
    if (location->picture) {
        asset_free(location->picture);
        location->picture = NULL;
    }
    if (location->notes) {
        list_ForEach(listEntry, location->notes) {
            note_free(listEntry->data);
        }
        list_freeList(location->notes);
        location->notes = NULL;
    }
    if (location->home_phone) {
        free(location->home_phone);
        location->home_phone = NULL;
    }
    if (location->cell_phone) {
        free(location->cell_phone);
        location->cell_phone = NULL;
    }
    if (location->cell_carrier) {
        cell_carrier_free(location->cell_carrier);
        location->cell_carrier = NULL;
    }
    if (location->business_phone) {
        free(location->business_phone);
        location->business_phone = NULL;
    }
    if (location->business_phone_ext) {
        free(location->business_phone_ext);
        location->business_phone_ext = NULL;
    }
    if (location->fax_number) {
        free(location->fax_number);
        location->fax_number = NULL;
    }
    if (location->time_zone) {
        free(location->time_zone);
        location->time_zone = NULL;
    }
    if (location->utc_offset) {
        free(location->utc_offset);
        location->utc_offset = NULL;
    }
    if (location->code501c3) {
        free(location->code501c3);
        location->code501c3 = NULL;
    }
    if (location->email_address) {
        free(location->email_address);
        location->email_address = NULL;
    }
    if (location->address) {
        address_free(location->address);
        location->address = NULL;
    }
    if (location->web) {
        free(location->web);
        location->web = NULL;
    }
    if (location->program) {
        program_free(location->program);
        location->program = NULL;
    }
    if (location->grouping_id) {
        free(location->grouping_id);
        location->grouping_id = NULL;
    }
    if (location->time_frames_allowed) {
        free(location->time_frames_allowed);
        location->time_frames_allowed = NULL;
    }
    if (location->likes) {
        list_ForEach(listEntry, location->likes) {
            yay_or_nay_free(listEntry->data);
        }
        list_freeList(location->likes);
        location->likes = NULL;
    }
    if (location->owner_display) {
        free(location->owner_display);
        location->owner_display = NULL;
    }
    if (location->content_name) {
        free(location->content_name);
        location->content_name = NULL;
    }
    free(location);
}

cJSON *location_convertToJSON(location_t *location) {
    cJSON *item = cJSON_CreateObject();

    // location->id
    if(location->id) {
    if(cJSON_AddNumberToObject(item, "id", location->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->active
    if(location->active) {
    if(cJSON_AddBoolToObject(item, "active", location->active) == NULL) {
    goto fail; //Bool
    }
    }


    // location->valid
    if(location->valid) {
    if(cJSON_AddBoolToObject(item, "valid", location->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // location->latitude
    if(location->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", location->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->longitude
    if(location->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", location->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->location_description
    if(location->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", location->location_description) == NULL) {
    goto fail; //String
    }
    }


    // location->name
    if(location->name) {
    if(cJSON_AddStringToObject(item, "name", location->name) == NULL) {
    goto fail; //String
    }
    }


    // location->territory
    if(location->territory) {
    cJSON *territory_local_JSON = territory_convertToJSON(location->territory);
    if(territory_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "territory", territory_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // location->hub
    if(location->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(location->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // location->picture
    if(location->picture) {
    cJSON *picture_local_JSON = asset_convertToJSON(location->picture);
    if(picture_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture", picture_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // location->notes
    if(location->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (location->notes) {
    list_ForEach(notesListEntry, location->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // location->note_count
    if(location->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", location->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->home_phone
    if(location->home_phone) {
    if(cJSON_AddStringToObject(item, "homePhone", location->home_phone) == NULL) {
    goto fail; //String
    }
    }


    // location->cell_phone
    if(location->cell_phone) {
    if(cJSON_AddStringToObject(item, "cellPhone", location->cell_phone) == NULL) {
    goto fail; //String
    }
    }


    // location->cell_carrier
    if(location->cell_carrier) {
    cJSON *cell_carrier_local_JSON = cell_carrier_convertToJSON(location->cell_carrier);
    if(cell_carrier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cellCarrier", cell_carrier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // location->business_phone
    if(location->business_phone) {
    if(cJSON_AddStringToObject(item, "businessPhone", location->business_phone) == NULL) {
    goto fail; //String
    }
    }


    // location->business_phone_ext
    if(location->business_phone_ext) {
    if(cJSON_AddStringToObject(item, "businessPhoneExt", location->business_phone_ext) == NULL) {
    goto fail; //String
    }
    }


    // location->fax_number
    if(location->fax_number) {
    if(cJSON_AddStringToObject(item, "faxNumber", location->fax_number) == NULL) {
    goto fail; //String
    }
    }


    // location->time_zone
    if(location->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", location->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // location->utc_offset
    if(location->utc_offset) {
    if(cJSON_AddStringToObject(item, "utcOffset", location->utc_offset) == NULL) {
    goto fail; //String
    }
    }


    // location->code501c3
    if(location->code501c3) {
    if(cJSON_AddStringToObject(item, "code501c3", location->code501c3) == NULL) {
    goto fail; //String
    }
    }


    // location->email_address
    if(location->email_address) {
    if(cJSON_AddStringToObject(item, "emailAddress", location->email_address) == NULL) {
    goto fail; //String
    }
    }


    // location->address
    if(location->address) {
    cJSON *address_local_JSON = address_convertToJSON(location->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // location->web
    if(location->web) {
    if(cJSON_AddStringToObject(item, "web", location->web) == NULL) {
    goto fail; //String
    }
    }


    // location->program
    if(location->program) {
    cJSON *program_local_JSON = program_convertToJSON(location->program);
    if(program_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "program", program_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // location->visibility
    if(location->visibility != sirqul_iot_platform_location_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", location_visibility_ToString(location->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // location->grouping_id
    if(location->grouping_id) {
    if(cJSON_AddStringToObject(item, "groupingId", location->grouping_id) == NULL) {
    goto fail; //String
    }
    }


    // location->destination
    if(location->destination) {
    if(cJSON_AddBoolToObject(item, "destination", location->destination) == NULL) {
    goto fail; //Bool
    }
    }


    // location->docking_time
    if(location->docking_time) {
    if(cJSON_AddNumberToObject(item, "dockingTime", location->docking_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->usage_count
    if(location->usage_count) {
    if(cJSON_AddNumberToObject(item, "usageCount", location->usage_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->time_frames_allowed
    if(location->time_frames_allowed) {
    if(cJSON_AddStringToObject(item, "timeFramesAllowed", location->time_frames_allowed) == NULL) {
    goto fail; //String
    }
    }


    // location->likes
    if(location->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (location->likes) {
    list_ForEach(likesListEntry, location->likes) {
    cJSON *itemLocal = yay_or_nay_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // location->like_count
    if(location->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", location->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->dislike_count
    if(location->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", location->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // location->owner_display
    if(location->owner_display) {
    if(cJSON_AddStringToObject(item, "ownerDisplay", location->owner_display) == NULL) {
    goto fail; //String
    }
    }


    // location->content_name
    if(location->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", location->content_name) == NULL) {
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

location_t *location_parseFromJSON(cJSON *locationJSON){

    location_t *location_local_var = NULL;

    // define the local variable for location->territory
    territory_t *territory_local_nonprim = NULL;

    // define the local variable for location->hub
    service_hub_t *hub_local_nonprim = NULL;

    // define the local variable for location->picture
    asset_t *picture_local_nonprim = NULL;

    // define the local list for location->notes
    list_t *notesList = NULL;

    // define the local variable for location->cell_carrier
    cell_carrier_t *cell_carrier_local_nonprim = NULL;

    // define the local variable for location->address
    address_t *address_local_nonprim = NULL;

    // define the local variable for location->program
    program_t *program_local_nonprim = NULL;

    // define the local list for location->likes
    list_t *likesList = NULL;

    // location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(locationJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // location->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(locationJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // location->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(locationJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // location->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(locationJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // location->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(locationJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // location->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(locationJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // location->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(locationJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // location->territory
    cJSON *territory = cJSON_GetObjectItemCaseSensitive(locationJSON, "territory");
    if (cJSON_IsNull(territory)) {
        territory = NULL;
    }
    if (territory) { 
    territory_local_nonprim = territory_parseFromJSON(territory); //nonprimitive
    }

    // location->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(locationJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }

    // location->picture
    cJSON *picture = cJSON_GetObjectItemCaseSensitive(locationJSON, "picture");
    if (cJSON_IsNull(picture)) {
        picture = NULL;
    }
    if (picture) { 
    picture_local_nonprim = asset_parseFromJSON(picture); //nonprimitive
    }

    // location->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(locationJSON, "notes");
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

    // location->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(locationJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // location->home_phone
    cJSON *home_phone = cJSON_GetObjectItemCaseSensitive(locationJSON, "homePhone");
    if (cJSON_IsNull(home_phone)) {
        home_phone = NULL;
    }
    if (home_phone) { 
    if(!cJSON_IsString(home_phone) && !cJSON_IsNull(home_phone))
    {
    goto end; //String
    }
    }

    // location->cell_phone
    cJSON *cell_phone = cJSON_GetObjectItemCaseSensitive(locationJSON, "cellPhone");
    if (cJSON_IsNull(cell_phone)) {
        cell_phone = NULL;
    }
    if (cell_phone) { 
    if(!cJSON_IsString(cell_phone) && !cJSON_IsNull(cell_phone))
    {
    goto end; //String
    }
    }

    // location->cell_carrier
    cJSON *cell_carrier = cJSON_GetObjectItemCaseSensitive(locationJSON, "cellCarrier");
    if (cJSON_IsNull(cell_carrier)) {
        cell_carrier = NULL;
    }
    if (cell_carrier) { 
    cell_carrier_local_nonprim = cell_carrier_parseFromJSON(cell_carrier); //nonprimitive
    }

    // location->business_phone
    cJSON *business_phone = cJSON_GetObjectItemCaseSensitive(locationJSON, "businessPhone");
    if (cJSON_IsNull(business_phone)) {
        business_phone = NULL;
    }
    if (business_phone) { 
    if(!cJSON_IsString(business_phone) && !cJSON_IsNull(business_phone))
    {
    goto end; //String
    }
    }

    // location->business_phone_ext
    cJSON *business_phone_ext = cJSON_GetObjectItemCaseSensitive(locationJSON, "businessPhoneExt");
    if (cJSON_IsNull(business_phone_ext)) {
        business_phone_ext = NULL;
    }
    if (business_phone_ext) { 
    if(!cJSON_IsString(business_phone_ext) && !cJSON_IsNull(business_phone_ext))
    {
    goto end; //String
    }
    }

    // location->fax_number
    cJSON *fax_number = cJSON_GetObjectItemCaseSensitive(locationJSON, "faxNumber");
    if (cJSON_IsNull(fax_number)) {
        fax_number = NULL;
    }
    if (fax_number) { 
    if(!cJSON_IsString(fax_number) && !cJSON_IsNull(fax_number))
    {
    goto end; //String
    }
    }

    // location->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(locationJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // location->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(locationJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsString(utc_offset) && !cJSON_IsNull(utc_offset))
    {
    goto end; //String
    }
    }

    // location->code501c3
    cJSON *code501c3 = cJSON_GetObjectItemCaseSensitive(locationJSON, "code501c3");
    if (cJSON_IsNull(code501c3)) {
        code501c3 = NULL;
    }
    if (code501c3) { 
    if(!cJSON_IsString(code501c3) && !cJSON_IsNull(code501c3))
    {
    goto end; //String
    }
    }

    // location->email_address
    cJSON *email_address = cJSON_GetObjectItemCaseSensitive(locationJSON, "emailAddress");
    if (cJSON_IsNull(email_address)) {
        email_address = NULL;
    }
    if (email_address) { 
    if(!cJSON_IsString(email_address) && !cJSON_IsNull(email_address))
    {
    goto end; //String
    }
    }

    // location->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(locationJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = address_parseFromJSON(address); //nonprimitive
    }

    // location->web
    cJSON *web = cJSON_GetObjectItemCaseSensitive(locationJSON, "web");
    if (cJSON_IsNull(web)) {
        web = NULL;
    }
    if (web) { 
    if(!cJSON_IsString(web) && !cJSON_IsNull(web))
    {
    goto end; //String
    }
    }

    // location->program
    cJSON *program = cJSON_GetObjectItemCaseSensitive(locationJSON, "program");
    if (cJSON_IsNull(program)) {
        program = NULL;
    }
    if (program) { 
    program_local_nonprim = program_parseFromJSON(program); //nonprimitive
    }

    // location->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(locationJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_location_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = location_visibility_FromString(visibility->valuestring);
    }

    // location->grouping_id
    cJSON *grouping_id = cJSON_GetObjectItemCaseSensitive(locationJSON, "groupingId");
    if (cJSON_IsNull(grouping_id)) {
        grouping_id = NULL;
    }
    if (grouping_id) { 
    if(!cJSON_IsString(grouping_id) && !cJSON_IsNull(grouping_id))
    {
    goto end; //String
    }
    }

    // location->destination
    cJSON *destination = cJSON_GetObjectItemCaseSensitive(locationJSON, "destination");
    if (cJSON_IsNull(destination)) {
        destination = NULL;
    }
    if (destination) { 
    if(!cJSON_IsBool(destination))
    {
    goto end; //Bool
    }
    }

    // location->docking_time
    cJSON *docking_time = cJSON_GetObjectItemCaseSensitive(locationJSON, "dockingTime");
    if (cJSON_IsNull(docking_time)) {
        docking_time = NULL;
    }
    if (docking_time) { 
    if(!cJSON_IsNumber(docking_time))
    {
    goto end; //Numeric
    }
    }

    // location->usage_count
    cJSON *usage_count = cJSON_GetObjectItemCaseSensitive(locationJSON, "usageCount");
    if (cJSON_IsNull(usage_count)) {
        usage_count = NULL;
    }
    if (usage_count) { 
    if(!cJSON_IsNumber(usage_count))
    {
    goto end; //Numeric
    }
    }

    // location->time_frames_allowed
    cJSON *time_frames_allowed = cJSON_GetObjectItemCaseSensitive(locationJSON, "timeFramesAllowed");
    if (cJSON_IsNull(time_frames_allowed)) {
        time_frames_allowed = NULL;
    }
    if (time_frames_allowed) { 
    if(!cJSON_IsString(time_frames_allowed) && !cJSON_IsNull(time_frames_allowed))
    {
    goto end; //String
    }
    }

    // location->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(locationJSON, "likes");
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

    // location->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(locationJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // location->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(locationJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // location->owner_display
    cJSON *owner_display = cJSON_GetObjectItemCaseSensitive(locationJSON, "ownerDisplay");
    if (cJSON_IsNull(owner_display)) {
        owner_display = NULL;
    }
    if (owner_display) { 
    if(!cJSON_IsString(owner_display) && !cJSON_IsNull(owner_display))
    {
    goto end; //String
    }
    }

    // location->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(locationJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }


    location_local_var = location_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        territory ? territory_local_nonprim : NULL,
        hub ? hub_local_nonprim : NULL,
        picture ? picture_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
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
        program ? program_local_nonprim : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_location_VISIBILITY_NULL,
        grouping_id && !cJSON_IsNull(grouping_id) ? strdup(grouping_id->valuestring) : NULL,
        destination ? destination->valueint : 0,
        docking_time ? docking_time->valuedouble : 0,
        usage_count ? usage_count->valuedouble : 0,
        time_frames_allowed && !cJSON_IsNull(time_frames_allowed) ? strdup(time_frames_allowed->valuestring) : NULL,
        likes ? likesList : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        owner_display && !cJSON_IsNull(owner_display) ? strdup(owner_display->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL
        );

    return location_local_var;
end:
    if (territory_local_nonprim) {
        territory_free(territory_local_nonprim);
        territory_local_nonprim = NULL;
    }
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    if (picture_local_nonprim) {
        asset_free(picture_local_nonprim);
        picture_local_nonprim = NULL;
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
    if (cell_carrier_local_nonprim) {
        cell_carrier_free(cell_carrier_local_nonprim);
        cell_carrier_local_nonprim = NULL;
    }
    if (address_local_nonprim) {
        address_free(address_local_nonprim);
        address_local_nonprim = NULL;
    }
    if (program_local_nonprim) {
        program_free(program_local_nonprim);
        program_local_nonprim = NULL;
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
    return NULL;

}
