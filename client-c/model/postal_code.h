/*
 * postal_code.h
 *
 * 
 */

#ifndef _postal_code_H_
#define _postal_code_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct postal_code_t postal_code_t;

#include "region.h"



typedef struct postal_code_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    char *code; // string
    char *plus4; // string
    char *state_code; // string
    char *city; // string
    char *time_zone; // string
    int utc_offset; //numeric
    list_t *regions; //nonprimitive container
    int eliminated; //boolean
    int search_point; //boolean
    char *last_offer_import; //date time
    double truncated_latitude; //numeric
    double truncated_longitude; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} postal_code_t;

__attribute__((deprecated)) postal_code_t *postal_code_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *code,
    char *plus4,
    char *state_code,
    char *city,
    char *time_zone,
    int utc_offset,
    list_t *regions,
    int eliminated,
    int search_point,
    char *last_offer_import,
    double truncated_latitude,
    double truncated_longitude
);

void postal_code_free(postal_code_t *postal_code);

postal_code_t *postal_code_parseFromJSON(cJSON *postal_codeJSON);

cJSON *postal_code_convertToJSON(postal_code_t *postal_code);

#endif /* _postal_code_H_ */

