/*
 * platform_response.h
 *
 * 
 */

#ifndef _platform_response_H_
#define _platform_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct platform_response_t platform_response_t;




typedef struct platform_response_t {
    long device_id; //numeric
    int active; //boolean
    char *name; // string
    char *display; // string
    long minimum; //numeric
    long maximum; //numeric
    char *download_url; // string
    char *description; // string

    int _library_owned; // Is the library responsible for freeing this object?
} platform_response_t;

__attribute__((deprecated)) platform_response_t *platform_response_create(
    long device_id,
    int active,
    char *name,
    char *display,
    long minimum,
    long maximum,
    char *download_url,
    char *description
);

void platform_response_free(platform_response_t *platform_response);

platform_response_t *platform_response_parseFromJSON(cJSON *platform_responseJSON);

cJSON *platform_response_convertToJSON(platform_response_t *platform_response);

#endif /* _platform_response_H_ */

