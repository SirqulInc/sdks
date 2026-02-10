#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_profile_info.h"


char* account_profile_info_gender_ToString(sirqul_iot_platform_account_profile_info_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_account_profile_info_GENDER_e account_profile_info_gender_FromString(char* gender){
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
char* account_profile_info_age_group_ToString(sirqul_iot_platform_account_profile_info_AGEGROUP_e age_group) {
    char* age_groupArray[] =  { "NULL", "AGE_0_13", "AGE_14_17", "AGE_18_22", "AGE_23_30", "AGE_31_54", "AGE_55_PLUS" };
    return age_groupArray[age_group];
}

sirqul_iot_platform_account_profile_info_AGEGROUP_e account_profile_info_age_group_FromString(char* age_group){
    int stringToReturn = 0;
    char *age_groupArray[] =  { "NULL", "AGE_0_13", "AGE_14_17", "AGE_18_22", "AGE_23_30", "AGE_31_54", "AGE_55_PLUS" };
    size_t sizeofArray = sizeof(age_groupArray) / sizeof(age_groupArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(age_group, age_groupArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* account_profile_info_preferred_gender_ToString(sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e preferred_gender) {
    char* preferred_genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return preferred_genderArray[preferred_gender];
}

sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e account_profile_info_preferred_gender_FromString(char* preferred_gender){
    int stringToReturn = 0;
    char *preferred_genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    size_t sizeofArray = sizeof(preferred_genderArray) / sizeof(preferred_genderArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(preferred_gender, preferred_genderArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* account_profile_info_development_platforms_ToString(sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_e development_platforms) {
    char *development_platformsArray[] =  { "NULL", "MAC", "WINDOWS", "IOS", "ANDROID", "WINDOWSPHONE", "KINDLE", "UNITY3D", "COCOS2D", "HTML5", "FACEBOOK" };
    return development_platformsArray[development_platforms - 1];
}

sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_e account_profile_info_development_platforms_FromString(char* development_platforms) {
    int stringToReturn = 0;
    char *development_platformsArray[] =  { "NULL", "MAC", "WINDOWS", "IOS", "ANDROID", "WINDOWSPHONE", "KINDLE", "UNITY3D", "COCOS2D", "HTML5", "FACEBOOK" };
    size_t sizeofArray = sizeof(development_platformsArray) / sizeof(development_platformsArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(development_platforms, development_platformsArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

static account_profile_info_t *account_profile_info_create_internal(
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
    ) {
    account_profile_info_t *account_profile_info_local_var = malloc(sizeof(account_profile_info_t));
    if (!account_profile_info_local_var) {
        return NULL;
    }
    account_profile_info_local_var->id = id;
    account_profile_info_local_var->created = created;
    account_profile_info_local_var->updated = updated;
    account_profile_info_local_var->active = active;
    account_profile_info_local_var->valid = valid;
    account_profile_info_local_var->account = account;
    account_profile_info_local_var->gender = gender;
    account_profile_info_local_var->birthday = birthday;
    account_profile_info_local_var->age_group = age_group;
    account_profile_info_local_var->preferred_min_age = preferred_min_age;
    account_profile_info_local_var->preferred_max_age = preferred_max_age;
    account_profile_info_local_var->preferred_min_height = preferred_min_height;
    account_profile_info_local_var->preferred_max_height = preferred_max_height;
    account_profile_info_local_var->preferred_gender = preferred_gender;
    account_profile_info_local_var->preferred_education = preferred_education;
    account_profile_info_local_var->preferred_education_index = preferred_education_index;
    account_profile_info_local_var->preferred_body_type = preferred_body_type;
    account_profile_info_local_var->preferred_ethnicity = preferred_ethnicity;
    account_profile_info_local_var->preferred_location = preferred_location;
    account_profile_info_local_var->preferred_location_range = preferred_location_range;
    account_profile_info_local_var->height = height;
    account_profile_info_local_var->height_index = height_index;
    account_profile_info_local_var->ethnicity = ethnicity;
    account_profile_info_local_var->body_type = body_type;
    account_profile_info_local_var->marital_status = marital_status;
    account_profile_info_local_var->children = children;
    account_profile_info_local_var->religion = religion;
    account_profile_info_local_var->education = education;
    account_profile_info_local_var->education_index = education_index;
    account_profile_info_local_var->smoke = smoke;
    account_profile_info_local_var->drink = drink;
    account_profile_info_local_var->companionship = companionship;
    account_profile_info_local_var->companionship_index = companionship_index;
    account_profile_info_local_var->development_platforms = development_platforms;
    account_profile_info_local_var->match_token = match_token;
    account_profile_info_local_var->match_string = match_string;
    account_profile_info_local_var->none_zero_match_token = none_zero_match_token;
    account_profile_info_local_var->preferred_max_birthday = preferred_max_birthday;
    account_profile_info_local_var->preferred_min_birthday = preferred_min_birthday;

    account_profile_info_local_var->_library_owned = 1;
    return account_profile_info_local_var;
}

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
    ) {
    return account_profile_info_create_internal (
        id,
        created,
        updated,
        active,
        valid,
        account,
        gender,
        birthday,
        age_group,
        preferred_min_age,
        preferred_max_age,
        preferred_min_height,
        preferred_max_height,
        preferred_gender,
        preferred_education,
        preferred_education_index,
        preferred_body_type,
        preferred_ethnicity,
        preferred_location,
        preferred_location_range,
        height,
        height_index,
        ethnicity,
        body_type,
        marital_status,
        children,
        religion,
        education,
        education_index,
        smoke,
        drink,
        companionship,
        companionship_index,
        development_platforms,
        match_token,
        match_string,
        none_zero_match_token,
        preferred_max_birthday,
        preferred_min_birthday
        );
}

void account_profile_info_free(account_profile_info_t *account_profile_info) {
    if(NULL == account_profile_info){
        return ;
    }
    if(account_profile_info->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "account_profile_info_free");
        return ;
    }
    listEntry_t *listEntry;
    if (account_profile_info->created) {
        free(account_profile_info->created);
        account_profile_info->created = NULL;
    }
    if (account_profile_info->updated) {
        free(account_profile_info->updated);
        account_profile_info->updated = NULL;
    }
    if (account_profile_info->account) {
        account_free(account_profile_info->account);
        account_profile_info->account = NULL;
    }
    if (account_profile_info->birthday) {
        free(account_profile_info->birthday);
        account_profile_info->birthday = NULL;
    }
    if (account_profile_info->preferred_education) {
        free(account_profile_info->preferred_education);
        account_profile_info->preferred_education = NULL;
    }
    if (account_profile_info->preferred_body_type) {
        free(account_profile_info->preferred_body_type);
        account_profile_info->preferred_body_type = NULL;
    }
    if (account_profile_info->preferred_ethnicity) {
        free(account_profile_info->preferred_ethnicity);
        account_profile_info->preferred_ethnicity = NULL;
    }
    if (account_profile_info->preferred_location) {
        free(account_profile_info->preferred_location);
        account_profile_info->preferred_location = NULL;
    }
    if (account_profile_info->height) {
        free(account_profile_info->height);
        account_profile_info->height = NULL;
    }
    if (account_profile_info->ethnicity) {
        free(account_profile_info->ethnicity);
        account_profile_info->ethnicity = NULL;
    }
    if (account_profile_info->body_type) {
        free(account_profile_info->body_type);
        account_profile_info->body_type = NULL;
    }
    if (account_profile_info->marital_status) {
        free(account_profile_info->marital_status);
        account_profile_info->marital_status = NULL;
    }
    if (account_profile_info->children) {
        free(account_profile_info->children);
        account_profile_info->children = NULL;
    }
    if (account_profile_info->religion) {
        free(account_profile_info->religion);
        account_profile_info->religion = NULL;
    }
    if (account_profile_info->education) {
        free(account_profile_info->education);
        account_profile_info->education = NULL;
    }
    if (account_profile_info->smoke) {
        free(account_profile_info->smoke);
        account_profile_info->smoke = NULL;
    }
    if (account_profile_info->drink) {
        free(account_profile_info->drink);
        account_profile_info->drink = NULL;
    }
    if (account_profile_info->companionship) {
        free(account_profile_info->companionship);
        account_profile_info->companionship = NULL;
    }
    if (account_profile_info->development_platforms) {
        list_ForEach(listEntry, account_profile_info->development_platforms) {
            free(listEntry->data);
        }
        list_freeList(account_profile_info->development_platforms);
        account_profile_info->development_platforms = NULL;
    }
    if (account_profile_info->match_string) {
        free(account_profile_info->match_string);
        account_profile_info->match_string = NULL;
    }
    if (account_profile_info->preferred_max_birthday) {
        free(account_profile_info->preferred_max_birthday);
        account_profile_info->preferred_max_birthday = NULL;
    }
    if (account_profile_info->preferred_min_birthday) {
        free(account_profile_info->preferred_min_birthday);
        account_profile_info->preferred_min_birthday = NULL;
    }
    free(account_profile_info);
}

cJSON *account_profile_info_convertToJSON(account_profile_info_t *account_profile_info) {
    cJSON *item = cJSON_CreateObject();

    // account_profile_info->id
    if(account_profile_info->id) {
    if(cJSON_AddNumberToObject(item, "id", account_profile_info->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->created
    if(account_profile_info->created) {
    if(cJSON_AddStringToObject(item, "created", account_profile_info->created) == NULL) {
    goto fail; //Date-Time
    }
    }


    // account_profile_info->updated
    if(account_profile_info->updated) {
    if(cJSON_AddStringToObject(item, "updated", account_profile_info->updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // account_profile_info->active
    if(account_profile_info->active) {
    if(cJSON_AddBoolToObject(item, "active", account_profile_info->active) == NULL) {
    goto fail; //Bool
    }
    }


    // account_profile_info->valid
    if(account_profile_info->valid) {
    if(cJSON_AddBoolToObject(item, "valid", account_profile_info->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // account_profile_info->account
    if(account_profile_info->account) {
    cJSON *account_local_JSON = account_convertToJSON(account_profile_info->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account_profile_info->gender
    if(account_profile_info->gender != sirqul_iot_platform_account_profile_info_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", account_profile_info_gender_ToString(account_profile_info->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // account_profile_info->birthday
    if(account_profile_info->birthday) {
    if(cJSON_AddStringToObject(item, "birthday", account_profile_info->birthday) == NULL) {
    goto fail; //Date-Time
    }
    }


    // account_profile_info->age_group
    if(account_profile_info->age_group != sirqul_iot_platform_account_profile_info_AGEGROUP_NULL) {
    if(cJSON_AddStringToObject(item, "ageGroup", account_profile_info_age_group_ToString(account_profile_info->age_group)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // account_profile_info->preferred_min_age
    if(account_profile_info->preferred_min_age) {
    if(cJSON_AddNumberToObject(item, "preferredMinAge", account_profile_info->preferred_min_age) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->preferred_max_age
    if(account_profile_info->preferred_max_age) {
    if(cJSON_AddNumberToObject(item, "preferredMaxAge", account_profile_info->preferred_max_age) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->preferred_min_height
    if(account_profile_info->preferred_min_height) {
    if(cJSON_AddNumberToObject(item, "preferredMinHeight", account_profile_info->preferred_min_height) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->preferred_max_height
    if(account_profile_info->preferred_max_height) {
    if(cJSON_AddNumberToObject(item, "preferredMaxHeight", account_profile_info->preferred_max_height) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->preferred_gender
    if(account_profile_info->preferred_gender != sirqul_iot_platform_account_profile_info_PREFERREDGENDER_NULL) {
    if(cJSON_AddStringToObject(item, "preferredGender", account_profile_info_preferred_gender_ToString(account_profile_info->preferred_gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // account_profile_info->preferred_education
    if(account_profile_info->preferred_education) {
    if(cJSON_AddStringToObject(item, "preferredEducation", account_profile_info->preferred_education) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->preferred_education_index
    if(account_profile_info->preferred_education_index) {
    if(cJSON_AddNumberToObject(item, "preferredEducationIndex", account_profile_info->preferred_education_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->preferred_body_type
    if(account_profile_info->preferred_body_type) {
    if(cJSON_AddStringToObject(item, "preferredBodyType", account_profile_info->preferred_body_type) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->preferred_ethnicity
    if(account_profile_info->preferred_ethnicity) {
    if(cJSON_AddStringToObject(item, "preferredEthnicity", account_profile_info->preferred_ethnicity) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->preferred_location
    if(account_profile_info->preferred_location) {
    if(cJSON_AddStringToObject(item, "preferredLocation", account_profile_info->preferred_location) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->preferred_location_range
    if(account_profile_info->preferred_location_range) {
    if(cJSON_AddNumberToObject(item, "preferredLocationRange", account_profile_info->preferred_location_range) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->height
    if(account_profile_info->height) {
    if(cJSON_AddStringToObject(item, "height", account_profile_info->height) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->height_index
    if(account_profile_info->height_index) {
    if(cJSON_AddNumberToObject(item, "heightIndex", account_profile_info->height_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->ethnicity
    if(account_profile_info->ethnicity) {
    if(cJSON_AddStringToObject(item, "ethnicity", account_profile_info->ethnicity) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->body_type
    if(account_profile_info->body_type) {
    if(cJSON_AddStringToObject(item, "bodyType", account_profile_info->body_type) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->marital_status
    if(account_profile_info->marital_status) {
    if(cJSON_AddStringToObject(item, "maritalStatus", account_profile_info->marital_status) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->children
    if(account_profile_info->children) {
    if(cJSON_AddStringToObject(item, "children", account_profile_info->children) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->religion
    if(account_profile_info->religion) {
    if(cJSON_AddStringToObject(item, "religion", account_profile_info->religion) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->education
    if(account_profile_info->education) {
    if(cJSON_AddStringToObject(item, "education", account_profile_info->education) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->education_index
    if(account_profile_info->education_index) {
    if(cJSON_AddNumberToObject(item, "educationIndex", account_profile_info->education_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->smoke
    if(account_profile_info->smoke) {
    if(cJSON_AddStringToObject(item, "smoke", account_profile_info->smoke) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->drink
    if(account_profile_info->drink) {
    if(cJSON_AddStringToObject(item, "drink", account_profile_info->drink) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->companionship
    if(account_profile_info->companionship) {
    if(cJSON_AddStringToObject(item, "companionship", account_profile_info->companionship) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->companionship_index
    if(account_profile_info->companionship_index) {
    if(cJSON_AddNumberToObject(item, "companionshipIndex", account_profile_info->companionship_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->development_platforms
    if(account_profile_info->development_platforms != sirqul_iot_platform_account_profile_info_DEVELOPMENTPLATFORMS_NULL) {
    cJSON *development_platforms = cJSON_AddArrayToObject(item, "developmentPlatforms");
    if(development_platforms == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *development_platformsListEntry;
    list_ForEach(development_platformsListEntry, account_profile_info->development_platforms) {
    if(cJSON_AddStringToObject(development_platforms, "", development_platformsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // account_profile_info->match_token
    if(account_profile_info->match_token) {
    if(cJSON_AddNumberToObject(item, "matchToken", account_profile_info->match_token) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->match_string
    if(account_profile_info->match_string) {
    if(cJSON_AddStringToObject(item, "matchString", account_profile_info->match_string) == NULL) {
    goto fail; //String
    }
    }


    // account_profile_info->none_zero_match_token
    if(account_profile_info->none_zero_match_token) {
    if(cJSON_AddNumberToObject(item, "noneZeroMatchToken", account_profile_info->none_zero_match_token) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_profile_info->preferred_max_birthday
    if(account_profile_info->preferred_max_birthday) {
    if(cJSON_AddStringToObject(item, "preferredMaxBirthday", account_profile_info->preferred_max_birthday) == NULL) {
    goto fail; //Date-Time
    }
    }


    // account_profile_info->preferred_min_birthday
    if(account_profile_info->preferred_min_birthday) {
    if(cJSON_AddStringToObject(item, "preferredMinBirthday", account_profile_info->preferred_min_birthday) == NULL) {
    goto fail; //Date-Time
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

account_profile_info_t *account_profile_info_parseFromJSON(cJSON *account_profile_infoJSON){

    account_profile_info_t *account_profile_info_local_var = NULL;

    // define the local variable for account_profile_info->account
    account_t *account_local_nonprim = NULL;

    // define the local list for account_profile_info->development_platforms
    list_t *development_platformsList = NULL;

    // account_profile_info->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //DateTime
    }
    }

    // account_profile_info->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsString(updated) && !cJSON_IsNull(updated))
    {
    goto end; //DateTime
    }
    }

    // account_profile_info->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // account_profile_info->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // account_profile_info->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_parseFromJSON(account); //nonprimitive
    }

    // account_profile_info->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_account_profile_info_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = account_profile_info_gender_FromString(gender->valuestring);
    }

    // account_profile_info->birthday
    cJSON *birthday = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "birthday");
    if (cJSON_IsNull(birthday)) {
        birthday = NULL;
    }
    if (birthday) { 
    if(!cJSON_IsString(birthday) && !cJSON_IsNull(birthday))
    {
    goto end; //DateTime
    }
    }

    // account_profile_info->age_group
    cJSON *age_group = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "ageGroup");
    if (cJSON_IsNull(age_group)) {
        age_group = NULL;
    }
    sirqul_iot_platform_account_profile_info_AGEGROUP_e age_groupVariable;
    if (age_group) { 
    if(!cJSON_IsString(age_group))
    {
    goto end; //Enum
    }
    age_groupVariable = account_profile_info_age_group_FromString(age_group->valuestring);
    }

    // account_profile_info->preferred_min_age
    cJSON *preferred_min_age = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredMinAge");
    if (cJSON_IsNull(preferred_min_age)) {
        preferred_min_age = NULL;
    }
    if (preferred_min_age) { 
    if(!cJSON_IsNumber(preferred_min_age))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->preferred_max_age
    cJSON *preferred_max_age = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredMaxAge");
    if (cJSON_IsNull(preferred_max_age)) {
        preferred_max_age = NULL;
    }
    if (preferred_max_age) { 
    if(!cJSON_IsNumber(preferred_max_age))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->preferred_min_height
    cJSON *preferred_min_height = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredMinHeight");
    if (cJSON_IsNull(preferred_min_height)) {
        preferred_min_height = NULL;
    }
    if (preferred_min_height) { 
    if(!cJSON_IsNumber(preferred_min_height))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->preferred_max_height
    cJSON *preferred_max_height = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredMaxHeight");
    if (cJSON_IsNull(preferred_max_height)) {
        preferred_max_height = NULL;
    }
    if (preferred_max_height) { 
    if(!cJSON_IsNumber(preferred_max_height))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->preferred_gender
    cJSON *preferred_gender = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredGender");
    if (cJSON_IsNull(preferred_gender)) {
        preferred_gender = NULL;
    }
    sirqul_iot_platform_account_profile_info_PREFERREDGENDER_e preferred_genderVariable;
    if (preferred_gender) { 
    if(!cJSON_IsString(preferred_gender))
    {
    goto end; //Enum
    }
    preferred_genderVariable = account_profile_info_preferred_gender_FromString(preferred_gender->valuestring);
    }

    // account_profile_info->preferred_education
    cJSON *preferred_education = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredEducation");
    if (cJSON_IsNull(preferred_education)) {
        preferred_education = NULL;
    }
    if (preferred_education) { 
    if(!cJSON_IsString(preferred_education) && !cJSON_IsNull(preferred_education))
    {
    goto end; //String
    }
    }

    // account_profile_info->preferred_education_index
    cJSON *preferred_education_index = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredEducationIndex");
    if (cJSON_IsNull(preferred_education_index)) {
        preferred_education_index = NULL;
    }
    if (preferred_education_index) { 
    if(!cJSON_IsNumber(preferred_education_index))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->preferred_body_type
    cJSON *preferred_body_type = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredBodyType");
    if (cJSON_IsNull(preferred_body_type)) {
        preferred_body_type = NULL;
    }
    if (preferred_body_type) { 
    if(!cJSON_IsString(preferred_body_type) && !cJSON_IsNull(preferred_body_type))
    {
    goto end; //String
    }
    }

    // account_profile_info->preferred_ethnicity
    cJSON *preferred_ethnicity = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredEthnicity");
    if (cJSON_IsNull(preferred_ethnicity)) {
        preferred_ethnicity = NULL;
    }
    if (preferred_ethnicity) { 
    if(!cJSON_IsString(preferred_ethnicity) && !cJSON_IsNull(preferred_ethnicity))
    {
    goto end; //String
    }
    }

    // account_profile_info->preferred_location
    cJSON *preferred_location = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredLocation");
    if (cJSON_IsNull(preferred_location)) {
        preferred_location = NULL;
    }
    if (preferred_location) { 
    if(!cJSON_IsString(preferred_location) && !cJSON_IsNull(preferred_location))
    {
    goto end; //String
    }
    }

    // account_profile_info->preferred_location_range
    cJSON *preferred_location_range = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredLocationRange");
    if (cJSON_IsNull(preferred_location_range)) {
        preferred_location_range = NULL;
    }
    if (preferred_location_range) { 
    if(!cJSON_IsNumber(preferred_location_range))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsString(height) && !cJSON_IsNull(height))
    {
    goto end; //String
    }
    }

    // account_profile_info->height_index
    cJSON *height_index = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "heightIndex");
    if (cJSON_IsNull(height_index)) {
        height_index = NULL;
    }
    if (height_index) { 
    if(!cJSON_IsNumber(height_index))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->ethnicity
    cJSON *ethnicity = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "ethnicity");
    if (cJSON_IsNull(ethnicity)) {
        ethnicity = NULL;
    }
    if (ethnicity) { 
    if(!cJSON_IsString(ethnicity) && !cJSON_IsNull(ethnicity))
    {
    goto end; //String
    }
    }

    // account_profile_info->body_type
    cJSON *body_type = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "bodyType");
    if (cJSON_IsNull(body_type)) {
        body_type = NULL;
    }
    if (body_type) { 
    if(!cJSON_IsString(body_type) && !cJSON_IsNull(body_type))
    {
    goto end; //String
    }
    }

    // account_profile_info->marital_status
    cJSON *marital_status = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "maritalStatus");
    if (cJSON_IsNull(marital_status)) {
        marital_status = NULL;
    }
    if (marital_status) { 
    if(!cJSON_IsString(marital_status) && !cJSON_IsNull(marital_status))
    {
    goto end; //String
    }
    }

    // account_profile_info->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "children");
    if (cJSON_IsNull(children)) {
        children = NULL;
    }
    if (children) { 
    if(!cJSON_IsString(children) && !cJSON_IsNull(children))
    {
    goto end; //String
    }
    }

    // account_profile_info->religion
    cJSON *religion = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "religion");
    if (cJSON_IsNull(religion)) {
        religion = NULL;
    }
    if (religion) { 
    if(!cJSON_IsString(religion) && !cJSON_IsNull(religion))
    {
    goto end; //String
    }
    }

    // account_profile_info->education
    cJSON *education = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "education");
    if (cJSON_IsNull(education)) {
        education = NULL;
    }
    if (education) { 
    if(!cJSON_IsString(education) && !cJSON_IsNull(education))
    {
    goto end; //String
    }
    }

    // account_profile_info->education_index
    cJSON *education_index = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "educationIndex");
    if (cJSON_IsNull(education_index)) {
        education_index = NULL;
    }
    if (education_index) { 
    if(!cJSON_IsNumber(education_index))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->smoke
    cJSON *smoke = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "smoke");
    if (cJSON_IsNull(smoke)) {
        smoke = NULL;
    }
    if (smoke) { 
    if(!cJSON_IsString(smoke) && !cJSON_IsNull(smoke))
    {
    goto end; //String
    }
    }

    // account_profile_info->drink
    cJSON *drink = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "drink");
    if (cJSON_IsNull(drink)) {
        drink = NULL;
    }
    if (drink) { 
    if(!cJSON_IsString(drink) && !cJSON_IsNull(drink))
    {
    goto end; //String
    }
    }

    // account_profile_info->companionship
    cJSON *companionship = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "companionship");
    if (cJSON_IsNull(companionship)) {
        companionship = NULL;
    }
    if (companionship) { 
    if(!cJSON_IsString(companionship) && !cJSON_IsNull(companionship))
    {
    goto end; //String
    }
    }

    // account_profile_info->companionship_index
    cJSON *companionship_index = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "companionshipIndex");
    if (cJSON_IsNull(companionship_index)) {
        companionship_index = NULL;
    }
    if (companionship_index) { 
    if(!cJSON_IsNumber(companionship_index))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->development_platforms
    cJSON *development_platforms = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "developmentPlatforms");
    if (cJSON_IsNull(development_platforms)) {
        development_platforms = NULL;
    }
    if (development_platforms) { 
    cJSON *development_platforms_local = NULL;
    if(!cJSON_IsArray(development_platforms)) {
        goto end;//primitive container
    }
    development_platformsList = list_createList();

    cJSON_ArrayForEach(development_platforms_local, development_platforms)
    {
        if(!cJSON_IsString(development_platforms_local))
        {
            goto end;
        }
        list_addElement(development_platformsList , strdup(development_platforms_local->valuestring));
    }
    }

    // account_profile_info->match_token
    cJSON *match_token = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "matchToken");
    if (cJSON_IsNull(match_token)) {
        match_token = NULL;
    }
    if (match_token) { 
    if(!cJSON_IsNumber(match_token))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->match_string
    cJSON *match_string = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "matchString");
    if (cJSON_IsNull(match_string)) {
        match_string = NULL;
    }
    if (match_string) { 
    if(!cJSON_IsString(match_string) && !cJSON_IsNull(match_string))
    {
    goto end; //String
    }
    }

    // account_profile_info->none_zero_match_token
    cJSON *none_zero_match_token = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "noneZeroMatchToken");
    if (cJSON_IsNull(none_zero_match_token)) {
        none_zero_match_token = NULL;
    }
    if (none_zero_match_token) { 
    if(!cJSON_IsNumber(none_zero_match_token))
    {
    goto end; //Numeric
    }
    }

    // account_profile_info->preferred_max_birthday
    cJSON *preferred_max_birthday = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredMaxBirthday");
    if (cJSON_IsNull(preferred_max_birthday)) {
        preferred_max_birthday = NULL;
    }
    if (preferred_max_birthday) { 
    if(!cJSON_IsString(preferred_max_birthday) && !cJSON_IsNull(preferred_max_birthday))
    {
    goto end; //DateTime
    }
    }

    // account_profile_info->preferred_min_birthday
    cJSON *preferred_min_birthday = cJSON_GetObjectItemCaseSensitive(account_profile_infoJSON, "preferredMinBirthday");
    if (cJSON_IsNull(preferred_min_birthday)) {
        preferred_min_birthday = NULL;
    }
    if (preferred_min_birthday) { 
    if(!cJSON_IsString(preferred_min_birthday) && !cJSON_IsNull(preferred_min_birthday))
    {
    goto end; //DateTime
    }
    }


    account_profile_info_local_var = account_profile_info_create_internal (
        id ? id->valuedouble : 0,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        updated && !cJSON_IsNull(updated) ? strdup(updated->valuestring) : NULL,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        account ? account_local_nonprim : NULL,
        gender ? genderVariable : sirqul_iot_platform_account_profile_info_GENDER_NULL,
        birthday && !cJSON_IsNull(birthday) ? strdup(birthday->valuestring) : NULL,
        age_group ? age_groupVariable : sirqul_iot_platform_account_profile_info_AGEGROUP_NULL,
        preferred_min_age ? preferred_min_age->valuedouble : 0,
        preferred_max_age ? preferred_max_age->valuedouble : 0,
        preferred_min_height ? preferred_min_height->valuedouble : 0,
        preferred_max_height ? preferred_max_height->valuedouble : 0,
        preferred_gender ? preferred_genderVariable : sirqul_iot_platform_account_profile_info_PREFERREDGENDER_NULL,
        preferred_education && !cJSON_IsNull(preferred_education) ? strdup(preferred_education->valuestring) : NULL,
        preferred_education_index ? preferred_education_index->valuedouble : 0,
        preferred_body_type && !cJSON_IsNull(preferred_body_type) ? strdup(preferred_body_type->valuestring) : NULL,
        preferred_ethnicity && !cJSON_IsNull(preferred_ethnicity) ? strdup(preferred_ethnicity->valuestring) : NULL,
        preferred_location && !cJSON_IsNull(preferred_location) ? strdup(preferred_location->valuestring) : NULL,
        preferred_location_range ? preferred_location_range->valuedouble : 0,
        height && !cJSON_IsNull(height) ? strdup(height->valuestring) : NULL,
        height_index ? height_index->valuedouble : 0,
        ethnicity && !cJSON_IsNull(ethnicity) ? strdup(ethnicity->valuestring) : NULL,
        body_type && !cJSON_IsNull(body_type) ? strdup(body_type->valuestring) : NULL,
        marital_status && !cJSON_IsNull(marital_status) ? strdup(marital_status->valuestring) : NULL,
        children && !cJSON_IsNull(children) ? strdup(children->valuestring) : NULL,
        religion && !cJSON_IsNull(religion) ? strdup(religion->valuestring) : NULL,
        education && !cJSON_IsNull(education) ? strdup(education->valuestring) : NULL,
        education_index ? education_index->valuedouble : 0,
        smoke && !cJSON_IsNull(smoke) ? strdup(smoke->valuestring) : NULL,
        drink && !cJSON_IsNull(drink) ? strdup(drink->valuestring) : NULL,
        companionship && !cJSON_IsNull(companionship) ? strdup(companionship->valuestring) : NULL,
        companionship_index ? companionship_index->valuedouble : 0,
        development_platforms ? development_platformsList : NULL,
        match_token ? match_token->valuedouble : 0,
        match_string && !cJSON_IsNull(match_string) ? strdup(match_string->valuestring) : NULL,
        none_zero_match_token ? none_zero_match_token->valuedouble : 0,
        preferred_max_birthday && !cJSON_IsNull(preferred_max_birthday) ? strdup(preferred_max_birthday->valuestring) : NULL,
        preferred_min_birthday && !cJSON_IsNull(preferred_min_birthday) ? strdup(preferred_min_birthday->valuestring) : NULL
        );

    return account_profile_info_local_var;
end:
    if (account_local_nonprim) {
        account_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    if (development_platformsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, development_platformsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(development_platformsList);
        development_platformsList = NULL;
    }
    return NULL;

}
