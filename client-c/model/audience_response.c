#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "audience_response.h"



static audience_response_t *audience_response_create_internal(
    long id,
    char *name,
    double latitude,
    double longitude,
    double radius,
    int send_suggestion,
    char *description,
    int active,
    char *search_tags,
    long owner_id,
    char *gender,
    list_t *age_groups,
    list_t *categories,
    list_t *applications,
    list_t *devices,
    char *game_experience_level,
    list_t *locations,
    char *associate_type,
    long associate_id,
    char *associate_description
    ) {
    audience_response_t *audience_response_local_var = malloc(sizeof(audience_response_t));
    if (!audience_response_local_var) {
        return NULL;
    }
    audience_response_local_var->id = id;
    audience_response_local_var->name = name;
    audience_response_local_var->latitude = latitude;
    audience_response_local_var->longitude = longitude;
    audience_response_local_var->radius = radius;
    audience_response_local_var->send_suggestion = send_suggestion;
    audience_response_local_var->description = description;
    audience_response_local_var->active = active;
    audience_response_local_var->search_tags = search_tags;
    audience_response_local_var->owner_id = owner_id;
    audience_response_local_var->gender = gender;
    audience_response_local_var->age_groups = age_groups;
    audience_response_local_var->categories = categories;
    audience_response_local_var->applications = applications;
    audience_response_local_var->devices = devices;
    audience_response_local_var->game_experience_level = game_experience_level;
    audience_response_local_var->locations = locations;
    audience_response_local_var->associate_type = associate_type;
    audience_response_local_var->associate_id = associate_id;
    audience_response_local_var->associate_description = associate_description;

    audience_response_local_var->_library_owned = 1;
    return audience_response_local_var;
}

__attribute__((deprecated)) audience_response_t *audience_response_create(
    long id,
    char *name,
    double latitude,
    double longitude,
    double radius,
    int send_suggestion,
    char *description,
    int active,
    char *search_tags,
    long owner_id,
    char *gender,
    list_t *age_groups,
    list_t *categories,
    list_t *applications,
    list_t *devices,
    char *game_experience_level,
    list_t *locations,
    char *associate_type,
    long associate_id,
    char *associate_description
    ) {
    return audience_response_create_internal (
        id,
        name,
        latitude,
        longitude,
        radius,
        send_suggestion,
        description,
        active,
        search_tags,
        owner_id,
        gender,
        age_groups,
        categories,
        applications,
        devices,
        game_experience_level,
        locations,
        associate_type,
        associate_id,
        associate_description
        );
}

