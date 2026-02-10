/*
 * platform.h
 *
 * 
 */

#ifndef _platform_H_
#define _platform_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct platform_t platform_t;

#include "audience_device.h"



typedef struct platform_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct audience_device_t *device; //model
    long minimum; //numeric
    long maximum; //numeric
    char *download_url; // string
    char *description; // string

    int _library_owned; // Is the library responsible for freeing this object?
} platform_t;

__attribute__((deprecated)) platform_t *platform_create(
    long id,
    int active,
    int valid,
    audience_device_t *device,
    long minimum,
    long maximum,
    char *download_url,
    char *description
);

void platform_free(platform_t *platform);

platform_t *platform_parseFromJSON(cJSON *platformJSON);

cJSON *platform_convertToJSON(platform_t *platform);

#endif /* _platform_H_ */

