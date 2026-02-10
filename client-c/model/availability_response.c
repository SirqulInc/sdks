#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "availability_response.h"



static availability_response_t *availability_response_create_internal(
    long availability_id,
    long start_date,
    long end_date,
    int day_of_week,
    long start_time,
    long end_time,
    char *time_zone,
    int deleted
    ) {
    availability_response_t *availability_response_local_var = malloc(sizeof(availability_response_t));
    if (!availability_response_local_var) {
        return NULL;
    }
    availability_response_local_var->availability_id = availability_id;
    availability_response_local_var->start_date = start_date;
    availability_response_local_var->end_date = end_date;
    availability_response_local_var->day_of_week = day_of_week;
    availability_response_local_var->start_time = start_time;
    availability_response_local_var->end_time = end_time;
    availability_response_local_var->time_zone = time_zone;
    availability_response_local_var->deleted = deleted;

    availability_response_local_var->_library_owned = 1;
    return availability_response_local_var;
}

__attribute__((deprecated)) availability_response_t *availability_response_create(
    long availability_id,
    long start_date,
    long end_date,
    int day_of_week,
    long start_time,
    long end_time,
    char *time_zone,
    int deleted
    ) {
    return availability_response_create_internal (
        availability_id,
        start_date,
        end_date,
        day_of_week,
        start_time,
        end_time,
        time_zone,
        deleted
        );
}

void availability_response_free(availability_response_t *availability_response) {
    if(NULL == availability_response){
        return ;
    }
    if(availability_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "availability_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (availability_response->time_zone) {
        free(availability_response->time_zone);
        availability_response->time_zone = NULL;
    }
    free(availability_response);
}

cJSON *availability_response_convertToJSON(availability_response_t *availability_response) {
    cJSON *item = cJSON_CreateObject();

    // availability_response->availability_id
    if(availability_response->availability_id) {
    if(cJSON_AddNumberToObject(item, "availabilityId", availability_response->availability_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // availability_response->start_date
    if(availability_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", availability_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // availability_response->end_date
    if(availability_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", availability_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // availability_response->day_of_week
    if(availability_response->day_of_week) {
    if(cJSON_AddNumberToObject(item, "dayOfWeek", availability_response->day_of_week) == NULL) {
    goto fail; //Numeric
    }
    }


    // availability_response->start_time
    if(availability_response->start_time) {
    if(cJSON_AddNumberToObject(item, "startTime", availability_response->start_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // availability_response->end_time
    if(availability_response->end_time) {
    if(cJSON_AddNumberToObject(item, "endTime", availability_response->end_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // availability_response->time_zone
    if(availability_response->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", availability_response->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // availability_response->deleted
    if(availability_response->deleted) {
    if(cJSON_AddBoolToObject(item, "deleted", availability_response->deleted) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

availability_response_t *availability_response_parseFromJSON(cJSON *availability_responseJSON){

    availability_response_t *availability_response_local_var = NULL;

    // availability_response->availability_id
    cJSON *availability_id = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "availabilityId");
    if (cJSON_IsNull(availability_id)) {
        availability_id = NULL;
    }
    if (availability_id) { 
    if(!cJSON_IsNumber(availability_id))
    {
    goto end; //Numeric
    }
    }

    // availability_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // availability_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // availability_response->day_of_week
    cJSON *day_of_week = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "dayOfWeek");
    if (cJSON_IsNull(day_of_week)) {
        day_of_week = NULL;
    }
    if (day_of_week) { 
    if(!cJSON_IsNumber(day_of_week))
    {
    goto end; //Numeric
    }
    }

    // availability_response->start_time
    cJSON *start_time = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "startTime");
    if (cJSON_IsNull(start_time)) {
        start_time = NULL;
    }
    if (start_time) { 
    if(!cJSON_IsNumber(start_time))
    {
    goto end; //Numeric
    }
    }

    // availability_response->end_time
    cJSON *end_time = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "endTime");
    if (cJSON_IsNull(end_time)) {
        end_time = NULL;
    }
    if (end_time) { 
    if(!cJSON_IsNumber(end_time))
    {
    goto end; //Numeric
    }
    }

    // availability_response->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // availability_response->deleted
    cJSON *deleted = cJSON_GetObjectItemCaseSensitive(availability_responseJSON, "deleted");
    if (cJSON_IsNull(deleted)) {
        deleted = NULL;
    }
    if (deleted) { 
    if(!cJSON_IsBool(deleted))
    {
    goto end; //Bool
    }
    }


    availability_response_local_var = availability_response_create_internal (
        availability_id ? availability_id->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        day_of_week ? day_of_week->valuedouble : 0,
        start_time ? start_time->valuedouble : 0,
        end_time ? end_time->valuedouble : 0,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL,
        deleted ? deleted->valueint : 0
        );

    return availability_response_local_var;
end:
    return NULL;

}
