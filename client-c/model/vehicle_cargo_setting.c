#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "vehicle_cargo_setting.h"



static vehicle_cargo_setting_t *vehicle_cargo_setting_create_internal(
    int valid,
    cargo_type_t *cargo_type,
    int max_unit
    ) {
    vehicle_cargo_setting_t *vehicle_cargo_setting_local_var = malloc(sizeof(vehicle_cargo_setting_t));
    if (!vehicle_cargo_setting_local_var) {
        return NULL;
    }
    vehicle_cargo_setting_local_var->valid = valid;
    vehicle_cargo_setting_local_var->cargo_type = cargo_type;
    vehicle_cargo_setting_local_var->max_unit = max_unit;

    vehicle_cargo_setting_local_var->_library_owned = 1;
    return vehicle_cargo_setting_local_var;
}

__attribute__((deprecated)) vehicle_cargo_setting_t *vehicle_cargo_setting_create(
    int valid,
    cargo_type_t *cargo_type,
    int max_unit
    ) {
    return vehicle_cargo_setting_create_internal (
        valid,
        cargo_type,
        max_unit
        );
}

void vehicle_cargo_setting_free(vehicle_cargo_setting_t *vehicle_cargo_setting) {
    if(NULL == vehicle_cargo_setting){
        return ;
    }
    if(vehicle_cargo_setting->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "vehicle_cargo_setting_free");
        return ;
    }
    listEntry_t *listEntry;
    if (vehicle_cargo_setting->cargo_type) {
        cargo_type_free(vehicle_cargo_setting->cargo_type);
        vehicle_cargo_setting->cargo_type = NULL;
    }
    free(vehicle_cargo_setting);
}

cJSON *vehicle_cargo_setting_convertToJSON(vehicle_cargo_setting_t *vehicle_cargo_setting) {
    cJSON *item = cJSON_CreateObject();

    // vehicle_cargo_setting->valid
    if(vehicle_cargo_setting->valid) {
    if(cJSON_AddBoolToObject(item, "valid", vehicle_cargo_setting->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // vehicle_cargo_setting->cargo_type
    if(vehicle_cargo_setting->cargo_type) {
    cJSON *cargo_type_local_JSON = cargo_type_convertToJSON(vehicle_cargo_setting->cargo_type);
    if(cargo_type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cargoType", cargo_type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // vehicle_cargo_setting->max_unit
    if(vehicle_cargo_setting->max_unit) {
    if(cJSON_AddNumberToObject(item, "maxUnit", vehicle_cargo_setting->max_unit) == NULL) {
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

vehicle_cargo_setting_t *vehicle_cargo_setting_parseFromJSON(cJSON *vehicle_cargo_settingJSON){

    vehicle_cargo_setting_t *vehicle_cargo_setting_local_var = NULL;

    // define the local variable for vehicle_cargo_setting->cargo_type
    cargo_type_t *cargo_type_local_nonprim = NULL;

    // vehicle_cargo_setting->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(vehicle_cargo_settingJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // vehicle_cargo_setting->cargo_type
    cJSON *cargo_type = cJSON_GetObjectItemCaseSensitive(vehicle_cargo_settingJSON, "cargoType");
    if (cJSON_IsNull(cargo_type)) {
        cargo_type = NULL;
    }
    if (cargo_type) { 
    cargo_type_local_nonprim = cargo_type_parseFromJSON(cargo_type); //nonprimitive
    }

    // vehicle_cargo_setting->max_unit
    cJSON *max_unit = cJSON_GetObjectItemCaseSensitive(vehicle_cargo_settingJSON, "maxUnit");
    if (cJSON_IsNull(max_unit)) {
        max_unit = NULL;
    }
    if (max_unit) { 
    if(!cJSON_IsNumber(max_unit))
    {
    goto end; //Numeric
    }
    }


    vehicle_cargo_setting_local_var = vehicle_cargo_setting_create_internal (
        valid ? valid->valueint : 0,
        cargo_type ? cargo_type_local_nonprim : NULL,
        max_unit ? max_unit->valuedouble : 0
        );

    return vehicle_cargo_setting_local_var;
end:
    if (cargo_type_local_nonprim) {
        cargo_type_free(cargo_type_local_nonprim);
        cargo_type_local_nonprim = NULL;
    }
    return NULL;

}
