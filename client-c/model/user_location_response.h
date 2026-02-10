/*
 * user_location_response.h
 *
 * 
 */

#ifndef _user_location_response_H_
#define _user_location_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_location_response_t user_location_response_t;

#include "asset_short_response.h"
#include "category_response.h"
#include "contact_response.h"
#include "name_string_value_response.h"
#include "personal_profile_response.h"
#include "postal_code_response.h"
#include "user_settings_response.h"

// Enum GENDER for user_location_response

typedef enum  { sirqul_iot_platform_user_location_response_GENDER_NULL = 0, sirqul_iot_platform_user_location_response_GENDER_MALE, sirqul_iot_platform_user_location_response_GENDER_FEMALE, sirqul_iot_platform_user_location_response_GENDER_ANY } sirqul_iot_platform_user_location_response_GENDER_e;

char* user_location_response_gender_ToString(sirqul_iot_platform_user_location_response_GENDER_e gender);

sirqul_iot_platform_user_location_response_GENDER_e user_location_response_gender_FromString(char* gender);

// Enum GAMEEXPERIENCE for user_location_response

typedef enum  { sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_NULL = 0, sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_ANY, sirqul_iot_platform_user_location_response_GAMEEXPERIENCE__NEW, sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_BEGINNER, sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_INTERMEDIATE, sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_EXPERT } sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_e;

char* user_location_response_game_experience_ToString(sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_e game_experience);

sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_e user_location_response_game_experience_FromString(char* game_experience);



typedef struct user_location_response_t {
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
    sirqul_iot_platform_user_location_response_GENDER_e gender; //enum
    char *age; // string
    sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_e game_experience; //enum
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
    long location_last_updated; //numeric
    char *distance_from_me; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} user_location_response_t;

__attribute__((deprecated)) user_location_response_t *user_location_response_create(
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
    sirqul_iot_platform_user_location_response_GENDER_e gender,
    char *age,
    sirqul_iot_platform_user_location_response_GAMEEXPERIENCE_e game_experience,
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
    long location_last_updated,
    char *distance_from_me,
    char *returning
);

void user_location_response_free(user_location_response_t *user_location_response);

user_location_response_t *user_location_response_parseFromJSON(cJSON *user_location_responseJSON);

cJSON *user_location_response_convertToJSON(user_location_response_t *user_location_response);

#endif /* _user_location_response_H_ */

