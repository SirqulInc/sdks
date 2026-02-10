/*
 * date_time_field.h
 *
 * 
 */

#ifndef _date_time_field_H_
#define _date_time_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct date_time_field_t date_time_field_t;

#include "date_time_field_type.h"
#include "duration_field.h"



typedef struct date_time_field_t {
    char *name; // string
    struct date_time_field_type_t *type; //model
    int supported; //boolean
    int minimum_value; //numeric
    int maximum_value; //numeric
    struct duration_field_t *duration_field; //model
    struct duration_field_t *leap_duration_field; //model
    struct duration_field_t *range_duration_field; //model
    int lenient; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} date_time_field_t;

__attribute__((deprecated)) date_time_field_t *date_time_field_create(
    char *name,
    date_time_field_type_t *type,
    int supported,
    int minimum_value,
    int maximum_value,
    duration_field_t *duration_field,
    duration_field_t *leap_duration_field,
    duration_field_t *range_duration_field,
    int lenient
);

void date_time_field_free(date_time_field_t *date_time_field);

date_time_field_t *date_time_field_parseFromJSON(cJSON *date_time_fieldJSON);

cJSON *date_time_field_convertToJSON(date_time_field_t *date_time_field);

#endif /* _date_time_field_H_ */

