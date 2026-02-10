/*
 * audience_device_response.h
 *
 * 
 */

#ifndef _audience_device_response_H_
#define _audience_device_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct audience_device_response_t audience_device_response_t;




typedef struct audience_device_response_t {
    long device_id; //numeric
    int active; //boolean
    char *name; // string
    char *display; // string
    long minimum; //numeric
    long maximum; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} audience_device_response_t;

__attribute__((deprecated)) audience_device_response_t *audience_device_response_create(
    long device_id,
    int active,
    char *name,
    char *display,
    long minimum,
    long maximum
);

void audience_device_response_free(audience_device_response_t *audience_device_response);

audience_device_response_t *audience_device_response_parseFromJSON(cJSON *audience_device_responseJSON);

cJSON *audience_device_response_convertToJSON(audience_device_response_t *audience_device_response);

#endif /* _audience_device_response_H_ */

