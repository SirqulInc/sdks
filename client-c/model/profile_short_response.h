/*
 * profile_short_response.h
 *
 * 
 */

#ifndef _profile_short_response_H_
#define _profile_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct profile_short_response_t profile_short_response_t;

#include "asset_short_response.h"
#include "name_string_value_response.h"



typedef struct profile_short_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long account_id; //numeric
    char *location_display; // string
    char *display; // string
    char *username; // string
    char *profile_image; // string
    struct asset_short_response_t *profile_avatar; //model
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} profile_short_response_t;

__attribute__((deprecated)) profile_short_response_t *profile_short_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *profile_image,
    asset_short_response_t *profile_avatar,
    char *returning
);

void profile_short_response_free(profile_short_response_t *profile_short_response);

profile_short_response_t *profile_short_response_parseFromJSON(cJSON *profile_short_responseJSON);

cJSON *profile_short_response_convertToJSON(profile_short_response_t *profile_short_response);

#endif /* _profile_short_response_H_ */

