/*
 * region_leg_summary.h
 *
 * 
 */

#ifndef _region_leg_summary_H_
#define _region_leg_summary_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct region_leg_summary_t region_leg_summary_t;




typedef struct region_leg_summary_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    long region_id; //numeric
    char *floor_id; // string
    long retailer_location_id; //numeric
    long leg_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} region_leg_summary_t;

__attribute__((deprecated)) region_leg_summary_t *region_leg_summary_create(
    long id,
    int active,
    int valid,
    long region_id,
    char *floor_id,
    long retailer_location_id,
    long leg_id
);

void region_leg_summary_free(region_leg_summary_t *region_leg_summary);

region_leg_summary_t *region_leg_summary_parseFromJSON(cJSON *region_leg_summaryJSON);

cJSON *region_leg_summary_convertToJSON(region_leg_summary_t *region_leg_summary);

#endif /* _region_leg_summary_H_ */

