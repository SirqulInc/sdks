#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "route_settings.h"


char* route_settings_setting_type_ToString(sirqul_iot_platform_route_settings_SETTINGTYPE_e setting_type) {
    char* setting_typeArray[] =  { "NULL", "FLOAT", "DOUBLE", "INTEGER", "LONG", "BOOLEAN", "STRING" };
    return setting_typeArray[setting_type];
}

sirqul_iot_platform_route_settings_SETTINGTYPE_e route_settings_setting_type_FromString(char* setting_type){
    int stringToReturn = 0;
    char *setting_typeArray[] =  { "NULL", "FLOAT", "DOUBLE", "INTEGER", "LONG", "BOOLEAN", "STRING" };
    size_t sizeofArray = sizeof(setting_typeArray) / sizeof(setting_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(setting_type, setting_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static route_settings_t *route_settings_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    char *setting,
    sirqul_iot_platform_route_settings_SETTINGTYPE_e setting_type,
    program_t *program,
    service_hub_t *hub
    ) {
    route_settings_t *route_settings_local_var = malloc(sizeof(route_settings_t));
    if (!route_settings_local_var) {
        return NULL;
    }
    route_settings_local_var->id = id;
    route_settings_local_var->active = active;
    route_settings_local_var->valid = valid;
    route_settings_local_var->name = name;
    route_settings_local_var->description = description;
    route_settings_local_var->setting = setting;
    route_settings_local_var->setting_type = setting_type;
    route_settings_local_var->program = program;
    route_settings_local_var->hub = hub;

    route_settings_local_var->_library_owned = 1;
    return route_settings_local_var;
}

__attribute__((deprecated)) route_settings_t *route_settings_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    char *setting,
    sirqul_iot_platform_route_settings_SETTINGTYPE_e setting_type,
    program_t *program,
    service_hub_t *hub
    ) {
    return route_settings_create_internal (
        id,
        active,
        valid,
        name,
        description,
        setting,
        setting_type,
        program,
        hub
        );
}

void route_settings_free(route_settings_t *route_settings) {
    if(NULL == route_settings){
        return ;
    }
    if(route_settings->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "route_settings_free");
        return ;
    }
    listEntry_t *listEntry;
    if (route_settings->name) {
        free(route_settings->name);
        route_settings->name = NULL;
    }
    if (route_settings->description) {
        free(route_settings->description);
        route_settings->description = NULL;
    }
    if (route_settings->setting) {
        free(route_settings->setting);
        route_settings->setting = NULL;
    }
    if (route_settings->program) {
        program_free(route_settings->program);
        route_settings->program = NULL;
    }
    if (route_settings->hub) {
        service_hub_free(route_settings->hub);
        route_settings->hub = NULL;
    }
    free(route_settings);
}

cJSON *route_settings_convertToJSON(route_settings_t *route_settings) {
    cJSON *item = cJSON_CreateObject();

    // route_settings->id
    if(route_settings->id) {
    if(cJSON_AddNumberToObject(item, "id", route_settings->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // route_settings->active
    if(route_settings->active) {
    if(cJSON_AddBoolToObject(item, "active", route_settings->active) == NULL) {
    goto fail; //Bool
    }
    }


    // route_settings->valid
    if(route_settings->valid) {
    if(cJSON_AddBoolToObject(item, "valid", route_settings->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // route_settings->name
    if(route_settings->name) {
    if(cJSON_AddStringToObject(item, "name", route_settings->name) == NULL) {
    goto fail; //String
    }
    }


    // route_settings->description
    if(route_settings->description) {
    if(cJSON_AddStringToObject(item, "description", route_settings->description) == NULL) {
    goto fail; //String
    }
    }


    // route_settings->setting
    if(route_settings->setting) {
    if(cJSON_AddStringToObject(item, "setting", route_settings->setting) == NULL) {
    goto fail; //String
    }
    }


    // route_settings->setting_type
    if(route_settings->setting_type != sirqul_iot_platform_route_settings_SETTINGTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "settingType", route_settings_setting_type_ToString(route_settings->setting_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // route_settings->program
    if(route_settings->program) {
    cJSON *program_local_JSON = program_convertToJSON(route_settings->program);
    if(program_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "program", program_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // route_settings->hub
    if(route_settings->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(route_settings->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

route_settings_t *route_settings_parseFromJSON(cJSON *route_settingsJSON){

    route_settings_t *route_settings_local_var = NULL;

    // define the local variable for route_settings->program
    program_t *program_local_nonprim = NULL;

    // define the local variable for route_settings->hub
    service_hub_t *hub_local_nonprim = NULL;

    // route_settings->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // route_settings->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // route_settings->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // route_settings->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // route_settings->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // route_settings->setting
    cJSON *setting = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "setting");
    if (cJSON_IsNull(setting)) {
        setting = NULL;
    }
    if (setting) { 
    if(!cJSON_IsString(setting) && !cJSON_IsNull(setting))
    {
    goto end; //String
    }
    }

    // route_settings->setting_type
    cJSON *setting_type = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "settingType");
    if (cJSON_IsNull(setting_type)) {
        setting_type = NULL;
    }
    sirqul_iot_platform_route_settings_SETTINGTYPE_e setting_typeVariable;
    if (setting_type) { 
    if(!cJSON_IsString(setting_type))
    {
    goto end; //Enum
    }
    setting_typeVariable = route_settings_setting_type_FromString(setting_type->valuestring);
    }

    // route_settings->program
    cJSON *program = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "program");
    if (cJSON_IsNull(program)) {
        program = NULL;
    }
    if (program) { 
    program_local_nonprim = program_parseFromJSON(program); //nonprimitive
    }

    // route_settings->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(route_settingsJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }


    route_settings_local_var = route_settings_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        setting && !cJSON_IsNull(setting) ? strdup(setting->valuestring) : NULL,
        setting_type ? setting_typeVariable : sirqul_iot_platform_route_settings_SETTINGTYPE_NULL,
        program ? program_local_nonprim : NULL,
        hub ? hub_local_nonprim : NULL
        );

    return route_settings_local_var;
end:
    if (program_local_nonprim) {
        program_free(program_local_nonprim);
        program_local_nonprim = NULL;
    }
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    return NULL;

}
