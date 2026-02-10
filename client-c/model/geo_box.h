/*
 * geo_box.h
 *
 * 
 */

#ifndef _geo_box_H_
#define _geo_box_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct geo_box_t geo_box_t;




typedef struct geo_box_t {
    double north; //numeric
    double east; //numeric
    double south; //numeric
    double west; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} geo_box_t;

__attribute__((deprecated)) geo_box_t *geo_box_create(
    double north,
    double east,
    double south,
    double west
);

void geo_box_free(geo_box_t *geo_box);

geo_box_t *geo_box_parseFromJSON(cJSON *geo_boxJSON);

cJSON *geo_box_convertToJSON(geo_box_t *geo_box);

#endif /* _geo_box_H_ */

