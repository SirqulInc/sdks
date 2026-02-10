/*
 * date_time_zone.h
 *
 * 
 */

#ifndef _date_time_zone_H_
#define _date_time_zone_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct date_time_zone_t date_time_zone_t;




typedef struct date_time_zone_t {
    char *id; // string
    int fixed; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} date_time_zone_t;

__attribute__((deprecated)) date_time_zone_t *date_time_zone_create(
    char *id,
    int fixed
);

void date_time_zone_free(date_time_zone_t *date_time_zone);

date_time_zone_t *date_time_zone_parseFromJSON(cJSON *date_time_zoneJSON);

cJSON *date_time_zone_convertToJSON(date_time_zone_t *date_time_zone);

#endif /* _date_time_zone_H_ */

