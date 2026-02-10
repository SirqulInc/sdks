#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "time_slot_response.h"



static time_slot_response_t *time_slot_response_create_internal(
    long scheduled_date,
    long start_time,
    long end_time,
    int day_of_week,
    char *time_zone,
    int reservation_count,
    list_t *reservations
    ) {
    time_slot_response_t *time_slot_response_local_var = malloc(sizeof(time_slot_response_t));
    if (!time_slot_response_local_var) {
        return NULL;
    }
    time_slot_response_local_var->scheduled_date = scheduled_date;
    time_slot_response_local_var->start_time = start_time;
    time_slot_response_local_var->end_time = end_time;
    time_slot_response_local_var->day_of_week = day_of_week;
    time_slot_response_local_var->time_zone = time_zone;
    time_slot_response_local_var->reservation_count = reservation_count;
    time_slot_response_local_var->reservations = reservations;

    time_slot_response_local_var->_library_owned = 1;
    return time_slot_response_local_var;
}

__attribute__((deprecated)) time_slot_response_t *time_slot_response_create(
    long scheduled_date,
    long start_time,
    long end_time,
    int day_of_week,
    char *time_zone,
    int reservation_count,
    list_t *reservations
    ) {
    return time_slot_response_create_internal (
        scheduled_date,
        start_time,
        end_time,
        day_of_week,
        time_zone,
        reservation_count,
        reservations
        );
}

void time_slot_response_free(time_slot_response_t *time_slot_response) {
    if(NULL == time_slot_response){
        return ;
    }
    if(time_slot_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "time_slot_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (time_slot_response->time_zone) {
        free(time_slot_response->time_zone);
        time_slot_response->time_zone = NULL;
    }
    if (time_slot_response->reservations) {
        list_ForEach(listEntry, time_slot_response->reservations) {
            account_short_response_free(listEntry->data);
        }
        list_freeList(time_slot_response->reservations);
        time_slot_response->reservations = NULL;
    }
    free(time_slot_response);
}

cJSON *time_slot_response_convertToJSON(time_slot_response_t *time_slot_response) {
    cJSON *item = cJSON_CreateObject();

    // time_slot_response->scheduled_date
    if(time_slot_response->scheduled_date) {
    if(cJSON_AddNumberToObject(item, "scheduledDate", time_slot_response->scheduled_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // time_slot_response->start_time
    if(time_slot_response->start_time) {
    if(cJSON_AddNumberToObject(item, "startTime", time_slot_response->start_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // time_slot_response->end_time
    if(time_slot_response->end_time) {
    if(cJSON_AddNumberToObject(item, "endTime", time_slot_response->end_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // time_slot_response->day_of_week
    if(time_slot_response->day_of_week) {
    if(cJSON_AddNumberToObject(item, "dayOfWeek", time_slot_response->day_of_week) == NULL) {
    goto fail; //Numeric
    }
    }


    // time_slot_response->time_zone
    if(time_slot_response->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", time_slot_response->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // time_slot_response->reservation_count
    if(time_slot_response->reservation_count) {
    if(cJSON_AddNumberToObject(item, "reservationCount", time_slot_response->reservation_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // time_slot_response->reservations
    if(time_slot_response->reservations) {
    cJSON *reservations = cJSON_AddArrayToObject(item, "reservations");
    if(reservations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *reservationsListEntry;
    if (time_slot_response->reservations) {
    list_ForEach(reservationsListEntry, time_slot_response->reservations) {
    cJSON *itemLocal = account_short_response_convertToJSON(reservationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(reservations, itemLocal);
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

time_slot_response_t *time_slot_response_parseFromJSON(cJSON *time_slot_responseJSON){

    time_slot_response_t *time_slot_response_local_var = NULL;

    // define the local list for time_slot_response->reservations
    list_t *reservationsList = NULL;

    // time_slot_response->scheduled_date
    cJSON *scheduled_date = cJSON_GetObjectItemCaseSensitive(time_slot_responseJSON, "scheduledDate");
    if (cJSON_IsNull(scheduled_date)) {
        scheduled_date = NULL;
    }
    if (scheduled_date) { 
    if(!cJSON_IsNumber(scheduled_date))
    {
    goto end; //Numeric
    }
    }

    // time_slot_response->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(time_slot_responseJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsNumber(start_time))
    {
    goto end; //Numeric
    }
    }

    // time_slot_response->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(time_slot_responseJSON, "endTime");
    if (cJSON_IsNull(end_time)) {
        end_time = NULL;
    }
    if (end_time) { 
    if(!cJSON_IsNumber(end_time))
    {
    goto end; //Numeric
    }
    }

    // time_slot_response->day_of_week
    cJSON *day_of_week = cJSON_GetObjectItemCaseSensitive(time_slot_responseJSON, "dayOfWeek");
    if (cJSON_IsNull(day_of_week)) {
        day_of_week = NULL;
    }
    if (day_of_week) { 
    if(!cJSON_IsNumber(day_of_week))
    {
    goto end; //Numeric
    }
    }

    // time_slot_response->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(time_slot_responseJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // time_slot_response->reservation_count
    cJSON *reservation_count = cJSON_GetObjectItemCaseSensitive(time_slot_responseJSON, "reservationCount");
    if (cJSON_IsNull(reservation_count)) {
        reservation_count = NULL;
    }
    if (reservation_count) { 
    if(!cJSON_IsNumber(reservation_count))
    {
    goto end; //Numeric
    }
    }

    // time_slot_response->reservations
    cJSON *reservations = cJSON_GetObjectItemCaseSensitive(time_slot_responseJSON, "reservations");
    if (cJSON_IsNull(reservations)) {
        reservations = NULL;
    }
    if (reservations) { 
    cJSON *reservations_local_nonprimitive = NULL;
    if(!cJSON_IsArray(reservations)){
        goto end; //nonprimitive container
    }

    reservationsList = list_createList();

    cJSON_ArrayForEach(reservations_local_nonprimitive,reservations )
    {
        if(!cJSON_IsObject(reservations_local_nonprimitive)){
            goto end;
        }
        account_short_response_t *reservationsItem = account_short_response_parseFromJSON(reservations_local_nonprimitive);

        list_addElement(reservationsList, reservationsItem);
    }
    }


    time_slot_response_local_var = time_slot_response_create_internal (
        scheduled_date ? scheduled_date->valuedouble : 0,
        start_time ? start_time->valuedouble : 0,
        end_time ? end_time->valuedouble : 0,
        day_of_week ? day_of_week->valuedouble : 0,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL,
        reservation_count ? reservation_count->valuedouble : 0,
        reservations ? reservationsList : NULL
        );

    return time_slot_response_local_var;
end:
    if (reservationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, reservationsList) {
            account_short_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(reservationsList);
        reservationsList = NULL;
    }
    return NULL;

}
