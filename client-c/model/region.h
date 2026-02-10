/*
 * region.h
 *
 * 
 */

#ifndef _region_H_
#define _region_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct region_t region_t;

#include "account.h"
#include "category.h"
#include "filter.h"
#include "geo_box.h"
#include "postal_code.h"

// Enum REGIONCLASS for region

typedef enum  { sirqul_iot_platform_region_REGIONCLASS_NULL = 0, sirqul_iot_platform_region_REGIONCLASS_NATIONAL, sirqul_iot_platform_region_REGIONCLASS_STATE, sirqul_iot_platform_region_REGIONCLASS_COUNTY, sirqul_iot_platform_region_REGIONCLASS_METRO_AREA, sirqul_iot_platform_region_REGIONCLASS_CITY, sirqul_iot_platform_region_REGIONCLASS_NEIGHBORHOOD, sirqul_iot_platform_region_REGIONCLASS_TERRITORY, sirqul_iot_platform_region_REGIONCLASS_CUSTOM, sirqul_iot_platform_region_REGIONCLASS_ZONE } sirqul_iot_platform_region_REGIONCLASS_e;

char* region_region_class_ToString(sirqul_iot_platform_region_REGIONCLASS_e region_class);

sirqul_iot_platform_region_REGIONCLASS_e region_region_class_FromString(char* region_class);

// Enum VISIBILITY for region

typedef enum  { sirqul_iot_platform_region_VISIBILITY_NULL = 0, sirqul_iot_platform_region_VISIBILITY__PUBLIC, sirqul_iot_platform_region_VISIBILITY__PRIVATE, sirqul_iot_platform_region_VISIBILITY_FRIENDS } sirqul_iot_platform_region_VISIBILITY_e;

char* region_visibility_ToString(sirqul_iot_platform_region_VISIBILITY_e visibility);

sirqul_iot_platform_region_VISIBILITY_e region_visibility_FromString(char* visibility);



typedef struct region_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    struct account_t *owner; //model
    char *short_name; // string
    char *full_name; // string
    struct geo_box_t *bounds; //model
    char *start; //date time
    char *end; //date time
    char *polygon; // string
    char *meta_data; // string
    list_t *children; //nonprimitive container
    list_t *parents; //nonprimitive container
    list_t *postal_codes; //nonprimitive container
    sirqul_iot_platform_region_REGIONCLASS_e region_class; //enum
    int root; //boolean
    int web_active; //boolean
    int admin_active; //boolean
    sirqul_iot_platform_region_VISIBILITY_e visibility; //enum
    list_t *categories; //nonprimitive container
    list_t *filters; //nonprimitive container
    double truncated_latitude; //numeric
    double truncated_longitude; //numeric
    int version_code; //numeric
    char *display; // string
    char *content_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} region_t;

__attribute__((deprecated)) region_t *region_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *short_name,
    char *full_name,
    geo_box_t *bounds,
    char *start,
    char *end,
    char *polygon,
    char *meta_data,
    list_t *children,
    list_t *parents,
    list_t *postal_codes,
    sirqul_iot_platform_region_REGIONCLASS_e region_class,
    int root,
    int web_active,
    int admin_active,
    sirqul_iot_platform_region_VISIBILITY_e visibility,
    list_t *categories,
    list_t *filters,
    double truncated_latitude,
    double truncated_longitude,
    int version_code,
    char *display,
    char *content_name
);

void region_free(region_t *region);

region_t *region_parseFromJSON(cJSON *regionJSON);

cJSON *region_convertToJSON(region_t *region);

#endif /* _region_H_ */

