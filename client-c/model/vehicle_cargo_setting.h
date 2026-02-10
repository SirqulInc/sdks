/*
 * vehicle_cargo_setting.h
 *
 * 
 */

#ifndef _vehicle_cargo_setting_H_
#define _vehicle_cargo_setting_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct vehicle_cargo_setting_t vehicle_cargo_setting_t;

#include "cargo_type.h"



typedef struct vehicle_cargo_setting_t {
    int valid; //boolean
    struct cargo_type_t *cargo_type; //model
    int max_unit; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} vehicle_cargo_setting_t;

__attribute__((deprecated)) vehicle_cargo_setting_t *vehicle_cargo_setting_create(
    int valid,
    cargo_type_t *cargo_type,
    int max_unit
);

void vehicle_cargo_setting_free(vehicle_cargo_setting_t *vehicle_cargo_setting);

vehicle_cargo_setting_t *vehicle_cargo_setting_parseFromJSON(cJSON *vehicle_cargo_settingJSON);

cJSON *vehicle_cargo_setting_convertToJSON(vehicle_cargo_setting_t *vehicle_cargo_setting);

#endif /* _vehicle_cargo_setting_H_ */

