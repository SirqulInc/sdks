#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "vehicle_type.h"



static vehicle_type_t *vehicle_type_create_internal(
    long id,
    int active,
    int valid,
    retailer_t *business,
    service_hub_t *hub,
    char *name,
    double width,
    double height,
    double depth,
    double volume,
    double max_weight,
    list_t *vehicle_cargo_settings
    ) {
    vehicle_type_t *vehicle_type_local_var = malloc(sizeof(vehicle_type_t));
    if (!vehicle_type_local_var) {
        return NULL;
    }
    vehicle_type_local_var->id = id;
    vehicle_type_local_var->active = active;
    vehicle_type_local_var->valid = valid;
    vehicle_type_local_var->business = business;
    vehicle_type_local_var->hub = hub;
    vehicle_type_local_var->name = name;
    vehicle_type_local_var->width = width;
    vehicle_type_local_var->height = height;
    vehicle_type_local_var->depth = depth;
    vehicle_type_local_var->volume = volume;
    vehicle_type_local_var->max_weight = max_weight;
    vehicle_type_local_var->vehicle_cargo_settings = vehicle_cargo_settings;

    vehicle_type_local_var->_library_owned = 1;
    return vehicle_type_local_var;
}

__attribute__((deprecated)) vehicle_type_t *vehicle_type_create(
    long id,
    int active,
    int valid,
    retailer_t *business,
    service_hub_t *hub,
    char *name,
    double width,
    double height,
    double depth,
    double volume,
    double max_weight,
    list_t *vehicle_cargo_settings
    ) {
    return vehicle_type_create_internal (
        id,
        active,
        valid,
        business,
        hub,
        name,
        width,
        height,
        depth,
        volume,
        max_weight,
        vehicle_cargo_settings
        );
}

void vehicle_type_free(vehicle_type_t *vehicle_type) {
    if(NULL == vehicle_type){
        return ;
    }
    if(vehicle_type->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "vehicle_type_free");
        return ;
    }
    listEntry_t *listEntry;
    if (vehicle_type->business) {
        retailer_free(vehicle_type->business);
        vehicle_type->business = NULL;
    }
    if (vehicle_type->hub) {
        service_hub_free(vehicle_type->hub);
        vehicle_type->hub = NULL;
    }
    if (vehicle_type->name) {
        free(vehicle_type->name);
        vehicle_type->name = NULL;
    }
    if (vehicle_type->vehicle_cargo_settings) {
        list_ForEach(listEntry, vehicle_type->vehicle_cargo_settings) {
            vehicle_cargo_setting_free(listEntry->data);
        }
        list_freeList(vehicle_type->vehicle_cargo_settings);
        vehicle_type->vehicle_cargo_settings = NULL;
    }
    free(vehicle_type);
}

