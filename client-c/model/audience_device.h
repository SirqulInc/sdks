/*
 * audience_device.h
 *
 * 
 */

#ifndef _audience_device_H_
#define _audience_device_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct audience_device_t audience_device_t;




typedef struct audience_device_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    long minimum; //numeric
    long maximum; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} audience_device_t;

__attribute__((deprecated)) audience_device_t *audience_device_create(
    long id,
    int active,
    int valid,
    char *name,
    long minimum,
    long maximum
);

void audience_device_free(audience_device_t *audience_device);

audience_device_t *audience_device_parseFromJSON(cJSON *audience_deviceJSON);

cJSON *audience_device_convertToJSON(audience_device_t *audience_device);

#endif /* _audience_device_H_ */

