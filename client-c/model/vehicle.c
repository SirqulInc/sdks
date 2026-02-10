#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "vehicle.h"



static vehicle_t *vehicle_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    vehicle_type_t *vehicle_type,
    char *vin,
    char *license_plate_number,
    char *external_id,
    service_hub_t *hub,
    list_t *programs,
    long seat_quantity,
    asset_t *picture,
    asset_t *marker_icon,
    char *tracking_color,
    account_t *belongs_to,
    region_t *zone,
    list_t *notes,
    long note_count,
    int in_use,
    char *content_name
    ) {
    vehicle_t *vehicle_local_var = malloc(sizeof(vehicle_t));
    if (!vehicle_local_var) {
        return NULL;
    }
    vehicle_local_var->id = id;
    vehicle_local_var->active = active;
    vehicle_local_var->valid = valid;
    vehicle_local_var->name = name;
    vehicle_local_var->description = description;
    vehicle_local_var->vehicle_type = vehicle_type;
    vehicle_local_var->vin = vin;
    vehicle_local_var->license_plate_number = license_plate_number;
    vehicle_local_var->external_id = external_id;
    vehicle_local_var->hub = hub;
    vehicle_local_var->programs = programs;
    vehicle_local_var->seat_quantity = seat_quantity;
    vehicle_local_var->picture = picture;
    vehicle_local_var->marker_icon = marker_icon;
    vehicle_local_var->tracking_color = tracking_color;
    vehicle_local_var->belongs_to = belongs_to;
    vehicle_local_var->zone = zone;
    vehicle_local_var->notes = notes;
    vehicle_local_var->note_count = note_count;
    vehicle_local_var->in_use = in_use;
    vehicle_local_var->content_name = content_name;

    vehicle_local_var->_library_owned = 1;
    return vehicle_local_var;
}

__attribute__((deprecated)) vehicle_t *vehicle_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    vehicle_type_t *vehicle_type,
    char *vin,
    char *license_plate_number,
    char *external_id,
    service_hub_t *hub,
    list_t *programs,
    long seat_quantity,
    asset_t *picture,
    asset_t *marker_icon,
    char *tracking_color,
    account_t *belongs_to,
    region_t *zone,
    list_t *notes,
    long note_count,
    int in_use,
    char *content_name
    ) {
    return vehicle_create_internal (
        id,
        active,
        valid,
        name,
        description,
        vehicle_type,
        vin,
        license_plate_number,
        external_id,
        hub,
        programs,
        seat_quantity,
        picture,
        marker_icon,
        tracking_color,
        belongs_to,
        zone,
        notes,
        note_count,
        in_use,
        content_name
        );
}

void vehicle_free(vehicle_t *vehicle) {
    if(NULL == vehicle){
        return ;
    }
    if(vehicle->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "vehicle_free");
        return ;
    }
    listEntry_t *listEntry;
    if (vehicle->name) {
        free(vehicle->name);
        vehicle->name = NULL;
    }
    if (vehicle->description) {
        free(vehicle->description);
        vehicle->description = NULL;
    }
    if (vehicle->vehicle_type) {
        vehicle_type_free(vehicle->vehicle_type);
        vehicle->vehicle_type = NULL;
    }
    if (vehicle->vin) {
        free(vehicle->vin);
        vehicle->vin = NULL;
    }
    if (vehicle->license_plate_number) {
        free(vehicle->license_plate_number);
        vehicle->license_plate_number = NULL;
    }
    if (vehicle->external_id) {
        free(vehicle->external_id);
        vehicle->external_id = NULL;
    }
    if (vehicle->hub) {
        service_hub_free(vehicle->hub);
        vehicle->hub = NULL;
    }
    if (vehicle->programs) {
        list_ForEach(listEntry, vehicle->programs) {
            program_free(listEntry->data);
        }
        list_freeList(vehicle->programs);
        vehicle->programs = NULL;
    }
    if (vehicle->picture) {
        asset_free(vehicle->picture);
        vehicle->picture = NULL;
    }
    if (vehicle->marker_icon) {
        asset_free(vehicle->marker_icon);
        vehicle->marker_icon = NULL;
    }
    if (vehicle->tracking_color) {
        free(vehicle->tracking_color);
        vehicle->tracking_color = NULL;
    }
    if (vehicle->belongs_to) {
        account_free(vehicle->belongs_to);
        vehicle->belongs_to = NULL;
    }
    if (vehicle->zone) {
        region_free(vehicle->zone);
        vehicle->zone = NULL;
    }
    if (vehicle->notes) {
        list_ForEach(listEntry, vehicle->notes) {
            note_free(listEntry->data);
        }
        list_freeList(vehicle->notes);
        vehicle->notes = NULL;
    }
    if (vehicle->content_name) {
        free(vehicle->content_name);
        vehicle->content_name = NULL;
    }
    free(vehicle);
}

