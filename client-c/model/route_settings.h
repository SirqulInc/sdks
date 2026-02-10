/*
 * route_settings.h
 *
 * 
 */

#ifndef _route_settings_H_
#define _route_settings_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct route_settings_t route_settings_t;

#include "program.h"
#include "service_hub.h"

// Enum SETTINGTYPE for route_settings

typedef enum  { sirqul_iot_platform_route_settings_SETTINGTYPE_NULL = 0, sirqul_iot_platform_route_settings_SETTINGTYPE__FLOAT, sirqul_iot_platform_route_settings_SETTINGTYPE__DOUBLE, sirqul_iot_platform_route_settings_SETTINGTYPE_INTEGER, sirqul_iot_platform_route_settings_SETTINGTYPE__LONG, sirqul_iot_platform_route_settings_SETTINGTYPE_BOOLEAN, sirqul_iot_platform_route_settings_SETTINGTYPE_STRING } sirqul_iot_platform_route_settings_SETTINGTYPE_e;

char* route_settings_setting_type_ToString(sirqul_iot_platform_route_settings_SETTINGTYPE_e setting_type);

sirqul_iot_platform_route_settings_SETTINGTYPE_e route_settings_setting_type_FromString(char* setting_type);



typedef struct route_settings_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *description; // string
    char *setting; // string
    sirqul_iot_platform_route_settings_SETTINGTYPE_e setting_type; //enum
    struct program_t *program; //model
    struct service_hub_t *hub; //model

    int _library_owned; // Is the library responsible for freeing this object?
} route_settings_t;

__attribute__((deprecated)) route_settings_t *route_settings_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    char *setting,
    sirqul_iot_platform_route_settings_SETTINGTYPE_e setting_type,
    program_t *program,
    service_hub_t *hub
);

void route_settings_free(route_settings_t *route_settings);

route_settings_t *route_settings_parseFromJSON(cJSON *route_settingsJSON);

cJSON *route_settings_convertToJSON(route_settings_t *route_settings);

#endif /* _route_settings_H_ */

