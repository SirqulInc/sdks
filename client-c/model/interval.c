#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "interval.h"



static interval_t *interval_create_internal(
    char *end,
    char *start,
    chronology_t *chronology,
    long start_millis,
    long end_millis,
    int before_now,
    int after_now
    ) {
    interval_t *interval_local_var = malloc(sizeof(interval_t));
    if (!interval_local_var) {
        return NULL;
    }
    interval_local_var->end = end;
    interval_local_var->start = start;
    interval_local_var->chronology = chronology;
    interval_local_var->start_millis = start_millis;
    interval_local_var->end_millis = end_millis;
    interval_local_var->before_now = before_now;
    interval_local_var->after_now = after_now;

    interval_local_var->_library_owned = 1;
    return interval_local_var;
}

__attribute__((deprecated)) interval_t *interval_create(
    char *end,
    char *start,
    chronology_t *chronology,
    long start_millis,
    long end_millis,
    int before_now,
    int after_now
    ) {
    return interval_create_internal (
        end,
        start,
        chronology,
        start_millis,
        end_millis,
        before_now,
        after_now
        );
}

void interval_free(interval_t *interval) {
    if(NULL == interval){
        return ;
    }
    if(interval->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "interval_free");
        return ;
    }
    listEntry_t *listEntry;
    if (interval->end) {
        free(interval->end);
        interval->end = NULL;
    }
    if (interval->start) {
        free(interval->start);
        interval->start = NULL;
    }
    if (interval->chronology) {
        chronology_free(interval->chronology);
        interval->chronology = NULL;
    }
    free(interval);
}

cJSON *interval_convertToJSON(interval_t *interval) {
    cJSON *item = cJSON_CreateObject();

    // interval->end
    if(interval->end) {
    if(cJSON_AddStringToObject(item, "end", interval->end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // interval->start
    if(interval->start) {
    if(cJSON_AddStringToObject(item, "start", interval->start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // interval->chronology
    if(interval->chronology) {
    cJSON *chronology_local_JSON = chronology_convertToJSON(interval->chronology);
    if(chronology_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "chronology", chronology_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // interval->start_millis
    if(interval->start_millis) {
    if(cJSON_AddNumberToObject(item, "startMillis", interval->start_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // interval->end_millis
    if(interval->end_millis) {
    if(cJSON_AddNumberToObject(item, "endMillis", interval->end_millis) == NULL) {
    goto fail; //Numeric
    }
    }


    // interval->before_now
    if(interval->before_now) {
    if(cJSON_AddBoolToObject(item, "beforeNow", interval->before_now) == NULL) {
    goto fail; //Bool
    }
    }


    // interval->after_now
    if(interval->after_now) {
    if(cJSON_AddBoolToObject(item, "afterNow", interval->after_now) == NULL) {
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

interval_t *interval_parseFromJSON(cJSON *intervalJSON){

    interval_t *interval_local_var = NULL;

    // define the local variable for interval->chronology
    chronology_t *chronology_local_nonprim = NULL;

    // interval->end
    cJSON *end = cJSON_GetObjectItemCaseSensitive(intervalJSON, "end");
    if (cJSON_IsNull(end)) {
        end = NULL;
    }
    if (end) { 
    if(!cJSON_IsString(end) && !cJSON_IsNull(end))
    {
    goto end; //DateTime
    }
    }

    // interval->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(intervalJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsString(start) && !cJSON_IsNull(start))
    {
    goto end; //DateTime
    }
    }

    // interval->chronology
    cJSON *chronology = cJSON_GetObjectItemCaseSensitive(intervalJSON, "chronology");
    if (cJSON_IsNull(chronology)) {
        chronology = NULL;
    }
    if (chronology) { 
    chronology_local_nonprim = chronology_parseFromJSON(chronology); //nonprimitive
    }

    // interval->start_millis
    cJSON *start_millis = cJSON_GetObjectItemCaseSensitive(intervalJSON, "startMillis");
    if (cJSON_IsNull(start_millis)) {
        start_millis = NULL;
    }
    if (start_millis) { 
    if(!cJSON_IsNumber(start_millis))
    {
    goto end; //Numeric
    }
    }

    // interval->end_millis
    cJSON *end_millis = cJSON_GetObjectItemCaseSensitive(intervalJSON, "endMillis");
    if (cJSON_IsNull(end_millis)) {
        end_millis = NULL;
    }
    if (end_millis) { 
    if(!cJSON_IsNumber(end_millis))
    {
    goto end; //Numeric
    }
    }

    // interval->before_now
    cJSON *before_now = cJSON_GetObjectItemCaseSensitive(intervalJSON, "beforeNow");
    if (cJSON_IsNull(before_now)) {
        before_now = NULL;
    }
    if (before_now) { 
    if(!cJSON_IsBool(before_now))
    {
    goto end; //Bool
    }
    }

    // interval->after_now
    cJSON *after_now = cJSON_GetObjectItemCaseSensitive(intervalJSON, "afterNow");
    if (cJSON_IsNull(after_now)) {
        after_now = NULL;
    }
    if (after_now) { 
    if(!cJSON_IsBool(after_now))
    {
    goto end; //Bool
    }
    }


    interval_local_var = interval_create_internal (
        end && !cJSON_IsNull(end) ? strdup(end->valuestring) : NULL,
        start && !cJSON_IsNull(start) ? strdup(start->valuestring) : NULL,
        chronology ? chronology_local_nonprim : NULL,
        start_millis ? start_millis->valuedouble : 0,
        end_millis ? end_millis->valuedouble : 0,
        before_now ? before_now->valueint : 0,
        after_now ? after_now->valueint : 0
        );

    return interval_local_var;
end:
    if (chronology_local_nonprim) {
        chronology_free(chronology_local_nonprim);
        chronology_local_nonprim = NULL;
    }
    return NULL;

}
