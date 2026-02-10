#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "postal_code.h"



static postal_code_t *postal_code_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *code,
    char *plus4,
    char *state_code,
    char *city,
    char *time_zone,
    int utc_offset,
    list_t *regions,
    int eliminated,
    int search_point,
    char *last_offer_import,
    double truncated_latitude,
    double truncated_longitude
    ) {
    postal_code_t *postal_code_local_var = malloc(sizeof(postal_code_t));
    if (!postal_code_local_var) {
        return NULL;
    }
    postal_code_local_var->id = id;
    postal_code_local_var->active = active;
    postal_code_local_var->valid = valid;
    postal_code_local_var->latitude = latitude;
    postal_code_local_var->longitude = longitude;
    postal_code_local_var->location_description = location_description;
    postal_code_local_var->code = code;
    postal_code_local_var->plus4 = plus4;
    postal_code_local_var->state_code = state_code;
    postal_code_local_var->city = city;
    postal_code_local_var->time_zone = time_zone;
    postal_code_local_var->utc_offset = utc_offset;
    postal_code_local_var->regions = regions;
    postal_code_local_var->eliminated = eliminated;
    postal_code_local_var->search_point = search_point;
    postal_code_local_var->last_offer_import = last_offer_import;
    postal_code_local_var->truncated_latitude = truncated_latitude;
    postal_code_local_var->truncated_longitude = truncated_longitude;

    postal_code_local_var->_library_owned = 1;
    return postal_code_local_var;
}

__attribute__((deprecated)) postal_code_t *postal_code_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *code,
    char *plus4,
    char *state_code,
    char *city,
    char *time_zone,
    int utc_offset,
    list_t *regions,
    int eliminated,
    int search_point,
    char *last_offer_import,
    double truncated_latitude,
    double truncated_longitude
    ) {
    return postal_code_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        code,
        plus4,
        state_code,
        city,
        time_zone,
        utc_offset,
        regions,
        eliminated,
        search_point,
        last_offer_import,
        truncated_latitude,
        truncated_longitude
        );
}

void postal_code_free(postal_code_t *postal_code) {
    if(NULL == postal_code){
        return ;
    }
    if(postal_code->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "postal_code_free");
        return ;
    }
    listEntry_t *listEntry;
    if (postal_code->location_description) {
        free(postal_code->location_description);
        postal_code->location_description = NULL;
    }
    if (postal_code->code) {
        free(postal_code->code);
        postal_code->code = NULL;
    }
    if (postal_code->plus4) {
        free(postal_code->plus4);
        postal_code->plus4 = NULL;
    }
    if (postal_code->state_code) {
        free(postal_code->state_code);
        postal_code->state_code = NULL;
    }
    if (postal_code->city) {
        free(postal_code->city);
        postal_code->city = NULL;
    }
    if (postal_code->time_zone) {
        free(postal_code->time_zone);
        postal_code->time_zone = NULL;
    }
    if (postal_code->regions) {
        list_ForEach(listEntry, postal_code->regions) {
            region_free(listEntry->data);
        }
        list_freeList(postal_code->regions);
        postal_code->regions = NULL;
    }
    if (postal_code->last_offer_import) {
        free(postal_code->last_offer_import);
        postal_code->last_offer_import = NULL;
    }
    free(postal_code);
}

