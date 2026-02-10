#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "shipment.h"



static shipment_t *shipment_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    account_t *owner,
    account_t *rider,
    stop_t *pickup_stop,
    stop_t *drop_off_stop,
    list_t *notes,
    long note_count,
    char *batch_id,
    char *reserved,
    char *canceled,
    char *confirmed,
    route_t *route,
    char *polyline,
    shipment_t *replace_passenger,
    int refunded,
    promo_code_t *promo_code,
    int quantity,
    date_time_range_t *pickup_time_window,
    date_time_range_t *drop_off_time_window,
    cargo_type_t *cargo_type,
    service_type_t *service_type,
    long route_id,
    double total_volume,
    int complete,
    char *content_name,
    char *rider_name
    ) {
    shipment_t *shipment_local_var = malloc(sizeof(shipment_t));
    if (!shipment_local_var) {
        return NULL;
    }
    shipment_local_var->id = id;
    shipment_local_var->active = active;
    shipment_local_var->valid = valid;
    shipment_local_var->name = name;
    shipment_local_var->owner = owner;
    shipment_local_var->rider = rider;
    shipment_local_var->pickup_stop = pickup_stop;
    shipment_local_var->drop_off_stop = drop_off_stop;
    shipment_local_var->notes = notes;
    shipment_local_var->note_count = note_count;
    shipment_local_var->batch_id = batch_id;
    shipment_local_var->reserved = reserved;
    shipment_local_var->canceled = canceled;
    shipment_local_var->confirmed = confirmed;
    shipment_local_var->route = route;
    shipment_local_var->polyline = polyline;
    shipment_local_var->replace_passenger = replace_passenger;
    shipment_local_var->refunded = refunded;
    shipment_local_var->promo_code = promo_code;
    shipment_local_var->quantity = quantity;
    shipment_local_var->pickup_time_window = pickup_time_window;
    shipment_local_var->drop_off_time_window = drop_off_time_window;
    shipment_local_var->cargo_type = cargo_type;
    shipment_local_var->service_type = service_type;
    shipment_local_var->route_id = route_id;
    shipment_local_var->total_volume = total_volume;
    shipment_local_var->complete = complete;
    shipment_local_var->content_name = content_name;
    shipment_local_var->rider_name = rider_name;

    shipment_local_var->_library_owned = 1;
    return shipment_local_var;
}

__attribute__((deprecated)) shipment_t *shipment_create(
    long id,
    int active,
    int valid,
    char *name,
    account_t *owner,
    account_t *rider,
    stop_t *pickup_stop,
    stop_t *drop_off_stop,
    list_t *notes,
    long note_count,
    char *batch_id,
    char *reserved,
    char *canceled,
    char *confirmed,
    route_t *route,
    char *polyline,
    shipment_t *replace_passenger,
    int refunded,
    promo_code_t *promo_code,
    int quantity,
    date_time_range_t *pickup_time_window,
    date_time_range_t *drop_off_time_window,
    cargo_type_t *cargo_type,
    service_type_t *service_type,
    long route_id,
    double total_volume,
    int complete,
    char *content_name,
    char *rider_name
    ) {
    return shipment_create_internal (
        id,
        active,
        valid,
        name,
        owner,
        rider,
        pickup_stop,
        drop_off_stop,
        notes,
        note_count,
        batch_id,
        reserved,
        canceled,
        confirmed,
        route,
        polyline,
        replace_passenger,
        refunded,
        promo_code,
        quantity,
        pickup_time_window,
        drop_off_time_window,
        cargo_type,
        service_type,
        route_id,
        total_volume,
        complete,
        content_name,
        rider_name
        );
}

