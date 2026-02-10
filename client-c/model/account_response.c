#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_response.h"


char* account_response_gender_ToString(sirqul_iot_platform_account_response_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_account_response_GENDER_e account_response_gender_FromString(char* gender){
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

static account_response_t *account_response_create_internal(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_account_response_GENDER_e gender,
    char *contact_email,
    contact_response_t *contact,
    account_mini_response_t *manager,
    int active
    ) {
    account_response_t *account_response_local_var = malloc(sizeof(account_response_t));
    if (!account_response_local_var) {
        return NULL;
    }
    account_response_local_var->account_id = account_id;
    account_response_local_var->location_display = location_display;
    account_response_local_var->display = display;
    account_response_local_var->username = username;
    account_response_local_var->account_type = account_type;
    account_response_local_var->profile_image = profile_image;
    account_response_local_var->gender = gender;
    account_response_local_var->contact_email = contact_email;
    account_response_local_var->contact = contact;
    account_response_local_var->manager = manager;
    account_response_local_var->active = active;

    account_response_local_var->_library_owned = 1;
    return account_response_local_var;
}

__attribute__((deprecated)) account_response_t *account_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_account_response_GENDER_e gender,
    char *contact_email,
    contact_response_t *contact,
    account_mini_response_t *manager,
    int active
    ) {
    return account_response_create_internal (
        account_id,
        location_display,
        display,
        username,
        account_type,
        profile_image,
        gender,
        contact_email,
        contact,
        manager,
        active
        );
}

void account_response_free(account_response_t *account_response) {
    if(NULL == account_response){
        return ;
    }
    if(account_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "account_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (account_response->location_display) {
        free(account_response->location_display);
        account_response->location_display = NULL;
    }
    if (account_response->display) {
        free(account_response->display);
        account_response->display = NULL;
    }
    if (account_response->username) {
        free(account_response->username);
        account_response->username = NULL;
    }
    if (account_response->account_type) {
        free(account_response->account_type);
        account_response->account_type = NULL;
    }
    if (account_response->profile_image) {
        free(account_response->profile_image);
        account_response->profile_image = NULL;
    }
    if (account_response->contact_email) {
        free(account_response->contact_email);
        account_response->contact_email = NULL;
    }
    if (account_response->contact) {
        contact_response_free(account_response->contact);
        account_response->contact = NULL;
    }
    if (account_response->manager) {
        account_mini_response_free(account_response->manager);
        account_response->manager = NULL;
    }
    free(account_response);
}

cJSON *account_response_convertToJSON(account_response_t *account_response) {
    cJSON *item = cJSON_CreateObject();

    // account_response->account_id
    if(account_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", account_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_response->location_display
    if(account_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", account_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // account_response->display
    if(account_response->display) {
    if(cJSON_AddStringToObject(item, "display", account_response->display) == NULL) {
    goto fail; //String
    }
    }


    // account_response->username
    if(account_response->username) {
    if(cJSON_AddStringToObject(item, "username", account_response->username) == NULL) {
    goto fail; //String
    }
    }


    // account_response->account_type
    if(account_response->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", account_response->account_type) == NULL) {
    goto fail; //String
    }
    }


    // account_response->profile_image
    if(account_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", account_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // account_response->gender
    if(account_response->gender != sirqul_iot_platform_account_response_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", account_response_gender_ToString(account_response->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // account_response->contact_email
    if(account_response->contact_email) {
    if(cJSON_AddStringToObject(item, "contactEmail", account_response->contact_email) == NULL) {
    goto fail; //String
    }
    }


    // account_response->contact
    if(account_response->contact) {
    cJSON *contact_local_JSON = contact_response_convertToJSON(account_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account_response->manager
    if(account_response->manager) {
    cJSON *manager_local_JSON = account_mini_response_convertToJSON(account_response->manager);
    if(manager_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "manager", manager_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account_response->active
    if(account_response->active) {
    if(cJSON_AddBoolToObject(item, "active", account_response->active) == NULL) {
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

account_response_t *account_response_parseFromJSON(cJSON *account_responseJSON){

    account_response_t *account_response_local_var = NULL;

    // define the local variable for account_response->contact
    contact_response_t *contact_local_nonprim = NULL;

    // define the local variable for account_response->manager
    account_mini_response_t *manager_local_nonprim = NULL;

    // account_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // account_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // account_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // account_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // account_response->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }

    // account_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // account_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_account_response_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = account_response_gender_FromString(gender->valuestring);
    }

    // account_response->contact_email
    cJSON *contact_email = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "contactEmail");
    if (cJSON_IsNull(contact_email)) {
        contact_email = NULL;
    }
    if (contact_email) { 
    if(!cJSON_IsString(contact_email) && !cJSON_IsNull(contact_email))
    {
    goto end; //String
    }
    }

    // account_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_response_parseFromJSON(contact); //nonprimitive
    }

    // account_response->manager
    cJSON *manager = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "manager");
    if (cJSON_IsNull(manager)) {
        manager = NULL;
    }
    if (manager) { 
    manager_local_nonprim = account_mini_response_parseFromJSON(manager); //nonprimitive
    }

    // account_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(account_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }


    account_response_local_var = account_response_create_internal (
        account_id ? account_id->valuedouble : 0,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        gender ? genderVariable : sirqul_iot_platform_account_response_GENDER_NULL,
        contact_email && !cJSON_IsNull(contact_email) ? strdup(contact_email->valuestring) : NULL,
        contact ? contact_local_nonprim : NULL,
        manager ? manager_local_nonprim : NULL,
        active ? active->valueint : 0
        );

    return account_response_local_var;
end:
    if (contact_local_nonprim) {
        contact_response_free(contact_local_nonprim);
        contact_local_nonprim = NULL;
    }
    if (manager_local_nonprim) {
        account_mini_response_free(manager_local_nonprim);
        manager_local_nonprim = NULL;
    }
    return NULL;

}