cJSON *vehicle_type_convertToJSON(vehicle_type_t *vehicle_type) {
    cJSON *item = cJSON_CreateObject();

    // vehicle_type->id
    if(vehicle_type->id) {
    if(cJSON_AddNumberToObject(item, "id", vehicle_type->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_type->active
    if(vehicle_type->active) {
    if(cJSON_AddBoolToObject(item, "active", vehicle_type->active) == NULL) {
    goto fail; //Bool
    }
    }


    // vehicle_type->valid
    if(vehicle_type->valid) {
    if(cJSON_AddBoolToObject(item, "valid", vehicle_type->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // vehicle_type->business
    if(vehicle_type->business) {
    cJSON *business_local_JSON = retailer_convertToJSON(vehicle_type->business);
    if(business_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "business", business_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle_type->hub
    if(vehicle_type->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(vehicle_type->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle_type->name
    if(vehicle_type->name) {
    if(cJSON_AddStringToObject(item, "name", vehicle_type->name) == NULL) {
    goto fail; //String
    }
    }


    // vehicle_type->width
    if(vehicle_type->width) {
    if(cJSON_AddNumberToObject(item, "width", vehicle_type->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_type->height
    if(vehicle_type->height) {
    if(cJSON_AddNumberToObject(item, "height", vehicle_type->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_type->depth
    if(vehicle_type->depth) {
    if(cJSON_AddNumberToObject(item, "depth", vehicle_type->depth) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_type->volume
    if(vehicle_type->volume) {
    if(cJSON_AddNumberToObject(item, "volume", vehicle_type->volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_type->max_weight
    if(vehicle_type->max_weight) {
    if(cJSON_AddNumberToObject(item, "maxWeight", vehicle_type->max_weight) == NULL) {
    goto fail; //Numeric
    }
    }


    // vehicle_type->vehicle_cargo_settings
    if(vehicle_type->vehicle_cargo_settings) {
    cJSON *vehicle_cargo_settings = cJSON_AddArrayToObject(item, "vehicleCargoSettings");
    if(vehicle_cargo_settings == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *vehicle_cargo_settingsListEntry;
    if (vehicle_type->vehicle_cargo_settings) {
    list_ForEach(vehicle_cargo_settingsListEntry, vehicle_type->vehicle_cargo_settings) {
    cJSON *itemLocal = vehicle_cargo_setting_convertToJSON(vehicle_cargo_settingsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(vehicle_cargo_settings, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

vehicle_type_t *vehicle_type_parseFromJSON(cJSON *vehicle_typeJSON){

    vehicle_type_t *vehicle_type_local_var = NULL;

    // define the local variable for vehicle_type->business
    retailer_t *business_local_nonprim = NULL;

    // define the local variable for vehicle_type->hub
    service_hub_t *hub_local_nonprim = NULL;

    // define the local list for vehicle_type->vehicle_cargo_settings
    list_t *vehicle_cargo_settingsList = NULL;

    // vehicle_type->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // vehicle_type->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // vehicle_type->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // vehicle_type->business
    cJSON *business = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "business");
    if (cJSON_IsNull(business)) {
        business = NULL;
    }
    if (business) { 
    business_local_nonprim = retailer_parseFromJSON(business); //nonprimitive
    }

    // vehicle_type->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }

    // vehicle_type->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // vehicle_type->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // vehicle_type->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // vehicle_type->depth
    cJSON *depth = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "depth");
    if (cJSON_IsNull(depth)) {
        depth = NULL;
    }
    if (depth) { 
    if(!cJSON_IsNumber(depth))
    {
    goto end; //Numeric
    }
    }

    // vehicle_type->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "volume");
    if (cJSON_IsNull(volume)) {
        volume = NULL;
    }
    if (volume) { 
    if(!cJSON_IsNumber(volume))
    {
    goto end; //Numeric
    }
    }

    // vehicle_type->max_weight
    cJSON *max_weight = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "maxWeight");
    if (cJSON_IsNull(max_weight)) {
        max_weight = NULL;
    }
    if (max_weight) { 
    if(!cJSON_IsNumber(max_weight))
    {
    goto end; //Numeric
    }
    }

    // vehicle_type->vehicle_cargo_settings
    cJSON *vehicle_cargo_settings = cJSON_GetObjectItemCaseSensitive(vehicle_typeJSON, "vehicleCargoSettings");
    if (cJSON_IsNull(vehicle_cargo_settings)) {
        vehicle_cargo_settings = NULL;
    }
    if (vehicle_cargo_settings) { 
    cJSON *vehicle_cargo_settings_local_nonprimitive = NULL;
    if(!cJSON_IsArray(vehicle_cargo_settings)){
        goto end; //nonprimitive container
    }

    vehicle_cargo_settingsList = list_createList();

    cJSON_ArrayForEach(vehicle_cargo_settings_local_nonprimitive,vehicle_cargo_settings )
    {
        if(!cJSON_IsObject(vehicle_cargo_settings_local_nonprimitive)){
            goto end;
        }
        vehicle_cargo_setting_t *vehicle_cargo_settingsItem = vehicle_cargo_setting_parseFromJSON(vehicle_cargo_settings_local_nonprimitive);

        list_addElement(vehicle_cargo_settingsList, vehicle_cargo_settingsItem);
    }
    }


    vehicle_type_local_var = vehicle_type_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        business ? business_local_nonprim : NULL,
        hub ? hub_local_nonprim : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        width ? width->valuedouble : 0,
        height ? height->valuedouble : 0,
        depth ? depth->valuedouble : 0,
        volume ? volume->valuedouble : 0,
        max_weight ? max_weight->valuedouble : 0,
        vehicle_cargo_settings ? vehicle_cargo_settingsList : NULL
        );

    return vehicle_type_local_var;
end:
    if (business_local_nonprim) {
        retailer_free(business_local_nonprim);
        business_local_nonprim = NULL;
    }
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    if (vehicle_cargo_settingsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, vehicle_cargo_settingsList) {
            vehicle_cargo_setting_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(vehicle_cargo_settingsList);
        vehicle_cargo_settingsList = NULL;
    }
    return NULL;

}
