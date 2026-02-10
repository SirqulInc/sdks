#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "region_leg_summary.h"



static region_leg_summary_t *region_leg_summary_create_internal(
    long id,
    int active,
    int valid,
    long region_id,
    char *floor_id,
    long retailer_location_id,
    long leg_id
    ) {
    region_leg_summary_t *region_leg_summary_local_var = malloc(sizeof(region_leg_summary_t));
    if (!region_leg_summary_local_var) {
        return NULL;
    }
    region_leg_summary_local_var->id = id;
    region_leg_summary_local_var->active = active;
    region_leg_summary_local_var->valid = valid;
    region_leg_summary_local_var->region_id = region_id;
    region_leg_summary_local_var->floor_id = floor_id;
    region_leg_summary_local_var->retailer_location_id = retailer_location_id;
    region_leg_summary_local_var->leg_id = leg_id;

    region_leg_summary_local_var->_library_owned = 1;
    return region_leg_summary_local_var;
}

__attribute__((deprecated)) region_leg_summary_t *region_leg_summary_create(
    long id,
    int active,
    int valid,
    long region_id,
    char *floor_id,
    long retailer_location_id,
    long leg_id
    ) {
    return region_leg_summary_create_internal (
        id,
        active,
        valid,
        region_id,
        floor_id,
        retailer_location_id,
        leg_id
        );
}

void region_leg_summary_free(region_leg_summary_t *region_leg_summary) {
    if(NULL == region_leg_summary){
        return ;
    }
    if(region_leg_summary->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "region_leg_summary_free");
        return ;
    }
    listEntry_t *listEntry;
    if (region_leg_summary->floor_id) {
        free(region_leg_summary->floor_id);
        region_leg_summary->floor_id = NULL;
    }
    free(region_leg_summary);
}

cJSON *region_leg_summary_convertToJSON(region_leg_summary_t *region_leg_summary) {
    cJSON *item = cJSON_CreateObject();

    // region_leg_summary->id
    if(region_leg_summary->id) {
    if(cJSON_AddNumberToObject(item, "id", region_leg_summary->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_leg_summary->active
    if(region_leg_summary->active) {
    if(cJSON_AddBoolToObject(item, "active", region_leg_summary->active) == NULL) {
    goto fail; //Bool
    }
    }


    // region_leg_summary->valid
    if(region_leg_summary->valid) {
    if(cJSON_AddBoolToObject(item, "valid", region_leg_summary->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // region_leg_summary->region_id
    if(region_leg_summary->region_id) {
    if(cJSON_AddNumberToObject(item, "regionId", region_leg_summary->region_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_leg_summary->floor_id
    if(region_leg_summary->floor_id) {
    if(cJSON_AddStringToObject(item, "floorId", region_leg_summary->floor_id) == NULL) {
    goto fail; //String
    }
    }


    // region_leg_summary->retailer_location_id
    if(region_leg_summary->retailer_location_id) {
    if(cJSON_AddNumberToObject(item, "retailerLocationId", region_leg_summary->retailer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_leg_summary->leg_id
    if(region_leg_summary->leg_id) {
    if(cJSON_AddNumberToObject(item, "legId", region_leg_summary->leg_id) == NULL) {
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

region_leg_summary_t *region_leg_summary_parseFromJSON(cJSON *region_leg_summaryJSON){

    region_leg_summary_t *region_leg_summary_local_var = NULL;

    // region_leg_summary->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(region_leg_summaryJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // region_leg_summary->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(region_leg_summaryJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // region_leg_summary->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(region_leg_summaryJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // region_leg_summary->region_id
    cJSON *region_id = cJSON_GetObjectItemCaseSensitive(region_leg_summaryJSON, "regionId");
    if (cJSON_IsNull(region_id)) {
        region_id = NULL;
    }
    if (region_id) { 
    if(!cJSON_IsNumber(region_id))
    {
    goto end; //Numeric
    }
    }

    // region_leg_summary->floor_id
    cJSON *floor_id = cJSON_GetObjectItemCaseSensitive(region_leg_summaryJSON, "floorId");
    if (cJSON_IsNull(floor_id)) {
        floor_id = NULL;
    }
    if (floor_id) { 
    if(!cJSON_IsString(floor_id) && !cJSON_IsNull(floor_id))
    {
    goto end; //String
    }
    }

    // region_leg_summary->retailer_location_id
    cJSON *retailer_location_id = cJSON_GetObjectItemCaseSensitive(region_leg_summaryJSON, "retailerLocationId");
    if (cJSON_IsNull(retailer_location_id)) {
        retailer_location_id = NULL;
    }
    if (retailer_location_id) { 
    if(!cJSON_IsNumber(retailer_location_id))
    {
    goto end; //Numeric
    }
    }

    // region_leg_summary->leg_id
    cJSON *leg_id = cJSON_GetObjectItemCaseSensitive(region_leg_summaryJSON, "legId");
    if (cJSON_IsNull(leg_id)) {
        leg_id = NULL;
    }
    if (leg_id) { 
    if(!cJSON_IsNumber(leg_id))
    {
    goto end; //Numeric
    }
    }


    region_leg_summary_local_var = region_leg_summary_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        region_id ? region_id->valuedouble : 0,
        floor_id && !cJSON_IsNull(floor_id) ? strdup(floor_id->valuestring) : NULL,
        retailer_location_id ? retailer_location_id->valuedouble : 0,
        leg_id ? leg_id->valuedouble : 0
        );

    return region_leg_summary_local_var;
end:
    return NULL;

}
