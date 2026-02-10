#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user_settings_response.h"


char* user_settings_response_favorite_visibility_ToString(sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e favorite_visibility) {
    char* favorite_visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return favorite_visibilityArray[favorite_visibility];
}

sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e user_settings_response_favorite_visibility_FromString(char* favorite_visibility){
    int stringToReturn = 0;
    char *favorite_visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(favorite_visibilityArray) / sizeof(favorite_visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(favorite_visibility, favorite_visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static user_settings_response_t *user_settings_response_create_internal(
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
    ) {
    user_settings_response_t *user_settings_response_local_var = malloc(sizeof(user_settings_response_t));
    if (!user_settings_response_local_var) {
        return NULL;
    }
    user_settings_response_local_var->show_as_zipcode = show_as_zipcode;
    user_settings_response_local_var->show_exact_location = show_exact_location;
    user_settings_response_local_var->show_others_exact_location = show_others_exact_location;
    user_settings_response_local_var->suggestion_count = suggestion_count;
    user_settings_response_local_var->suggestion_time_frame = suggestion_time_frame;
    user_settings_response_local_var->suggestion_method = suggestion_method;
    user_settings_response_local_var->notifications = notifications;
    user_settings_response_local_var->public_show_friend_info = public_show_friend_info;
    user_settings_response_local_var->public_show_game_info = public_show_game_info;
    user_settings_response_local_var->public_show_profile_info = public_show_profile_info;
    user_settings_response_local_var->favorite_visibility = favorite_visibility;

    user_settings_response_local_var->_library_owned = 1;
    return user_settings_response_local_var;
}

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
    ) {
    return user_settings_response_create_internal (
        show_as_zipcode,
        show_exact_location,
        show_others_exact_location,
        suggestion_count,
        suggestion_time_frame,
        suggestion_method,
        notifications,
        public_show_friend_info,
        public_show_game_info,
        public_show_profile_info,
        favorite_visibility
        );
}

void user_settings_response_free(user_settings_response_t *user_settings_response) {
    if(NULL == user_settings_response){
        return ;
    }
    if(user_settings_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "user_settings_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (user_settings_response->suggestion_method) {
        free(user_settings_response->suggestion_method);
        user_settings_response->suggestion_method = NULL;
    }
    if (user_settings_response->notifications) {
        notification_settings_response_free(user_settings_response->notifications);
        user_settings_response->notifications = NULL;
    }
    free(user_settings_response);
}

cJSON *user_settings_response_convertToJSON(user_settings_response_t *user_settings_response) {
    cJSON *item = cJSON_CreateObject();

    // user_settings_response->show_as_zipcode
    if(user_settings_response->show_as_zipcode) {
    if(cJSON_AddBoolToObject(item, "showAsZipcode", user_settings_response->show_as_zipcode) == NULL) {
    goto fail; //Bool
    }
    }


    // user_settings_response->show_exact_location
    if(user_settings_response->show_exact_location) {
    if(cJSON_AddBoolToObject(item, "showExactLocation", user_settings_response->show_exact_location) == NULL) {
    goto fail; //Bool
    }
    }


    // user_settings_response->show_others_exact_location
    if(user_settings_response->show_others_exact_location) {
    if(cJSON_AddBoolToObject(item, "showOthersExactLocation", user_settings_response->show_others_exact_location) == NULL) {
    goto fail; //Bool
    }
    }


    // user_settings_response->suggestion_count
    if(user_settings_response->suggestion_count) {
    if(cJSON_AddNumberToObject(item, "suggestionCount", user_settings_response->suggestion_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_settings_response->suggestion_time_frame
    if(user_settings_response->suggestion_time_frame) {
    if(cJSON_AddNumberToObject(item, "suggestionTimeFrame", user_settings_response->suggestion_time_frame) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_settings_response->suggestion_method
    if(user_settings_response->suggestion_method) {
    if(cJSON_AddStringToObject(item, "suggestionMethod", user_settings_response->suggestion_method) == NULL) {
    goto fail; //String
    }
    }


    // user_settings_response->notifications
    if(user_settings_response->notifications) {
    cJSON *notifications_local_JSON = notification_settings_response_convertToJSON(user_settings_response->notifications);
    if(notifications_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "notifications", notifications_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // user_settings_response->public_show_friend_info
    if(user_settings_response->public_show_friend_info) {
    if(cJSON_AddBoolToObject(item, "publicShowFriendInfo", user_settings_response->public_show_friend_info) == NULL) {
    goto fail; //Bool
    }
    }


    // user_settings_response->public_show_game_info
    if(user_settings_response->public_show_game_info) {
    if(cJSON_AddBoolToObject(item, "publicShowGameInfo", user_settings_response->public_show_game_info) == NULL) {
    goto fail; //Bool
    }
    }


    // user_settings_response->public_show_profile_info
    if(user_settings_response->public_show_profile_info) {
    if(cJSON_AddBoolToObject(item, "publicShowProfileInfo", user_settings_response->public_show_profile_info) == NULL) {
    goto fail; //Bool
    }
    }


    // user_settings_response->favorite_visibility
    if(user_settings_response->favorite_visibility != sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "favoriteVisibility", user_settings_response_favorite_visibility_ToString(user_settings_response->favorite_visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

user_settings_response_t *user_settings_response_parseFromJSON(cJSON *user_settings_responseJSON){

    user_settings_response_t *user_settings_response_local_var = NULL;

    // define the local variable for user_settings_response->notifications
    notification_settings_response_t *notifications_local_nonprim = NULL;

    // user_settings_response->show_as_zipcode
    cJSON *show_as_zipcode = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "showAsZipcode");
    if (cJSON_IsNull(show_as_zipcode)) {
        show_as_zipcode = NULL;
    }
    if (show_as_zipcode) { 
    if(!cJSON_IsBool(show_as_zipcode))
    {
    goto end; //Bool
    }
    }

    // user_settings_response->show_exact_location
    cJSON *show_exact_location = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "showExactLocation");
    if (cJSON_IsNull(show_exact_location)) {
        show_exact_location = NULL;
    }
    if (show_exact_location) { 
    if(!cJSON_IsBool(show_exact_location))
    {
    goto end; //Bool
    }
    }

    // user_settings_response->show_others_exact_location
    cJSON *show_others_exact_location = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "showOthersExactLocation");
    if (cJSON_IsNull(show_others_exact_location)) {
        show_others_exact_location = NULL;
    }
    if (show_others_exact_location) { 
    if(!cJSON_IsBool(show_others_exact_location))
    {
    goto end; //Bool
    }
    }

    // user_settings_response->suggestion_count
    cJSON *suggestion_count = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "suggestionCount");
    if (cJSON_IsNull(suggestion_count)) {
        suggestion_count = NULL;
    }
    if (suggestion_count) { 
    if(!cJSON_IsNumber(suggestion_count))
    {
    goto end; //Numeric
    }
    }

    // user_settings_response->suggestion_time_frame
    cJSON *suggestion_time_frame = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "suggestionTimeFrame");
    if (cJSON_IsNull(suggestion_time_frame)) {
        suggestion_time_frame = NULL;
    }
    if (suggestion_time_frame) { 
    if(!cJSON_IsNumber(suggestion_time_frame))
    {
    goto end; //Numeric
    }
    }

    // user_settings_response->suggestion_method
    cJSON *suggestion_method = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "suggestionMethod");
    if (cJSON_IsNull(suggestion_method)) {
        suggestion_method = NULL;
    }
    if (suggestion_method) { 
    if(!cJSON_IsString(suggestion_method) && !cJSON_IsNull(suggestion_method))
    {
    goto end; //String
    }
    }

    // user_settings_response->notifications
    cJSON *notifications = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "notifications");
    if (cJSON_IsNull(notifications)) {
        notifications = NULL;
    }
    if (notifications) { 
    notifications_local_nonprim = notification_settings_response_parseFromJSON(notifications); //nonprimitive
    }

    // user_settings_response->public_show_friend_info
    cJSON *public_show_friend_info = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "publicShowFriendInfo");
    if (cJSON_IsNull(public_show_friend_info)) {
        public_show_friend_info = NULL;
    }
    if (public_show_friend_info) { 
    if(!cJSON_IsBool(public_show_friend_info))
    {
    goto end; //Bool
    }
    }

    // user_settings_response->public_show_game_info
    cJSON *public_show_game_info = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "publicShowGameInfo");
    if (cJSON_IsNull(public_show_game_info)) {
        public_show_game_info = NULL;
    }
    if (public_show_game_info) { 
    if(!cJSON_IsBool(public_show_game_info))
    {
    goto end; //Bool
    }
    }

    // user_settings_response->public_show_profile_info
    cJSON *public_show_profile_info = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "publicShowProfileInfo");
    if (cJSON_IsNull(public_show_profile_info)) {
        public_show_profile_info = NULL;
    }
    if (public_show_profile_info) { 
    if(!cJSON_IsBool(public_show_profile_info))
    {
    goto end; //Bool
    }
    }

    // user_settings_response->favorite_visibility
    cJSON *favorite_visibility = cJSON_GetObjectItemCaseSensitive(user_settings_responseJSON, "favoriteVisibility");
    if (cJSON_IsNull(favorite_visibility)) {
        favorite_visibility = NULL;
    }
    sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_e favorite_visibilityVariable;
    if (favorite_visibility) { 
    if(!cJSON_IsString(favorite_visibility))
    {
    goto end; //Enum
    }
    favorite_visibilityVariable = user_settings_response_favorite_visibility_FromString(favorite_visibility->valuestring);
    }


    user_settings_response_local_var = user_settings_response_create_internal (
        show_as_zipcode ? show_as_zipcode->valueint : 0,
        show_exact_location ? show_exact_location->valueint : 0,
        show_others_exact_location ? show_others_exact_location->valueint : 0,
        suggestion_count ? suggestion_count->valuedouble : 0,
        suggestion_time_frame ? suggestion_time_frame->valuedouble : 0,
        suggestion_method && !cJSON_IsNull(suggestion_method) ? strdup(suggestion_method->valuestring) : NULL,
        notifications ? notifications_local_nonprim : NULL,
        public_show_friend_info ? public_show_friend_info->valueint : 0,
        public_show_game_info ? public_show_game_info->valueint : 0,
        public_show_profile_info ? public_show_profile_info->valueint : 0,
        favorite_visibility ? favorite_visibilityVariable : sirqul_iot_platform_user_settings_response_FAVORITEVISIBILITY_NULL
        );

    return user_settings_response_local_var;
end:
    if (notifications_local_nonprim) {
        notification_settings_response_free(notifications_local_nonprim);
        notifications_local_nonprim = NULL;
    }
    return NULL;

}
