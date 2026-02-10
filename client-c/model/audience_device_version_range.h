/*
 * audience_device_version_range.h
 *
 * 
 */

#ifndef _audience_device_version_range_H_
#define _audience_device_version_range_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct audience_device_version_range_t audience_device_version_range_t;

#include "audience_device.h"



typedef struct audience_device_version_range_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct audience_device_t *device; //model
    long minimum; //numeric
    long maximum; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} audience_device_version_range_t;

__attribute__((deprecated)) audience_device_version_range_t *audience_device_version_range_create(
    long id,
    int active,
    int valid,
    audience_device_t *device,
    long minimum,
    long maximum
);

void audience_device_version_range_free(audience_device_version_range_t *audience_device_version_range);

audience_device_version_range_t *audience_device_version_range_parseFromJSON(cJSON *audience_device_version_rangeJSON);

cJSON *audience_device_version_range_convertToJSON(audience_device_version_range_t *audience_device_version_range);

#endif /* _audience_device_version_range_H_ */

