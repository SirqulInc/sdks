/*
 * placement.h
 *
 * 
 */

#ifndef _placement_H_
#define _placement_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct placement_t placement_t;

#include "application.h"
#include "asset.h"

// Enum SIZE for placement

typedef enum  { sirqul_iot_platform_placement_SIZE_NULL = 0, sirqul_iot_platform_placement_SIZE_CONFIG, sirqul_iot_platform_placement_SIZE_BANNER, sirqul_iot_platform_placement_SIZE_LEADERBOARD, sirqul_iot_platform_placement_SIZE_SKYSCRAPER, sirqul_iot_platform_placement_SIZE_VIDEO, sirqul_iot_platform_placement_SIZE_ZIP, sirqul_iot_platform_placement_SIZE_INTERSTITIAL, sirqul_iot_platform_placement_SIZE_CUSTOM1, sirqul_iot_platform_placement_SIZE_CUSTOM2, sirqul_iot_platform_placement_SIZE_CUSTOM3, sirqul_iot_platform_placement_SIZE_CUSTOM4, sirqul_iot_platform_placement_SIZE_CUSTOM5, sirqul_iot_platform_placement_SIZE_CUSTOM6, sirqul_iot_platform_placement_SIZE_CUSTOM7, sirqul_iot_platform_placement_SIZE_CUSTOM8, sirqul_iot_platform_placement_SIZE_CUSTOM9, sirqul_iot_platform_placement_SIZE_CUSTOM10 } sirqul_iot_platform_placement_SIZE_e;

char* placement_size_ToString(sirqul_iot_platform_placement_SIZE_e size);

sirqul_iot_platform_placement_SIZE_e placement_size_FromString(char* size);

// Enum CLICKTYPE for placement

typedef enum  { sirqul_iot_platform_placement_CLICKTYPE_NULL = 0, sirqul_iot_platform_placement_CLICKTYPE_CONFIG, sirqul_iot_platform_placement_CLICKTYPE_PURCHASE, sirqul_iot_platform_placement_CLICKTYPE_BANNER, sirqul_iot_platform_placement_CLICKTYPE_LEADERBOARD, sirqul_iot_platform_placement_CLICKTYPE_SKYSCRAPER, sirqul_iot_platform_placement_CLICKTYPE_VIDEO, sirqul_iot_platform_placement_CLICKTYPE_ZIP, sirqul_iot_platform_placement_CLICKTYPE_FULL, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM1, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM2, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM3, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM4, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM5, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM6, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM7, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM8, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM9, sirqul_iot_platform_placement_CLICKTYPE_CUSTOM10 } sirqul_iot_platform_placement_CLICKTYPE_e;

char* placement_click_type_ToString(sirqul_iot_platform_placement_CLICKTYPE_e click_type);

sirqul_iot_platform_placement_CLICKTYPE_e placement_click_type_FromString(char* click_type);



typedef struct placement_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct application_t *application; //model
    char *name; // string
    char *description; // string
    sirqul_iot_platform_placement_SIZE_e size; //enum
    sirqul_iot_platform_placement_CLICKTYPE_e click_type; //enum
    int height; //numeric
    int width; //numeric
    int refresh_interval; //numeric
    struct asset_t *default_image; //model

    int _library_owned; // Is the library responsible for freeing this object?
} placement_t;

__attribute__((deprecated)) placement_t *placement_create(
    long id,
    int active,
    int valid,
    application_t *application,
    char *name,
    char *description,
    sirqul_iot_platform_placement_SIZE_e size,
    sirqul_iot_platform_placement_CLICKTYPE_e click_type,
    int height,
    int width,
    int refresh_interval,
    asset_t *default_image
);

void placement_free(placement_t *placement);

placement_t *placement_parseFromJSON(cJSON *placementJSON);

cJSON *placement_convertToJSON(placement_t *placement);

#endif /* _placement_H_ */

