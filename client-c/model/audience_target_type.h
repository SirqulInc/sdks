/*
 * audience_target_type.h
 *
 * 
 */

#ifndef _audience_target_type_H_
#define _audience_target_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct audience_target_type_t audience_target_type_t;

#include "account.h"
#include "offer_location.h"
#include "region.h"
#include "retailer_location.h"

// Enum TARGETTYPE for audience_target_type

typedef enum  { sirqul_iot_platform_audience_target_type_TARGETTYPE_NULL = 0, sirqul_iot_platform_audience_target_type_TARGETTYPE_RETAILER_LOCATION, sirqul_iot_platform_audience_target_type_TARGETTYPE_OFFER_LOCATION, sirqul_iot_platform_audience_target_type_TARGETTYPE_ACCOUNT, sirqul_iot_platform_audience_target_type_TARGETTYPE_REGION } sirqul_iot_platform_audience_target_type_TARGETTYPE_e;

char* audience_target_type_target_type_ToString(sirqul_iot_platform_audience_target_type_TARGETTYPE_e target_type);

sirqul_iot_platform_audience_target_type_TARGETTYPE_e audience_target_type_target_type_FromString(char* target_type);



typedef struct audience_target_type_t {
    sirqul_iot_platform_audience_target_type_TARGETTYPE_e target_type; //enum
    char *target_description; // string
    struct retailer_location_t *retailer_location; //model
    struct offer_location_t *offer_location; //model
    struct account_t *account; //model
    struct region_t *region; //model

    int _library_owned; // Is the library responsible for freeing this object?
} audience_target_type_t;

__attribute__((deprecated)) audience_target_type_t *audience_target_type_create(
    sirqul_iot_platform_audience_target_type_TARGETTYPE_e target_type,
    char *target_description,
    retailer_location_t *retailer_location,
    offer_location_t *offer_location,
    account_t *account,
    region_t *region
);

void audience_target_type_free(audience_target_type_t *audience_target_type);

audience_target_type_t *audience_target_type_parseFromJSON(cJSON *audience_target_typeJSON);

cJSON *audience_target_type_convertToJSON(audience_target_type_t *audience_target_type);

#endif /* _audience_target_type_H_ */

