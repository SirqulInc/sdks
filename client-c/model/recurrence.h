/*
 * recurrence.h
 *
 * 
 */

#ifndef _recurrence_H_
#define _recurrence_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct recurrence_t recurrence_t;


// Enum FREQUENCY for recurrence

typedef enum  { sirqul_iot_platform_recurrence_FREQUENCY_NULL = 0, sirqul_iot_platform_recurrence_FREQUENCY_DAILY, sirqul_iot_platform_recurrence_FREQUENCY_WEEKLY, sirqul_iot_platform_recurrence_FREQUENCY_MONTHLY, sirqul_iot_platform_recurrence_FREQUENCY_ANNUALLY, sirqul_iot_platform_recurrence_FREQUENCY_WEEK_DAY_ONLY } sirqul_iot_platform_recurrence_FREQUENCY_e;

char* recurrence_frequency_ToString(sirqul_iot_platform_recurrence_FREQUENCY_e frequency);

sirqul_iot_platform_recurrence_FREQUENCY_e recurrence_frequency_FromString(char* frequency);



typedef struct recurrence_t {
    sirqul_iot_platform_recurrence_FREQUENCY_e frequency; //enum
    list_t *days_of_week; //primitive container
    char *start; //date
    int count; //numeric
    char *until; //date

    int _library_owned; // Is the library responsible for freeing this object?
} recurrence_t;

__attribute__((deprecated)) recurrence_t *recurrence_create(
    sirqul_iot_platform_recurrence_FREQUENCY_e frequency,
    list_t *days_of_week,
    char *start,
    int count,
    char *until
);

void recurrence_free(recurrence_t *recurrence);

recurrence_t *recurrence_parseFromJSON(cJSON *recurrenceJSON);

cJSON *recurrence_convertToJSON(recurrence_t *recurrence);

#endif /* _recurrence_H_ */

