#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "stop.h"


char* stop_stop_type_ToString(sirqul_iot_platform_stop_STOPTYPE_e stop_type) {
    char* stop_typeArray[] =  { "NULL", "PICKUP", "DROPOFF", "START", "END", "ROUTING" };
    return stop_typeArray[stop_type];
}

sirqul_iot_platform_stop_STOPTYPE_e stop_stop_type_FromString(char* stop_type){
    int stringToReturn = 0;
    char *stop_typeArray[] =  { "NULL", "PICKUP", "DROPOFF", "START", "END", "ROUTING" };
    size_t sizeofArray = sizeof(stop_typeArray) / sizeof(stop_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(stop_type, stop_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* stop_progress_status_ToString(sirqul_iot_platform_stop_PROGRESSSTATUS_e progress_status) {
    char* progress_statusArray[] =  { "NULL", "PENDING", "COMPLETE", "INVALID" };
    return progress_statusArray[progress_status];
}

sirqul_iot_platform_stop_PROGRESSSTATUS_e stop_progress_status_FromString(char* progress_status){
    int stringToReturn = 0;
    char *progress_statusArray[] =  { "NULL", "PENDING", "COMPLETE", "INVALID" };
    size_t sizeofArray = sizeof(progress_statusArray) / sizeof(progress_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(progress_status, progress_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static stop_t *stop_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    account_t *owner,
    location_t *location,
    list_t *notes,
    long note_count,
    sirqul_iot_platform_stop_STOPTYPE_e stop_type,
    long order_index,
    char *start_time,
    char *end_time,
    char *estimated_time,
    char *estimated_arrival_time,
    char *estimated_departure_time,
    char *actual_time,
    char *desired_time,
    int time_padding,
    route_t *route,
    shipment_t *shipment,
    sirqul_iot_platform_stop_PROGRESSSTATUS_e progress_status,
    char *compare_estimated_time,
    char *compare_estimated_arrival_time,
    char *compare_estimiated_departure_time,
    char *polyline,
    stop_t *parent,
    char *location_display,
    int complete,
    char *content_name,
    char *location_address
    ) {
    stop_t *stop_local_var = malloc(sizeof(stop_t));
    if (!stop_local_var) {
        return NULL;
    }
    stop_local_var->id = id;
    stop_local_var->active = active;
    stop_local_var->valid = valid;
    stop_local_var->latitude = latitude;
    stop_local_var->longitude = longitude;
    stop_local_var->location_description = location_description;
    stop_local_var->name = name;
    stop_local_var->owner = owner;
    stop_local_var->location = location;
    stop_local_var->notes = notes;
    stop_local_var->note_count = note_count;
    stop_local_var->stop_type = stop_type;
    stop_local_var->order_index = order_index;
    stop_local_var->start_time = start_time;
    stop_local_var->end_time = end_time;
    stop_local_var->estimated_time = estimated_time;
    stop_local_var->estimated_arrival_time = estimated_arrival_time;
    stop_local_var->estimated_departure_time = estimated_departure_time;
    stop_local_var->actual_time = actual_time;
    stop_local_var->desired_time = desired_time;
    stop_local_var->time_padding = time_padding;
    stop_local_var->route = route;
    stop_local_var->shipment = shipment;
    stop_local_var->progress_status = progress_status;
    stop_local_var->compare_estimated_time = compare_estimated_time;
    stop_local_var->compare_estimated_arrival_time = compare_estimated_arrival_time;
    stop_local_var->compare_estimiated_departure_time = compare_estimiated_departure_time;
    stop_local_var->polyline = polyline;
    stop_local_var->parent = parent;
    stop_local_var->location_display = location_display;
    stop_local_var->complete = complete;
    stop_local_var->content_name = content_name;
    stop_local_var->location_address = location_address;

    stop_local_var->_library_owned = 1;
    return stop_local_var;
}

__attribute__((deprecated)) stop_t *stop_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    account_t *owner,
    location_t *location,
    list_t *notes,
    long note_count,
    sirqul_iot_platform_stop_STOPTYPE_e stop_type,
    long order_index,
    char *start_time,
    char *end_time,
    char *estimated_time,
    char *estimated_arrival_time,
    char *estimated_departure_time,
    char *actual_time,
    char *desired_time,
    int time_padding,
    route_t *route,
    shipment_t *shipment,
    sirqul_iot_platform_stop_PROGRESSSTATUS_e progress_status,
    char *compare_estimated_time,
    char *compare_estimated_arrival_time,
    char *compare_estimiated_departure_time,
    char *polyline,
    stop_t *parent,
    char *location_display,
    int complete,
    char *content_name,
    char *location_address
    ) {
    return stop_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        name,
        owner,
        location,
        notes,
        note_count,
        stop_type,
        order_index,
        start_time,
        end_time,
        estimated_time,
        estimated_arrival_time,
        estimated_departure_time,
        actual_time,
        desired_time,
        time_padding,
        route,
        shipment,
        progress_status,
        compare_estimated_time,
        compare_estimated_arrival_time,
        compare_estimiated_departure_time,
        polyline,
        parent,
        location_display,
        complete,
        content_name,
        location_address
        );
}

void stop_free(stop_t *stop) {
    if(NULL == stop){
        return ;
    }
    if(stop->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "stop_free");
        return ;
    }
    listEntry_t *listEntry;
    if (stop->location_description) {
        free(stop->location_description);
        stop->location_description = NULL;
    }
    if (stop->name) {
        free(stop->name);
        stop->name = NULL;
    }
    if (stop->owner) {
        account_free(stop->owner);
        stop->owner = NULL;
    }
    if (stop->location) {
        location_free(stop->location);
        stop->location = NULL;
    }
    if (stop->notes) {
        list_ForEach(listEntry, stop->notes) {
            note_free(listEntry->data);
        }
        list_freeList(stop->notes);
        stop->notes = NULL;
    }
    if (stop->start_time) {
        free(stop->start_time);
        stop->start_time = NULL;
    }
    if (stop->end_time) {
        free(stop->end_time);
        stop->end_time = NULL;
    }
    if (stop->estimated_time) {
        free(stop->estimated_time);
        stop->estimated_time = NULL;
    }
    if (stop->estimated_arrival_time) {
        free(stop->estimated_arrival_time);
        stop->estimated_arrival_time = NULL;
    }
    if (stop->estimated_departure_time) {
        free(stop->estimated_departure_time);
        stop->estimated_departure_time = NULL;
    }
    if (stop->actual_time) {
        free(stop->actual_time);
        stop->actual_time = NULL;
    }
    if (stop->desired_time) {
        free(stop->desired_time);
        stop->desired_time = NULL;
    }
    if (stop->route) {
        route_free(stop->route);
        stop->route = NULL;
    }
    if (stop->shipment) {
        shipment_free(stop->shipment);
        stop->shipment = NULL;
    }
    if (stop->compare_estimated_time) {
        free(stop->compare_estimated_time);
        stop->compare_estimated_time = NULL;
    }
    if (stop->compare_estimated_arrival_time) {
        free(stop->compare_estimated_arrival_time);
        stop->compare_estimated_arrival_time = NULL;
    }
    if (stop->compare_estimiated_departure_time) {
        free(stop->compare_estimiated_departure_time);
        stop->compare_estimiated_departure_time = NULL;
    }
    if (stop->polyline) {
        free(stop->polyline);
        stop->polyline = NULL;
    }
    if (stop->parent) {
        stop_free(stop->parent);
        stop->parent = NULL;
    }
    if (stop->location_display) {
        free(stop->location_display);
        stop->location_display = NULL;
    }
    if (stop->content_name) {
        free(stop->content_name);
        stop->content_name = NULL;
    }
    if (stop->location_address) {
        free(stop->location_address);
        stop->location_address = NULL;
    }
    free(stop);
}

cJSON *stop_convertToJSON(stop_t *stop) {
    cJSON *item = cJSON_CreateObject();

    // stop->id
    if(stop->id) {
    if(cJSON_AddNumberToObject(item, "id", stop->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop->active
    if(stop->active) {
    if(cJSON_AddBoolToObject(item, "active", stop->active) == NULL) {
    goto fail; //Bool
    }
    }


    // stop->valid
    if(stop->valid) {
    if(cJSON_AddBoolToObject(item, "valid", stop->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // stop->latitude
    if(stop->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", stop->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop->longitude
    if(stop->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", stop->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop->location_description
    if(stop->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", stop->location_description) == NULL) {
    goto fail; //String
    }
    }


    // stop->name
    if(stop->name) {
    if(cJSON_AddStringToObject(item, "name", stop->name) == NULL) {
    goto fail; //String
    }
    }


    // stop->owner
    if(stop->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(stop->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // stop->location
    if(stop->location) {
    cJSON *location_local_JSON = location_convertToJSON(stop->location);
    if(location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "location", location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // stop->notes
    if(stop->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (stop->notes) {
    list_ForEach(notesListEntry, stop->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // stop->note_count
    if(stop->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", stop->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop->stop_type
    if(stop->stop_type != sirqul_iot_platform_stop_STOPTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "stopType", stop_stop_type_ToString(stop->stop_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // stop->order_index
    if(stop->order_index) {
    if(cJSON_AddNumberToObject(item, "orderIndex", stop->order_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop->start_time
    if(stop->start_time) {
    if(cJSON_AddStringToObject(item, "startTime", stop->start_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->end_time
    if(stop->end_time) {
    if(cJSON_AddStringToObject(item, "endTime", stop->end_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->estimated_time
    if(stop->estimated_time) {
    if(cJSON_AddStringToObject(item, "estimatedTime", stop->estimated_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->estimated_arrival_time
    if(stop->estimated_arrival_time) {
    if(cJSON_AddStringToObject(item, "estimatedArrivalTime", stop->estimated_arrival_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->estimated_departure_time
    if(stop->estimated_departure_time) {
    if(cJSON_AddStringToObject(item, "estimatedDepartureTime", stop->estimated_departure_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->actual_time
    if(stop->actual_time) {
    if(cJSON_AddStringToObject(item, "actualTime", stop->actual_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->desired_time
    if(stop->desired_time) {
    if(cJSON_AddStringToObject(item, "desiredTime", stop->desired_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->time_padding
    if(stop->time_padding) {
    if(cJSON_AddNumberToObject(item, "timePadding", stop->time_padding) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop->route
    if(stop->route) {
    cJSON *route_local_JSON = route_convertToJSON(stop->route);
    if(route_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "route", route_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // stop->shipment
    if(stop->shipment) {
    cJSON *shipment_local_JSON = shipment_convertToJSON(stop->shipment);
    if(shipment_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "shipment", shipment_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // stop->progress_status
    if(stop->progress_status != sirqul_iot_platform_stop_PROGRESSSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "progressStatus", stop_progress_status_ToString(stop->progress_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // stop->compare_estimated_time
    if(stop->compare_estimated_time) {
    if(cJSON_AddStringToObject(item, "compareEstimatedTime", stop->compare_estimated_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->compare_estimated_arrival_time
    if(stop->compare_estimated_arrival_time) {
    if(cJSON_AddStringToObject(item, "compareEstimatedArrivalTime", stop->compare_estimated_arrival_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->compare_estimiated_departure_time
    if(stop->compare_estimiated_departure_time) {
    if(cJSON_AddStringToObject(item, "compareEstimiatedDepartureTime", stop->compare_estimiated_departure_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // stop->polyline
    if(stop->polyline) {
    if(cJSON_AddStringToObject(item, "polyline", stop->polyline) == NULL) {
    goto fail; //String
    }
    }


    // stop->parent
    if(stop->parent) {
    cJSON *parent_local_JSON = stop_convertToJSON(stop->parent);
    if(parent_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parent", parent_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // stop->location_display
    if(stop->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", stop->location_display) == NULL) {
    goto fail; //String
    }
    }


    // stop->complete
    if(stop->complete) {
    if(cJSON_AddBoolToObject(item, "complete", stop->complete) == NULL) {
    goto fail; //Bool
    }
    }


    // stop->content_name
    if(stop->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", stop->content_name) == NULL) {
    goto fail; //String
    }
    }


    // stop->location_address
    if(stop->location_address) {
    if(cJSON_AddStringToObject(item, "locationAddress", stop->location_address) == NULL) {
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

stop_t *stop_parseFromJSON(cJSON *stopJSON){

    stop_t *stop_local_var = NULL;

    // define the local variable for stop->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for stop->location
    location_t *location_local_nonprim = NULL;

    // define the local list for stop->notes
    list_t *notesList = NULL;

    // define the local variable for stop->route
    route_t *route_local_nonprim = NULL;

    // define the local variable for stop->shipment
    shipment_t *shipment_local_nonprim = NULL;

    // define the local variable for stop->parent
    stop_t *parent_local_nonprim = NULL;

    // stop->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(stopJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // stop->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(stopJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // stop->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(stopJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // stop->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(stopJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // stop->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(stopJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // stop->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(stopJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // stop->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(stopJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // stop->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(stopJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // stop->location
    cJSON *location = cJSON_GetObjectItemCaseSensitive(stopJSON, "location");
    if (cJSON_IsNull(location)) {
        location = NULL;
    }
    if (location) { 
    location_local_nonprim = location_parseFromJSON(location); //nonprimitive
    }

    // stop->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(stopJSON, "notes");
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

    // stop->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(stopJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // stop->stop_type
    cJSON *stop_type = cJSON_GetObjectItemCaseSensitive(stopJSON, "stopType");
    if (cJSON_IsNull(stop_type)) {
        stop_type = NULL;
    }
    sirqul_iot_platform_stop_STOPTYPE_e stop_typeVariable;
    if (stop_type) { 
    if(!cJSON_IsString(stop_type))
    {
    goto end; //Enum
    }
    stop_typeVariable = stop_stop_type_FromString(stop_type->valuestring);
    }

    // stop->order_index
    cJSON *order_index = cJSON_GetObjectItemCaseSensitive(stopJSON, "orderIndex");
    if (cJSON_IsNull(order_index)) {
        order_index = NULL;
    }
    if (order_index) { 
    if(!cJSON_IsNumber(order_index))
    {
    goto end; //Numeric
    }
    }

    // stop->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsString(start_time) && !cJSON_IsNull(start_time))
    {
    goto end; //DateTime
    }
    }

    // stop->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "endTime");
    if (cJSON_IsNull(end_time)) {
        end_time = NULL;
    }
    if (end_time) { 
    if(!cJSON_IsString(end_time) && !cJSON_IsNull(end_time))
    {
    goto end; //DateTime
    }
    }

    // stop->estimated_time
    cJSON *estimated_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "estimatedTime");
    if (cJSON_IsNull(estimated_time)) {
        estimated_time = NULL;
    }
    if (estimated_time) { 
    if(!cJSON_IsString(estimated_time) && !cJSON_IsNull(estimated_time))
    {
    goto end; //DateTime
    }
    }

    // stop->estimated_arrival_time
    cJSON *estimated_arrival_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "estimatedArrivalTime");
    if (cJSON_IsNull(estimated_arrival_time)) {
        estimated_arrival_time = NULL;
    }
    if (estimated_arrival_time) { 
    if(!cJSON_IsString(estimated_arrival_time) && !cJSON_IsNull(estimated_arrival_time))
    {
    goto end; //DateTime
    }
    }

    // stop->estimated_departure_time
    cJSON *estimated_departure_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "estimatedDepartureTime");
    if (cJSON_IsNull(estimated_departure_time)) {
        estimated_departure_time = NULL;
    }
    if (estimated_departure_time) { 
    if(!cJSON_IsString(estimated_departure_time) && !cJSON_IsNull(estimated_departure_time))
    {
    goto end; //DateTime
    }
    }

    // stop->actual_time
    cJSON *actual_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "actualTime");
    if (cJSON_IsNull(actual_time)) {
        actual_time = NULL;
    }
    if (actual_time) { 
    if(!cJSON_IsString(actual_time) && !cJSON_IsNull(actual_time))
    {
    goto end; //DateTime
    }
    }

    // stop->desired_time
    cJSON *desired_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "desiredTime");
    if (cJSON_IsNull(desired_time)) {
        desired_time = NULL;
    }
    if (desired_time) { 
    if(!cJSON_IsString(desired_time) && !cJSON_IsNull(desired_time))
    {
    goto end; //DateTime
    }
    }

    // stop->time_padding
    cJSON *time_padding = cJSON_GetObjectItemCaseSensitive(stopJSON, "timePadding");
    if (cJSON_IsNull(time_padding)) {
        time_padding = NULL;
    }
    if (time_padding) { 
    if(!cJSON_IsNumber(time_padding))
    {
    goto end; //Numeric
    }
    }

    // stop->route
    cJSON *route = cJSON_GetObjectItemCaseSensitive(stopJSON, "route");
    if (cJSON_IsNull(route)) {
        route = NULL;
    }
    if (route) { 
    route_local_nonprim = route_parseFromJSON(route); //nonprimitive
    }

    // stop->shipment
    cJSON *shipment = cJSON_GetObjectItemCaseSensitive(stopJSON, "shipment");
    if (cJSON_IsNull(shipment)) {
        shipment = NULL;
    }
    if (shipment) { 
    shipment_local_nonprim = shipment_parseFromJSON(shipment); //nonprimitive
    }

    // stop->progress_status
    cJSON *progress_status = cJSON_GetObjectItemCaseSensitive(stopJSON, "progressStatus");
    if (cJSON_IsNull(progress_status)) {
        progress_status = NULL;
    }
    sirqul_iot_platform_stop_PROGRESSSTATUS_e progress_statusVariable;
    if (progress_status) { 
    if(!cJSON_IsString(progress_status))
    {
    goto end; //Enum
    }
    progress_statusVariable = stop_progress_status_FromString(progress_status->valuestring);
    }

    // stop->compare_estimated_time
    cJSON *compare_estimated_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "compareEstimatedTime");
    if (cJSON_IsNull(compare_estimated_time)) {
        compare_estimated_time = NULL;
    }
    if (compare_estimated_time) { 
    if(!cJSON_IsString(compare_estimated_time) && !cJSON_IsNull(compare_estimated_time))
    {
    goto end; //DateTime
    }
    }

    // stop->compare_estimated_arrival_time
    cJSON *compare_estimated_arrival_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "compareEstimatedArrivalTime");
    if (cJSON_IsNull(compare_estimated_arrival_time)) {
        compare_estimated_arrival_time = NULL;
    }
    if (compare_estimated_arrival_time) { 
    if(!cJSON_IsString(compare_estimated_arrival_time) && !cJSON_IsNull(compare_estimated_arrival_time))
    {
    goto end; //DateTime
    }
    }

    // stop->compare_estimiated_departure_time
    cJSON *compare_estimiated_departure_time = cJSON_GetObjectItemCaseSensitive(stopJSON, "compareEstimiatedDepartureTime");
    if (cJSON_IsNull(compare_estimiated_departure_time)) {
        compare_estimiated_departure_time = NULL;
    }
    if (compare_estimiated_departure_time) { 
    if(!cJSON_IsString(compare_estimiated_departure_time) && !cJSON_IsNull(compare_estimiated_departure_time))
    {
    goto end; //DateTime
    }
    }

    // stop->polyline
    cJSON *polyline = cJSON_GetObjectItemCaseSensitive(stopJSON, "polyline");
    if (cJSON_IsNull(polyline)) {
        polyline = NULL;
    }
    if (polyline) { 
    if(!cJSON_IsString(polyline) && !cJSON_IsNull(polyline))
    {
    goto end; //String
    }
    }

    // stop->parent
    cJSON *parent = cJSON_GetObjectItemCaseSensitive(stopJSON, "parent");
    if (cJSON_IsNull(parent)) {
        parent = NULL;
    }
    if (parent) { 
    parent_local_nonprim = stop_parseFromJSON(parent); //nonprimitive
    }

    // stop->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(stopJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // stop->complete
    cJSON *complete = cJSON_GetObjectItemCaseSensitive(stopJSON, "complete");
    if (cJSON_IsNull(complete)) {
        complete = NULL;
    }
    if (complete) { 
    if(!cJSON_IsBool(complete))
    {
    goto end; //Bool
    }
    }

    // stop->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(stopJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // stop->location_address
    cJSON *location_address = cJSON_GetObjectItemCaseSensitive(stopJSON, "locationAddress");
    if (cJSON_IsNull(location_address)) {
        location_address = NULL;
    }
    if (location_address) { 
    if(!cJSON_IsString(location_address) && !cJSON_IsNull(location_address))
    {
    goto end; //String
    }
    }


    stop_local_var = stop_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        location ? location_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        stop_type ? stop_typeVariable : sirqul_iot_platform_stop_STOPTYPE_NULL,
        order_index ? order_index->valuedouble : 0,
        start_time && !cJSON_IsNull(start_time) ? strdup(start_time->valuestring) : NULL,
        end_time && !cJSON_IsNull(end_time) ? strdup(end_time->valuestring) : NULL,
        estimated_time && !cJSON_IsNull(estimated_time) ? strdup(estimated_time->valuestring) : NULL,
        estimated_arrival_time && !cJSON_IsNull(estimated_arrival_time) ? strdup(estimated_arrival_time->valuestring) : NULL,
        estimated_departure_time && !cJSON_IsNull(estimated_departure_time) ? strdup(estimated_departure_time->valuestring) : NULL,
        actual_time && !cJSON_IsNull(actual_time) ? strdup(actual_time->valuestring) : NULL,
        desired_time && !cJSON_IsNull(desired_time) ? strdup(desired_time->valuestring) : NULL,
        time_padding ? time_padding->valuedouble : 0,
        route ? route_local_nonprim : NULL,
        shipment ? shipment_local_nonprim : NULL,
        progress_status ? progress_statusVariable : sirqul_iot_platform_stop_PROGRESSSTATUS_NULL,
        compare_estimated_time && !cJSON_IsNull(compare_estimated_time) ? strdup(compare_estimated_time->valuestring) : NULL,
        compare_estimated_arrival_time && !cJSON_IsNull(compare_estimated_arrival_time) ? strdup(compare_estimated_arrival_time->valuestring) : NULL,
        compare_estimiated_departure_time && !cJSON_IsNull(compare_estimiated_departure_time) ? strdup(compare_estimiated_departure_time->valuestring) : NULL,
        polyline && !cJSON_IsNull(polyline) ? strdup(polyline->valuestring) : NULL,
        parent ? parent_local_nonprim : NULL,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        complete ? complete->valueint : 0,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        location_address && !cJSON_IsNull(location_address) ? strdup(location_address->valuestring) : NULL
        );

    return stop_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (location_local_nonprim) {
        location_free(location_local_nonprim);
        location_local_nonprim = NULL;
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
    if (shipment_local_nonprim) {
        shipment_free(shipment_local_nonprim);
        shipment_local_nonprim = NULL;
    }
    if (parent_local_nonprim) {
        stop_free(parent_local_nonprim);
        parent_local_nonprim = NULL;
    }
    return NULL;

}
