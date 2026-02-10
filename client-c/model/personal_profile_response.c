#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "personal_profile_response.h"


char* personal_profile_response_preferred_gender_ToString(sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e preferred_gender) {
    char* preferred_genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return preferred_genderArray[preferred_gender];
}

sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e personal_profile_response_preferred_gender_FromString(char* preferred_gender){
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
char* personal_profile_response_gender_ToString(sirqul_iot_platform_personal_profile_response_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_personal_profile_response_GENDER_e personal_profile_response_gender_FromString(char* gender){
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

static personal_profile_response_t *personal_profile_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e preferred_gender,
    char *preferred_ethnicity,
    char *preferred_education,
    int preferred_education_index,
    char *preferred_body_type,
    int preferred_min_age,
    int preferred_max_age,
    int preferred_min_height,
    int preferred_max_height,
    double preferred_location_range,
    sirqul_iot_platform_personal_profile_response_GENDER_e gender,
    char *hometown,
    char *height,
    int height_index,
    char *ethnicity,
    char *body_type,
    char *children,
    char *companionship,
    int companionship_index,
    char *drink,
    char *education,
    int education_index,
    char *marital_status,
    char *smoke,
    char *religion,
    long birthday,
    char *returning
    ) {
    personal_profile_response_t *personal_profile_response_local_var = malloc(sizeof(personal_profile_response_t));
    if (!personal_profile_response_local_var) {
        return NULL;
    }
    personal_profile_response_local_var->valid = valid;
    personal_profile_response_local_var->message = message;
    personal_profile_response_local_var->version = version;
    personal_profile_response_local_var->serialize_nulls = serialize_nulls;
    personal_profile_response_local_var->start_time_log = start_time_log;
    personal_profile_response_local_var->error_code = error_code;
    personal_profile_response_local_var->request = request;
    personal_profile_response_local_var->preferred_gender = preferred_gender;
    personal_profile_response_local_var->preferred_ethnicity = preferred_ethnicity;
    personal_profile_response_local_var->preferred_education = preferred_education;
    personal_profile_response_local_var->preferred_education_index = preferred_education_index;
    personal_profile_response_local_var->preferred_body_type = preferred_body_type;
    personal_profile_response_local_var->preferred_min_age = preferred_min_age;
    personal_profile_response_local_var->preferred_max_age = preferred_max_age;
    personal_profile_response_local_var->preferred_min_height = preferred_min_height;
    personal_profile_response_local_var->preferred_max_height = preferred_max_height;
    personal_profile_response_local_var->preferred_location_range = preferred_location_range;
    personal_profile_response_local_var->gender = gender;
    personal_profile_response_local_var->hometown = hometown;
    personal_profile_response_local_var->height = height;
    personal_profile_response_local_var->height_index = height_index;
    personal_profile_response_local_var->ethnicity = ethnicity;
    personal_profile_response_local_var->body_type = body_type;
    personal_profile_response_local_var->children = children;
    personal_profile_response_local_var->companionship = companionship;
    personal_profile_response_local_var->companionship_index = companionship_index;
    personal_profile_response_local_var->drink = drink;
    personal_profile_response_local_var->education = education;
    personal_profile_response_local_var->education_index = education_index;
    personal_profile_response_local_var->marital_status = marital_status;
    personal_profile_response_local_var->smoke = smoke;
    personal_profile_response_local_var->religion = religion;
    personal_profile_response_local_var->birthday = birthday;
    personal_profile_response_local_var->returning = returning;

    personal_profile_response_local_var->_library_owned = 1;
    return personal_profile_response_local_var;
}

__attribute__((deprecated)) personal_profile_response_t *personal_profile_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e preferred_gender,
    char *preferred_ethnicity,
    char *preferred_education,
    int preferred_education_index,
    char *preferred_body_type,
    int preferred_min_age,
    int preferred_max_age,
    int preferred_min_height,
    int preferred_max_height,
    double preferred_location_range,
    sirqul_iot_platform_personal_profile_response_GENDER_e gender,
    char *hometown,
    char *height,
    int height_index,
    char *ethnicity,
    char *body_type,
    char *children,
    char *companionship,
    int companionship_index,
    char *drink,
    char *education,
    int education_index,
    char *marital_status,
    char *smoke,
    char *religion,
    long birthday,
    char *returning
    ) {
    return personal_profile_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        preferred_gender,
        preferred_ethnicity,
        preferred_education,
        preferred_education_index,
        preferred_body_type,
        preferred_min_age,
        preferred_max_age,
        preferred_min_height,
        preferred_max_height,
        preferred_location_range,
        gender,
        hometown,
        height,
        height_index,
        ethnicity,
        body_type,
        children,
        companionship,
        companionship_index,
        drink,
        education,
        education_index,
        marital_status,
        smoke,
        religion,
        birthday,
        returning
        );
}

