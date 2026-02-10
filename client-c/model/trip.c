#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "trip.h"


char* trip_preference_ToString(sirqul_iot_platform_trip_PREFERENCE_e preference) {
    char* preferenceArray[] =  { "NULL", "DRIVE", "FLEXIBLE", "RIDE" };
    return preferenceArray[preference];
}

sirqul_iot_platform_trip_PREFERENCE_e trip_preference_FromString(char* preference){
    int stringToReturn = 0;
    char *preferenceArray[] =  { "NULL", "DRIVE", "FLEXIBLE", "RIDE" };
    size_t sizeofArray = sizeof(preferenceArray) / sizeof(preferenceArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(preference, preferenceArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static trip_t *trip_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    location_t *pickup_location,
    char *pickup_time,
    location_t *drop_off_location,
    char *drop_off_time,
    list_t *shipments,
    recurrence_t *recurrence,
    char *time_zone,
    route_t *route,
    sirqul_iot_platform_trip_PREFERENCE_e preference,
    char *notifications,
    list_t *matches,
    connection_t *owner_connection,
    long original_id
    ) {
    trip_t *trip_local_var = malloc(sizeof(trip_t));
    if (!trip_local_var) {
        return NULL;
    }
    trip_local_var->id = id;
    trip_local_var->active = active;
    trip_local_var->valid = valid;
    trip_local_var->owner = owner;
    trip_local_var->pickup_location = pickup_location;
    trip_local_var->pickup_time = pickup_time;
    trip_local_var->drop_off_location = drop_off_location;
    trip_local_var->drop_off_time = drop_off_time;
    trip_local_var->shipments = shipments;
    trip_local_var->recurrence = recurrence;
    trip_local_var->time_zone = time_zone;
    trip_local_var->route = route;
    trip_local_var->preference = preference;
    trip_local_var->notifications = notifications;
    trip_local_var->matches = matches;
    trip_local_var->owner_connection = owner_connection;
    trip_local_var->original_id = original_id;

    trip_local_var->_library_owned = 1;
    return trip_local_var;
}

__attribute__((deprecated)) trip_t *trip_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    location_t *pickup_location,
    char *pickup_time,
    location_t *drop_off_location,
    char *drop_off_time,
    list_t *shipments,
    recurrence_t *recurrence,
    char *time_zone,
    route_t *route,
    sirqul_iot_platform_trip_PREFERENCE_e preference,
    char *notifications,
    list_t *matches,
    connection_t *owner_connection,
    long original_id
    ) {
    return trip_create_internal (
        id,
        active,
        valid,
        owner,
        pickup_location,
        pickup_time,
        drop_off_location,
        drop_off_time,
        shipments,
        recurrence,
        time_zone,
        route,
        preference,
        notifications,
        matches,
        owner_connection,
        original_id
        );
}

void trip_free(trip_t *trip) {
    if(NULL == trip){
        return ;
    }
    if(trip->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "trip_free");
        return ;
    }
    listEntry_t *listEntry;
    if (trip->owner) {
        account_free(trip->owner);
        trip->owner = NULL;
    }
    if (trip->pickup_location) {
        location_free(trip->pickup_location);
        trip->pickup_location = NULL;
    }
    if (trip->pickup_time) {
        free(trip->pickup_time);
        trip->pickup_time = NULL;
    }
    if (trip->drop_off_location) {
        location_free(trip->drop_off_location);
        trip->drop_off_location = NULL;
    }
    if (trip->drop_off_time) {
        free(trip->drop_off_time);
        trip->drop_off_time = NULL;
    }
    if (trip->shipments) {
        list_ForEach(listEntry, trip->shipments) {
            shipment_free(listEntry->data);
        }
        list_freeList(trip->shipments);
        trip->shipments = NULL;
    }
    if (trip->recurrence) {
        recurrence_free(trip->recurrence);
        trip->recurrence = NULL;
    }
    if (trip->time_zone) {
        free(trip->time_zone);
        trip->time_zone = NULL;
    }
    if (trip->route) {
        route_free(trip->route);
        trip->route = NULL;
    }
    if (trip->notifications) {
        free(trip->notifications);
        trip->notifications = NULL;
    }
    if (trip->matches) {
        list_ForEach(listEntry, trip->matches) {
            trip_free(listEntry->data);
        }
        list_freeList(trip->matches);
        trip->matches = NULL;
    }
    if (trip->owner_connection) {
        connection_free(trip->owner_connection);
        trip->owner_connection = NULL;
    }
    free(trip);
}

