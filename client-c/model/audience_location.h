/*
 * audience_location.h
 *
 * 
 */

#ifndef _audience_location_H_
#define _audience_location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct audience_location_t audience_location_t;




typedef struct audience_location_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    double radius; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} audience_location_t;

__attribute__((deprecated)) audience_location_t *audience_location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    double radius
);

void audience_location_free(audience_location_t *audience_location);

audience_location_t *audience_location_parseFromJSON(cJSON *audience_locationJSON);

cJSON *audience_location_convertToJSON(audience_location_t *audience_location);

#endif /* _audience_location_H_ */

