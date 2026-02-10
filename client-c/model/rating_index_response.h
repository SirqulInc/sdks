/*
 * rating_index_response.h
 *
 * 
 */

#ifndef _rating_index_response_H_
#define _rating_index_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rating_index_response_t rating_index_response_t;

#include "category_response.h"
#include "object.h"

// Enum RATABLETYPE for rating_index_response

typedef enum  { sirqul_iot_platform_rating_index_response_RATABLETYPE_NULL = 0, sirqul_iot_platform_rating_index_response_RATABLETYPE_LOCATABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_RESERVABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_PERMISSIONABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_NOTABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_ASSETABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_LIKABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_FLAGABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_FAVORITABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_RATABLE, sirqul_iot_platform_rating_index_response_RATABLETYPE_ALBUM, sirqul_iot_platform_rating_index_response_RATABLETYPE_COLLECTION, sirqul_iot_platform_rating_index_response_RATABLETYPE_APPLICATION, sirqul_iot_platform_rating_index_response_RATABLETYPE_APPLICATION_SETTING, sirqul_iot_platform_rating_index_response_RATABLETYPE_APPLICATION_CERT, sirqul_iot_platform_rating_index_response_RATABLETYPE_APPLICATION_PLACEMENT, sirqul_iot_platform_rating_index_response_RATABLETYPE_ACCOUNT, sirqul_iot_platform_rating_index_response_RATABLETYPE_ACCOUNT_SETTING, sirqul_iot_platform_rating_index_response_RATABLETYPE_GAME_LEVEL, sirqul_iot_platform_rating_index_response_RATABLETYPE_PACK, sirqul_iot_platform_rating_index_response_RATABLETYPE_MISSION, sirqul_iot_platform_rating_index_response_RATABLETYPE_TOURNAMENT, sirqul_iot_platform_rating_index_response_RATABLETYPE_ASSET, sirqul_iot_platform_rating_index_response_RATABLETYPE_ALBUM_CONTEST, sirqul_iot_platform_rating_index_response_RATABLETYPE_THEME_DESCRIPTOR, sirqul_iot_platform_rating_index_response_RATABLETYPE_OFFER, sirqul_iot_platform_rating_index_response_RATABLETYPE_OFFER_LOCATION, sirqul_iot_platform_rating_index_response_RATABLETYPE_EVENT, sirqul_iot_platform_rating_index_response_RATABLETYPE_RETAILER, sirqul_iot_platform_rating_index_response_RATABLETYPE_RETAILER_LOCATION, sirqul_iot_platform_rating_index_response_RATABLETYPE_NOTE, sirqul_iot_platform_rating_index_response_RATABLETYPE_CREATIVE, sirqul_iot_platform_rating_index_response_RATABLETYPE_FAVORITE, sirqul_iot_platform_rating_index_response_RATABLETYPE_LIKE, sirqul_iot_platform_rating_index_response_RATABLETYPE_RATING, sirqul_iot_platform_rating_index_response_RATABLETYPE_ANALYTIC, sirqul_iot_platform_rating_index_response_RATABLETYPE_THIRD_PARTY_CREDENTIAL, sirqul_iot_platform_rating_index_response_RATABLETYPE_THIRD_PARTY_NETWORK, sirqul_iot_platform_rating_index_response_RATABLETYPE_REGION } sirqul_iot_platform_rating_index_response_RATABLETYPE_e;

char* rating_index_response_ratable_type_ToString(sirqul_iot_platform_rating_index_response_RATABLETYPE_e ratable_type);

sirqul_iot_platform_rating_index_response_RATABLETYPE_e rating_index_response_ratable_type_FromString(char* ratable_type);



typedef struct rating_index_response_t {
    long rating_index_id; //numeric
    long rating_count; //numeric
    float rating_average; //numeric
    float value; //numeric
    char *display; // string
    sirqul_iot_platform_rating_index_response_RATABLETYPE_e ratable_type; //enum
    long ratable_id; //numeric
    struct category_response_t *category; //model
    object_t *ratable; //object
    char *secondary_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} rating_index_response_t;

__attribute__((deprecated)) rating_index_response_t *rating_index_response_create(
    long rating_index_id,
    long rating_count,
    float rating_average,
    float value,
    char *display,
    sirqul_iot_platform_rating_index_response_RATABLETYPE_e ratable_type,
    long ratable_id,
    category_response_t *category,
    object_t *ratable,
    char *secondary_type
);

void rating_index_response_free(rating_index_response_t *rating_index_response);

rating_index_response_t *rating_index_response_parseFromJSON(cJSON *rating_index_responseJSON);

cJSON *rating_index_response_convertToJSON(rating_index_response_t *rating_index_response);

#endif /* _rating_index_response_H_ */