void personal_profile_response_free(personal_profile_response_t *personal_profile_response) {
    if(NULL == personal_profile_response){
        return ;
    }
    if(personal_profile_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "personal_profile_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (personal_profile_response->message) {
        free(personal_profile_response->message);
        personal_profile_response->message = NULL;
    }
    if (personal_profile_response->error_code) {
        free(personal_profile_response->error_code);
        personal_profile_response->error_code = NULL;
    }
    if (personal_profile_response->request) {
        list_ForEach(listEntry, personal_profile_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(personal_profile_response->request);
        personal_profile_response->request = NULL;
    }
    if (personal_profile_response->preferred_ethnicity) {
        free(personal_profile_response->preferred_ethnicity);
        personal_profile_response->preferred_ethnicity = NULL;
    }
    if (personal_profile_response->preferred_education) {
        free(personal_profile_response->preferred_education);
        personal_profile_response->preferred_education = NULL;
    }
    if (personal_profile_response->preferred_body_type) {
        free(personal_profile_response->preferred_body_type);
        personal_profile_response->preferred_body_type = NULL;
    }
    if (personal_profile_response->hometown) {
        free(personal_profile_response->hometown);
        personal_profile_response->hometown = NULL;
    }
    if (personal_profile_response->height) {
        free(personal_profile_response->height);
        personal_profile_response->height = NULL;
    }
    if (personal_profile_response->ethnicity) {
        free(personal_profile_response->ethnicity);
        personal_profile_response->ethnicity = NULL;
    }
    if (personal_profile_response->body_type) {
        free(personal_profile_response->body_type);
        personal_profile_response->body_type = NULL;
    }
    if (personal_profile_response->children) {
        free(personal_profile_response->children);
        personal_profile_response->children = NULL;
    }
    if (personal_profile_response->companionship) {
        free(personal_profile_response->companionship);
        personal_profile_response->companionship = NULL;
    }
    if (personal_profile_response->drink) {
        free(personal_profile_response->drink);
        personal_profile_response->drink = NULL;
    }
    if (personal_profile_response->education) {
        free(personal_profile_response->education);
        personal_profile_response->education = NULL;
    }
    if (personal_profile_response->marital_status) {
        free(personal_profile_response->marital_status);
        personal_profile_response->marital_status = NULL;
    }
    if (personal_profile_response->smoke) {
        free(personal_profile_response->smoke);
        personal_profile_response->smoke = NULL;
    }
    if (personal_profile_response->religion) {
        free(personal_profile_response->religion);
        personal_profile_response->religion = NULL;
    }
    if (personal_profile_response->returning) {
        free(personal_profile_response->returning);
        personal_profile_response->returning = NULL;
    }
    free(personal_profile_response);
}

cJSON *personal_profile_response_convertToJSON(personal_profile_response_t *personal_profile_response) {
    cJSON *item = cJSON_CreateObject();

    // personal_profile_response->valid
    if(personal_profile_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", personal_profile_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // personal_profile_response->message
    if(personal_profile_response->message) {
    if(cJSON_AddStringToObject(item, "message", personal_profile_response->message) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->version
    if(personal_profile_response->version) {
    if(cJSON_AddNumberToObject(item, "version", personal_profile_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->serialize_nulls
    if(personal_profile_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", personal_profile_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // personal_profile_response->start_time_log
    if(personal_profile_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", personal_profile_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->error_code
    if(personal_profile_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", personal_profile_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->request
    if(personal_profile_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (personal_profile_response->request) {
    list_ForEach(requestListEntry, personal_profile_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // personal_profile_response->preferred_gender
    if(personal_profile_response->preferred_gender != sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_NULL) {
    if(cJSON_AddStringToObject(item, "preferredGender", personal_profile_response_preferred_gender_ToString(personal_profile_response->preferred_gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // personal_profile_response->preferred_ethnicity
    if(personal_profile_response->preferred_ethnicity) {
    if(cJSON_AddStringToObject(item, "preferredEthnicity", personal_profile_response->preferred_ethnicity) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->preferred_education
    if(personal_profile_response->preferred_education) {
    if(cJSON_AddStringToObject(item, "preferredEducation", personal_profile_response->preferred_education) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->preferred_education_index
    if(personal_profile_response->preferred_education_index) {
    if(cJSON_AddNumberToObject(item, "preferredEducationIndex", personal_profile_response->preferred_education_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->preferred_body_type
    if(personal_profile_response->preferred_body_type) {
    if(cJSON_AddStringToObject(item, "preferredBodyType", personal_profile_response->preferred_body_type) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->preferred_min_age
    if(personal_profile_response->preferred_min_age) {
    if(cJSON_AddNumberToObject(item, "preferredMinAge", personal_profile_response->preferred_min_age) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->preferred_max_age
    if(personal_profile_response->preferred_max_age) {
    if(cJSON_AddNumberToObject(item, "preferredMaxAge", personal_profile_response->preferred_max_age) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->preferred_min_height
    if(personal_profile_response->preferred_min_height) {
    if(cJSON_AddNumberToObject(item, "preferredMinHeight", personal_profile_response->preferred_min_height) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->preferred_max_height
    if(personal_profile_response->preferred_max_height) {
    if(cJSON_AddNumberToObject(item, "preferredMaxHeight", personal_profile_response->preferred_max_height) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->preferred_location_range
    if(personal_profile_response->preferred_location_range) {
    if(cJSON_AddNumberToObject(item, "preferredLocationRange", personal_profile_response->preferred_location_range) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->gender
    if(personal_profile_response->gender != sirqul_iot_platform_personal_profile_response_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", personal_profile_response_gender_ToString(personal_profile_response->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // personal_profile_response->hometown
    if(personal_profile_response->hometown) {
    if(cJSON_AddStringToObject(item, "hometown", personal_profile_response->hometown) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->height
    if(personal_profile_response->height) {
    if(cJSON_AddStringToObject(item, "height", personal_profile_response->height) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->height_index
    if(personal_profile_response->height_index) {
    if(cJSON_AddNumberToObject(item, "heightIndex", personal_profile_response->height_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->ethnicity
    if(personal_profile_response->ethnicity) {
    if(cJSON_AddStringToObject(item, "ethnicity", personal_profile_response->ethnicity) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->body_type
    if(personal_profile_response->body_type) {
    if(cJSON_AddStringToObject(item, "bodyType", personal_profile_response->body_type) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->children
    if(personal_profile_response->children) {
    if(cJSON_AddStringToObject(item, "children", personal_profile_response->children) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->companionship
    if(personal_profile_response->companionship) {
    if(cJSON_AddStringToObject(item, "companionship", personal_profile_response->companionship) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->companionship_index
    if(personal_profile_response->companionship_index) {
    if(cJSON_AddNumberToObject(item, "companionshipIndex", personal_profile_response->companionship_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->drink
    if(personal_profile_response->drink) {
    if(cJSON_AddStringToObject(item, "drink", personal_profile_response->drink) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->education
    if(personal_profile_response->education) {
    if(cJSON_AddStringToObject(item, "education", personal_profile_response->education) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->education_index
    if(personal_profile_response->education_index) {
    if(cJSON_AddNumberToObject(item, "educationIndex", personal_profile_response->education_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->marital_status
    if(personal_profile_response->marital_status) {
    if(cJSON_AddStringToObject(item, "maritalStatus", personal_profile_response->marital_status) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->smoke
    if(personal_profile_response->smoke) {
    if(cJSON_AddStringToObject(item, "smoke", personal_profile_response->smoke) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->religion
    if(personal_profile_response->religion) {
    if(cJSON_AddStringToObject(item, "religion", personal_profile_response->religion) == NULL) {
    goto fail; //String
    }
    }


    // personal_profile_response->birthday
    if(personal_profile_response->birthday) {
    if(cJSON_AddNumberToObject(item, "birthday", personal_profile_response->birthday) == NULL) {
    goto fail; //Numeric
    }
    }


    // personal_profile_response->returning
    if(personal_profile_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", personal_profile_response->returning) == NULL) {
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

personal_profile_response_t *personal_profile_response_parseFromJSON(cJSON *personal_profile_responseJSON){

    personal_profile_response_t *personal_profile_response_local_var = NULL;

    // define the local list for personal_profile_response->request
    list_t *requestList = NULL;

    // personal_profile_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // personal_profile_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // personal_profile_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // personal_profile_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // personal_profile_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "request");
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

    // personal_profile_response->preferred_gender
    cJSON *preferred_gender = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredGender");
    if (cJSON_IsNull(preferred_gender)) {
        preferred_gender = NULL;
    }
    sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_e preferred_genderVariable;
    if (preferred_gender) { 
    if(!cJSON_IsString(preferred_gender))
    {
    goto end; //Enum
    }
    preferred_genderVariable = personal_profile_response_preferred_gender_FromString(preferred_gender->valuestring);
    }

    // personal_profile_response->preferred_ethnicity
    cJSON *preferred_ethnicity = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredEthnicity");
    if (cJSON_IsNull(preferred_ethnicity)) {
        preferred_ethnicity = NULL;
    }
    if (preferred_ethnicity) { 
    if(!cJSON_IsString(preferred_ethnicity) && !cJSON_IsNull(preferred_ethnicity))
    {
    goto end; //String
    }
    }

    // personal_profile_response->preferred_education
    cJSON *preferred_education = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredEducation");
    if (cJSON_IsNull(preferred_education)) {
        preferred_education = NULL;
    }
    if (preferred_education) { 
    if(!cJSON_IsString(preferred_education) && !cJSON_IsNull(preferred_education))
    {
    goto end; //String
    }
    }

    // personal_profile_response->preferred_education_index
    cJSON *preferred_education_index = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredEducationIndex");
    if (cJSON_IsNull(preferred_education_index)) {
        preferred_education_index = NULL;
    }
    if (preferred_education_index) { 
    if(!cJSON_IsNumber(preferred_education_index))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->preferred_body_type
    cJSON *preferred_body_type = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredBodyType");
    if (cJSON_IsNull(preferred_body_type)) {
        preferred_body_type = NULL;
    }
    if (preferred_body_type) { 
    if(!cJSON_IsString(preferred_body_type) && !cJSON_IsNull(preferred_body_type))
    {
    goto end; //String
    }
    }

    // personal_profile_response->preferred_min_age
    cJSON *preferred_min_age = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredMinAge");
    if (cJSON_IsNull(preferred_min_age)) {
        preferred_min_age = NULL;
    }
    if (preferred_min_age) { 
    if(!cJSON_IsNumber(preferred_min_age))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->preferred_max_age
    cJSON *preferred_max_age = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredMaxAge");
    if (cJSON_IsNull(preferred_max_age)) {
        preferred_max_age = NULL;
    }
    if (preferred_max_age) { 
    if(!cJSON_IsNumber(preferred_max_age))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->preferred_min_height
    cJSON *preferred_min_height = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredMinHeight");
    if (cJSON_IsNull(preferred_min_height)) {
        preferred_min_height = NULL;
    }
    if (preferred_min_height) { 
    if(!cJSON_IsNumber(preferred_min_height))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->preferred_max_height
    cJSON *preferred_max_height = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredMaxHeight");
    if (cJSON_IsNull(preferred_max_height)) {
        preferred_max_height = NULL;
    }
    if (preferred_max_height) { 
    if(!cJSON_IsNumber(preferred_max_height))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->preferred_location_range
    cJSON *preferred_location_range = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "preferredLocationRange");
    if (cJSON_IsNull(preferred_location_range)) {
        preferred_location_range = NULL;
    }
    if (preferred_location_range) { 
    if(!cJSON_IsNumber(preferred_location_range))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_personal_profile_response_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = personal_profile_response_gender_FromString(gender->valuestring);
    }

    // personal_profile_response->hometown
    cJSON *hometown = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "hometown");
    if (cJSON_IsNull(hometown)) {
        hometown = NULL;
    }
    if (hometown) { 
    if(!cJSON_IsString(hometown) && !cJSON_IsNull(hometown))
    {
    goto end; //String
    }
    }

    // personal_profile_response->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsString(height) && !cJSON_IsNull(height))
    {
    goto end; //String
    }
    }

    // personal_profile_response->height_index
    cJSON *height_index = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "heightIndex");
    if (cJSON_IsNull(height_index)) {
        height_index = NULL;
    }
    if (height_index) { 
    if(!cJSON_IsNumber(height_index))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->ethnicity
    cJSON *ethnicity = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "ethnicity");
    if (cJSON_IsNull(ethnicity)) {
        ethnicity = NULL;
    }
    if (ethnicity) { 
    if(!cJSON_IsString(ethnicity) && !cJSON_IsNull(ethnicity))
    {
    goto end; //String
    }
    }

    // personal_profile_response->body_type
    cJSON *body_type = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "bodyType");
    if (cJSON_IsNull(body_type)) {
        body_type = NULL;
    }
    if (body_type) { 
    if(!cJSON_IsString(body_type) && !cJSON_IsNull(body_type))
    {
    goto end; //String
    }
    }

    // personal_profile_response->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "children");
    if (cJSON_IsNull(children)) {
        children = NULL;
    }
    if (children) { 
    if(!cJSON_IsString(children) && !cJSON_IsNull(children))
    {
    goto end; //String
    }
    }

    // personal_profile_response->companionship
    cJSON *companionship = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "companionship");
    if (cJSON_IsNull(companionship)) {
        companionship = NULL;
    }
    if (companionship) { 
    if(!cJSON_IsString(companionship) && !cJSON_IsNull(companionship))
    {
    goto end; //String
    }
    }

    // personal_profile_response->companionship_index
    cJSON *companionship_index = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "companionshipIndex");
    if (cJSON_IsNull(companionship_index)) {
        companionship_index = NULL;
    }
    if (companionship_index) { 
    if(!cJSON_IsNumber(companionship_index))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->drink
    cJSON *drink = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "drink");
    if (cJSON_IsNull(drink)) {
        drink = NULL;
    }
    if (drink) { 
    if(!cJSON_IsString(drink) && !cJSON_IsNull(drink))
    {
    goto end; //String
    }
    }

    // personal_profile_response->education
    cJSON *education = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "education");
    if (cJSON_IsNull(education)) {
        education = NULL;
    }
    if (education) { 
    if(!cJSON_IsString(education) && !cJSON_IsNull(education))
    {
    goto end; //String
    }
    }

    // personal_profile_response->education_index
    cJSON *education_index = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "educationIndex");
    if (cJSON_IsNull(education_index)) {
        education_index = NULL;
    }
    if (education_index) { 
    if(!cJSON_IsNumber(education_index))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->marital_status
    cJSON *marital_status = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "maritalStatus");
    if (cJSON_IsNull(marital_status)) {
        marital_status = NULL;
    }
    if (marital_status) { 
    if(!cJSON_IsString(marital_status) && !cJSON_IsNull(marital_status))
    {
    goto end; //String
    }
    }

    // personal_profile_response->smoke
    cJSON *smoke = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "smoke");
    if (cJSON_IsNull(smoke)) {
        smoke = NULL;
    }
    if (smoke) { 
    if(!cJSON_IsString(smoke) && !cJSON_IsNull(smoke))
    {
    goto end; //String
    }
    }

    // personal_profile_response->religion
    cJSON *religion = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "religion");
    if (cJSON_IsNull(religion)) {
        religion = NULL;
    }
    if (religion) { 
    if(!cJSON_IsString(religion) && !cJSON_IsNull(religion))
    {
    goto end; //String
    }
    }

    // personal_profile_response->birthday
    cJSON *birthday = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "birthday");
    if (cJSON_IsNull(birthday)) {
        birthday = NULL;
    }
    if (birthday) { 
    if(!cJSON_IsNumber(birthday))
    {
    goto end; //Numeric
    }
    }

    // personal_profile_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(personal_profile_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    personal_profile_response_local_var = personal_profile_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        preferred_gender ? preferred_genderVariable : sirqul_iot_platform_personal_profile_response_PREFERREDGENDER_NULL,
        preferred_ethnicity && !cJSON_IsNull(preferred_ethnicity) ? strdup(preferred_ethnicity->valuestring) : NULL,
        preferred_education && !cJSON_IsNull(preferred_education) ? strdup(preferred_education->valuestring) : NULL,
        preferred_education_index ? preferred_education_index->valuedouble : 0,
        preferred_body_type && !cJSON_IsNull(preferred_body_type) ? strdup(preferred_body_type->valuestring) : NULL,
        preferred_min_age ? preferred_min_age->valuedouble : 0,
        preferred_max_age ? preferred_max_age->valuedouble : 0,
        preferred_min_height ? preferred_min_height->valuedouble : 0,
        preferred_max_height ? preferred_max_height->valuedouble : 0,
        preferred_location_range ? preferred_location_range->valuedouble : 0,
        gender ? genderVariable : sirqul_iot_platform_personal_profile_response_GENDER_NULL,
        hometown && !cJSON_IsNull(hometown) ? strdup(hometown->valuestring) : NULL,
        height && !cJSON_IsNull(height) ? strdup(height->valuestring) : NULL,
        height_index ? height_index->valuedouble : 0,
        ethnicity && !cJSON_IsNull(ethnicity) ? strdup(ethnicity->valuestring) : NULL,
        body_type && !cJSON_IsNull(body_type) ? strdup(body_type->valuestring) : NULL,
        children && !cJSON_IsNull(children) ? strdup(children->valuestring) : NULL,
        companionship && !cJSON_IsNull(companionship) ? strdup(companionship->valuestring) : NULL,
        companionship_index ? companionship_index->valuedouble : 0,
        drink && !cJSON_IsNull(drink) ? strdup(drink->valuestring) : NULL,
        education && !cJSON_IsNull(education) ? strdup(education->valuestring) : NULL,
        education_index ? education_index->valuedouble : 0,
        marital_status && !cJSON_IsNull(marital_status) ? strdup(marital_status->valuestring) : NULL,
        smoke && !cJSON_IsNull(smoke) ? strdup(smoke->valuestring) : NULL,
        religion && !cJSON_IsNull(religion) ? strdup(religion->valuestring) : NULL,
        birthday ? birthday->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return personal_profile_response_local_var;
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
    return NULL;

}
