#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_package.h"



static order_package_t *order_package_create_internal(
    int valid,
    char *package_type_name,
    int package_count,
    double cubic_feet
    ) {
    order_package_t *order_package_local_var = malloc(sizeof(order_package_t));
    if (!order_package_local_var) {
        return NULL;
    }
    order_package_local_var->valid = valid;
    order_package_local_var->package_type_name = package_type_name;
    order_package_local_var->package_count = package_count;
    order_package_local_var->cubic_feet = cubic_feet;

    order_package_local_var->_library_owned = 1;
    return order_package_local_var;
}

__attribute__((deprecated)) order_package_t *order_package_create(
    int valid,
    char *package_type_name,
    int package_count,
    double cubic_feet
    ) {
    return order_package_create_internal (
        valid,
        package_type_name,
        package_count,
        cubic_feet
        );
}

void order_package_free(order_package_t *order_package) {
    if(NULL == order_package){
        return ;
    }
    if(order_package->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "order_package_free");
        return ;
    }
    listEntry_t *listEntry;
    if (order_package->package_type_name) {
        free(order_package->package_type_name);
        order_package->package_type_name = NULL;
    }
    free(order_package);
}

cJSON *order_package_convertToJSON(order_package_t *order_package) {
    cJSON *item = cJSON_CreateObject();

    // order_package->valid
    if(order_package->valid) {
    if(cJSON_AddBoolToObject(item, "valid", order_package->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // order_package->package_type_name
    if(order_package->package_type_name) {
    if(cJSON_AddStringToObject(item, "PackageTypeName", order_package->package_type_name) == NULL) {
    goto fail; //String
    }
    }


    // order_package->package_count
    if(order_package->package_count) {
    if(cJSON_AddNumberToObject(item, "PackageCount", order_package->package_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_package->cubic_feet
    if(order_package->cubic_feet) {
    if(cJSON_AddNumberToObject(item, "CubicFeet", order_package->cubic_feet) == NULL) {
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

order_package_t *order_package_parseFromJSON(cJSON *order_packageJSON){

    order_package_t *order_package_local_var = NULL;

    // order_package->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(order_packageJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // order_package->package_type_name
    cJSON *package_type_name = cJSON_GetObjectItemCaseSensitive(order_packageJSON, "PackageTypeName");
    if (cJSON_IsNull(package_type_name)) {
        package_type_name = NULL;
    }
    if (package_type_name) { 
    if(!cJSON_IsString(package_type_name) && !cJSON_IsNull(package_type_name))
    {
    goto end; //String
    }
    }

    // order_package->package_count
    cJSON *package_count = cJSON_GetObjectItemCaseSensitive(order_packageJSON, "PackageCount");
    if (cJSON_IsNull(package_count)) {
        package_count = NULL;
    }
    if (package_count) { 
    if(!cJSON_IsNumber(package_count))
    {
    goto end; //Numeric
    }
    }

    // order_package->cubic_feet
    cJSON *cubic_feet = cJSON_GetObjectItemCaseSensitive(order_packageJSON, "CubicFeet");
    if (cJSON_IsNull(cubic_feet)) {
        cubic_feet = NULL;
    }
    if (cubic_feet) { 
    if(!cJSON_IsNumber(cubic_feet))
    {
    goto end; //Numeric
    }
    }


    order_package_local_var = order_package_create_internal (
        valid ? valid->valueint : 0,
        package_type_name && !cJSON_IsNull(package_type_name) ? strdup(package_type_name->valuestring) : NULL,
        package_count ? package_count->valuedouble : 0,
        cubic_feet ? cubic_feet->valuedouble : 0
        );

    return order_package_local_var;
end:
    return NULL;

}
