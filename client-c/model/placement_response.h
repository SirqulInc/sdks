/*
 * placement_response.h
 *
 * 
 */

#ifndef _placement_response_H_
#define _placement_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct placement_response_t placement_response_t;

#include "asset_short_response.h"

// Enum SIZE for placement_response

typedef enum  { sirqul_iot_platform_placement_response_SIZE_NULL = 0, sirqul_iot_platform_placement_response_SIZE_CONFIG, sirqul_iot_platform_placement_response_SIZE_BANNER, sirqul_iot_platform_placement_response_SIZE_LEADERBOARD, sirqul_iot_platform_placement_response_SIZE_SKYSCRAPER, sirqul_iot_platform_placement_response_SIZE_VIDEO, sirqul_iot_platform_placement_response_SIZE_ZIP, sirqul_iot_platform_placement_response_SIZE_INTERSTITIAL, sirqul_iot_platform_placement_response_SIZE_CUSTOM1, sirqul_iot_platform_placement_response_SIZE_CUSTOM2, sirqul_iot_platform_placement_response_SIZE_CUSTOM3, sirqul_iot_platform_placement_response_SIZE_CUSTOM4, sirqul_iot_platform_placement_response_SIZE_CUSTOM5, sirqul_iot_platform_placement_response_SIZE_CUSTOM6, sirqul_iot_platform_placement_response_SIZE_CUSTOM7, sirqul_iot_platform_placement_response_SIZE_CUSTOM8, sirqul_iot_platform_placement_response_SIZE_CUSTOM9, sirqul_iot_platform_placement_response_SIZE_CUSTOM10 } sirqul_iot_platform_placement_response_SIZE_e;

char* placement_response_size_ToString(sirqul_iot_platform_placement_response_SIZE_e size);

sirqul_iot_platform_placement_response_SIZE_e placement_response_size_FromString(char* size);



typedef struct placement_response_t {
    long placement_id; //numeric
    char *name; // string
    char *description; // string
    sirqul_iot_platform_placement_response_SIZE_e size; //enum
    int height; //numeric
    int width; //numeric
    int refresh_interval; //numeric
    char *app_name; // string
    char *app_key; // string
    int active; //boolean
    struct asset_short_response_t *default_image; //model

    int _library_owned; // Is the library responsible for freeing this object?
} placement_response_t;

__attribute__((deprecated)) placement_response_t *placement_response_create(
    long placement_id,
    char *name,
    char *description,
    sirqul_iot_platform_placement_response_SIZE_e size,
    int height,
    int width,
    int refresh_interval,
    char *app_name,
    char *app_key,
    int active,
    asset_short_response_t *default_image
);

void placement_response_free(placement_response_t *placement_response);

placement_response_t *placement_response_parseFromJSON(cJSON *placement_responseJSON);

cJSON *placement_response_convertToJSON(placement_response_t *placement_response);

#endif /* _placement_response_H_ */

