/*
 * vehicle_type.h
 *
 * 
 */

#ifndef _vehicle_type_H_
#define _vehicle_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct vehicle_type_t vehicle_type_t;

#include "retailer.h"
#include "service_hub.h"
#include "vehicle_cargo_setting.h"



typedef struct vehicle_type_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct retailer_t *business; //model
    struct service_hub_t *hub; //model
    char *name; // string
    double width; //numeric
    double height; //numeric
    double depth; //numeric
    double volume; //numeric
    double max_weight; //numeric
    list_t *vehicle_cargo_settings; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} vehicle_type_t;

__attribute__((deprecated)) vehicle_type_t *vehicle_type_create(
    long id,
    int active,
    int valid,
    retailer_t *business,
    service_hub_t *hub,
    char *name,
    double width,
    double height,
    double depth,
    double volume,
    double max_weight,
    list_t *vehicle_cargo_settings
);

void vehicle_type_free(vehicle_type_t *vehicle_type);

vehicle_type_t *vehicle_type_parseFromJSON(cJSON *vehicle_typeJSON);

cJSON *vehicle_type_convertToJSON(vehicle_type_t *vehicle_type);

#endif /* _vehicle_type_H_ */

