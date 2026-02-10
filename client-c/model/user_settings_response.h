/*
 * user_settings_response.h
 *
 * 
 */

#ifndef _user_settings_response_H_
#define _user_settings_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_settings_response_t user_settings_response_t;

#include "notification_settings_response.h"

// Enum FAVORITEVISIBILITY for user_settings_response

typedef enum  { sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_NULL = 0, sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY__PUBLIC, sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY__PRIVATE, sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_FRIENDS } sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e;

char* user_settings_response_favorite_visibility_ToString(sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e favorite_visibility);

sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e user_settings_response_favorite_visibility_FromString(char* favorite_visibility);



typedef struct user_settings_response_t {
    int show_as_zipcode; //boolean
    int show_exact_location; //boolean
    int show_others_exact_location; //boolean
    int suggestion_count; //numeric
    int suggestion_time_frame; //numeric
    char *suggestion_method; // string
    struct notification_settings_response_t *notifications; //model
    int public_show_friend_info; //boolean
    int public_show_game_info; //boolean
    int public_show_profile_info; //boolean
    sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e favorite_visibility; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} user_settings_response_t;

__attribute__((deprecated)) user_settings_response_t *user_settings_response_create(
    int show_as_zipcode,
    int show_exact_location,
    int show_others_exact_location,
    int suggestion_count,
    int suggestion_time_frame,
    char *suggestion_method,
    notification_settings_response_t *notifications,
    int public_show_friend_info,
    int public_show_game_info,
    int public_show_profile_info,
    sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e favorite_visibility
);

void user_settings_response_free(user_settings_response_t *user_settings_response);

user_settings_response_t *user_settings_response_parseFromJSON(cJSON *user_settings_responseJSON);

cJSON *user_settings_response_convertToJSON(user_settings_response_t *user_settings_response);

#endif /* _user_settings_response_H_ */

