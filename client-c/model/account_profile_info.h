/*
 * account_profile_info.h
 *
 * 
 */

#ifndef _account_profile_info_H_
#define _account_profile_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_profile_info_t account_profile_info_t;

#include "account.h"

// Enum GENDER for account_profile_info

typedef enum  { sirqul_iot_platform_account_profile_info_GENDER_NULL = 0, sirqul_iot_platform_account_profile_info_GENDER_MALE, sirqul_iot_platform_account_profile_info_GENDER_FEMALE, sirqul_iot_platform_account_profile_info_GENDER_ANY } sirqul_iot_platform_account_profile_info_GENDER_e;

char* account_profile_info_gender_ToString(sirqul_iot_platform_account_profile_info_GENDER_e gender);

sirqul_iot_platform_account_profile_info_GENDER_e account_profile_info_gender_FromString(char* gender);

// Enum AGEGROUP for account_profile_info

typedef enum  { sirqul_iot_platform_account_profile_info_AGEGROUP_NULL = 0, sirqul_iot_platform_account_profile_info_AGEGROUP_AGE_0_13, sirqul_iot_platform_account_profile_info_AGEGROUP_AGE_14_17, sirqul_iot_platform_account_profile_info_AGEGROUP_AGE_18_22, sirqul_iot_platform_account_profile_info_AGEGROUP_AGE_23_30, sirqul_iot_platform_account_profile_info_AGEGROUP_AGE_31_54, sirqul_iot_platform_account_profile_info_AGEGROUP_AGE_55_PLUS } sirqul_iot_platform_account_profile_info_AGEGROUP_e;

char* account_profile_info_age_group_ToString(sirqul_iot_platform_account_profile_info_AGEGROUP_e age_group);

sirqul_iot_platform_account_profile_info_AGEGROUP_e account_profile_info_age_group_FromString(char* age_group);

// Enum PREFERREDGENDER for account_profile_info

typedef enum  { sirqul_iot_platform_account_profile_info_PREFERREDGENDER_NULL = 0, sirqul_iot_platform_account_profile_info_PREFERREDGENDER_MALE, sirqul_iot_platform_account_profile_info_PREFERREDGENDER_FEMALE, sirqul_iot_platform_account_profile_info_PREFERREDGENDER_ANY } sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e;

char* account_profile_info_preferred_gender_ToString(sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e preferred_gender);

sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e account_profile_info_preferred_gender_FromString(char* preferred_gender);

// Enum DEVELOPMENTPLATFORMS for account_profile_info

typedef enum  { sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_NULL = 0, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_MAC, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_WINDOWS, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_IOS, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_ANDROID, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_WINDOWSPHONE, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_KINDLE, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_UNITY3D, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_COCOS2D, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_HTML5, sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_FACEBOOK } sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_e;

char* account_profile_info_development_platforms_ToString(sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_e development_platforms);

sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_e account_profile_info_development_platforms_FromString(char* development_platforms);



typedef struct account_profile_info_t {
    long id; //numeric
    char *created; //date time
    char *updated; //date time
    int active; //boolean
    int valid; //boolean
    struct account_t *account; //model
    sirqul_iot_platform_account_profile_info_GENDER_e gender; //enum
    char *birthday; //date time
    sirqul_iot_platform_account_profile_info_AGEGROUP_e age_group; //enum
    int preferred_min_age; //numeric
    int preferred_max_age; //numeric
    int preferred_min_height; //numeric
    int preferred_max_height; //numeric
    sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e preferred_gender; //enum
    char *preferred_education; // string
    int preferred_education_index; //numeric
    char *preferred_body_type; // string
    char *preferred_ethnicity; // string
    char *preferred_location; // string
    double preferred_location_range; //numeric
    char *height; // string
    int height_index; //numeric
    char *ethnicity; // string
    char *body_type; // string
    char *marital_status; // string
    char *children; // string
    char *religion; // string
    char *education; // string
    int education_index; //numeric
    char *smoke; // string
    char *drink; // string
    char *companionship; // string
    int companionship_index; //numeric
    list_t *development_platforms; //primitive container
    long match_token; //numeric
    char *match_string; // string
    long none_zero_match_token; //numeric
    char *preferred_max_birthday; //date time
    char *preferred_min_birthday; //date time

    int _library_owned; // Is the library responsible for freeing this object?
} account_profile_info_t;

__attribute__((deprecated)) account_profile_info_t *account_profile_info_create(
    long id,
    char *created,
    char *updated,
    int active,
    int valid,
    account_t *account,
    sirqul_iot_platform_account_profile_info_GENDER_e gender,
    char *birthday,
    sirqul_iot_platform_account_profile_info_AGEGROUP_e age_group,
    int preferred_min_age,
    int preferred_max_age,
    int preferred_min_height,
    int preferred_max_height,
    sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e preferred_gender,
    char *preferred_education,
    int preferred_education_index,
    char *preferred_body_type,
    char *preferred_ethnicity,
    char *preferred_location,
    double preferred_location_range,
    char *height,
    int height_index,
    char *ethnicity,
    char *body_type,
    char *marital_status,
    char *children,
    char *religion,
    char *education,
    int education_index,
    char *smoke,
    char *drink,
    char *companionship,
    int companionship_index,
    list_t *development_platforms,
    long match_token,
    char *match_string,
    long none_zero_match_token,
    char *preferred_max_birthday,
    char *preferred_min_birthday
);

void account_profile_info_free(account_profile_info_t *account_profile_info);

account_profile_info_t *account_profile_info_parseFromJSON(cJSON *account_profile_infoJSON);

cJSON *account_profile_info_convertToJSON(account_profile_info_t *account_profile_info);

#endif /* _account_profile_info_H_ */

