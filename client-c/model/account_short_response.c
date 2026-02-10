#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_short_response.h"


char* account_short_response_gender_ToString(sirqul_iot_platform_account_short_response_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_account_short_response_GENDER_e account_short_response_gender_FromString(char* gender){
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

static account_short_response_t *account_short_response_create_internal(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_account_short_response_GENDER_e gender,
    char *contact_email
    ) {
    account_short_response_t *account_short_response_local_var = malloc(sizeof(account_short_response_t));
    if (!account_short_response_local_var) {
        return NULL;
    }
    account_short_response_local_var->account_id = account_id;
    account_short_response_local_var->location_display = location_display;
    account_short_response_local_var->display = display;
    account_short_response_local_var->username = username;
    account_short_response_local_var->account_type = account_type;
    account_short_response_local_var->profile_image = profile_image;
    account_short_response_local_var->gender = gender;
    account_short_response_local_var->contact_email = contact_email;

    account_short_response_local_var->_library_owned = 1;
    return account_short_response_local_var;
}

__attribute__((deprecated)) account_short_response_t *account_short_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_account_short_response_GENDER_e gender,
    char *contact_email
    ) {
    return account_short_response_create_internal (
        account_id,
        location_display,
        display,
        username,
        account_type,
        profile_image,
        gender,
        contact_email
        );
}

void account_short_response_free(account_short_response_t *account_short_response) {
    if(NULL == account_short_response){
        return ;
    }
    if(account_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "account_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (account_short_response->location_display) {
        free(account_short_response->location_display);
        account_short_response->location_display = NULL;
    }
    if (account_short_response->display) {
        free(account_short_response->display);
        account_short_response->display = NULL;
    }
    if (account_short_response->username) {
        free(account_short_response->username);
        account_short_response->username = NULL;
    }
    if (account_short_response->account_type) {
        free(account_short_response->account_type);
        account_short_response->account_type = NULL;
    }
    if (account_short_response->profile_image) {
        free(account_short_response->profile_image);
        account_short_response->profile_image = NULL;
    }
    if (account_short_response->contact_email) {
        free(account_short_response->contact_email);
        account_short_response->contact_email = NULL;
    }
    free(account_short_response);
}

cJSON *account_short_response_convertToJSON(account_short_response_t *account_short_response) {
    cJSON *item = cJSON_CreateObject();

    // account_short_response->account_id
    if(account_short_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", account_short_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_short_response->location_display
    if(account_short_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", account_short_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // account_short_response->display
    if(account_short_response->display) {
    if(cJSON_AddStringToObject(item, "display", account_short_response->display) == NULL) {
    goto fail; //String
    }
    }


    // account_short_response->username
    if(account_short_response->username) {
    if(cJSON_AddStringToObject(item, "username", account_short_response->username) == NULL) {
    goto fail; //String
    }
    }


    // account_short_response->account_type
    if(account_short_response->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", account_short_response->account_type) == NULL) {
    goto fail; //String
    }
    }


    // account_short_response->profile_image
    if(account_short_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", account_short_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // account_short_response->gender
    if(account_short_response->gender != sirqul_iot_platform_account_short_response_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", account_short_response_gender_ToString(account_short_response->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // account_short_response->contact_email
    if(account_short_response->contact_email) {
    if(cJSON_AddStringToObject(item, "contactEmail", account_short_response->contact_email) == NULL) {
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

account_short_response_t *account_short_response_parseFromJSON(cJSON *account_short_responseJSON){

    account_short_response_t *account_short_response_local_var = NULL;

    // account_short_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // account_short_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // account_short_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // account_short_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // account_short_response->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }

    // account_short_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // account_short_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_account_short_response_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = account_short_response_gender_FromString(gender->valuestring);
    }

    // account_short_response->contact_email
    cJSON *contact_email = cJSON_GetObjectItemCaseSensitive(account_short_responseJSON, "contactEmail");
    if (cJSON_IsNull(contact_email)) {
        contact_email = NULL;
    }
    if (contact_email) { 
    if(!cJSON_IsString(contact_email) && !cJSON_IsNull(contact_email))
    {
    goto end; //String
    }
    }


    account_short_response_local_var = account_short_response_create_internal (
        account_id ? account_id->valuedouble : 0,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        gender ? genderVariable : sirqul_iot_platform_account_short_response_GENDER_NULL,
        contact_email && !cJSON_IsNull(contact_email) ? strdup(contact_email->valuestring) : NULL
        );

    return account_short_response_local_var;
end:
    return NULL;

}
