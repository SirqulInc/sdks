#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "notification_recipient_response.h"


char* notification_recipient_response_gender_ToString(sirqul_iot_platform_notification_recipient_response_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_notification_recipient_response_GENDER_e notification_recipient_response_gender_FromString(char* gender){
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

static notification_recipient_response_t *notification_recipient_response_create_internal(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_notification_recipient_response_GENDER_e gender,
    char *contact_email,
    long application_id,
    char *app_name,
    int has_apns,
    int has_gcm,
    int has_email,
    int has_sms
    ) {
    notification_recipient_response_t *notification_recipient_response_local_var = malloc(sizeof(notification_recipient_response_t));
    if (!notification_recipient_response_local_var) {
        return NULL;
    }
    notification_recipient_response_local_var->account_id = account_id;
    notification_recipient_response_local_var->location_display = location_display;
    notification_recipient_response_local_var->display = display;
    notification_recipient_response_local_var->username = username;
    notification_recipient_response_local_var->account_type = account_type;
    notification_recipient_response_local_var->profile_image = profile_image;
    notification_recipient_response_local_var->gender = gender;
    notification_recipient_response_local_var->contact_email = contact_email;
    notification_recipient_response_local_var->application_id = application_id;
    notification_recipient_response_local_var->app_name = app_name;
    notification_recipient_response_local_var->has_apns = has_apns;
    notification_recipient_response_local_var->has_gcm = has_gcm;
    notification_recipient_response_local_var->has_email = has_email;
    notification_recipient_response_local_var->has_sms = has_sms;

    notification_recipient_response_local_var->_library_owned = 1;
    return notification_recipient_response_local_var;
}

__attribute__((deprecated)) notification_recipient_response_t *notification_recipient_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_notification_recipient_response_GENDER_e gender,
    char *contact_email,
    long application_id,
    char *app_name,
    int has_apns,
    int has_gcm,
    int has_email,
    int has_sms
    ) {
    return notification_recipient_response_create_internal (
        account_id,
        location_display,
        display,
        username,
        account_type,
        profile_image,
        gender,
        contact_email,
        application_id,
        app_name,
        has_apns,
        has_gcm,
        has_email,
        has_sms
        );
}

void notification_recipient_response_free(notification_recipient_response_t *notification_recipient_response) {
    if(NULL == notification_recipient_response){
        return ;
    }
    if(notification_recipient_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "notification_recipient_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (notification_recipient_response->location_display) {
        free(notification_recipient_response->location_display);
        notification_recipient_response->location_display = NULL;
    }
    if (notification_recipient_response->display) {
        free(notification_recipient_response->display);
        notification_recipient_response->display = NULL;
    }
    if (notification_recipient_response->username) {
        free(notification_recipient_response->username);
        notification_recipient_response->username = NULL;
    }
    if (notification_recipient_response->account_type) {
        free(notification_recipient_response->account_type);
        notification_recipient_response->account_type = NULL;
    }
    if (notification_recipient_response->profile_image) {
        free(notification_recipient_response->profile_image);
        notification_recipient_response->profile_image = NULL;
    }
    if (notification_recipient_response->contact_email) {
        free(notification_recipient_response->contact_email);
        notification_recipient_response->contact_email = NULL;
    }
    if (notification_recipient_response->app_name) {
        free(notification_recipient_response->app_name);
        notification_recipient_response->app_name = NULL;
    }
    free(notification_recipient_response);
}

cJSON *notification_recipient_response_convertToJSON(notification_recipient_response_t *notification_recipient_response) {
    cJSON *item = cJSON_CreateObject();

    // notification_recipient_response->account_id
    if(notification_recipient_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", notification_recipient_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response->location_display
    if(notification_recipient_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", notification_recipient_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // notification_recipient_response->display
    if(notification_recipient_response->display) {
    if(cJSON_AddStringToObject(item, "display", notification_recipient_response->display) == NULL) {
    goto fail; //String
    }
    }


    // notification_recipient_response->username
    if(notification_recipient_response->username) {
    if(cJSON_AddStringToObject(item, "username", notification_recipient_response->username) == NULL) {
    goto fail; //String
    }
    }


    // notification_recipient_response->account_type
    if(notification_recipient_response->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", notification_recipient_response->account_type) == NULL) {
    goto fail; //String
    }
    }


    // notification_recipient_response->profile_image
    if(notification_recipient_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", notification_recipient_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // notification_recipient_response->gender
    if(notification_recipient_response->gender != sirqul_iot_platform_notification_recipient_response_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", notification_recipient_response_gender_ToString(notification_recipient_response->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // notification_recipient_response->contact_email
    if(notification_recipient_response->contact_email) {
    if(cJSON_AddStringToObject(item, "contactEmail", notification_recipient_response->contact_email) == NULL) {
    goto fail; //String
    }
    }


    // notification_recipient_response->application_id
    if(notification_recipient_response->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", notification_recipient_response->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response->app_name
    if(notification_recipient_response->app_name) {
    if(cJSON_AddStringToObject(item, "appName", notification_recipient_response->app_name) == NULL) {
    goto fail; //String
    }
    }


    // notification_recipient_response->has_apns
    if(notification_recipient_response->has_apns) {
    if(cJSON_AddBoolToObject(item, "hasApns", notification_recipient_response->has_apns) == NULL) {
    goto fail; //Bool
    }
    }


    // notification_recipient_response->has_gcm
    if(notification_recipient_response->has_gcm) {
    if(cJSON_AddBoolToObject(item, "hasGcm", notification_recipient_response->has_gcm) == NULL) {
    goto fail; //Bool
    }
    }


    // notification_recipient_response->has_email
    if(notification_recipient_response->has_email) {
    if(cJSON_AddBoolToObject(item, "hasEmail", notification_recipient_response->has_email) == NULL) {
    goto fail; //Bool
    }
    }


    // notification_recipient_response->has_sms
    if(notification_recipient_response->has_sms) {
    if(cJSON_AddBoolToObject(item, "hasSms", notification_recipient_response->has_sms) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

notification_recipient_response_t *notification_recipient_response_parseFromJSON(cJSON *notification_recipient_responseJSON){

    notification_recipient_response_t *notification_recipient_response_local_var = NULL;

    // notification_recipient_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // notification_recipient_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // notification_recipient_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // notification_recipient_response->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }

    // notification_recipient_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // notification_recipient_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_notification_recipient_response_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = notification_recipient_response_gender_FromString(gender->valuestring);
    }

    // notification_recipient_response->contact_email
    cJSON *contact_email = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "contactEmail");
    if (cJSON_IsNull(contact_email)) {
        contact_email = NULL;
    }
    if (contact_email) { 
    if(!cJSON_IsString(contact_email) && !cJSON_IsNull(contact_email))
    {
    goto end; //String
    }
    }

    // notification_recipient_response->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }

    // notification_recipient_response->has_apns
    cJSON *has_apns = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "hasApns");
    if (cJSON_IsNull(has_apns)) {
        has_apns = NULL;
    }
    if (has_apns) { 
    if(!cJSON_IsBool(has_apns))
    {
    goto end; //Bool
    }
    }

    // notification_recipient_response->has_gcm
    cJSON *has_gcm = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "hasGcm");
    if (cJSON_IsNull(has_gcm)) {
        has_gcm = NULL;
    }
    if (has_gcm) { 
    if(!cJSON_IsBool(has_gcm))
    {
    goto end; //Bool
    }
    }

    // notification_recipient_response->has_email
    cJSON *has_email = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "hasEmail");
    if (cJSON_IsNull(has_email)) {
        has_email = NULL;
    }
    if (has_email) { 
    if(!cJSON_IsBool(has_email))
    {
    goto end; //Bool
    }
    }

    // notification_recipient_response->has_sms
    cJSON *has_sms = cJSON_GetObjectItemCaseSensitive(notification_recipient_responseJSON, "hasSms");
    if (cJSON_IsNull(has_sms)) {
        has_sms = NULL;
    }
    if (has_sms) { 
    if(!cJSON_IsBool(has_sms))
    {
    goto end; //Bool
    }
    }


    notification_recipient_response_local_var = notification_recipient_response_create_internal (
        account_id ? account_id->valuedouble : 0,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        gender ? genderVariable : sirqul_iot_platform_notification_recipient_response_GENDER_NULL,
        contact_email && !cJSON_IsNull(contact_email) ? strdup(contact_email->valuestring) : NULL,
        application_id ? application_id->valuedouble : 0,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL,
        has_apns ? has_apns->valueint : 0,
        has_gcm ? has_gcm->valueint : 0,
        has_email ? has_email->valueint : 0,
        has_sms ? has_sms->valueint : 0
        );

    return notification_recipient_response_local_var;
end:
    return NULL;

}