cJSON *vehicle_convertToJSON(vehicle_t *vehicle) {
    cJSON *item = cJSON_CreateObject();

    // vehicle->id
    if(vehicle->id) {
    if(cJSON_AddNumberToObject(item, "id", vehicle->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle->active
    if(vehicle->active) {
    if(cJSON_AddBoolToObject(item, "active", vehicle->active) == NULL) {
    goto fail; //Bool
    }
    }


    // vehicle->valid
    if(vehicle->valid) {
    if(cJSON_AddBoolToObject(item, "valid", vehicle->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // vehicle->name
    if(vehicle->name) {
    if(cJSON_AddStringToObject(item, "name", vehicle->name) == NULL) {
    goto fail; //String
    }
    }


    // vehicle->description
    if(vehicle->description) {
    if(cJSON_AddStringToObject(item, "description", vehicle->description) == NULL) {
    goto fail; //String
    }
    }


    // vehicle->vehicle_type
    if(vehicle->vehicle_type) {
    cJSON *vehicle_type_local_JSON = vehicle_type_convertToJSON(vehicle->vehicle_type);
    if(vehicle_type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "vehicleType", vehicle_type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle->vin
    if(vehicle->vin) {
    if(cJSON_AddStringToObject(item, "vin", vehicle->vin) == NULL) {
    goto fail; //String
    }
    }


    // vehicle->license_plate_number
    if(vehicle->license_plate_number) {
    if(cJSON_AddStringToObject(item, "licensePlateNumber", vehicle->license_plate_number) == NULL) {
    goto fail; //String
    }
    }


    // vehicle->external_id
    if(vehicle->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", vehicle->external_id) == NULL) {
    goto fail; //String
    }
    }


    // vehicle->hub
    if(vehicle->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(vehicle->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle->programs
    if(vehicle->programs) {
    cJSON *programs = cJSON_AddArrayToObject(item, "programs");
    if(programs == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *programsListEntry;
    if (vehicle->programs) {
    list_ForEach(programsListEntry, vehicle->programs) {
    cJSON *itemLocal = program_convertToJSON(programsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(programs, itemLocal);
    }
    }
    }


    // vehicle->seat_quantity
    if(vehicle->seat_quantity) {
    if(cJSON_AddNumberToObject(item, "seatQuantity", vehicle->seat_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle->picture
    if(vehicle->picture) {
    cJSON *picture_local_JSON = asset_convertToJSON(vehicle->picture);
    if(picture_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture", picture_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle->marker_icon
    if(vehicle->marker_icon) {
    cJSON *marker_icon_local_JSON = asset_convertToJSON(vehicle->marker_icon);
    if(marker_icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "markerIcon", marker_icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle->tracking_color
    if(vehicle->tracking_color) {
    if(cJSON_AddStringToObject(item, "trackingColor", vehicle->tracking_color) == NULL) {
    goto fail; //String
    }
    }


    // vehicle->belongs_to
    if(vehicle->belongs_to) {
    cJSON *belongs_to_local_JSON = account_convertToJSON(vehicle->belongs_to);
    if(belongs_to_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "belongsTo", belongs_to_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle->zone
    if(vehicle->zone) {
    cJSON *zone_local_JSON = region_convertToJSON(vehicle->zone);
    if(zone_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "zone", zone_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle->notes
    if(vehicle->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (vehicle->notes) {
    list_ForEach(notesListEntry, vehicle->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // vehicle->note_count
    if(vehicle->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", vehicle->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle->in_use
    if(vehicle->in_use) {
    if(cJSON_AddBoolToObject(item, "inUse", vehicle->in_use) == NULL) {
    goto fail; //Bool
    }
    }


    // vehicle->content_name
    if(vehicle->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", vehicle->content_name) == NULL) {
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

vehicle_t *vehicle_parseFromJSON(cJSON *vehicleJSON){

    vehicle_t *vehicle_local_var = NULL;

    // define the local variable for vehicle->vehicle_type
    vehicle_type_t *vehicle_type_local_nonprim = NULL;

    // define the local variable for vehicle->hub
    service_hub_t *hub_local_nonprim = NULL;

    // define the local list for vehicle->programs
    list_t *programsList = NULL;

    // define the local variable for vehicle->picture
    asset_t *picture_local_nonprim = NULL;

    // define the local variable for vehicle->marker_icon
    asset_t *marker_icon_local_nonprim = NULL;

    // define the local variable for vehicle->belongs_to
    account_t *belongs_to_local_nonprim = NULL;

    // define the local variable for vehicle->zone
    region_t *zone_local_nonprim = NULL;

    // define the local list for vehicle->notes
    list_t *notesList = NULL;

    // vehicle->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // vehicle->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // vehicle->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // vehicle->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // vehicle->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // vehicle->vehicle_type
    cJSON *vehicle_type = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "vehicleType");
    if (cJSON_IsNull(vehicle_type)) {
        vehicle_type = NULL;
    }
    if (vehicle_type) { 
    vehicle_type_local_nonprim = vehicle_type_parseFromJSON(vehicle_type); //nonprimitive
    }

    // vehicle->vin
    cJSON *vin = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "vin");
    if (cJSON_IsNull(vin)) {
        vin = NULL;
    }
    if (vin) { 
    if(!cJSON_IsString(vin) && !cJSON_IsNull(vin))
    {
    goto end; //String
    }
    }

    // vehicle->license_plate_number
    cJSON *license_plate_number = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "licensePlateNumber");
    if (cJSON_IsNull(license_plate_number)) {
        license_plate_number = NULL;
    }
    if (license_plate_number) { 
    if(!cJSON_IsString(license_plate_number) && !cJSON_IsNull(license_plate_number))
    {
    goto end; //String
    }
    }

    // vehicle->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // vehicle->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }

    // vehicle->programs
    cJSON *programs = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "programs");
    if (cJSON_IsNull(programs)) {
        programs = NULL;
    }
    if (programs) { 
    cJSON *programs_local_nonprimitive = NULL;
    if(!cJSON_IsArray(programs)){
        goto end; //nonprimitive container
    }

    programsList = list_createList();

    cJSON_ArrayForEach(programs_local_nonprimitive,programs )
    {
        if(!cJSON_IsObject(programs_local_nonprimitive)){
            goto end;
        }
        program_t *programsItem = program_parseFromJSON(programs_local_nonprimitive);

        list_addElement(programsList, programsItem);
    }
    }

    // vehicle->seat_quantity
    cJSON *seat_quantity = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "seatQuantity");
    if (cJSON_IsNull(seat_quantity)) {
        seat_quantity = NULL;
    }
    if (seat_quantity) { 
    if(!cJSON_IsNumber(seat_quantity))
    {
    goto end; //Numeric
    }
    }

    // vehicle->picture
    cJSON *picture = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "picture");
    if (cJSON_IsNull(picture)) {
        picture = NULL;
    }
    if (picture) { 
    picture_local_nonprim = asset_parseFromJSON(picture); //nonprimitive
    }

    // vehicle->marker_icon
    cJSON *marker_icon = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "markerIcon");
    if (cJSON_IsNull(marker_icon)) {
        marker_icon = NULL;
    }
    if (marker_icon) { 
    marker_icon_local_nonprim = asset_parseFromJSON(marker_icon); //nonprimitive
    }

    // vehicle->tracking_color
    cJSON *tracking_color = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "trackingColor");
    if (cJSON_IsNull(tracking_color)) {
        tracking_color = NULL;
    }
    if (tracking_color) { 
    if(!cJSON_IsString(tracking_color) && !cJSON_IsNull(tracking_color))
    {
    goto end; //String
    }
    }

    // vehicle->belongs_to
    cJSON *belongs_to = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "belongsTo");
    if (cJSON_IsNull(belongs_to)) {
        belongs_to = NULL;
    }
    if (belongs_to) { 
    belongs_to_local_nonprim = account_parseFromJSON(belongs_to); //nonprimitive
    }

    // vehicle->zone
    cJSON *zone = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "zone");
    if (cJSON_IsNull(zone)) {
        zone = NULL;
    }
    if (zone) { 
    zone_local_nonprim = region_parseFromJSON(zone); //nonprimitive
    }

    // vehicle->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "notes");
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

    // vehicle->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // vehicle->in_use
    cJSON *in_use = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "inUse");
    if (cJSON_IsNull(in_use)) {
        in_use = NULL;
    }
    if (in_use) { 
    if(!cJSON_IsBool(in_use))
    {
    goto end; //Bool
    }
    }

    // vehicle->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(vehicleJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }


    vehicle_local_var = vehicle_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        vehicle_type ? vehicle_type_local_nonprim : NULL,
        vin && !cJSON_IsNull(vin) ? strdup(vin->valuestring) : NULL,
        license_plate_number && !cJSON_IsNull(license_plate_number) ? strdup(license_plate_number->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        hub ? hub_local_nonprim : NULL,
        programs ? programsList : NULL,
        seat_quantity ? seat_quantity->valuedouble : 0,
        picture ? picture_local_nonprim : NULL,
        marker_icon ? marker_icon_local_nonprim : NULL,
        tracking_color && !cJSON_IsNull(tracking_color) ? strdup(tracking_color->valuestring) : NULL,
        belongs_to ? belongs_to_local_nonprim : NULL,
        zone ? zone_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        in_use ? in_use->valueint : 0,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL
        );

    return vehicle_local_var;
end:
    if (vehicle_type_local_nonprim) {
        vehicle_type_free(vehicle_type_local_nonprim);
        vehicle_type_local_nonprim = NULL;
    }
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    if (programsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, programsList) {
            program_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(programsList);
        programsList = NULL;
    }
    if (picture_local_nonprim) {
        asset_free(picture_local_nonprim);
        picture_local_nonprim = NULL;
    }
    if (marker_icon_local_nonprim) {
        asset_free(marker_icon_local_nonprim);
        marker_icon_local_nonprim = NULL;
    }
    if (belongs_to_local_nonprim) {
        account_free(belongs_to_local_nonprim);
        belongs_to_local_nonprim = NULL;
    }
    if (zone_local_nonprim) {
        region_free(zone_local_nonprim);
        zone_local_nonprim = NULL;
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
    return NULL;

}
