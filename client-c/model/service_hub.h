/*
 * service_hub.h
 *
 * 
 */

#ifndef _service_hub_H_
#define _service_hub_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct service_hub_t service_hub_t;

#include "location.h"
#include "retailer.h"



typedef struct service_hub_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    char *name; // string
    char *external_id; // string
    struct retailer_t *business; //model
    struct location_t *location; //model
    char *time_zone; // string

    int _library_owned; // Is the library responsible for freeing this object?
} service_hub_t;

__attribute__((deprecated)) service_hub_t *service_hub_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    char *external_id,
    retailer_t *business,
    location_t *location,
    char *time_zone
);

void service_hub_free(service_hub_t *service_hub);

service_hub_t *service_hub_parseFromJSON(cJSON *service_hubJSON);

cJSON *service_hub_convertToJSON(service_hub_t *service_hub);

#endif /* _service_hub_H_ */

