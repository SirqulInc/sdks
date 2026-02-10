#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "audience.h"


char* audience_gender_ToString(sirqul_iot_platform_audience_GENDER_e gender) {
    char* genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return genderArray[gender];
}

sirqul_iot_platform_audience_GENDER_e audience_gender_FromString(char* gender){
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
char* audience_age_groups_ToString(sirqul_iot_platform_audience_AGEGROUPS_e age_groups) {
    char *age_groupsArray[] =  { "NULL", "AGE_0_13", "AGE_14_17", "AGE_18_22", "AGE_23_30", "AGE_31_54", "AGE_55_PLUS" };
    return age_groupsArray[age_groups - 1];
}

sirqul_iot_platform_audience_AGEGROUPS_e audience_age_groups_FromString(char* age_groups) {
    int stringToReturn = 0;
    char *age_groupsArray[] =  { "NULL", "AGE_0_13", "AGE_14_17", "AGE_18_22", "AGE_23_30", "AGE_31_54", "AGE_55_PLUS" };
    size_t sizeofArray = sizeof(age_groupsArray) / sizeof(age_groupsArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(age_groups, age_groupsArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}
char* audience_game_experience_level_ToString(sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e game_experience_level) {
    char* game_experience_levelArray[] =  { "NULL", "ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT" };
    return game_experience_levelArray[game_experience_level];
}

sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e audience_game_experience_level_FromString(char* game_experience_level){
    int stringToReturn = 0;
    char *game_experience_levelArray[] =  { "NULL", "ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT" };
    size_t sizeofArray = sizeof(game_experience_levelArray) / sizeof(game_experience_levelArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(game_experience_level, game_experience_levelArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static audience_t *audience_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    int display,
    char *description,
    account_t *owner,
    sirqul_iot_platform_audience_GENDER_e gender,
    list_t *age_groups,
    sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e game_experience_level,
    list_t *device_version_ranges,
    list_t *categories,
    list_t *applications,
    double radius,
    list_t *locations,
    int send_suggestion,
    int start_time_offset,
    int end_time_offset,
    audience_target_type_t *target,
    char *associate_content_name,
    char *polygon,
    char *associate_type,
    long associate_id
    ) {
    audience_t *audience_local_var = malloc(sizeof(audience_t));
    if (!audience_local_var) {
        return NULL;
    }
    audience_local_var->id = id;
    audience_local_var->active = active;
    audience_local_var->valid = valid;
    audience_local_var->latitude = latitude;
    audience_local_var->longitude = longitude;
    audience_local_var->location_description = location_description;
    audience_local_var->name = name;
    audience_local_var->display = display;
    audience_local_var->description = description;
    audience_local_var->owner = owner;
    audience_local_var->gender = gender;
    audience_local_var->age_groups = age_groups;
    audience_local_var->game_experience_level = game_experience_level;
    audience_local_var->device_version_ranges = device_version_ranges;
    audience_local_var->categories = categories;
    audience_local_var->applications = applications;
    audience_local_var->radius = radius;
    audience_local_var->locations = locations;
    audience_local_var->send_suggestion = send_suggestion;
    audience_local_var->start_time_offset = start_time_offset;
    audience_local_var->end_time_offset = end_time_offset;
    audience_local_var->target = target;
    audience_local_var->associate_content_name = associate_content_name;
    audience_local_var->polygon = polygon;
    audience_local_var->associate_type = associate_type;
    audience_local_var->associate_id = associate_id;

    audience_local_var->_library_owned = 1;
    return audience_local_var;
}

__attribute__((deprecated)) audience_t *audience_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    int display,
    char *description,
    account_t *owner,
    sirqul_iot_platform_audience_GENDER_e gender,
    list_t *age_groups,
    sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e game_experience_level,
    list_t *device_version_ranges,
    list_t *categories,
    list_t *applications,
    double radius,
    list_t *locations,
    int send_suggestion,
    int start_time_offset,
    int end_time_offset,
    audience_target_type_t *target,
    char *associate_content_name,
    char *polygon,
    char *associate_type,
    long associate_id
    ) {
    return audience_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        name,
        display,
        description,
        owner,
        gender,
        age_groups,
        game_experience_level,
        device_version_ranges,
        categories,
        applications,
        radius,
        locations,
        send_suggestion,
        start_time_offset,
        end_time_offset,
        target,
        associate_content_name,
        polygon,
        associate_type,
        associate_id
        );
}

void audience_free(audience_t *audience) {
    if(NULL == audience){
        return ;
    }
    if(audience->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "audience_free");
        return ;
    }
    listEntry_t *listEntry;
    if (audience->location_description) {
        free(audience->location_description);
        audience->location_description = NULL;
    }
    if (audience->name) {
        free(audience->name);
        audience->name = NULL;
    }
    if (audience->description) {
        free(audience->description);
        audience->description = NULL;
    }
    if (audience->owner) {
        account_free(audience->owner);
        audience->owner = NULL;
    }
    if (audience->age_groups) {
        list_ForEach(listEntry, audience->age_groups) {
            free(listEntry->data);
        }
        list_freeList(audience->age_groups);
        audience->age_groups = NULL;
    }
    if (audience->device_version_ranges) {
        list_ForEach(listEntry, audience->device_version_ranges) {
            audience_device_version_range_free(listEntry->data);
        }
        list_freeList(audience->device_version_ranges);
        audience->device_version_ranges = NULL;
    }
    if (audience->categories) {
        list_ForEach(listEntry, audience->categories) {
            category_free(listEntry->data);
        }
        list_freeList(audience->categories);
        audience->categories = NULL;
    }
    if (audience->applications) {
        list_ForEach(listEntry, audience->applications) {
            application_free(listEntry->data);
        }
        list_freeList(audience->applications);
        audience->applications = NULL;
    }
    if (audience->locations) {
        list_ForEach(listEntry, audience->locations) {
            audience_location_free(listEntry->data);
        }
        list_freeList(audience->locations);
        audience->locations = NULL;
    }
    if (audience->target) {
        audience_target_type_free(audience->target);
        audience->target = NULL;
    }
    if (audience->associate_content_name) {
        free(audience->associate_content_name);
        audience->associate_content_name = NULL;
    }
    if (audience->polygon) {
        free(audience->polygon);
        audience->polygon = NULL;
    }
    if (audience->associate_type) {
        free(audience->associate_type);
        audience->associate_type = NULL;
    }
    free(audience);
}

cJSON *audience_convertToJSON(audience_t *audience) {
    cJSON *item = cJSON_CreateObject();

    // audience->id
    if(audience->id) {
    if(cJSON_AddNumberToObject(item, "id", audience->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience->active
    if(audience->active) {
    if(cJSON_AddBoolToObject(item, "active", audience->active) == NULL) {
    goto fail; //Bool
    }
    }


    // audience->valid
    if(audience->valid) {
    if(cJSON_AddBoolToObject(item, "valid", audience->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // audience->latitude
    if(audience->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", audience->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience->longitude
    if(audience->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", audience->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience->location_description
    if(audience->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", audience->location_description) == NULL) {
    goto fail; //String
    }
    }


    // audience->name
    if(audience->name) {
    if(cJSON_AddStringToObject(item, "name", audience->name) == NULL) {
    goto fail; //String
    }
    }


    // audience->display
    if(audience->display) {
    if(cJSON_AddBoolToObject(item, "display", audience->display) == NULL) {
    goto fail; //Bool
    }
    }


    // audience->description
    if(audience->description) {
    if(cJSON_AddStringToObject(item, "description", audience->description) == NULL) {
    goto fail; //String
    }
    }


    // audience->owner
    if(audience->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(audience->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // audience->gender
    if(audience->gender != sirqul_iot_platform_audience_GENDER_NULL) {
    if(cJSON_AddStringToObject(item, "gender", audience_gender_ToString(audience->gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // audience->age_groups
    if(audience->age_groups != sirqul_iot_platform_audience_AGEGROUPS_NULL) {
    cJSON *age_groups = cJSON_AddArrayToObject(item, "ageGroups");
    if(age_groups == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *age_groupsListEntry;
    list_ForEach(age_groupsListEntry, audience->age_groups) {
    if(cJSON_AddStringToObject(age_groups, "", age_groupsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // audience->game_experience_level
    if(audience->game_experience_level != sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_NULL) {
    if(cJSON_AddStringToObject(item, "gameExperienceLevel", audience_game_experience_level_ToString(audience->game_experience_level)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // audience->device_version_ranges
    if(audience->device_version_ranges) {
    cJSON *device_version_ranges = cJSON_AddArrayToObject(item, "deviceVersionRanges");
    if(device_version_ranges == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *device_version_rangesListEntry;
    if (audience->device_version_ranges) {
    list_ForEach(device_version_rangesListEntry, audience->device_version_ranges) {
    cJSON *itemLocal = audience_device_version_range_convertToJSON(device_version_rangesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(device_version_ranges, itemLocal);
    }
    }
    }


    // audience->categories
    if(audience->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (audience->categories) {
    list_ForEach(categoriesListEntry, audience->categories) {
    cJSON *itemLocal = category_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // audience->applications
    if(audience->applications) {
    cJSON *applications = cJSON_AddArrayToObject(item, "applications");
    if(applications == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *applicationsListEntry;
    if (audience->applications) {
    list_ForEach(applicationsListEntry, audience->applications) {
    cJSON *itemLocal = application_convertToJSON(applicationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(applications, itemLocal);
    }
    }
    }


    // audience->radius
    if(audience->radius) {
    if(cJSON_AddNumberToObject(item, "radius", audience->radius) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience->locations
    if(audience->locations) {
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (audience->locations) {
    list_ForEach(locationsListEntry, audience->locations) {
    cJSON *itemLocal = audience_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }
    }


    // audience->send_suggestion
    if(audience->send_suggestion) {
    if(cJSON_AddBoolToObject(item, "sendSuggestion", audience->send_suggestion) == NULL) {
    goto fail; //Bool
    }
    }


    // audience->start_time_offset
    if(audience->start_time_offset) {
    if(cJSON_AddNumberToObject(item, "startTimeOffset", audience->start_time_offset) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience->end_time_offset
    if(audience->end_time_offset) {
    if(cJSON_AddNumberToObject(item, "endTimeOffset", audience->end_time_offset) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience->target
    if(audience->target) {
    cJSON *target_local_JSON = audience_target_type_convertToJSON(audience->target);
    if(target_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "target", target_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // audience->associate_content_name
    if(audience->associate_content_name) {
    if(cJSON_AddStringToObject(item, "associateContentName", audience->associate_content_name) == NULL) {
    goto fail; //String
    }
    }


    // audience->polygon
    if(audience->polygon) {
    if(cJSON_AddStringToObject(item, "polygon", audience->polygon) == NULL) {
    goto fail; //String
    }
    }


    // audience->associate_type
    if(audience->associate_type) {
    if(cJSON_AddStringToObject(item, "associateType", audience->associate_type) == NULL) {
    goto fail; //String
    }
    }


    // audience->associate_id
    if(audience->associate_id) {
    if(cJSON_AddNumberToObject(item, "associateId", audience->associate_id) == NULL) {
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

audience_t *audience_parseFromJSON(cJSON *audienceJSON){

    audience_t *audience_local_var = NULL;

    // define the local variable for audience->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for audience->age_groups
    list_t *age_groupsList = NULL;

    // define the local list for audience->device_version_ranges
    list_t *device_version_rangesList = NULL;

    // define the local list for audience->categories
    list_t *categoriesList = NULL;

    // define the local list for audience->applications
    list_t *applicationsList = NULL;

    // define the local list for audience->locations
    list_t *locationsList = NULL;

    // define the local variable for audience->target
    audience_target_type_t *target_local_nonprim = NULL;

    // audience->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(audienceJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // audience->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(audienceJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // audience->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(audienceJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // audience->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(audienceJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // audience->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(audienceJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // audience->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(audienceJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // audience->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(audienceJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // audience->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(audienceJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsBool(display))
    {
    goto end; //Bool
    }
    }

    // audience->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(audienceJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // audience->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(audienceJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // audience->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(audienceJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    sirqul_iot_platform_audience_GENDER_e genderVariable;
    if (gender) { 
    if(!cJSON_IsString(gender))
    {
    goto end; //Enum
    }
    genderVariable = audience_gender_FromString(gender->valuestring);
    }

    // audience->age_groups
    cJSON *age_groups = cJSON_GetObjectItemCaseSensitive(audienceJSON, "ageGroups");
    if (cJSON_IsNull(age_groups)) {
        age_groups = NULL;
    }
    if (age_groups) { 
    cJSON *age_groups_local = NULL;
    if(!cJSON_IsArray(age_groups)) {
        goto end;//primitive container
    }
    age_groupsList = list_createList();

    cJSON_ArrayForEach(age_groups_local, age_groups)
    {
        if(!cJSON_IsString(age_groups_local))
        {
            goto end;
        }
        list_addElement(age_groupsList , strdup(age_groups_local->valuestring));
    }
    }

    // audience->game_experience_level
    cJSON *game_experience_level = cJSON_GetObjectItemCaseSensitive(audienceJSON, "gameExperienceLevel");
    if (cJSON_IsNull(game_experience_level)) {
        game_experience_level = NULL;
    }
    sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_e game_experience_levelVariable;
    if (game_experience_level) { 
    if(!cJSON_IsString(game_experience_level))
    {
    goto end; //Enum
    }
    game_experience_levelVariable = audience_game_experience_level_FromString(game_experience_level->valuestring);
    }

    // audience->device_version_ranges
    cJSON *device_version_ranges = cJSON_GetObjectItemCaseSensitive(audienceJSON, "deviceVersionRanges");
    if (cJSON_IsNull(device_version_ranges)) {
        device_version_ranges = NULL;
    }
    if (device_version_ranges) { 
    cJSON *device_version_ranges_local_nonprimitive = NULL;
    if(!cJSON_IsArray(device_version_ranges)){
        goto end; //nonprimitive container
    }

    device_version_rangesList = list_createList();

    cJSON_ArrayForEach(device_version_ranges_local_nonprimitive,device_version_ranges )
    {
        if(!cJSON_IsObject(device_version_ranges_local_nonprimitive)){
            goto end;
        }
        audience_device_version_range_t *device_version_rangesItem = audience_device_version_range_parseFromJSON(device_version_ranges_local_nonprimitive);

        list_addElement(device_version_rangesList, device_version_rangesItem);
    }
    }

    // audience->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(audienceJSON, "categories");
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
        category_t *categoriesItem = category_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // audience->applications
    cJSON *applications = cJSON_GetObjectItemCaseSensitive(audienceJSON, "applications");
    if (cJSON_IsNull(applications)) {
        applications = NULL;
    }
    if (applications) { 
    cJSON *applications_local_nonprimitive = NULL;
    if(!cJSON_IsArray(applications)){
        goto end; //nonprimitive container
    }

    applicationsList = list_createList();

    cJSON_ArrayForEach(applications_local_nonprimitive,applications )
    {
        if(!cJSON_IsObject(applications_local_nonprimitive)){
            goto end;
        }
        application_t *applicationsItem = application_parseFromJSON(applications_local_nonprimitive);

        list_addElement(applicationsList, applicationsItem);
    }
    }

    // audience->radius
    cJSON *radius = cJSON_GetObjectItemCaseSensitive(audienceJSON, "radius");
    if (cJSON_IsNull(radius)) {
        radius = NULL;
    }
    if (radius) { 
    if(!cJSON_IsNumber(radius))
    {
    goto end; //Numeric
    }
    }

    // audience->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(audienceJSON, "locations");
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
        audience_location_t *locationsItem = audience_location_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }
    }

    // audience->send_suggestion
    cJSON *send_suggestion = cJSON_GetObjectItemCaseSensitive(audienceJSON, "sendSuggestion");
    if (cJSON_IsNull(send_suggestion)) {
        send_suggestion = NULL;
    }
    if (send_suggestion) { 
    if(!cJSON_IsBool(send_suggestion))
    {
    goto end; //Bool
    }
    }

    // audience->start_time_offset
    cJSON *start_time_offset = cJSON_GetObjectItemCaseSensitive(audienceJSON, "startTimeOffset");
    if (cJSON_IsNull(start_time_offset)) {
        start_time_offset = NULL;
    }
    if (start_time_offset) { 
    if(!cJSON_IsNumber(start_time_offset))
    {
    goto end; //Numeric
    }
    }

    // audience->end_time_offset
    cJSON *end_time_offset = cJSON_GetObjectItemCaseSensitive(audienceJSON, "endTimeOffset");
    if (cJSON_IsNull(end_time_offset)) {
        end_time_offset = NULL;
    }
    if (end_time_offset) { 
    if(!cJSON_IsNumber(end_time_offset))
    {
    goto end; //Numeric
    }
    }

    // audience->target
    cJSON *target = cJSON_GetObjectItemCaseSensitive(audienceJSON, "target");
    if (cJSON_IsNull(target)) {
        target = NULL;
    }
    if (target) { 
    target_local_nonprim = audience_target_type_parseFromJSON(target); //nonprimitive
    }

    // audience->associate_content_name
    cJSON *associate_content_name = cJSON_GetObjectItemCaseSensitive(audienceJSON, "associateContentName");
    if (cJSON_IsNull(associate_content_name)) {
        associate_content_name = NULL;
    }
    if (associate_content_name) { 
    if(!cJSON_IsString(associate_content_name) && !cJSON_IsNull(associate_content_name))
    {
    goto end; //String
    }
    }

    // audience->polygon
    cJSON *polygon = cJSON_GetObjectItemCaseSensitive(audienceJSON, "polygon");
    if (cJSON_IsNull(polygon)) {
        polygon = NULL;
    }
    if (polygon) { 
    if(!cJSON_IsString(polygon) && !cJSON_IsNull(polygon))
    {
    goto end; //String
    }
    }

    // audience->associate_type
    cJSON *associate_type = cJSON_GetObjectItemCaseSensitive(audienceJSON, "associateType");
    if (cJSON_IsNull(associate_type)) {
        associate_type = NULL;
    }
    if (associate_type) { 
    if(!cJSON_IsString(associate_type) && !cJSON_IsNull(associate_type))
    {
    goto end; //String
    }
    }

    // audience->associate_id
    cJSON *associate_id = cJSON_GetObjectItemCaseSensitive(audienceJSON, "associateId");
    if (cJSON_IsNull(associate_id)) {
        associate_id = NULL;
    }
    if (associate_id) { 
    if(!cJSON_IsNumber(associate_id))
    {
    goto end; //Numeric
    }
    }


    audience_local_var = audience_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        display ? display->valueint : 0,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        gender ? genderVariable : sirqul_iot_platform_audience_GENDER_NULL,
        age_groups ? age_groupsList : NULL,
        game_experience_level ? game_experience_levelVariable : sirqul_iot_platform_audience_GAMEEXPERIENCELEVEL_NULL,
        device_version_ranges ? device_version_rangesList : NULL,
        categories ? categoriesList : NULL,
        applications ? applicationsList : NULL,
        radius ? radius->valuedouble : 0,
        locations ? locationsList : NULL,
        send_suggestion ? send_suggestion->valueint : 0,
        start_time_offset ? start_time_offset->valuedouble : 0,
        end_time_offset ? end_time_offset->valuedouble : 0,
        target ? target_local_nonprim : NULL,
        associate_content_name && !cJSON_IsNull(associate_content_name) ? strdup(associate_content_name->valuestring) : NULL,
        polygon && !cJSON_IsNull(polygon) ? strdup(polygon->valuestring) : NULL,
        associate_type && !cJSON_IsNull(associate_type) ? strdup(associate_type->valuestring) : NULL,
        associate_id ? associate_id->valuedouble : 0
        );

    return audience_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (age_groupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, age_groupsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(age_groupsList);
        age_groupsList = NULL;
    }
    if (device_version_rangesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, device_version_rangesList) {
            audience_device_version_range_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(device_version_rangesList);
        device_version_rangesList = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (applicationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, applicationsList) {
            application_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(applicationsList);
        applicationsList = NULL;
    }
    if (locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, locationsList) {
            audience_location_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(locationsList);
        locationsList = NULL;
    }
    if (target_local_nonprim) {
        audience_target_type_free(target_local_nonprim);
        target_local_nonprim = NULL;
    }
    return NULL;

}
