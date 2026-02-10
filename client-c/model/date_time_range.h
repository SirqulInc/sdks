/*
 * date_time_range.h
 *
 * 
 */

#ifndef _date_time_range_H_
#define _date_time_range_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct date_time_range_t date_time_range_t;

#include "interval.h"



typedef struct date_time_range_t {
    char *start; //date time
    char *end; //date time
    struct interval_t *interval; //model

    int _library_owned; // Is the library responsible for freeing this object?
} date_time_range_t;

__attribute__((deprecated)) date_time_range_t *date_time_range_create(
    char *start,
    char *end,
    interval_t *interval
);

void date_time_range_free(date_time_range_t *date_time_range);

date_time_range_t *date_time_range_parseFromJSON(cJSON *date_time_rangeJSON);

cJSON *date_time_range_convertToJSON(date_time_range_t *date_time_range);

#endif /* _date_time_range_H_ */

