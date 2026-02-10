/*
 * audience_response.h
 *
 * 
 */

#ifndef _audience_response_H_
#define _audience_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct audience_response_t audience_response_t;

#include "age_group_response.h"
#include "application_short_response.h"
#include "audience_device_response.h"
#include "category_response.h"
#include "geocode_lat_lng_response.h"



typedef struct audience_response_t {
    long id; //numeric
    char *name; // string
    double latitude; //numeric
    double longitude; //numeric
    double radius; //numeric
    int send_suggestion; //boolean
    char *description; // string
    int active; //boolean
    char *search_tags; // string
    long owner_id; //numeric
    char *gender; // string
    list_t *age_groups; //nonprimitive container
    list_t *categories; //nonprimitive container
    list_t *applications; //nonprimitive container
    list_t *devices; //nonprimitive container
    char *game_experience_level; // string
    list_t *locations; //nonprimitive container
    char *associate_type; // string
    long associate_id; //numeric
    char *associate_description; // string

    int _library_owned; // Is the library responsible for freeing this object?
} audience_response_t;

__attribute__((deprecated)) audience_response_t *audience_response_create(
    long id,
    char *name,
    double latitude,
    double longitude,
    double radius,
    int send_suggestion,
    char *description,
    int active,
    char *search_tags,
    long owner_id,
    char *gender,
    list_t *age_groups,
    list_t *categories,
    list_t *applications,
    list_t *devices,
    char *game_experience_level,
    list_t *locations,
    char *associate_type,
    long associate_id,
    char *associate_description
);

void audience_response_free(audience_response_t *audience_response);

audience_response_t *audience_response_parseFromJSON(cJSON *audience_responseJSON);

cJSON *audience_response_convertToJSON(audience_response_t *audience_response);

#endif /* _audience_response_H_ */