cJSON *trip_convertToJSON(trip_t *trip) {
    cJSON *item = cJSON_CreateObject();

    // trip->id
    if(trip->id) {
    if(cJSON_AddNumberToObject(item, "id", trip->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // trip->active
    if(trip->active) {
    if(cJSON_AddBoolToObject(item, "active", trip->active) == NULL) {
    goto fail; //Bool
    }
    }


    // trip->valid
    if(trip->valid) {
    if(cJSON_AddBoolToObject(item, "valid", trip->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // trip->owner
    if(trip->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(trip->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trip->pickup_location
    if(trip->pickup_location) {
    cJSON *pickup_location_local_JSON = location_convertToJSON(trip->pickup_location);
    if(pickup_location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pickupLocation", pickup_location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trip->pickup_time
    if(trip->pickup_time) {
    if(cJSON_AddStringToObject(item, "pickupTime", trip->pickup_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // trip->drop_off_location
    if(trip->drop_off_location) {
    cJSON *drop_off_location_local_JSON = location_convertToJSON(trip->drop_off_location);
    if(drop_off_location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "dropOffLocation", drop_off_location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trip->drop_off_time
    if(trip->drop_off_time) {
    if(cJSON_AddStringToObject(item, "dropOffTime", trip->drop_off_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // trip->shipments
    if(trip->shipments) {
    cJSON *shipments = cJSON_AddArrayToObject(item, "shipments");
    if(shipments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *shipmentsListEntry;
    if (trip->shipments) {
    list_ForEach(shipmentsListEntry, trip->shipments) {
    cJSON *itemLocal = shipment_convertToJSON(shipmentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(shipments, itemLocal);
    }
    }
    }


    // trip->recurrence
    if(trip->recurrence) {
    cJSON *recurrence_local_JSON = recurrence_convertToJSON(trip->recurrence);
    if(recurrence_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "recurrence", recurrence_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trip->time_zone
    if(trip->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", trip->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // trip->route
    if(trip->route) {
    cJSON *route_local_JSON = route_convertToJSON(trip->route);
    if(route_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "route", route_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trip->preference
    if(trip->preference != sirqul_iot_platform_trip_PREFERENCE_NULL) {
    if(cJSON_AddStringToObject(item, "preference", trip_preference_ToString(trip->preference)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // trip->notifications
    if(trip->notifications) {
    if(cJSON_AddStringToObject(item, "notifications", trip->notifications) == NULL) {
    goto fail; //String
    }
    }


    // trip->matches
    if(trip->matches) {
    cJSON *matches = cJSON_AddArrayToObject(item, "matches");
    if(matches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *matchesListEntry;
    if (trip->matches) {
    list_ForEach(matchesListEntry, trip->matches) {
    cJSON *itemLocal = trip_convertToJSON(matchesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(matches, itemLocal);
    }
    }
    }


    // trip->owner_connection
    if(trip->owner_connection) {
    cJSON *owner_connection_local_JSON = connection_convertToJSON(trip->owner_connection);
    if(owner_connection_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "ownerConnection", owner_connection_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // trip->original_id
    if(trip->original_id) {
    if(cJSON_AddNumberToObject(item, "originalId", trip->original_id) == NULL) {
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

trip_t *trip_parseFromJSON(cJSON *tripJSON){

    trip_t *trip_local_var = NULL;

    // define the local variable for trip->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for trip->pickup_location
    location_t *pickup_location_local_nonprim = NULL;

    // define the local variable for trip->drop_off_location
    location_t *drop_off_location_local_nonprim = NULL;

    // define the local list for trip->shipments
    list_t *shipmentsList = NULL;

    // define the local variable for trip->recurrence
    recurrence_t *recurrence_local_nonprim = NULL;

    // define the local variable for trip->route
    route_t *route_local_nonprim = NULL;

    // define the local list for trip->matches
    list_t *matchesList = NULL;

    // define the local variable for trip->owner_connection
    connection_t *owner_connection_local_nonprim = NULL;

    // trip->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(tripJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // trip->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(tripJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // trip->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(tripJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // trip->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(tripJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // trip->pickup_location
    cJSON *pickup_location = cJSON_GetObjectItemCaseSensitive(tripJSON, "pickupLocation");
    if (cJSON_IsNull(pickup_location)) {
        pickup_location = NULL;
    }
    if (pickup_location) { 
    pickup_location_local_nonprim = location_parseFromJSON(pickup_location); //nonprimitive
    }

    // trip->pickup_time
    cJSON *pickup_time = cJSON_GetObjectItemCaseSensitive(tripJSON, "pickupTime");
    if (cJSON_IsNull(pickup_time)) {
        pickup_time = NULL;
    }
    if (pickup_time) { 
    if(!cJSON_IsString(pickup_time) && !cJSON_IsNull(pickup_time))
    {
    goto end; //DateTime
    }
    }

    // trip->drop_off_location
    cJSON *drop_off_location = cJSON_GetObjectItemCaseSensitive(tripJSON, "dropOffLocation");
    if (cJSON_IsNull(drop_off_location)) {
        drop_off_location = NULL;
    }
    if (drop_off_location) { 
    drop_off_location_local_nonprim = location_parseFromJSON(drop_off_location); //nonprimitive
    }

    // trip->drop_off_time
    cJSON *drop_off_time = cJSON_GetObjectItemCaseSensitive(tripJSON, "dropOffTime");
    if (cJSON_IsNull(drop_off_time)) {
        drop_off_time = NULL;
    }
    if (drop_off_time) { 
    if(!cJSON_IsString(drop_off_time) && !cJSON_IsNull(drop_off_time))
    {
    goto end; //DateTime
    }
    }

    // trip->shipments
    cJSON *shipments = cJSON_GetObjectItemCaseSensitive(tripJSON, "shipments");
    if (cJSON_IsNull(shipments)) {
        shipments = NULL;
    }
    if (shipments) { 
    cJSON *shipments_local_nonprimitive = NULL;
    if(!cJSON_IsArray(shipments)){
        goto end; //nonprimitive container
    }

    shipmentsList = list_createList();

    cJSON_ArrayForEach(shipments_local_nonprimitive,shipments )
    {
        if(!cJSON_IsObject(shipments_local_nonprimitive)){
            goto end;
        }
        shipment_t *shipmentsItem = shipment_parseFromJSON(shipments_local_nonprimitive);

        list_addElement(shipmentsList, shipmentsItem);
    }
    }

    // trip->recurrence
    cJSON *recurrence = cJSON_GetObjectItemCaseSensitive(tripJSON, "recurrence");
    if (cJSON_IsNull(recurrence)) {
        recurrence = NULL;
    }
    if (recurrence) { 
    recurrence_local_nonprim = recurrence_parseFromJSON(recurrence); //nonprimitive
    }

    // trip->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(tripJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // trip->route
    cJSON *route = cJSON_GetObjectItemCaseSensitive(tripJSON, "route");
    if (cJSON_IsNull(route)) {
        route = NULL;
    }
    if (route) { 
    route_local_nonprim = route_parseFromJSON(route); //nonprimitive
    }

    // trip->preference
    cJSON *preference = cJSON_GetObjectItemCaseSensitive(tripJSON, "preference");
    if (cJSON_IsNull(preference)) {
        preference = NULL;
    }
    sirqul_iot_platform_trip_PREFERENCE_e preferenceVariable;
    if (preference) { 
    if(!cJSON_IsString(preference))
    {
    goto end; //Enum
    }
    preferenceVariable = trip_preference_FromString(preference->valuestring);
    }

    // trip->notifications
    cJSON *notifications = cJSON_GetObjectItemCaseSensitive(tripJSON, "notifications");
    if (cJSON_IsNull(notifications)) {
        notifications = NULL;
    }
    if (notifications) { 
    if(!cJSON_IsString(notifications) && !cJSON_IsNull(notifications))
    {
    goto end; //String
    }
    }

    // trip->matches
    cJSON *matches = cJSON_GetObjectItemCaseSensitive(tripJSON, "matches");
    if (cJSON_IsNull(matches)) {
        matches = NULL;
    }
    if (matches) { 
    cJSON *matches_local_nonprimitive = NULL;
    if(!cJSON_IsArray(matches)){
        goto end; //nonprimitive container
    }

    matchesList = list_createList();

    cJSON_ArrayForEach(matches_local_nonprimitive,matches )
    {
        if(!cJSON_IsObject(matches_local_nonprimitive)){
            goto end;
        }
        trip_t *matchesItem = trip_parseFromJSON(matches_local_nonprimitive);

        list_addElement(matchesList, matchesItem);
    }
    }

    // trip->owner_connection
    cJSON *owner_connection = cJSON_GetObjectItemCaseSensitive(tripJSON, "ownerConnection");
    if (cJSON_IsNull(owner_connection)) {
        owner_connection = NULL;
    }
    if (owner_connection) { 
    owner_connection_local_nonprim = connection_parseFromJSON(owner_connection); //nonprimitive
    }

    // trip->original_id
    cJSON *original_id = cJSON_GetObjectItemCaseSensitive(tripJSON, "originalId");
    if (cJSON_IsNull(original_id)) {
        original_id = NULL;
    }
    if (original_id) { 
    if(!cJSON_IsNumber(original_id))
    {
    goto end; //Numeric
    }
    }


    trip_local_var = trip_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        pickup_location ? pickup_location_local_nonprim : NULL,
        pickup_time && !cJSON_IsNull(pickup_time) ? strdup(pickup_time->valuestring) : NULL,
        drop_off_location ? drop_off_location_local_nonprim : NULL,
        drop_off_time && !cJSON_IsNull(drop_off_time) ? strdup(drop_off_time->valuestring) : NULL,
        shipments ? shipmentsList : NULL,
        recurrence ? recurrence_local_nonprim : NULL,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL,
        route ? route_local_nonprim : NULL,
        preference ? preferenceVariable : sirqul_iot_platform_trip_PREFERENCE_NULL,
        notifications && !cJSON_IsNull(notifications) ? strdup(notifications->valuestring) : NULL,
        matches ? matchesList : NULL,
        owner_connection ? owner_connection_local_nonprim : NULL,
        original_id ? original_id->valuedouble : 0
        );

    return trip_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (pickup_location_local_nonprim) {
        location_free(pickup_location_local_nonprim);
        pickup_location_local_nonprim = NULL;
    }
    if (drop_off_location_local_nonprim) {
        location_free(drop_off_location_local_nonprim);
        drop_off_location_local_nonprim = NULL;
    }
    if (shipmentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, shipmentsList) {
            shipment_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(shipmentsList);
        shipmentsList = NULL;
    }
    if (recurrence_local_nonprim) {
        recurrence_free(recurrence_local_nonprim);
        recurrence_local_nonprim = NULL;
    }
    if (route_local_nonprim) {
        route_free(route_local_nonprim);
        route_local_nonprim = NULL;
    }
    if (matchesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, matchesList) {
            trip_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(matchesList);
        matchesList = NULL;
    }
    if (owner_connection_local_nonprim) {
        connection_free(owner_connection_local_nonprim);
        owner_connection_local_nonprim = NULL;
    }
    return NULL;

}