void shipment_free(shipment_t *shipment) {
    if(NULL == shipment){
        return ;
    }
    if(shipment->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "shipment_free");
        return ;
    }
    listEntry_t *listEntry;
    if (shipment->name) {
        free(shipment->name);
        shipment->name = NULL;
    }
    if (shipment->owner) {
        account_free(shipment->owner);
        shipment->owner = NULL;
    }
    if (shipment->rider) {
        account_free(shipment->rider);
        shipment->rider = NULL;
    }
    if (shipment->pickup_stop) {
        stop_free(shipment->pickup_stop);
        shipment->pickup_stop = NULL;
    }
    if (shipment->drop_off_stop) {
        stop_free(shipment->drop_off_stop);
        shipment->drop_off_stop = NULL;
    }
    if (shipment->notes) {
        list_ForEach(listEntry, shipment->notes) {
            note_free(listEntry->data);
        }
        list_freeList(shipment->notes);
        shipment->notes = NULL;
    }
    if (shipment->batch_id) {
        free(shipment->batch_id);
        shipment->batch_id = NULL;
    }
    if (shipment->reserved) {
        free(shipment->reserved);
        shipment->reserved = NULL;
    }
    if (shipment->canceled) {
        free(shipment->canceled);
        shipment->canceled = NULL;
    }
    if (shipment->confirmed) {
        free(shipment->confirmed);
        shipment->confirmed = NULL;
    }
    if (shipment->route) {
        route_free(shipment->route);
        shipment->route = NULL;
    }
    if (shipment->polyline) {
        free(shipment->polyline);
        shipment->polyline = NULL;
    }
    if (shipment->replace_passenger) {
        shipment_free(shipment->replace_passenger);
        shipment->replace_passenger = NULL;
    }
    if (shipment->promo_code) {
        promo_code_free(shipment->promo_code);
        shipment->promo_code = NULL;
    }
    if (shipment->pickup_time_window) {
        date_time_range_free(shipment->pickup_time_window);
        shipment->pickup_time_window = NULL;
    }
    if (shipment->drop_off_time_window) {
        date_time_range_free(shipment->drop_off_time_window);
        shipment->drop_off_time_window = NULL;
    }
    if (shipment->cargo_type) {
        cargo_type_free(shipment->cargo_type);
        shipment->cargo_type = NULL;
    }
    if (shipment->service_type) {
        service_type_free(shipment->service_type);
        shipment->service_type = NULL;
    }
    if (shipment->content_name) {
        free(shipment->content_name);
        shipment->content_name = NULL;
    }
    if (shipment->rider_name) {
        free(shipment->rider_name);
        shipment->rider_name = NULL;
    }
    free(shipment);
}

