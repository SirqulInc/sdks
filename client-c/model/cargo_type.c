#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cargo_type.h"



static cargo_type_t *cargo_type_create_internal(
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
    double weight,
    long load_time,
    int palletizable,
    int pallet_ratio,
    int admin_only
    ) {
    cargo_type_t *cargo_type_local_var = malloc(sizeof(cargo_type_t));
    if (!cargo_type_local_var) {
        return NULL;
    }
    cargo_type_local_var->id = id;
    cargo_type_local_var->active = active;
    cargo_type_local_var->valid = valid;
    cargo_type_local_var->business = business;
    cargo_type_local_var->hub = hub;
    cargo_type_local_var->name = name;
    cargo_type_local_var->width = width;
    cargo_type_local_var->height = height;
    cargo_type_local_var->depth = depth;
    cargo_type_local_var->volume = volume;
    cargo_type_local_var->weight = weight;
    cargo_type_local_var->load_time = load_time;
    cargo_type_local_var->palletizable = palletizable;
    cargo_type_local_var->pallet_ratio = pallet_ratio;
    cargo_type_local_var->admin_only = admin_only;

    cargo_type_local_var->_library_owned = 1;
    return cargo_type_local_var;
}

__attribute__((deprecated)) cargo_type_t *cargo_type_create(
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
    double weight,
    long load_time,
    int palletizable,
    int pallet_ratio,
    int admin_only
    ) {
    return cargo_type_create_internal (
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
        weight,
        load_time,
        palletizable,
        pallet_ratio,
        admin_only
        );
}

void cargo_type_free(cargo_type_t *cargo_type) {
    if(NULL == cargo_type){
        return ;
    }
    if(cargo_type->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cargo_type_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cargo_type->business) {
        retailer_free(cargo_type->business);
        cargo_type->business = NULL;
    }
    if (cargo_type->hub) {
        service_hub_free(cargo_type->hub);
        cargo_type->hub = NULL;
    }
    if (cargo_type->name) {
        free(cargo_type->name);
        cargo_type->name = NULL;
    }
    free(cargo_type);
}

cJSON *cargo_type_convertToJSON(cargo_type_t *cargo_type) {
    cJSON *item = cJSON_CreateObject();

    // cargo_type->id
    if(cargo_type->id) {
    if(cJSON_AddNumberToObject(item, "id", cargo_type->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->active
    if(cargo_type->active) {
    if(cJSON_AddBoolToObject(item, "active", cargo_type->active) == NULL) {
    goto fail; //Bool
    }
    }


    // cargo_type->valid
    if(cargo_type->valid) {
    if(cJSON_AddBoolToObject(item, "valid", cargo_type->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // cargo_type->business
    if(cargo_type->business) {
    cJSON *business_local_JSON = retailer_convertToJSON(cargo_type->business);
    if(business_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "business", business_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cargo_type->hub
    if(cargo_type->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(cargo_type->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cargo_type->name
    if(cargo_type->name) {
    if(cJSON_AddStringToObject(item, "name", cargo_type->name) == NULL) {
    goto fail; //String
    }
    }


    // cargo_type->width
    if(cargo_type->width) {
    if(cJSON_AddNumberToObject(item, "width", cargo_type->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->height
    if(cargo_type->height) {
    if(cJSON_AddNumberToObject(item, "height", cargo_type->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->depth
    if(cargo_type->depth) {
    if(cJSON_AddNumberToObject(item, "depth", cargo_type->depth) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->volume
    if(cargo_type->volume) {
    if(cJSON_AddNumberToObject(item, "volume", cargo_type->volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->weight
    if(cargo_type->weight) {
    if(cJSON_AddNumberToObject(item, "weight", cargo_type->weight) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->load_time
    if(cargo_type->load_time) {
    if(cJSON_AddNumberToObject(item, "loadTime", cargo_type->load_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->palletizable
    if(cargo_type->palletizable) {
    if(cJSON_AddBoolToObject(item, "palletizable", cargo_type->palletizable) == NULL) {
    goto fail; //Bool
    }
    }


    // cargo_type->pallet_ratio
    if(cargo_type->pallet_ratio) {
    if(cJSON_AddNumberToObject(item, "palletRatio", cargo_type->pallet_ratio) == NULL) {
    goto fail; //Numeric
    }
    }


    // cargo_type->admin_only
    if(cargo_type->admin_only) {
    if(cJSON_AddBoolToObject(item, "adminOnly", cargo_type->admin_only) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cargo_type_t *cargo_type_parseFromJSON(cJSON *cargo_typeJSON){

    cargo_type_t *cargo_type_local_var = NULL;

    // define the local variable for cargo_type->business
    retailer_t *business_local_nonprim = NULL;

    // define the local variable for cargo_type->hub
    service_hub_t *hub_local_nonprim = NULL;

    // cargo_type->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // cargo_type->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // cargo_type->business
    cJSON *business = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "business");
    if (cJSON_IsNull(business)) {
        business = NULL;
    }
    if (business) { 
    business_local_nonprim = retailer_parseFromJSON(business); //nonprimitive
    }

    // cargo_type->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }

    // cargo_type->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cargo_type->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->depth
    cJSON *depth = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "depth");
    if (cJSON_IsNull(depth)) {
        depth = NULL;
    }
    if (depth) { 
    if(!cJSON_IsNumber(depth))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "volume");
    if (cJSON_IsNull(volume)) {
        volume = NULL;
    }
    if (volume) { 
    if(!cJSON_IsNumber(volume))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->weight
    cJSON *weight = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "weight");
    if (cJSON_IsNull(weight)) {
        weight = NULL;
    }
    if (weight) { 
    if(!cJSON_IsNumber(weight))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->load_time
    cJSON *load_time = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "loadTime");
    if (cJSON_IsNull(load_time)) {
        load_time = NULL;
    }
    if (load_time) { 
    if(!cJSON_IsNumber(load_time))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->palletizable
    cJSON *palletizable = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "palletizable");
    if (cJSON_IsNull(palletizable)) {
        palletizable = NULL;
    }
    if (palletizable) { 
    if(!cJSON_IsBool(palletizable))
    {
    goto end; //Bool
    }
    }

    // cargo_type->pallet_ratio
    cJSON *pallet_ratio = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "palletRatio");
    if (cJSON_IsNull(pallet_ratio)) {
        pallet_ratio = NULL;
    }
    if (pallet_ratio) { 
    if(!cJSON_IsNumber(pallet_ratio))
    {
    goto end; //Numeric
    }
    }

    // cargo_type->admin_only
    cJSON *admin_only = cJSON_GetObjectItemCaseSensitive(cargo_typeJSON, "adminOnly");
    if (cJSON_IsNull(admin_only)) {
        admin_only = NULL;
    }
    if (admin_only) { 
    if(!cJSON_IsBool(admin_only))
    {
    goto end; //Bool
    }
    }


    cargo_type_local_var = cargo_type_create_internal (
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
        weight ? weight->valuedouble : 0,
        load_time ? load_time->valuedouble : 0,
        palletizable ? palletizable->valueint : 0,
        pallet_ratio ? pallet_ratio->valuedouble : 0,
        admin_only ? admin_only->valueint : 0
        );

    return cargo_type_local_var;
end:
    if (business_local_nonprim) {
        retailer_free(business_local_nonprim);
        business_local_nonprim = NULL;
    }
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    return NULL;

}
