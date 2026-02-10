#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "employee_response.h"


char* employee_response_gender_ToString(sirqul_iot_platform_employee_response_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_employee_response_GENDER_e employee_response_gender_FromString(char* gender){
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

static employee_response_t *employee_response_create_internal(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_employee_response_GENDER_e gender,
    char *contact_email,
    contact_response_t *contact,
    account_mini_response_t *manager,
    int active,
    list_t *locations,
    int has_delegate_access,
    double latitude,
    double longitude,
    long location_last_updated,
    int location_count
    ) {
    employee_response_t *employee_response_local_var = malloc(sizeof(employee_response_t));
    if (!employee_response_local_var) {
        return NULL;
    }
    employee_response_local_var->account_id = account_id;
    employee_response_local_var->location_display = location_display;
    employee_response_local_var->display = display;
    employee_response_local_var->username = username;
    employee_response_local_var->account_type = account_type;
    employee_response_local_var->profile_image = profile_image;
    employee_response_local_var->gender = gender;
    employee_response_local_var->contact_email = contact_email;
    employee_response_local_var->contact = contact;
    employee_response_local_var->manager = manager;
    employee_response_local_var->active = active;
    employee_response_local_var->locations = locations;
    employee_response_local_var->has_delegate_access = has_delegate_access;
    employee_response_local_var->latitude = latitude;
    employee_response_local_var->longitude = longitude;
    employee_response_local_var->location_last_updated = location_last_updated;
    employee_response_local_var->location_count = location_count;

    employee_response_local_var->_library_owned = 1;
    return employee_response_local_var;
}

__attribute__((deprecated)) employee_response_t *employee_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_employee_response_GENDER_e gender,
    char *contact_email,
    contact_response_t *contact,
    account_mini_response_t *manager,
    int active,
    list_t *locations,
    int has_delegate_access,
    double latitude,
    double longitude,
    long location_last_updated,
    int location_count
    ) {
    return employee_response_create_internal (
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
        active,
        locations,
        has_delegate_access,
        latitude,
        longitude,
        location_last_updated,
        location_count
        );
}

void employee_response_free(employee_response_t *employee_response) {
    if(NULL == employee_response){
        return ;
    }
    if(employee_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "employee_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (employee_response->location_display) {
        free(employee_response->location_display);
        employee_response->location_display = NULL;
    }
    if (employee_response->display) {
        free(employee_response->display);
        employee_response->display = NULL;
    }
    if (employee_response->username) {
        free(employee_response->username);
        employee_response->username = NULL;
    }
    if (employee_response->account_type) {
        free(employee_response->account_type);
        employee_response->account_type = NULL;
    }
    if (employee_response->profile_image) {
        free(employee_response->profile_image);
        employee_response->profile_image = NULL;
    }
    if (employee_response->contact_email) {
        free(employee_response->contact_email);
        employee_response->contact_email = NULL;
    }
    if (employee_response->contact) {
        contact_response_free(employee_response->contact);
        employee_response->contact = NULL;
    }
    if (employee_response->manager) {
        account_mini_response_free(employee_response->manager);
        employee_response->manager = NULL;
    }
    if (employee_response->locations) {
        list_ForEach(listEntry, employee_response->locations) {
            retailer_location_short_response_free(listEntry->data);
        }
        list_freeList(employee_response->locations);
        employee_response->locations = NULL;
    }
    free(employee_response);
}

cJSON *employee_response_convertToJSON(employee_response_t *employee_response) {
    cJSON *item = cJSON_CreateObject();

    // employee_response->account_id
    if(employee_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", employee_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // employee_response->location_display
    if(employee_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", employee_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // employee_response->display
    if(employee_response->display) {
    if(cJSON_AddStringToObject(item, "display", employee_response->display) == NULL) {
    goto fail; //String
    }
    }


    // employee_response->username
    if(employee_response->username) {
    if(cJSON_AddStringToObject(item, "username", employee_response->username) == NULL) {
    goto fail; //String
    }
    }


    // employee_response->account_type
    if(employee_response->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", employee_response->account_type) == NULL) {
    goto fail; //String
    }
    }


    // employee_response->profile_image
    if(employee_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", employee_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // employee_response->gender
    if(employee_response->gender != sirqul_iot_platform_employee_response_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", employee_response_gender_ToString(employee_response->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // employee_response->contact_email
    if(employee_response->contact_email) {
    if(cJSON_AddStringToObject(item, "contactEmail", employee_response->contact_email) == NULL) {
    goto fail; //String
    }
    }


    // employee_response->contact
    if(employee_response->contact) {
    cJSON *contact_local_JSON = contact_response_convertToJSON(employee_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // employee_response->manager
    if(employee_response->manager) {
    cJSON *manager_local_JSON = account_mini_response_convertToJSON(employee_response->manager);
    if(manager_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "manager", manager_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // employee_response->active
    if(employee_response->active) {
    if(cJSON_AddBoolToObject(item, "active", employee_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // employee_response->locations
    if(employee_response->locations) {
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (employee_response->locations) {
    list_ForEach(locationsListEntry, employee_response->locations) {
    cJSON *itemLocal = retailer_location_short_response_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }
    }


    // employee_response->has_delegate_access
    if(employee_response->has_delegate_access) {
    if(cJSON_AddBoolToObject(item, "hasDelegateAccess", employee_response->has_delegate_access) == NULL) {
    goto fail; //Bool
    }
    }


    // employee_response->latitude
    if(employee_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", employee_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // employee_response->longitude
    if(employee_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", employee_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // employee_response->location_last_updated
    if(employee_response->location_last_updated) {
    if(cJSON_AddNumberToObject(item, "locationLastUpdated", employee_response->location_last_updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // employee_response->location_count
    if(employee_response->location_count) {
    if(cJSON_AddNumberToObject(item, "locationCount", employee_response->location_count) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

employee_response_t *employee_response_parseFromJSON(cJSON *employee_responseJSON){

    employee_response_t *employee_response_local_var = NULL;

    // define the local variable for employee_response->contact
    contact_response_t *contact_local_nonprim = NULL;

    // define the local variable for employee_response->manager
    account_mini_response_t *manager_local_nonprim = NULL;

    // define the local list for employee_response->locations
    list_t *locationsList = NULL;

    // employee_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // employee_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // employee_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // employee_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // employee_response->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }

    // employee_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // employee_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_employee_response_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = employee_response_gender_FromString(gender->valuestring);
    }

    // employee_response->contact_email
    cJSON *contact_email = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "contactEmail");
    if (cJSON_IsNull(contact_email)) {
        contact_email = NULL;
    }
    if (contact_email) { 
    if(!cJSON_IsString(contact_email) && !cJSON_IsNull(contact_email))
    {
    goto end; //String
    }
    }

    // employee_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_response_parseFromJSON(contact); //nonprimitive
    }

    // employee_response->manager
    cJSON *manager = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "manager");
    if (cJSON_IsNull(manager)) {
        manager = NULL;
    }
    if (manager) { 
    manager_local_nonprim = account_mini_response_parseFromJSON(manager); //nonprimitive
    }

    // employee_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // employee_response->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "locations");
    if (cJSON_IsNull(locations)) {
        locations = NULL;
    }
    if (locations) { 
    cJSON *locations_local_nonprimitive = NULL;
    if(!cJSON_IsArray(locations)){
        goto end; //nonprimitive container
    }

    locationsList = list_createList();

    cJSON_ArrayForEach(locations_local_nonprimitive,locations )
    {
        if(!cJSON_IsObject(locations_local_nonprimitive)){
            goto end;
        }
        retailer_location_short_response_t *locationsItem = retailer_location_short_response_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }
    }

    // employee_response->has_delegate_access
    cJSON *has_delegate_access = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "hasDelegateAccess");
    if (cJSON_IsNull(has_delegate_access)) {
        has_delegate_access = NULL;
    }
    if (has_delegate_access) { 
    if(!cJSON_IsBool(has_delegate_access))
    {
    goto end; //Bool
    }
    }

    // employee_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // employee_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // employee_response->location_last_updated
    cJSON *location_last_updated = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "locationLastUpdated");
    if (cJSON_IsNull(location_last_updated)) {
        location_last_updated = NULL;
    }
    if (location_last_updated) { 
    if(!cJSON_IsNumber(location_last_updated))
    {
    goto end; //Numeric
    }
    }

    // employee_response->location_count
    cJSON *location_count = cJSON_GetObjectItemCaseSensitive(employee_responseJSON, "locationCount");
    if (cJSON_IsNull(location_count)) {
        location_count = NULL;
    }
    if (location_count) { 
    if(!cJSON_IsNumber(location_count))
    {
    goto end; //Numeric
    }
    }


    employee_response_local_var = employee_response_create_internal (
        account_id ? account_id->valuedouble : 0,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        gender ? genderVariable : sirqul_iot_platform_employee_response_GENDER_NULL,
        contact_email && !cJSON_IsNull(contact_email) ? strdup(contact_email->valuestring) : NULL,
        contact ? contact_local_nonprim : NULL,
        manager ? manager_local_nonprim : NULL,
        active ? active->valueint : 0,
        locations ? locationsList : NULL,
        has_delegate_access ? has_delegate_access->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_last_updated ? location_last_updated->valuedouble : 0,
        location_count ? location_count->valuedouble : 0
        );

    return employee_response_local_var;
end:
    if (contact_local_nonprim) {
        contact_response_free(contact_local_nonprim);
        contact_local_nonprim = NULL;
    }
    if (manager_local_nonprim) {
        account_mini_response_free(manager_local_nonprim);
        manager_local_nonprim = NULL;
    }
    if (locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, locationsList) {
            retailer_location_short_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(locationsList);
        locationsList = NULL;
    }
    return NULL;

}
