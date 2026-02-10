#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "date_time_range.h"



static date_time_range_t *date_time_range_create_internal(
    char *start,
    char *end,
    interval_t *interval
    ) {
    date_time_range_t *date_time_range_local_var = malloc(sizeof(date_time_range_t));
    if (!date_time_range_local_var) {
        return NULL;
    }
    date_time_range_local_var->start = start;
    date_time_range_local_var->end = end;
    date_time_range_local_var->interval = interval;

    date_time_range_local_var->_library_owned = 1;
    return date_time_range_local_var;
}

__attribute__((deprecated)) date_time_range_t *date_time_range_create(
    char *start,
    char *end,
    interval_t *interval
    ) {
    return date_time_range_create_internal (
        start,
        end,
        interval
        );
}

void date_time_range_free(date_time_range_t *date_time_range) {
    if(NULL == date_time_range){
        return ;
    }
    if(date_time_range->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "date_time_range_free");
        return ;
    }
    listEntry_t *listEntry;
    if (date_time_range->start) {
        free(date_time_range->start);
        date_time_range->start = NULL;
    }
    if (date_time_range->end) {
        free(date_time_range->end);
        date_time_range->end = NULL;
    }
    if (date_time_range->interval) {
        interval_free(date_time_range->interval);
        date_time_range->interval = NULL;
    }
    free(date_time_range);
}

cJSON *date_time_range_convertToJSON(date_time_range_t *date_time_range) {
    cJSON *item = cJSON_CreateObject();

    // date_time_range->start
    if(date_time_range->start) {
    if(cJSON_AddStringToObject(item, "start", date_time_range->start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // date_time_range->end
    if(date_time_range->end) {
    if(cJSON_AddStringToObject(item, "end", date_time_range->end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // date_time_range->interval
    if(date_time_range->interval) {
    cJSON *interval_local_JSON = interval_convertToJSON(date_time_range->interval);
    if(interval_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "interval", interval_local_JSON);
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

date_time_range_t *date_time_range_parseFromJSON(cJSON *date_time_rangeJSON){

    date_time_range_t *date_time_range_local_var = NULL;

    // define the local variable for date_time_range->interval
    interval_t *interval_local_nonprim = NULL;

    // date_time_range->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(date_time_rangeJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsString(start) && !cJSON_IsNull(start))
    {
    goto end; //DateTime
    }
    }

    // date_time_range->end
    cJSON *end = cJSON_GetObjectItemCaseSensitive(date_time_rangeJSON, "end");
    if (cJSON_IsNull(end)) {
        end = NULL;
    }
    if (end) { 
    if(!cJSON_IsString(end) && !cJSON_IsNull(end))
    {
    goto end; //DateTime
    }
    }

    // date_time_range->interval
    cJSON *interval = cJSON_GetObjectItemCaseSensitive(date_time_rangeJSON, "interval");
    if (cJSON_IsNull(interval)) {
        interval = NULL;
    }
    if (interval) { 
    interval_local_nonprim = interval_parseFromJSON(interval); //nonprimitive
    }


    date_time_range_local_var = date_time_range_create_internal (
        start && !cJSON_IsNull(start) ? strdup(start->valuestring) : NULL,
        end && !cJSON_IsNull(end) ? strdup(end->valuestring) : NULL,
        interval ? interval_local_nonprim : NULL
        );

    return date_time_range_local_var;
end:
    if (interval_local_nonprim) {
        interval_free(interval_local_nonprim);
        interval_local_nonprim = NULL;
    }
    return NULL;

}
