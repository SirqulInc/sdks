/*
 * audience.h
 *
 * 
 */

#ifndef _audience_H_
#define _audience_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct audience_t audience_t;

#include "account.h"
#include "application.h"
#include "audience_device_version_range.h"
#include "audience_location.h"
#include "audience_target_type.h"
#include "category.h"

// Enum GENDER for audience

typedef enum  { sirqul_iot_platform_audience_GENDER_NULL = 0, sirqul_iot_platform_audience_GENDER_MALE, sirqul_iot_platform_audience_GENDER_FEMALE, sirqul_iot_platform_audience_GENDER_ANY } sirqul_iot_platform_audience_GENDER_e;

char* audience_gender_ToString(sirqul_iot_platform_audience_GENDER_e gender);

sirqul_iot_platform_audience_GENDER_e audience_gender_FromString(char* gender);

// Enum AGEGROUPS for audience

typedef enum  { sirqul_iot_platform_audience_AGEGROUPS_NULL = 0, sirqul_iot_platform_audience_AGEGROUPS_AGE_0_13, sirqul_iot_platform_audience_AGEGROUPS_AGE_14_17, sirqul_iot_platform_audience_AGEGROUPS_AGE_18_22, sirqul_iot_platform_audience_AGEGROUPS_AGE_23_30, sirqul_iot_platform_audience_AGEGROUPS_AGE_31_54, sirqul_iot_platform_audience_AGEGROUPS_AGE_55_PLUS } sirqul_iot_platform_audience_AGEGROUPS_e;

char* audience_age_groups_ToString(sirqul_iot_platform_audience_AGEGROUPS_e age_groups);

sirqul_iot_platform_audience_AGEGROUPS_e audience_age_groups_FromString(char* age_groups);

// Enum GAMEEXPERIENCELEVEL for audience

typedef enum  { sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_NULL = 0, sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_ANY, sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL__NEW, sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_BEGINNER, sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_INTERMEDIATE, sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_EXPERT } sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e;

char* audience_game_experience_level_ToString(sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e game_experience_level);

sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e audience_game_experience_level_FromString(char* game_experience_level);



typedef struct audience_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    char *name; // string
    int display; //boolean
    char *description; // string
    struct account_t *owner; //model
    sirqul_iot_platform_audience_GENDER_e gender; //enum
    list_t *age_groups; //primitive container
    sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e game_experience_level; //enum
    list_t *device_version_ranges; //nonprimitive container
    list_t *categories; //nonprimitive container
    list_t *applications; //nonprimitive container
    double radius; //numeric
    list_t *locations; //nonprimitive container
    int send_suggestion; //boolean
    int start_time_offset; //numeric
    int end_time_offset; //numeric
    struct audience_target_type_t *target; //model
    char *associate_content_name; // string
    char *polygon; // string
    char *associate_type; // string
    long associate_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} audience_t;

__attribute__((deprecated)) audience_t *audience_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    int display,
    char *description,
    account_t *owner,
    sirqul_iot_platform_audience_GENDER_e gender,
    list_t *age_groups,
    sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e game_experience_level,
    list_t *device_version_ranges,
    list_t *categories,
    list_t *applications,
    double radius,
    list_t *locations,
    int send_suggestion,
    int start_time_offset,
    int end_time_offset,
    audience_target_type_t *target,
    char *associate_content_name,
    char *polygon,
    char *associate_type,
    long associate_id
);

void audience_free(audience_t *audience);

audience_t *audience_parseFromJSON(cJSON *audienceJSON);

cJSON *audience_convertToJSON(audience_t *audience);

#endif /* _audience_H_ */

