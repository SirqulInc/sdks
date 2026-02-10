/*
 * local_time.h
 *
 * 
 */

#ifndef _local_time_H_
#define _local_time_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct local_time_t local_time_t;

#include "chronology.h"
#include "date_time_field.h"
#include "date_time_field_type.h"



typedef struct local_time_t {
    struct chronology_t *chronology; //model
    int hour_of_day; //numeric
    int minute_of_hour; //numeric
    int second_of_minute; //numeric
    int millis_of_second; //numeric
    int millis_of_day; //numeric
    list_t *fields; //nonprimitive container
    list_t *values; //primitive container
    list_t *field_types; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} local_time_t;

__attribute__((deprecated)) local_time_t *local_time_create(
    chronology_t *chronology,
    int hour_of_day,
    int minute_of_hour,
    int second_of_minute,
    int millis_of_second,
    int millis_of_day,
    list_t *fields,
    list_t *values,
    list_t *field_types
);

void local_time_free(local_time_t *local_time);

local_time_t *local_time_parseFromJSON(cJSON *local_timeJSON);

cJSON *local_time_convertToJSON(local_time_t *local_time);

#endif /* _local_time_H_ */

