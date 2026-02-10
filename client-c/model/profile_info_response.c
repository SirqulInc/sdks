#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "profile_info_response.h"


char* profile_info_response_gender_ToString(sirqul_iot_platform_profile_info_response_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_profile_info_response_GENDER_e profile_info_response_gender_FromString(char* gender){
    int stringToReturn = 0;
    char *genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    size_t sizeofArray = sizeof(genderArray) / sizeof(genderArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(gender, genderArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* profile_info_response_game_experience_ToString(sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e game_experience) {
    char* game_experienceArray[] =  { "NULL", "ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT" };
    return game_experienceArray[game_experience];
}

sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e profile_info_response_game_experience_FromString(char* game_experience){
    int stringToReturn = 0;
    char *game_experienceArray[] =  { "NULL", "ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT" };
    size_t sizeofArray = sizeof(game_experienceArray) / sizeof(game_experienceArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(game_experience, game_experienceArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static profile_info_response_t *profile_info_response_create_internal(
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
    ) {
    profile_info_response_t *profile_info_response_local_var = malloc(sizeof(profile_info_response_t));
    if (!profile_info_response_local_var) {
        return NULL;
    }
    profile_info_response_local_var->valid = valid;
    profile_info_response_local_var->message = message;
    profile_info_response_local_var->version = version;
    profile_info_response_local_var->serialize_nulls = serialize_nulls;
    profile_info_response_local_var->start_time_log = start_time_log;
    profile_info_response_local_var->error_code = error_code;
    profile_info_response_local_var->request = request;
    profile_info_response_local_var->account_id = account_id;
    profile_info_response_local_var->location_display = location_display;
    profile_info_response_local_var->display = display;
    profile_info_response_local_var->username = username;
    profile_info_response_local_var->profile_image = profile_image;
    profile_info_response_local_var->profile_avatar = profile_avatar;
    profile_info_response_local_var->about_us = about_us;
    profile_info_response_local_var->locale = locale;
    profile_info_response_local_var->summary_title = summary_title;
    profile_info_response_local_var->gender = gender;
    profile_info_response_local_var->age = age;
    profile_info_response_local_var->game_experience = game_experience;
    profile_info_response_local_var->contact = contact;
    profile_info_response_local_var->categories = categories;
    profile_info_response_local_var->personal_profile = personal_profile;
    profile_info_response_local_var->user_settings = user_settings;
    profile_info_response_local_var->latitude = latitude;
    profile_info_response_local_var->longitude = longitude;
    profile_info_response_local_var->current_postal_code = current_postal_code;
    profile_info_response_local_var->account_type = account_type;
    profile_info_response_local_var->premium_expiration = premium_expiration;
    profile_info_response_local_var->match_index = match_index;
    profile_info_response_local_var->tags = tags;
    profile_info_response_local_var->returning = returning;

    profile_info_response_local_var->_library_owned = 1;
    return profile_info_response_local_var;
}

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
    ) {
    return profile_info_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        account_id,
        location_display,
        display,
        username,
        profile_image,
        profile_avatar,
        about_us,
        locale,
        summary_title,
        gender,
        age,
        game_experience,
        contact,
        categories,
        personal_profile,
        user_settings,
        latitude,
        longitude,
        current_postal_code,
        account_type,
        premium_expiration,
        match_index,
        tags,
        returning
        );
}

void profile_info_response_free(profile_info_response_t *profile_info_response) {
    if(NULL == profile_info_response){
        return ;
    }
    if(profile_info_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "profile_info_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (profile_info_response->message) {
        free(profile_info_response->message);
        profile_info_response->message = NULL;
    }
    if (profile_info_response->error_code) {
        free(profile_info_response->error_code);
        profile_info_response->error_code = NULL;
    }
    if (profile_info_response->request) {
        list_ForEach(listEntry, profile_info_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(profile_info_response->request);
        profile_info_response->request = NULL;
    }
    if (profile_info_response->location_display) {
        free(profile_info_response->location_display);
        profile_info_response->location_display = NULL;
    }
    if (profile_info_response->display) {
        free(profile_info_response->display);
        profile_info_response->display = NULL;
    }
    if (profile_info_response->username) {
        free(profile_info_response->username);
        profile_info_response->username = NULL;
    }
    if (profile_info_response->profile_image) {
        free(profile_info_response->profile_image);
        profile_info_response->profile_image = NULL;
    }
    if (profile_info_response->profile_avatar) {
        asset_short_response_free(profile_info_response->profile_avatar);
        profile_info_response->profile_avatar = NULL;
    }
    if (profile_info_response->about_us) {
        free(profile_info_response->about_us);
        profile_info_response->about_us = NULL;
    }
    if (profile_info_response->locale) {
        free(profile_info_response->locale);
        profile_info_response->locale = NULL;
    }
    if (profile_info_response->summary_title) {
        free(profile_info_response->summary_title);
        profile_info_response->summary_title = NULL;
    }
    if (profile_info_response->age) {
        free(profile_info_response->age);
        profile_info_response->age = NULL;
    }
    if (profile_info_response->contact) {
        contact_response_free(profile_info_response->contact);
        profile_info_response->contact = NULL;
    }
    if (profile_info_response->categories) {
        list_ForEach(listEntry, profile_info_response->categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(profile_info_response->categories);
        profile_info_response->categories = NULL;
    }
    if (profile_info_response->personal_profile) {
        personal_profile_response_free(profile_info_response->personal_profile);
        profile_info_response->personal_profile = NULL;
    }
    if (profile_info_response->user_settings) {
        user_settings_response_free(profile_info_response->user_settings);
        profile_info_response->user_settings = NULL;
    }
    if (profile_info_response->current_postal_code) {
        postal_code_response_free(profile_info_response->current_postal_code);
        profile_info_response->current_postal_code = NULL;
    }
    if (profile_info_response->account_type) {
        free(profile_info_response->account_type);
        profile_info_response->account_type = NULL;
    }
    if (profile_info_response->tags) {
        free(profile_info_response->tags);
        profile_info_response->tags = NULL;
    }
    if (profile_info_response->returning) {
        free(profile_info_response->returning);
        profile_info_response->returning = NULL;
    }
    free(profile_info_response);
}

cJSON *profile_info_response_convertToJSON(profile_info_response_t *profile_info_response) {
    cJSON *item = cJSON_CreateObject();

    // profile_info_response->valid
    if(profile_info_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", profile_info_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_info_response->message
    if(profile_info_response->message) {
    if(cJSON_AddStringToObject(item, "message", profile_info_response->message) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->version
    if(profile_info_response->version) {
    if(cJSON_AddNumberToObject(item, "version", profile_info_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_info_response->serialize_nulls
    if(profile_info_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", profile_info_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // profile_info_response->start_time_log
    if(profile_info_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", profile_info_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_info_response->error_code
    if(profile_info_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", profile_info_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->request
    if(profile_info_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (profile_info_response->request) {
    list_ForEach(requestListEntry, profile_info_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // profile_info_response->account_id
    if(profile_info_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", profile_info_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_info_response->location_display
    if(profile_info_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", profile_info_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->display
    if(profile_info_response->display) {
    if(cJSON_AddStringToObject(item, "display", profile_info_response->display) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->username
    if(profile_info_response->username) {
    if(cJSON_AddStringToObject(item, "username", profile_info_response->username) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->profile_image
    if(profile_info_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", profile_info_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->profile_avatar
    if(profile_info_response->profile_avatar) {
    cJSON *profile_avatar_local_JSON = asset_short_response_convertToJSON(profile_info_response->profile_avatar);
    if(profile_avatar_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "profileAvatar", profile_avatar_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_info_response->about_us
    if(profile_info_response->about_us) {
    if(cJSON_AddStringToObject(item, "aboutUs", profile_info_response->about_us) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->locale
    if(profile_info_response->locale) {
    if(cJSON_AddStringToObject(item, "locale", profile_info_response->locale) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->summary_title
    if(profile_info_response->summary_title) {
    if(cJSON_AddStringToObject(item, "summaryTitle", profile_info_response->summary_title) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->gender
    if(profile_info_response->gender != sirqul_iot_platform_profile_info_response_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", profile_info_response_gender_ToString(profile_info_response->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // profile_info_response->age
    if(profile_info_response->age) {
    if(cJSON_AddStringToObject(item, "age", profile_info_response->age) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->game_experience
    if(profile_info_response->game_experience != sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_NULL) {
    if(cJSON_AddStringToObject(item, "gameExperience", profile_info_response_game_experience_ToString(profile_info_response->game_experience)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // profile_info_response->contact
    if(profile_info_response->contact) {
    cJSON *contact_local_JSON = contact_response_convertToJSON(profile_info_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_info_response->categories
    if(profile_info_response->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (profile_info_response->categories) {
    list_ForEach(categoriesListEntry, profile_info_response->categories) {
    cJSON *itemLocal = category_response_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // profile_info_response->personal_profile
    if(profile_info_response->personal_profile) {
    cJSON *personal_profile_local_JSON = personal_profile_response_convertToJSON(profile_info_response->personal_profile);
    if(personal_profile_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "personalProfile", personal_profile_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_info_response->user_settings
    if(profile_info_response->user_settings) {
    cJSON *user_settings_local_JSON = user_settings_response_convertToJSON(profile_info_response->user_settings);
    if(user_settings_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userSettings", user_settings_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_info_response->latitude
    if(profile_info_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", profile_info_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_info_response->longitude
    if(profile_info_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", profile_info_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_info_response->current_postal_code
    if(profile_info_response->current_postal_code) {
    cJSON *current_postal_code_local_JSON = postal_code_response_convertToJSON(profile_info_response->current_postal_code);
    if(current_postal_code_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "currentPostalCode", current_postal_code_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // profile_info_response->account_type
    if(profile_info_response->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", profile_info_response->account_type) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->premium_expiration
    if(profile_info_response->premium_expiration) {
    if(cJSON_AddNumberToObject(item, "premiumExpiration", profile_info_response->premium_expiration) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_info_response->match_index
    if(profile_info_response->match_index) {
    if(cJSON_AddNumberToObject(item, "matchIndex", profile_info_response->match_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // profile_info_response->tags
    if(profile_info_response->tags) {
    if(cJSON_AddStringToObject(item, "tags", profile_info_response->tags) == NULL) {
    goto fail; //String
    }
    }


    // profile_info_response->returning
    if(profile_info_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", profile_info_response->returning) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

profile_info_response_t *profile_info_response_parseFromJSON(cJSON *profile_info_responseJSON){

    profile_info_response_t *profile_info_response_local_var = NULL;

    // define the local list for profile_info_response->request
    list_t *requestList = NULL;

    // define the local variable for profile_info_response->profile_avatar
    asset_short_response_t *profile_avatar_local_nonprim = NULL;

    // define the local variable for profile_info_response->contact
    contact_response_t *contact_local_nonprim = NULL;

    // define the local list for profile_info_response->categories
    list_t *categoriesList = NULL;

    // define the local variable for profile_info_response->personal_profile
    personal_profile_response_t *personal_profile_local_nonprim = NULL;

    // define the local variable for profile_info_response->user_settings
    user_settings_response_t *user_settings_local_nonprim = NULL;

    // define the local variable for profile_info_response->current_postal_code
    postal_code_response_t *current_postal_code_local_nonprim = NULL;

    // profile_info_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // profile_info_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // profile_info_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // profile_info_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // profile_info_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // profile_info_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // profile_info_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }

    // profile_info_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // profile_info_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // profile_info_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // profile_info_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // profile_info_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // profile_info_response->profile_avatar
    cJSON *profile_avatar = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "profileAvatar");
    if (cJSON_IsNull(profile_avatar)) {
        profile_avatar = NULL;
    }
    if (profile_avatar) { 
    profile_avatar_local_nonprim = asset_short_response_parseFromJSON(profile_avatar); //nonprimitive
    }

    // profile_info_response->about_us
    cJSON *about_us = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "aboutUs");
    if (cJSON_IsNull(about_us)) {
        about_us = NULL;
    }
    if (about_us) { 
    if(!cJSON_IsString(about_us) && !cJSON_IsNull(about_us))
    {
    goto end; //String
    }
    }

    // profile_info_response->locale
    cJSON *locale = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "locale");
    if (cJSON_IsNull(locale)) {
        locale = NULL;
    }
    if (locale) { 
    if(!cJSON_IsString(locale) && !cJSON_IsNull(locale))
    {
    goto end; //String
    }
    }

    // profile_info_response->summary_title
    cJSON *summary_title = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "summaryTitle");
    if (cJSON_IsNull(summary_title)) {
        summary_title = NULL;
    }
    if (summary_title) { 
    if(!cJSON_IsString(summary_title) && !cJSON_IsNull(summary_title))
    {
    goto end; //String
    }
    }

    // profile_info_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_profile_info_response_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = profile_info_response_gender_FromString(gender->valuestring);
    }

    // profile_info_response->age
    cJSON *age = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "age");
    if (cJSON_IsNull(age)) {
        age = NULL;
    }
    if (age) { 
    if(!cJSON_IsString(age) && !cJSON_IsNull(age))
    {
    goto end; //String
    }
    }

    // profile_info_response->game_experience
    cJSON *game_experience = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "gameExperience");
    if (cJSON_IsNull(game_experience)) {
        game_experience = NULL;
    }
    sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_e game_experienceVariable;
    if (game_experience) { 
    if(!cJSON_IsString(game_experience))
    {
    goto end; //Enum
    }
    game_experienceVariable = profile_info_response_game_experience_FromString(game_experience->valuestring);
    }

    // profile_info_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_response_parseFromJSON(contact); //nonprimitive
    }

    // profile_info_response->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "categories");
    if (cJSON_IsNull(categories)) {
        categories = NULL;
    }
    if (categories) { 
    cJSON *categories_local_nonprimitive = NULL;
    if(!cJSON_IsArray(categories)){
        goto end; //nonprimitive container
    }

    categoriesList = list_createList();

    cJSON_ArrayForEach(categories_local_nonprimitive,categories )
    {
        if(!cJSON_IsObject(categories_local_nonprimitive)){
            goto end;
        }
        category_response_t *categoriesItem = category_response_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // profile_info_response->personal_profile
    cJSON *personal_profile = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "personalProfile");
    if (cJSON_IsNull(personal_profile)) {
        personal_profile = NULL;
    }
    if (personal_profile) { 
    personal_profile_local_nonprim = personal_profile_response_parseFromJSON(personal_profile); //nonprimitive
    }

    // profile_info_response->user_settings
    cJSON *user_settings = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "userSettings");
    if (cJSON_IsNull(user_settings)) {
        user_settings = NULL;
    }
    if (user_settings) { 
    user_settings_local_nonprim = user_settings_response_parseFromJSON(user_settings); //nonprimitive
    }

    // profile_info_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // profile_info_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // profile_info_response->current_postal_code
    cJSON *current_postal_code = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "currentPostalCode");
    if (cJSON_IsNull(current_postal_code)) {
        current_postal_code = NULL;
    }
    if (current_postal_code) { 
    current_postal_code_local_nonprim = postal_code_response_parseFromJSON(current_postal_code); //nonprimitive
    }

    // profile_info_response->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }

    // profile_info_response->premium_expiration
    cJSON *premium_expiration = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "premiumExpiration");
    if (cJSON_IsNull(premium_expiration)) {
        premium_expiration = NULL;
    }
    if (premium_expiration) { 
    if(!cJSON_IsNumber(premium_expiration))
    {
    goto end; //Numeric
    }
    }

    // profile_info_response->match_index
    cJSON *match_index = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "matchIndex");
    if (cJSON_IsNull(match_index)) {
        match_index = NULL;
    }
    if (match_index) { 
    if(!cJSON_IsNumber(match_index))
    {
    goto end; //Numeric
    }
    }

    // profile_info_response->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }

    // profile_info_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(profile_info_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    profile_info_response_local_var = profile_info_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        account_id ? account_id->valuedouble : 0,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        profile_avatar ? profile_avatar_local_nonprim : NULL,
        about_us && !cJSON_IsNull(about_us) ? strdup(about_us->valuestring) : NULL,
        locale && !cJSON_IsNull(locale) ? strdup(locale->valuestring) : NULL,
        summary_title && !cJSON_IsNull(summary_title) ? strdup(summary_title->valuestring) : NULL,
        gender ? genderVariable : sirqul_iot_platform_profile_info_response_GENDER_NULL,
        age && !cJSON_IsNull(age) ? strdup(age->valuestring) : NULL,
        game_experience ? game_experienceVariable : sirqul_iot_platform_profile_info_response_GAMEEXPERIENCE_NULL,
        contact ? contact_local_nonprim : NULL,
        categories ? categoriesList : NULL,
        personal_profile ? personal_profile_local_nonprim : NULL,
        user_settings ? user_settings_local_nonprim : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        current_postal_code ? current_postal_code_local_nonprim : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL,
        premium_expiration ? premium_expiration->valuedouble : 0,
        match_index ? match_index->valuedouble : 0,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return profile_info_response_local_var;
end:
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    if (profile_avatar_local_nonprim) {
        asset_short_response_free(profile_avatar_local_nonprim);
        profile_avatar_local_nonprim = NULL;
    }
    if (contact_local_nonprim) {
        contact_response_free(contact_local_nonprim);
        contact_local_nonprim = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (personal_profile_local_nonprim) {
        personal_profile_response_free(personal_profile_local_nonprim);
        personal_profile_local_nonprim = NULL;
    }
    if (user_settings_local_nonprim) {
        user_settings_response_free(user_settings_local_nonprim);
        user_settings_local_nonprim = NULL;
    }
    if (current_postal_code_local_nonprim) {
        postal_code_response_free(current_postal_code_local_nonprim);
        current_postal_code_local_nonprim = NULL;
    }
    return NULL;

}
