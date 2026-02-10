#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "placement.h"


char* placement_size_ToString(sirqul_iot_platform_placement_SIZE_e size) {
    char* sizeArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return sizeArray[size];
}

sirqul_iot_platform_placement_SIZE_e placement_size_FromString(char* size){
    int stringToReturn = 0;
    char *sizeArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(sizeArray) / sizeof(sizeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(size, sizeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* placement_click_type_ToString(sirqul_iot_platform_placement_CLICKTYPE_e click_type) {
    char* click_typeArray[] =  { "NULL", "CONFIG", "PURCHASE", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "FULL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return click_typeArray[click_type];
}

sirqul_iot_platform_placement_CLICKTYPE_e placement_click_type_FromString(char* click_type){
    int stringToReturn = 0;
    char *click_typeArray[] =  { "NULL", "CONFIG", "PURCHASE", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "FULL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(click_typeArray) / sizeof(click_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(click_type, click_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static placement_t *placement_create_internal(
    long id,
    int active,
    int valid,
    application_t *application,
    char *name,
    char *description,
    sirqul_iot_platform_placement_SIZE_e size,
    sirqul_iot_platform_placement_CLICKTYPE_e click_type,
    int height,
    int width,
    int refresh_interval,
    asset_t *default_image
    ) {
    placement_t *placement_local_var = malloc(sizeof(placement_t));
    if (!placement_local_var) {
        return NULL;
    }
    placement_local_var->id = id;
    placement_local_var->active = active;
    placement_local_var->valid = valid;
    placement_local_var->application = application;
    placement_local_var->name = name;
    placement_local_var->description = description;
    placement_local_var->size = size;
    placement_local_var->click_type = click_type;
    placement_local_var->height = height;
    placement_local_var->width = width;
    placement_local_var->refresh_interval = refresh_interval;
    placement_local_var->default_image = default_image;

    placement_local_var->_library_owned = 1;
    return placement_local_var;
}

__attribute__((deprecated)) placement_t *placement_create(
    long id,
    int active,
    int valid,
    application_t *application,
    char *name,
    char *description,
    sirqul_iot_platform_placement_SIZE_e size,
    sirqul_iot_platform_placement_CLICKTYPE_e click_type,
    int height,
    int width,
    int refresh_interval,
    asset_t *default_image
    ) {
    return placement_create_internal (
        id,
        active,
        valid,
        application,
        name,
        description,
        size,
        click_type,
        height,
        width,
        refresh_interval,
        default_image
        );
}

void placement_free(placement_t *placement) {
    if(NULL == placement){
        return ;
    }
    if(placement->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "placement_free");
        return ;
    }
    listEntry_t *listEntry;
    if (placement->application) {
        application_free(placement->application);
        placement->application = NULL;
    }
    if (placement->name) {
        free(placement->name);
        placement->name = NULL;
    }
    if (placement->description) {
        free(placement->description);
        placement->description = NULL;
    }
    if (placement->default_image) {
        asset_free(placement->default_image);
        placement->default_image = NULL;
    }
    free(placement);
}

cJSON *placement_convertToJSON(placement_t *placement) {
    cJSON *item = cJSON_CreateObject();

    // placement->id
    if(placement->id) {
    if(cJSON_AddNumberToObject(item, "id", placement->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement->active
    if(placement->active) {
    if(cJSON_AddBoolToObject(item, "active", placement->active) == NULL) {
    goto fail; //Bool
    }
    }


    // placement->valid
    if(placement->valid) {
    if(cJSON_AddBoolToObject(item, "valid", placement->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // placement->application
    if(placement->application) {
    cJSON *application_local_JSON = application_convertToJSON(placement->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // placement->name
    if(placement->name) {
    if(cJSON_AddStringToObject(item, "name", placement->name) == NULL) {
    goto fail; //String
    }
    }


    // placement->description
    if(placement->description) {
    if(cJSON_AddStringToObject(item, "description", placement->description) == NULL) {
    goto fail; //String
    }
    }


    // placement->size
    if(placement->size != sirqul_iot_platform_placement_SIZE_NULL) {
    if(cJSON_AddStringToObject(item, "size", placement_size_ToString(placement->size)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // placement->click_type
    if(placement->click_type != sirqul_iot_platform_placement_CLICKTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "clickType", placement_click_type_ToString(placement->click_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // placement->height
    if(placement->height) {
    if(cJSON_AddNumberToObject(item, "height", placement->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement->width
    if(placement->width) {
    if(cJSON_AddNumberToObject(item, "width", placement->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement->refresh_interval
    if(placement->refresh_interval) {
    if(cJSON_AddNumberToObject(item, "refreshInterval", placement->refresh_interval) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement->default_image
    if(placement->default_image) {
    cJSON *default_image_local_JSON = asset_convertToJSON(placement->default_image);
    if(default_image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "defaultImage", default_image_local_JSON);
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

placement_t *placement_parseFromJSON(cJSON *placementJSON){

    placement_t *placement_local_var = NULL;

    // define the local variable for placement->application
    application_t *application_local_nonprim = NULL;

    // define the local variable for placement->default_image
    asset_t *default_image_local_nonprim = NULL;

    // placement->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(placementJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // placement->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(placementJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // placement->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(placementJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // placement->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(placementJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // placement->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(placementJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // placement->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(placementJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // placement->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(placementJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    sirqul_iot_platform_placement_SIZE_e sizeVariable;
    if (size) { 
    if(!cJSON_IsString(size))
    {
    goto end; //Enum
    }
    sizeVariable = placement_size_FromString(size->valuestring);
    }

    // placement->click_type
    cJSON *click_type = cJSON_GetObjectItemCaseSensitive(placementJSON, "clickType");
    if (cJSON_IsNull(click_type)) {
        click_type = NULL;
    }
    sirqul_iot_platform_placement_CLICKTYPE_e click_typeVariable;
    if (click_type) { 
    if(!cJSON_IsString(click_type))
    {
    goto end; //Enum
    }
    click_typeVariable = placement_click_type_FromString(click_type->valuestring);
    }

    // placement->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(placementJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // placement->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(placementJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // placement->refresh_interval
    cJSON *refresh_interval = cJSON_GetObjectItemCaseSensitive(placementJSON, "refreshInterval");
    if (cJSON_IsNull(refresh_interval)) {
        refresh_interval = NULL;
    }
    if (refresh_interval) { 
    if(!cJSON_IsNumber(refresh_interval))
    {
    goto end; //Numeric
    }
    }

    // placement->default_image
    cJSON *default_image = cJSON_GetObjectItemCaseSensitive(placementJSON, "defaultImage");
    if (cJSON_IsNull(default_image)) {
        default_image = NULL;
    }
    if (default_image) { 
    default_image_local_nonprim = asset_parseFromJSON(default_image); //nonprimitive
    }


    placement_local_var = placement_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        application ? application_local_nonprim : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        size ? sizeVariable : sirqul_iot_platform_placement_SIZE_NULL,
        click_type ? click_typeVariable : sirqul_iot_platform_placement_CLICKTYPE_NULL,
        height ? height->valuedouble : 0,
        width ? width->valuedouble : 0,
        refresh_interval ? refresh_interval->valuedouble : 0,
        default_image ? default_image_local_nonprim : NULL
        );

    return placement_local_var;
end:
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (default_image_local_nonprim) {
        asset_free(default_image_local_nonprim);
        default_image_local_nonprim = NULL;
    }
    return NULL;

}
