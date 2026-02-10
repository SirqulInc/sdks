#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "recurrence.h"


char* recurrence_frequency_ToString(sirqul_iot_platform_recurrence_FREQUENCY_e frequency) {
    char* frequencyArray[] =  { "NULL", "DAILY", "WEEKLY", "MONTHLY", "ANNUALLY", "WEEK_DAY_ONLY" };
    return frequencyArray[frequency];
}

sirqul_iot_platform_recurrence_FREQUENCY_e recurrence_frequency_FromString(char* frequency){
    int stringToReturn = 0;
    char *frequencyArray[] =  { "NULL", "DAILY", "WEEKLY", "MONTHLY", "ANNUALLY", "WEEK_DAY_ONLY" };
    size_t sizeofArray = sizeof(frequencyArray) / sizeof(frequencyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(frequency, frequencyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static recurrence_t *recurrence_create_internal(
    sirqul_iot_platform_recurrence_FREQUENCY_e frequency,
    list_t *days_of_week,
    char *start,
    int count,
    char *until
    ) {
    recurrence_t *recurrence_local_var = malloc(sizeof(recurrence_t));
    if (!recurrence_local_var) {
        return NULL;
    }
    recurrence_local_var->frequency = frequency;
    recurrence_local_var->days_of_week = days_of_week;
    recurrence_local_var->start = start;
    recurrence_local_var->count = count;
    recurrence_local_var->until = until;

    recurrence_local_var->_library_owned = 1;
    return recurrence_local_var;
}

__attribute__((deprecated)) recurrence_t *recurrence_create(
    sirqul_iot_platform_recurrence_FREQUENCY_e frequency,
    list_t *days_of_week,
    char *start,
    int count,
    char *until
    ) {
    return recurrence_create_internal (
        frequency,
        days_of_week,
        start,
        count,
        until
        );
}

void recurrence_free(recurrence_t *recurrence) {
    if(NULL == recurrence){
        return ;
    }
    if(recurrence->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "recurrence_free");
        return ;
    }
    listEntry_t *listEntry;
    if (recurrence->days_of_week) {
        list_ForEach(listEntry, recurrence->days_of_week) {
            free(listEntry->data);
        }
        list_freeList(recurrence->days_of_week);
        recurrence->days_of_week = NULL;
    }
    if (recurrence->start) {
        free(recurrence->start);
        recurrence->start = NULL;
    }
    if (recurrence->until) {
        free(recurrence->until);
        recurrence->until = NULL;
    }
    free(recurrence);
}

cJSON *recurrence_convertToJSON(recurrence_t *recurrence) {
    cJSON *item = cJSON_CreateObject();

    // recurrence->frequency
    if(recurrence->frequency != sirqul_iot_platform_recurrence_FREQUENCY_NULL) {
    if(cJSON_AddStringToObject(item, "frequency", recurrence_frequency_ToString(recurrence->frequency)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // recurrence->days_of_week
    if(recurrence->days_of_week) {
    cJSON *days_of_week = cJSON_AddArrayToObject(item, "daysOfWeek");
    if(days_of_week == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *days_of_weekListEntry;
    list_ForEach(days_of_weekListEntry, recurrence->days_of_week) {
    if(cJSON_AddNumberToObject(days_of_week, "", *(double *)days_of_weekListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // recurrence->start
    if(recurrence->start) {
    if(cJSON_AddStringToObject(item, "start", recurrence->start) == NULL) {
    goto fail; //Date
    }
    }


    // recurrence->count
    if(recurrence->count) {
    if(cJSON_AddNumberToObject(item, "count", recurrence->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // recurrence->until
    if(recurrence->until) {
    if(cJSON_AddStringToObject(item, "until", recurrence->until) == NULL) {
    goto fail; //Date
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

recurrence_t *recurrence_parseFromJSON(cJSON *recurrenceJSON){

    recurrence_t *recurrence_local_var = NULL;

    // define the local list for recurrence->days_of_week
    list_t *days_of_weekList = NULL;

    // recurrence->frequency
    cJSON *frequency = cJSON_GetObjectItemCaseSensitive(recurrenceJSON, "frequency");
    if (cJSON_IsNull(frequency)) {
        frequency = NULL;
    }
    sirqul_iot_platform_recurrence_FREQUENCY_e frequencyVariable;
    if (frequency) { 
    if(!cJSON_IsString(frequency))
    {
    goto end; //Enum
    }
    frequencyVariable = recurrence_frequency_FromString(frequency->valuestring);
    }

    // recurrence->days_of_week
    cJSON *days_of_week = cJSON_GetObjectItemCaseSensitive(recurrenceJSON, "daysOfWeek");
    if (cJSON_IsNull(days_of_week)) {
        days_of_week = NULL;
    }
    if (days_of_week) { 
    cJSON *days_of_week_local = NULL;
    if(!cJSON_IsArray(days_of_week)) {
        goto end;//primitive container
    }
    days_of_weekList = list_createList();

    cJSON_ArrayForEach(days_of_week_local, days_of_week)
    {
        if(!cJSON_IsNumber(days_of_week_local))
        {
            goto end;
        }
        double *days_of_week_local_value = calloc(1, sizeof(double));
        if(!days_of_week_local_value)
        {
            goto end;
        }
        *days_of_week_local_value = days_of_week_local->valuedouble;
        list_addElement(days_of_weekList , days_of_week_local_value);
    }
    }

    // recurrence->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(recurrenceJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsString(start))
    {
    goto end; //Date
    }
    }

    // recurrence->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(recurrenceJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // recurrence->until
    cJSON *until = cJSON_GetObjectItemCaseSensitive(recurrenceJSON, "until");
    if (cJSON_IsNull(until)) {
        until = NULL;
    }
    if (until) { 
    if(!cJSON_IsString(until))
    {
    goto end; //Date
    }
    }


    recurrence_local_var = recurrence_create_internal (
        frequency ? frequencyVariable : sirqul_iot_platform_recurrence_FREQUENCY_NULL,
        days_of_week ? days_of_weekList : NULL,
        start ? strdup(start->valuestring) : NULL,
        count ? count->valuedouble : 0,
        until ? strdup(until->valuestring) : NULL
        );

    return recurrence_local_var;
end:
    if (days_of_weekList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, days_of_weekList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(days_of_weekList);
        days_of_weekList = NULL;
    }
    return NULL;

}
