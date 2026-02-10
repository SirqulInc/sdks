/*
 * cargo_type.h
 *
 * 
 */

#ifndef _cargo_type_H_
#define _cargo_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cargo_type_t cargo_type_t;

#include "retailer.h"
#include "service_hub.h"



typedef struct cargo_type_t {
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
    double weight; //numeric
    long load_time; //numeric
    int palletizable; //boolean
    int pallet_ratio; //numeric
    int admin_only; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} cargo_type_t;

__attribute__((deprecated)) cargo_type_t *cargo_type_create(
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
    double weight,
    long load_time,
    int palletizable,
    int pallet_ratio,
    int admin_only
);

void cargo_type_free(cargo_type_t *cargo_type);

cargo_type_t *cargo_type_parseFromJSON(cJSON *cargo_typeJSON);

cJSON *cargo_type_convertToJSON(cargo_type_t *cargo_type);

#endif /* _cargo_type_H_ */

