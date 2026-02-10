/*
 * interval.h
 *
 * 
 */

#ifndef _interval_H_
#define _interval_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct interval_t interval_t;

#include "chronology.h"



typedef struct interval_t {
    char *end; //date time
    char *start; //date time
    struct chronology_t *chronology; //model
    long start_millis; //numeric
    long end_millis; //numeric
    int before_now; //boolean
    int after_now; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} interval_t;

__attribute__((deprecated)) interval_t *interval_create(
    char *end,
    char *start,
    chronology_t *chronology,
    long start_millis,
    long end_millis,
    int before_now,
    int after_now
);

void interval_free(interval_t *interval);

interval_t *interval_parseFromJSON(cJSON *intervalJSON);

cJSON *interval_convertToJSON(interval_t *interval);

#endif /* _interval_H_ */

