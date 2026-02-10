/*
 * date_time_field_type.h
 *
 * 
 */

#ifndef _date_time_field_type_H_
#define _date_time_field_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct date_time_field_type_t date_time_field_type_t;

#include "duration_field_type.h"



typedef struct date_time_field_type_t {
    char *name; // string
    struct duration_field_type_t *range_duration_type; //model
    struct duration_field_type_t *duration_type; //model

    int _library_owned; // Is the library responsible for freeing this object?
} date_time_field_type_t;

__attribute__((deprecated)) date_time_field_type_t *date_time_field_type_create(
    char *name,
    duration_field_type_t *range_duration_type,
    duration_field_type_t *duration_type
);

void date_time_field_type_free(date_time_field_type_t *date_time_field_type);

date_time_field_type_t *date_time_field_type_parseFromJSON(cJSON *date_time_field_typeJSON);

cJSON *date_time_field_type_convertToJSON(date_time_field_type_t *date_time_field_type);

#endif /* _date_time_field_type_H_ */