cJSON *postal_code_convertToJSON(postal_code_t *postal_code) {
    cJSON *item = cJSON_CreateObject();

    // postal_code->id
    if(postal_code->id) {
    if(cJSON_AddNumberToObject(item, "id", postal_code->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // postal_code->active
    if(postal_code->active) {
    if(cJSON_AddBoolToObject(item, "active", postal_code->active) == NULL) {
    goto fail; //Bool
    }
    }


    // postal_code->valid
    if(postal_code->valid) {
    if(cJSON_AddBoolToObject(item, "valid", postal_code->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // postal_code->latitude
    if(postal_code->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", postal_code->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // postal_code->longitude
    if(postal_code->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", postal_code->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // postal_code->location_description
    if(postal_code->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", postal_code->location_description) == NULL) {
    goto fail; //String
    }
    }


    // postal_code->code
    if(postal_code->code) {
    if(cJSON_AddStringToObject(item, "code", postal_code->code) == NULL) {
    goto fail; //String
    }
    }


    // postal_code->plus4
    if(postal_code->plus4) {
    if(cJSON_AddStringToObject(item, "plus4", postal_code->plus4) == NULL) {
    goto fail; //String
    }
    }


    // postal_code->state_code
    if(postal_code->state_code) {
    if(cJSON_AddStringToObject(item, "stateCode", postal_code->state_code) == NULL) {
    goto fail; //String
    }
    }


    // postal_code->city
    if(postal_code->city) {
    if(cJSON_AddStringToObject(item, "city", postal_code->city) == NULL) {
    goto fail; //String
    }
    }


    // postal_code->time_zone
    if(postal_code->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", postal_code->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // postal_code->utc_offset
    if(postal_code->utc_offset) {
    if(cJSON_AddNumberToObject(item, "utcOffset", postal_code->utc_offset) == NULL) {
    goto fail; //Numeric
    }
    }


    // postal_code->regions
    if(postal_code->regions) {
    cJSON *regions = cJSON_AddArrayToObject(item, "regions");
    if(regions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *regionsListEntry;
    if (postal_code->regions) {
    list_ForEach(regionsListEntry, postal_code->regions) {
    cJSON *itemLocal = region_convertToJSON(regionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(regions, itemLocal);
    }
    }
    }


    // postal_code->eliminated
    if(postal_code->eliminated) {
    if(cJSON_AddBoolToObject(item, "eliminated", postal_code->eliminated) == NULL) {
    goto fail; //Bool
    }
    }


    // postal_code->search_point
    if(postal_code->search_point) {
    if(cJSON_AddBoolToObject(item, "searchPoint", postal_code->search_point) == NULL) {
    goto fail; //Bool
    }
    }


    // postal_code->last_offer_import
    if(postal_code->last_offer_import) {
    if(cJSON_AddStringToObject(item, "lastOfferImport", postal_code->last_offer_import) == NULL) {
    goto fail; //Date-Time
    }
    }


    // postal_code->truncated_latitude
    if(postal_code->truncated_latitude) {
    if(cJSON_AddNumberToObject(item, "truncatedLatitude", postal_code->truncated_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // postal_code->truncated_longitude
    if(postal_code->truncated_longitude) {
    if(cJSON_AddNumberToObject(item, "truncatedLongitude", postal_code->truncated_longitude) == NULL) {
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

postal_code_t *postal_code_parseFromJSON(cJSON *postal_codeJSON){

    postal_code_t *postal_code_local_var = NULL;

    // define the local list for postal_code->regions
    list_t *regionsList = NULL;

    // postal_code->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // postal_code->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // postal_code->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // postal_code->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // postal_code->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // postal_code->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // postal_code->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    if(!cJSON_IsString(code) && !cJSON_IsNull(code))
    {
    goto end; //String
    }
    }

    // postal_code->plus4
    cJSON *plus4 = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "plus4");
    if (cJSON_IsNull(plus4)) {
        plus4 = NULL;
    }
    if (plus4) { 
    if(!cJSON_IsString(plus4) && !cJSON_IsNull(plus4))
    {
    goto end; //String
    }
    }

    // postal_code->state_code
    cJSON *state_code = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "stateCode");
    if (cJSON_IsNull(state_code)) {
        state_code = NULL;
    }
    if (state_code) { 
    if(!cJSON_IsString(state_code) && !cJSON_IsNull(state_code))
    {
    goto end; //String
    }
    }

    // postal_code->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // postal_code->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // postal_code->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsNumber(utc_offset))
    {
    goto end; //Numeric
    }
    }

    // postal_code->regions
    cJSON *regions = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "regions");
    if (cJSON_IsNull(regions)) {
        regions = NULL;
    }
    if (regions) { 
    cJSON *regions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(regions)){
        goto end; //nonprimitive container
    }

    regionsList = list_createList();

    cJSON_ArrayForEach(regions_local_nonprimitive,regions )
    {
        if(!cJSON_IsObject(regions_local_nonprimitive)){
            goto end;
        }
        region_t *regionsItem = region_parseFromJSON(regions_local_nonprimitive);

        list_addElement(regionsList, regionsItem);
    }
    }

    // postal_code->eliminated
    cJSON *eliminated = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "eliminated");
    if (cJSON_IsNull(eliminated)) {
        eliminated = NULL;
    }
    if (eliminated) { 
    if(!cJSON_IsBool(eliminated))
    {
    goto end; //Bool
    }
    }

    // postal_code->search_point
    cJSON *search_point = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "searchPoint");
    if (cJSON_IsNull(search_point)) {
        search_point = NULL;
    }
    if (search_point) { 
    if(!cJSON_IsBool(search_point))
    {
    goto end; //Bool
    }
    }

    // postal_code->last_offer_import
    cJSON *last_offer_import = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "lastOfferImport");
    if (cJSON_IsNull(last_offer_import)) {
        last_offer_import = NULL;
    }
    if (last_offer_import) { 
    if(!cJSON_IsString(last_offer_import) && !cJSON_IsNull(last_offer_import))
    {
    goto end; //DateTime
    }
    }

    // postal_code->truncated_latitude
    cJSON *truncated_latitude = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "truncatedLatitude");
    if (cJSON_IsNull(truncated_latitude)) {
        truncated_latitude = NULL;
    }
    if (truncated_latitude) { 
    if(!cJSON_IsNumber(truncated_latitude))
    {
    goto end; //Numeric
    }
    }

    // postal_code->truncated_longitude
    cJSON *truncated_longitude = cJSON_GetObjectItemCaseSensitive(postal_codeJSON, "truncatedLongitude");
    if (cJSON_IsNull(truncated_longitude)) {
        truncated_longitude = NULL;
    }
    if (truncated_longitude) { 
    if(!cJSON_IsNumber(truncated_longitude))
    {
    goto end; //Numeric
    }
    }


    postal_code_local_var = postal_code_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        code && !cJSON_IsNull(code) ? strdup(code->valuestring) : NULL,
        plus4 && !cJSON_IsNull(plus4) ? strdup(plus4->valuestring) : NULL,
        state_code && !cJSON_IsNull(state_code) ? strdup(state_code->valuestring) : NULL,
        city && !cJSON_IsNull(city) ? strdup(city->valuestring) : NULL,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL,
        utc_offset ? utc_offset->valuedouble : 0,
        regions ? regionsList : NULL,
        eliminated ? eliminated->valueint : 0,
        search_point ? search_point->valueint : 0,
        last_offer_import && !cJSON_IsNull(last_offer_import) ? strdup(last_offer_import->valuestring) : NULL,
        truncated_latitude ? truncated_latitude->valuedouble : 0,
        truncated_longitude ? truncated_longitude->valuedouble : 0
        );

    return postal_code_local_var;
end:
    if (regionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, regionsList) {
            region_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(regionsList);
        regionsList = NULL;
    }
    return NULL;

}