cJSON *shipment_convertToJSON(shipment_t *shipment) {
    cJSON *item = cJSON_CreateObject();

    // shipment->id
    if(shipment->id) {
    if(cJSON_AddNumberToObject(item, "id", shipment->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment->active
    if(shipment->active) {
    if(cJSON_AddBoolToObject(item, "active", shipment->active) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment->valid
    if(shipment->valid) {
    if(cJSON_AddBoolToObject(item, "valid", shipment->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment->name
    if(shipment->name) {
    if(cJSON_AddStringToObject(item, "name", shipment->name) == NULL) {
    goto fail; //String
    }
    }


    // shipment->owner
    if(shipment->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(shipment->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->rider
    if(shipment->rider) {
    cJSON *rider_local_JSON = account_convertToJSON(shipment->rider);
    if(rider_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rider", rider_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->pickup_stop
    if(shipment->pickup_stop) {
    cJSON *pickup_stop_local_JSON = stop_convertToJSON(shipment->pickup_stop);
    if(pickup_stop_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pickupStop", pickup_stop_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->drop_off_stop
    if(shipment->drop_off_stop) {
    cJSON *drop_off_stop_local_JSON = stop_convertToJSON(shipment->drop_off_stop);
    if(drop_off_stop_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "dropOffStop", drop_off_stop_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->notes
    if(shipment->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (shipment->notes) {
    list_ForEach(notesListEntry, shipment->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // shipment->note_count
    if(shipment->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", shipment->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment->batch_id
    if(shipment->batch_id) {
    if(cJSON_AddStringToObject(item, "batchId", shipment->batch_id) == NULL) {
    goto fail; //String
    }
    }


    // shipment->reserved
    if(shipment->reserved) {
    if(cJSON_AddStringToObject(item, "reserved", shipment->reserved) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment->canceled
    if(shipment->canceled) {
    if(cJSON_AddStringToObject(item, "canceled", shipment->canceled) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment->confirmed
    if(shipment->confirmed) {
    if(cJSON_AddStringToObject(item, "confirmed", shipment->confirmed) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment->route
    if(shipment->route) {
    cJSON *route_local_JSON = route_convertToJSON(shipment->route);
    if(route_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "route", route_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->polyline
    if(shipment->polyline) {
    if(cJSON_AddStringToObject(item, "polyline", shipment->polyline) == NULL) {
    goto fail; //String
    }
    }


    // shipment->replace_passenger
    if(shipment->replace_passenger) {
    cJSON *replace_passenger_local_JSON = shipment_convertToJSON(shipment->replace_passenger);
    if(replace_passenger_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "replacePassenger", replace_passenger_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->refunded
    if(shipment->refunded) {
    if(cJSON_AddBoolToObject(item, "refunded", shipment->refunded) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment->promo_code
    if(shipment->promo_code) {
    cJSON *promo_code_local_JSON = promo_code_convertToJSON(shipment->promo_code);
    if(promo_code_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "promoCode", promo_code_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->quantity
    if(shipment->quantity) {
    if(cJSON_AddNumberToObject(item, "quantity", shipment->quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment->pickup_time_window
    if(shipment->pickup_time_window) {
    cJSON *pickup_time_window_local_JSON = date_time_range_convertToJSON(shipment->pickup_time_window);
    if(pickup_time_window_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pickupTimeWindow", pickup_time_window_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->drop_off_time_window
    if(shipment->drop_off_time_window) {
    cJSON *drop_off_time_window_local_JSON = date_time_range_convertToJSON(shipment->drop_off_time_window);
    if(drop_off_time_window_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "dropOffTimeWindow", drop_off_time_window_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->cargo_type
    if(shipment->cargo_type) {
    cJSON *cargo_type_local_JSON = cargo_type_convertToJSON(shipment->cargo_type);
    if(cargo_type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cargoType", cargo_type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->service_type
    if(shipment->service_type) {
    cJSON *service_type_local_JSON = service_type_convertToJSON(shipment->service_type);
    if(service_type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "serviceType", service_type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment->route_id
    if(shipment->route_id) {
    if(cJSON_AddNumberToObject(item, "routeId", shipment->route_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment->total_volume
    if(shipment->total_volume) {
    if(cJSON_AddNumberToObject(item, "totalVolume", shipment->total_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment->complete
    if(shipment->complete) {
    if(cJSON_AddBoolToObject(item, "complete", shipment->complete) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment->content_name
    if(shipment->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", shipment->content_name) == NULL) {
    goto fail; //String
    }
    }


    // shipment->rider_name
    if(shipment->rider_name) {
    if(cJSON_AddStringToObject(item, "riderName", shipment->rider_name) == NULL) {
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

shipment_t *shipment_parseFromJSON(cJSON *shipmentJSON){

    shipment_t *shipment_local_var = NULL;

    // define the local variable for shipment->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for shipment->rider
    account_t *rider_local_nonprim = NULL;

    // define the local variable for shipment->pickup_stop
    stop_t *pickup_stop_local_nonprim = NULL;

    // define the local variable for shipment->drop_off_stop
    stop_t *drop_off_stop_local_nonprim = NULL;

    // define the local list for shipment->notes
    list_t *notesList = NULL;

    // define the local variable for shipment->route
    route_t *route_local_nonprim = NULL;

    // define the local variable for shipment->replace_passenger
    shipment_t *replace_passenger_local_nonprim = NULL;

    // define the local variable for shipment->promo_code
    promo_code_t *promo_code_local_nonprim = NULL;

    // define the local variable for shipment->pickup_time_window
    date_time_range_t *pickup_time_window_local_nonprim = NULL;

    // define the local variable for shipment->drop_off_time_window
    date_time_range_t *drop_off_time_window_local_nonprim = NULL;

    // define the local variable for shipment->cargo_type
    cargo_type_t *cargo_type_local_nonprim = NULL;

    // define the local variable for shipment->service_type
    service_type_t *service_type_local_nonprim = NULL;

    // shipment->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // shipment->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // shipment->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // shipment->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // shipment->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // shipment->rider
    cJSON *rider = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "rider");
    if (cJSON_IsNull(rider)) {
        rider = NULL;
    }
    if (rider) { 
    rider_local_nonprim = account_parseFromJSON(rider); //nonprimitive
    }

    // shipment->pickup_stop
    cJSON *pickup_stop = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "pickupStop");
    if (cJSON_IsNull(pickup_stop)) {
        pickup_stop = NULL;
    }
    if (pickup_stop) { 
    pickup_stop_local_nonprim = stop_parseFromJSON(pickup_stop); //nonprimitive
    }

    // shipment->drop_off_stop
    cJSON *drop_off_stop = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "dropOffStop");
    if (cJSON_IsNull(drop_off_stop)) {
        drop_off_stop = NULL;
    }
    if (drop_off_stop) { 
    drop_off_stop_local_nonprim = stop_parseFromJSON(drop_off_stop); //nonprimitive
    }

    // shipment->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "notes");
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

    // shipment->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // shipment->batch_id
    cJSON *batch_id = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "batchId");
    if (cJSON_IsNull(batch_id)) {
        batch_id = NULL;
    }
    if (batch_id) { 
    if(!cJSON_IsString(batch_id) && !cJSON_IsNull(batch_id))
    {
    goto end; //String
    }
    }

    // shipment->reserved
    cJSON *reserved = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "reserved");
    if (cJSON_IsNull(reserved)) {
        reserved = NULL;
    }
    if (reserved) { 
    if(!cJSON_IsString(reserved) && !cJSON_IsNull(reserved))
    {
    goto end; //DateTime
    }
    }

    // shipment->canceled
    cJSON *canceled = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "canceled");
    if (cJSON_IsNull(canceled)) {
        canceled = NULL;
    }
    if (canceled) { 
    if(!cJSON_IsString(canceled) && !cJSON_IsNull(canceled))
    {
    goto end; //DateTime
    }
    }

    // shipment->confirmed
    cJSON *confirmed = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "confirmed");
    if (cJSON_IsNull(confirmed)) {
        confirmed = NULL;
    }
    if (confirmed) { 
    if(!cJSON_IsString(confirmed) && !cJSON_IsNull(confirmed))
    {
    goto end; //DateTime
    }
    }

    // shipment->route
    cJSON *route = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "route");
    if (cJSON_IsNull(route)) {
        route = NULL;
    }
    if (route) { 
    route_local_nonprim = route_parseFromJSON(route); //nonprimitive
    }

    // shipment->polyline
    cJSON *polyline = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "polyline");
    if (cJSON_IsNull(polyline)) {
        polyline = NULL;
    }
    if (polyline) { 
    if(!cJSON_IsString(polyline) && !cJSON_IsNull(polyline))
    {
    goto end; //String
    }
    }

    // shipment->replace_passenger
    cJSON *replace_passenger = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "replacePassenger");
    if (cJSON_IsNull(replace_passenger)) {
        replace_passenger = NULL;
    }
    if (replace_passenger) { 
    replace_passenger_local_nonprim = shipment_parseFromJSON(replace_passenger); //nonprimitive
    }

    // shipment->refunded
    cJSON *refunded = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "refunded");
    if (cJSON_IsNull(refunded)) {
        refunded = NULL;
    }
    if (refunded) { 
    if(!cJSON_IsBool(refunded))
    {
    goto end; //Bool
    }
    }

    // shipment->promo_code
    cJSON *promo_code = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "promoCode");
    if (cJSON_IsNull(promo_code)) {
        promo_code = NULL;
    }
    if (promo_code) { 
    promo_code_local_nonprim = promo_code_parseFromJSON(promo_code); //nonprimitive
    }

    // shipment->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "quantity");
    if (cJSON_IsNull(quantity)) {
        quantity = NULL;
    }
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // shipment->pickup_time_window
    cJSON *pickup_time_window = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "pickupTimeWindow");
    if (cJSON_IsNull(pickup_time_window)) {
        pickup_time_window = NULL;
    }
    if (pickup_time_window) { 
    pickup_time_window_local_nonprim = date_time_range_parseFromJSON(pickup_time_window); //nonprimitive
    }

    // shipment->drop_off_time_window
    cJSON *drop_off_time_window = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "dropOffTimeWindow");
    if (cJSON_IsNull(drop_off_time_window)) {
        drop_off_time_window = NULL;
    }
    if (drop_off_time_window) { 
    drop_off_time_window_local_nonprim = date_time_range_parseFromJSON(drop_off_time_window); //nonprimitive
    }

    // shipment->cargo_type
    cJSON *cargo_type = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "cargoType");
    if (cJSON_IsNull(cargo_type)) {
        cargo_type = NULL;
    }
    if (cargo_type) { 
    cargo_type_local_nonprim = cargo_type_parseFromJSON(cargo_type); //nonprimitive
    }

    // shipment->service_type
    cJSON *service_type = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "serviceType");
    if (cJSON_IsNull(service_type)) {
        service_type = NULL;
    }
    if (service_type) { 
    service_type_local_nonprim = service_type_parseFromJSON(service_type); //nonprimitive
    }

    // shipment->route_id
    cJSON *route_id = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "routeId");
    if (cJSON_IsNull(route_id)) {
        route_id = NULL;
    }
    if (route_id) { 
    if(!cJSON_IsNumber(route_id))
    {
    goto end; //Numeric
    }
    }

    // shipment->total_volume
    cJSON *total_volume = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "totalVolume");
    if (cJSON_IsNull(total_volume)) {
        total_volume = NULL;
    }
    if (total_volume) { 
    if(!cJSON_IsNumber(total_volume))
    {
    goto end; //Numeric
    }
    }

    // shipment->complete
    cJSON *complete = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "complete");
    if (cJSON_IsNull(complete)) {
        complete = NULL;
    }
    if (complete) { 
    if(!cJSON_IsBool(complete))
    {
    goto end; //Bool
    }
    }

    // shipment->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // shipment->rider_name
    cJSON *rider_name = cJSON_GetObjectItemCaseSensitive(shipmentJSON, "riderName");
    if (cJSON_IsNull(rider_name)) {
        rider_name = NULL;
    }
    if (rider_name) { 
    if(!cJSON_IsString(rider_name) && !cJSON_IsNull(rider_name))
    {
    goto end; //String
    }
    }


    shipment_local_var = shipment_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        rider ? rider_local_nonprim : NULL,
        pickup_stop ? pickup_stop_local_nonprim : NULL,
        drop_off_stop ? drop_off_stop_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        batch_id && !cJSON_IsNull(batch_id) ? strdup(batch_id->valuestring) : NULL,
        reserved && !cJSON_IsNull(reserved) ? strdup(reserved->valuestring) : NULL,
        canceled && !cJSON_IsNull(canceled) ? strdup(canceled->valuestring) : NULL,
        confirmed && !cJSON_IsNull(confirmed) ? strdup(confirmed->valuestring) : NULL,
        route ? route_local_nonprim : NULL,
        polyline && !cJSON_IsNull(polyline) ? strdup(polyline->valuestring) : NULL,
        replace_passenger ? replace_passenger_local_nonprim : NULL,
        refunded ? refunded->valueint : 0,
        promo_code ? promo_code_local_nonprim : NULL,
        quantity ? quantity->valuedouble : 0,
        pickup_time_window ? pickup_time_window_local_nonprim : NULL,
        drop_off_time_window ? drop_off_time_window_local_nonprim : NULL,
        cargo_type ? cargo_type_local_nonprim : NULL,
        service_type ? service_type_local_nonprim : NULL,
        route_id ? route_id->valuedouble : 0,
        total_volume ? total_volume->valuedouble : 0,
        complete ? complete->valueint : 0,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        rider_name && !cJSON_IsNull(rider_name) ? strdup(rider_name->valuestring) : NULL
        );

    return shipment_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (rider_local_nonprim) {
        account_free(rider_local_nonprim);
        rider_local_nonprim = NULL;
    }
    if (pickup_stop_local_nonprim) {
        stop_free(pickup_stop_local_nonprim);
        pickup_stop_local_nonprim = NULL;
    }
    if (drop_off_stop_local_nonprim) {
        stop_free(drop_off_stop_local_nonprim);
        drop_off_stop_local_nonprim = NULL;
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
    if (route_local_nonprim) {
        route_free(route_local_nonprim);
        route_local_nonprim = NULL;
    }
    if (replace_passenger_local_nonprim) {
        shipment_free(replace_passenger_local_nonprim);
        replace_passenger_local_nonprim = NULL;
    }
    if (promo_code_local_nonprim) {
        promo_code_free(promo_code_local_nonprim);
        promo_code_local_nonprim = NULL;
    }
    if (pickup_time_window_local_nonprim) {
        date_time_range_free(pickup_time_window_local_nonprim);
        pickup_time_window_local_nonprim = NULL;
    }
    if (drop_off_time_window_local_nonprim) {
        date_time_range_free(drop_off_time_window_local_nonprim);
        drop_off_time_window_local_nonprim = NULL;
    }
    if (cargo_type_local_nonprim) {
        cargo_type_free(cargo_type_local_nonprim);
        cargo_type_local_nonprim = NULL;
    }
    if (service_type_local_nonprim) {
        service_type_free(service_type_local_nonprim);
        service_type_local_nonprim = NULL;
    }
    return NULL;

}