void audience_response_free(audience_response_t *audience_response) {
    if(NULL == audience_response){
        return ;
    }
    if(audience_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "audience_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (audience_response->name) {
        free(audience_response->name);
        audience_response->name = NULL;
    }
    if (audience_response->description) {
        free(audience_response->description);
        audience_response->description = NULL;
    }
    if (audience_response->search_tags) {
        free(audience_response->search_tags);
        audience_response->search_tags = NULL;
    }
    if (audience_response->gender) {
        free(audience_response->gender);
        audience_response->gender = NULL;
    }
    if (audience_response->age_groups) {
        list_ForEach(listEntry, audience_response->age_groups) {
            age_group_response_free(listEntry->data);
        }
        list_freeList(audience_response->age_groups);
        audience_response->age_groups = NULL;
    }
    if (audience_response->categories) {
        list_ForEach(listEntry, audience_response->categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(audience_response->categories);
        audience_response->categories = NULL;
    }
    if (audience_response->applications) {
        list_ForEach(listEntry, audience_response->applications) {
            application_short_response_free(listEntry->data);
        }
        list_freeList(audience_response->applications);
        audience_response->applications = NULL;
    }
    if (audience_response->devices) {
        list_ForEach(listEntry, audience_response->devices) {
            audience_device_response_free(listEntry->data);
        }
        list_freeList(audience_response->devices);
        audience_response->devices = NULL;
    }
    if (audience_response->game_experience_level) {
        free(audience_response->game_experience_level);
        audience_response->game_experience_level = NULL;
    }
    if (audience_response->locations) {
        list_ForEach(listEntry, audience_response->locations) {
            geocode_lat_lng_response_free(listEntry->data);
        }
        list_freeList(audience_response->locations);
        audience_response->locations = NULL;
    }
    if (audience_response->associate_type) {
        free(audience_response->associate_type);
        audience_response->associate_type = NULL;
    }
    if (audience_response->associate_description) {
        free(audience_response->associate_description);
        audience_response->associate_description = NULL;
    }
    free(audience_response);
}

cJSON *audience_response_convertToJSON(audience_response_t *audience_response) {
    cJSON *item = cJSON_CreateObject();

    // audience_response->id
    if(audience_response->id) {
    if(cJSON_AddNumberToObject(item, "id", audience_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_response->name
    if(audience_response->name) {
    if(cJSON_AddStringToObject(item, "name", audience_response->name) == NULL) {
    goto fail; //String
    }
    }


    // audience_response->latitude
    if(audience_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", audience_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_response->longitude
    if(audience_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", audience_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_response->radius
    if(audience_response->radius) {
    if(cJSON_AddNumberToObject(item, "radius", audience_response->radius) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_response->send_suggestion
    if(audience_response->send_suggestion) {
    if(cJSON_AddBoolToObject(item, "sendSuggestion", audience_response->send_suggestion) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_response->description
    if(audience_response->description) {
    if(cJSON_AddStringToObject(item, "description", audience_response->description) == NULL) {
    goto fail; //String
    }
    }


    // audience_response->active
    if(audience_response->active) {
    if(cJSON_AddBoolToObject(item, "active", audience_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_response->search_tags
    if(audience_response->search_tags) {
    if(cJSON_AddStringToObject(item, "searchTags", audience_response->search_tags) == NULL) {
    goto fail; //String
    }
    }


    // audience_response->owner_id
    if(audience_response->owner_id) {
    if(cJSON_AddNumberToObject(item, "ownerId", audience_response->owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_response->gender
    if(audience_response->gender) {
    if(cJSON_AddStringToObject(item, "gender", audience_response->gender) == NULL) {
    goto fail; //String
    }
    }


    // audience_response->age_groups
    if(audience_response->age_groups) {
    cJSON *age_groups = cJSON_AddArrayToObject(item, "ageGroups");
    if(age_groups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *age_groupsListEntry;
    if (audience_response->age_groups) {
    list_ForEach(age_groupsListEntry, audience_response->age_groups) {
    cJSON *itemLocal = age_group_response_convertToJSON(age_groupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(age_groups, itemLocal);
    }
    }
    }


    // audience_response->categories
    if(audience_response->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (audience_response->categories) {
    list_ForEach(categoriesListEntry, audience_response->categories) {
    cJSON *itemLocal = category_response_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // audience_response->applications
    if(audience_response->applications) {
    cJSON *applications = cJSON_AddArrayToObject(item, "applications");
    if(applications == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *applicationsListEntry;
    if (audience_response->applications) {
    list_ForEach(applicationsListEntry, audience_response->applications) {
    cJSON *itemLocal = application_short_response_convertToJSON(applicationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(applications, itemLocal);
    }
    }
    }


    // audience_response->devices
    if(audience_response->devices) {
    cJSON *devices = cJSON_AddArrayToObject(item, "devices");
    if(devices == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *devicesListEntry;
    if (audience_response->devices) {
    list_ForEach(devicesListEntry, audience_response->devices) {
    cJSON *itemLocal = audience_device_response_convertToJSON(devicesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(devices, itemLocal);
    }
    }
    }


    // audience_response->game_experience_level
    if(audience_response->game_experience_level) {
    if(cJSON_AddStringToObject(item, "gameExperienceLevel", audience_response->game_experience_level) == NULL) {
    goto fail; //String
    }
    }


    // audience_response->locations
    if(audience_response->locations) {
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (audience_response->locations) {
    list_ForEach(locationsListEntry, audience_response->locations) {
    cJSON *itemLocal = geocode_lat_lng_response_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }
    }


    // audience_response->associate_type
    if(audience_response->associate_type) {
    if(cJSON_AddStringToObject(item, "associateType", audience_response->associate_type) == NULL) {
    goto fail; //String
    }
    }


    // audience_response->associate_id
    if(audience_response->associate_id) {
    if(cJSON_AddNumberToObject(item, "associateId", audience_response->associate_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_response->associate_description
    if(audience_response->associate_description) {
    if(cJSON_AddStringToObject(item, "associateDescription", audience_response->associate_description) == NULL) {
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

audience_response_t *audience_response_parseFromJSON(cJSON *audience_responseJSON){

    audience_response_t *audience_response_local_var = NULL;

    // define the local list for audience_response->age_groups
    list_t *age_groupsList = NULL;

    // define the local list for audience_response->categories
    list_t *categoriesList = NULL;

    // define the local list for audience_response->applications
    list_t *applicationsList = NULL;

    // define the local list for audience_response->devices
    list_t *devicesList = NULL;

    // define the local list for audience_response->locations
    list_t *locationsList = NULL;

    // audience_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // audience_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // audience_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // audience_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // audience_response->radius
    cJSON *radius = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "radius");
    if (cJSON_IsNull(radius)) {
        radius = NULL;
    }
    if (radius) { 
    if(!cJSON_IsNumber(radius))
    {
    goto end; //Numeric
    }
    }

    // audience_response->send_suggestion
    cJSON *send_suggestion = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "sendSuggestion");
    if (cJSON_IsNull(send_suggestion)) {
        send_suggestion = NULL;
    }
    if (send_suggestion) { 
    if(!cJSON_IsBool(send_suggestion))
    {
    goto end; //Bool
    }
    }

    // audience_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // audience_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // audience_response->search_tags
    cJSON *search_tags = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "searchTags");
    if (cJSON_IsNull(search_tags)) {
        search_tags = NULL;
    }
    if (search_tags) { 
    if(!cJSON_IsString(search_tags) && !cJSON_IsNull(search_tags))
    {
    goto end; //String
    }
    }

    // audience_response->owner_id
    cJSON *owner_id = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "ownerId");
    if (cJSON_IsNull(owner_id)) {
        owner_id = NULL;
    }
    if (owner_id) { 
    if(!cJSON_IsNumber(owner_id))
    {
    goto end; //Numeric
    }
    }

    // audience_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    if (gender) { 
    if(!cJSON_IsString(gender) && !cJSON_IsNull(gender))
    {
    goto end; //String
    }
    }

    // audience_response->age_groups
    cJSON *age_groups = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "ageGroups");
    if (cJSON_IsNull(age_groups)) {
        age_groups = NULL;
    }
    if (age_groups) { 
    cJSON *age_groups_local_nonprimitive = NULL;
    if(!cJSON_IsArray(age_groups)){
        goto end; //nonprimitive container
    }

    age_groupsList = list_createList();

    cJSON_ArrayForEach(age_groups_local_nonprimitive,age_groups )
    {
        if(!cJSON_IsObject(age_groups_local_nonprimitive)){
            goto end;
        }
        age_group_response_t *age_groupsItem = age_group_response_parseFromJSON(age_groups_local_nonprimitive);

        list_addElement(age_groupsList, age_groupsItem);
    }
    }

    // audience_response->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "categories");
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

    // audience_response->applications
    cJSON *applications = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "applications");
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
        application_short_response_t *applicationsItem = application_short_response_parseFromJSON(applications_local_nonprimitive);

        list_addElement(applicationsList, applicationsItem);
    }
    }

    // audience_response->devices
    cJSON *devices = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "devices");
    if (cJSON_IsNull(devices)) {
        devices = NULL;
    }
    if (devices) { 
    cJSON *devices_local_nonprimitive = NULL;
    if(!cJSON_IsArray(devices)){
        goto end; //nonprimitive container
    }

    devicesList = list_createList();

    cJSON_ArrayForEach(devices_local_nonprimitive,devices )
    {
        if(!cJSON_IsObject(devices_local_nonprimitive)){
            goto end;
        }
        audience_device_response_t *devicesItem = audience_device_response_parseFromJSON(devices_local_nonprimitive);

        list_addElement(devicesList, devicesItem);
    }
    }

    // audience_response->game_experience_level
    cJSON *game_experience_level = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "gameExperienceLevel");
    if (cJSON_IsNull(game_experience_level)) {
        game_experience_level = NULL;
    }
    if (game_experience_level) { 
    if(!cJSON_IsString(game_experience_level) && !cJSON_IsNull(game_experience_level))
    {
    goto end; //String
    }
    }

    // audience_response->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "locations");
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
        geocode_lat_lng_response_t *locationsItem = geocode_lat_lng_response_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }
    }

    // audience_response->associate_type
    cJSON *associate_type = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "associateType");
    if (cJSON_IsNull(associate_type)) {
        associate_type = NULL;
    }
    if (associate_type) { 
    if(!cJSON_IsString(associate_type) && !cJSON_IsNull(associate_type))
    {
    goto end; //String
    }
    }

    // audience_response->associate_id
    cJSON *associate_id = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "associateId");
    if (cJSON_IsNull(associate_id)) {
        associate_id = NULL;
    }
    if (associate_id) { 
    if(!cJSON_IsNumber(associate_id))
    {
    goto end; //Numeric
    }
    }

    // audience_response->associate_description
    cJSON *associate_description = cJSON_GetObjectItemCaseSensitive(audience_responseJSON, "associateDescription");
    if (cJSON_IsNull(associate_description)) {
        associate_description = NULL;
    }
    if (associate_description) { 
    if(!cJSON_IsString(associate_description) && !cJSON_IsNull(associate_description))
    {
    goto end; //String
    }
    }


    audience_response_local_var = audience_response_create_internal (
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        radius ? radius->valuedouble : 0,
        send_suggestion ? send_suggestion->valueint : 0,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        active ? active->valueint : 0,
        search_tags && !cJSON_IsNull(search_tags) ? strdup(search_tags->valuestring) : NULL,
        owner_id ? owner_id->valuedouble : 0,
        gender && !cJSON_IsNull(gender) ? strdup(gender->valuestring) : NULL,
        age_groups ? age_groupsList : NULL,
        categories ? categoriesList : NULL,
        applications ? applicationsList : NULL,
        devices ? devicesList : NULL,
        game_experience_level && !cJSON_IsNull(game_experience_level) ? strdup(game_experience_level->valuestring) : NULL,
        locations ? locationsList : NULL,
        associate_type && !cJSON_IsNull(associate_type) ? strdup(associate_type->valuestring) : NULL,
        associate_id ? associate_id->valuedouble : 0,
        associate_description && !cJSON_IsNull(associate_description) ? strdup(associate_description->valuestring) : NULL
        );

    return audience_response_local_var;
end:
    if (age_groupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, age_groupsList) {
            age_group_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(age_groupsList);
        age_groupsList = NULL;
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
    if (applicationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, applicationsList) {
            application_short_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(applicationsList);
        applicationsList = NULL;
    }
    if (devicesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, devicesList) {
            audience_device_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(devicesList);
        devicesList = NULL;
    }
    if (locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, locationsList) {
            geocode_lat_lng_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(locationsList);
        locationsList = NULL;
    }
    return NULL;

}
