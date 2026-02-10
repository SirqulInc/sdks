/*
 * driver_response.h
 *
 * 
 */

#ifndef _driver_response_H_
#define _driver_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct driver_response_t driver_response_t;

#include "availability_response.h"
#include "location_response.h"



typedef struct driver_response_t {
    char *id; // string
    char *name; // string
    struct location_response_t *depot; //model
    list_t *availability; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} driver_response_t;

__attribute__((deprecated)) driver_response_t *driver_response_create(
    char *id,
    char *name,
    location_response_t *depot,
    list_t *availability
);

void driver_response_free(driver_response_t *driver_response);

driver_response_t *driver_response_parseFromJSON(cJSON *driver_responseJSON);

cJSON *driver_response_convertToJSON(driver_response_t *driver_response);

#endif /* _driver_response_H_ */

