/*
 * personal_profile_response.h
 *
 * 
 */

#ifndef _personal_profile_response_H_
#define _personal_profile_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct personal_profile_response_t personal_profile_response_t;

#include "name_string_value_response.h"

// Enum PREFERREDGENDER for personal_profile_response

typedef enum  { sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_NULL = 0, sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_MALE, sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_FEMALE, sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_ANY } sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e;

char* personal_profile_response_preferred_gender_ToString(sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e preferred_gender);

sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e personal_profile_response_preferred_gender_FromString(char* preferred_gender);

// Enum GENDER for personal_profile_response

typedef enum  { sirqul_iot_platform_personal_profile_response_GENDER_NULL = 0, sirqul_iot_platform_personal_profile_response_GENDER_MALE, sirqul_iot_platform_personal_profile_response_GENDER_FEMALE, sirqul_iot_platform_personal_profile_response_GENDER_ANY } sirqul_iot_platform_personal_profile_response_GENDER_e;

char* personal_profile_response_gender_ToString(sirqul_iot_platform_personal_profile_response_GENDER_e gender);

sirqul_iot_platform_personal_profile_response_GENDER_e personal_profile_response_gender_FromString(char* gender);



typedef struct personal_profile_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e preferred_gender; //enum
    char *preferred_ethnicity; // string
    char *preferred_education; // string
    int preferred_education_index; //numeric
    char *preferred_body_type; // string
    int preferred_min_age; //numeric
    int preferred_max_age; //numeric
    int preferred_min_height; //numeric
    int preferred_max_height; //numeric
    double preferred_location_range; //numeric
    sirqul_iot_platform_personal_profile_response_GENDER_e gender; //enum
    char *hometown; // string
    char *height; // string
    int height_index; //numeric
    char *ethnicity; // string
    char *body_type; // string
    char *children; // string
    char *companionship; // string
    int companionship_index; //numeric
    char *drink; // string
    char *education; // string
    int education_index; //numeric
    char *marital_status; // string
    char *smoke; // string
    char *religion; // string
    long birthday; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} personal_profile_response_t;

__attribute__((deprecated)) personal_profile_response_t *personal_profile_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e preferred_gender,
    char *preferred_ethnicity,
    char *preferred_education,
    int preferred_education_index,
    char *preferred_body_type,
    int preferred_min_age,
    int preferred_max_age,
    int preferred_min_height,
    int preferred_max_height,
    double preferred_location_range,
    sirqul_iot_platform_personal_profile_response_GENDER_e gender,
    char *hometown,
    char *height,
    int height_index,
    char *ethnicity,
    char *body_type,
    char *children,
    char *companionship,
    int companionship_index,
    char *drink,
    char *education,
    int education_index,
    char *marital_status,
    char *smoke,
    char *religion,
    long birthday,
    char *returning
);

void personal_profile_response_free(personal_profile_response_t *personal_profile_response);

personal_profile_response_t *personal_profile_response_parseFromJSON(cJSON *personal_profile_responseJSON);

cJSON *personal_profile_response_convertToJSON(personal_profile_response_t *personal_profile_response);

#endif /* _personal_profile_response_H_ */

