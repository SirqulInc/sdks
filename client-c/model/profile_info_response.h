/*
 * profile_info_response.h
 *
 * 
 */

#ifndef _profile_info_response_H_
#define _profile_info_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct profile_info_response_t profile_info_response_t;

#include "asset_short_response.h"
#include "category_response.h"
#include "contact_response.h"
#include "name_string_value_response.h"
#include "personal_profile_response.h"
#include "postal_code_response.h"
#include "user_settings_response.h"

// Enum GENDER for profile_info_response

typedef enum  { sirqul_iot_platform_profile_info_response_GENDER_NULL = 0, sirqul_iot_platform_profile_info_response_GENDER_MALE, sirqul_iot_platform_profile_info_response_GENDER_FEMALE, sirqul_iot_platform_profile_info_response_GENDER_ANY } sirqul_iot_platform_profile_info_response_GENDER_e;

char* profile_info_response_gender_ToString(sirqul_iot_platform_profile_info_response_GENDER_e gender);

sirqul_iot_platform_profile_info_response_GENDER_e profile_info_response_gender_FromString(char* gender);

// Enum GAMEEXPERIENCE for profile_info_response

typedef enum  { sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_NULL = 0, sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_ANY, sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE__NEW, sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_BEGINNER, sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_INTERMEDIATE, sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_EXPERT } sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e;

char* profile_info_response_game_experience_ToString(sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e game_experience);

sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e profile_info_response_game_experience_FromString(char* game_experience);



typedef struct profile_info_response_t {
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
    char *about_us; // string
    char *locale; // string
    char *summary_title; // string
    sirqul_iot_platform_profile_info_response_GENDER_e gender; //enum
    char *age; // string
    sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e game_experience; //enum
    struct contact_response_t *contact; //model
    list_t *categories; //nonprimitive container
    struct personal_profile_response_t *personal_profile; //model
    struct user_settings_response_t *user_settings; //model
    double latitude; //numeric
    double longitude; //numeric
    struct postal_code_response_t *current_postal_code; //model
    char *account_type; // string
    long premium_expiration; //numeric
    int match_index; //numeric
    char *tags; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} profile_info_response_t;

__attribute__((deprecated)) profile_info_response_t *profile_info_response_create(
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
    char *about_us,
    char *locale,
    char *summary_title,
    sirqul_iot_platform_profile_info_response_GENDER_e gender,
    char *age,
    sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e game_experience,
    contact_response_t *contact,
    list_t *categories,
    personal_profile_response_t *personal_profile,
    user_settings_response_t *user_settings,
    double latitude,
    double longitude,
    postal_code_response_t *current_postal_code,
    char *account_type,
    long premium_expiration,
    int match_index,
    char *tags,
    char *returning
);

void profile_info_response_free(profile_info_response_t *profile_info_response);

profile_info_response_t *profile_info_response_parseFromJSON(cJSON *profile_info_responseJSON);

cJSON *profile_info_response_convertToJSON(profile_info_response_t *profile_info_response);

#endif /* _profile_info_response_H_ */

