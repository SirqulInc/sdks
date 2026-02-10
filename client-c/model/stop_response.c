#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "stop_response.h"


char* stop_response_type_ToString(sirqul_iot_platform_stop_response_TYPE_e type) {
    char* typeArray[] =  { "NULL", "PICKUP", "DROPOFF", "START", "END", "ROUTING" };
    return typeArray[type];
}

sirqul_iot_platform_stop_response_TYPE_e stop_response_type_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "PICKUP", "DROPOFF", "START", "END", "ROUTING" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static stop_response_t *stop_response_create_internal(
    char *geo_id,
    double latitude,
    double longitude,
    long start_window,
    long end_window,
    sirqul_iot_platform_stop_response_TYPE_e type,
    long eta,
    long etd,
    long score,
    char *error_code,
    char *error,
    char *item_id,
    long item_size,
    load_short_response_t *load,
    list_t *floor_plan_path,
    int valid
    ) {
    stop_response_t *stop_response_local_var = malloc(sizeof(stop_response_t));
    if (!stop_response_local_var) {
        return NULL;
    }
    stop_response_local_var->geo_id = geo_id;
    stop_response_local_var->latitude = latitude;
    stop_response_local_var->longitude = longitude;
    stop_response_local_var->start_window = start_window;
    stop_response_local_var->end_window = end_window;
    stop_response_local_var->type = type;
    stop_response_local_var->eta = eta;
    stop_response_local_var->etd = etd;
    stop_response_local_var->score = score;
    stop_response_local_var->error_code = error_code;
    stop_response_local_var->error = error;
    stop_response_local_var->item_id = item_id;
    stop_response_local_var->item_size = item_size;
    stop_response_local_var->load = load;
    stop_response_local_var->floor_plan_path = floor_plan_path;
    stop_response_local_var->valid = valid;

    stop_response_local_var->_library_owned = 1;
    return stop_response_local_var;
}

__attribute__((deprecated)) stop_response_t *stop_response_create(
    char *geo_id,
    double latitude,
    double longitude,
    long start_window,
    long end_window,
    sirqul_iot_platform_stop_response_TYPE_e type,
    long eta,
    long etd,
    long score,
    char *error_code,
    char *error,
    char *item_id,
    long item_size,
    load_short_response_t *load,
    list_t *floor_plan_path,
    int valid
    ) {
    return stop_response_create_internal (
        geo_id,
        latitude,
        longitude,
        start_window,
        end_window,
        type,
        eta,
        etd,
        score,
        error_code,
        error,
        item_id,
        item_size,
        load,
        floor_plan_path,
        valid
        );
}

void stop_response_free(stop_response_t *stop_response) {
    if(NULL == stop_response){
        return ;
    }
    if(stop_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "stop_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (stop_response->geo_id) {
        free(stop_response->geo_id);
        stop_response->geo_id = NULL;
    }
    if (stop_response->error_code) {
        free(stop_response->error_code);
        stop_response->error_code = NULL;
    }
    if (stop_response->error) {
        free(stop_response->error);
        stop_response->error = NULL;
    }
    if (stop_response->item_id) {
        free(stop_response->item_id);
        stop_response->item_id = NULL;
    }
    if (stop_response->load) {
        load_short_response_free(stop_response->load);
        stop_response->load = NULL;
    }
    if (stop_response->floor_plan_path) {
        list_ForEach(listEntry, stop_response->floor_plan_path) {
            node_request_free(listEntry->data);
        }
        list_freeList(stop_response->floor_plan_path);
        stop_response->floor_plan_path = NULL;
    }
    free(stop_response);
}

cJSON *stop_response_convertToJSON(stop_response_t *stop_response) {
    cJSON *item = cJSON_CreateObject();

    // stop_response->geo_id
    if(stop_response->geo_id) {
    if(cJSON_AddStringToObject(item, "geoId", stop_response->geo_id) == NULL) {
    goto fail; //String
    }
    }


    // stop_response->latitude
    if(stop_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", stop_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->longitude
    if(stop_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", stop_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->start_window
    if(stop_response->start_window) {
    if(cJSON_AddNumberToObject(item, "startWindow", stop_response->start_window) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->end_window
    if(stop_response->end_window) {
    if(cJSON_AddNumberToObject(item, "endWindow", stop_response->end_window) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->type
    if(stop_response->type != sirqul_iot_platform_stop_response_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", stop_response_type_ToString(stop_response->type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // stop_response->eta
    if(stop_response->eta) {
    if(cJSON_AddNumberToObject(item, "eta", stop_response->eta) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->etd
    if(stop_response->etd) {
    if(cJSON_AddNumberToObject(item, "etd", stop_response->etd) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->score
    if(stop_response->score) {
    if(cJSON_AddNumberToObject(item, "score", stop_response->score) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->error_code
    if(stop_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", stop_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // stop_response->error
    if(stop_response->error) {
    if(cJSON_AddStringToObject(item, "error", stop_response->error) == NULL) {
    goto fail; //String
    }
    }


    // stop_response->item_id
    if(stop_response->item_id) {
    if(cJSON_AddStringToObject(item, "itemId", stop_response->item_id) == NULL) {
    goto fail; //String
    }
    }


    // stop_response->item_size
    if(stop_response->item_size) {
    if(cJSON_AddNumberToObject(item, "itemSize", stop_response->item_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // stop_response->load
    if(stop_response->load) {
    cJSON *load_local_JSON = load_short_response_convertToJSON(stop_response->load);
    if(load_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "load", load_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // stop_response->floor_plan_path
    if(stop_response->floor_plan_path) {
    cJSON *floor_plan_path = cJSON_AddArrayToObject(item, "floorPlanPath");
    if(floor_plan_path == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *floor_plan_pathListEntry;
    if (stop_response->floor_plan_path) {
    list_ForEach(floor_plan_pathListEntry, stop_response->floor_plan_path) {
    cJSON *itemLocal = node_request_convertToJSON(floor_plan_pathListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(floor_plan_path, itemLocal);
    }
    }
    }


    // stop_response->valid
    if(stop_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", stop_response->valid) == NULL) {
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

stop_response_t *stop_response_parseFromJSON(cJSON *stop_responseJSON){

    stop_response_t *stop_response_local_var = NULL;

    // define the local variable for stop_response->load
    load_short_response_t *load_local_nonprim = NULL;

    // define the local list for stop_response->floor_plan_path
    list_t *floor_plan_pathList = NULL;

    // stop_response->geo_id
    cJSON *geo_id = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "geoId");
    if (cJSON_IsNull(geo_id)) {
        geo_id = NULL;
    }
    if (geo_id) { 
    if(!cJSON_IsString(geo_id) && !cJSON_IsNull(geo_id))
    {
    goto end; //String
    }
    }

    // stop_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // stop_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // stop_response->start_window
    cJSON *start_window = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "startWindow");
    if (cJSON_IsNull(start_window)) {
        start_window = NULL;
    }
    if (start_window) { 
    if(!cJSON_IsNumber(start_window))
    {
    goto end; //Numeric
    }
    }

    // stop_response->end_window
    cJSON *end_window = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "endWindow");
    if (cJSON_IsNull(end_window)) {
        end_window = NULL;
    }
    if (end_window) { 
    if(!cJSON_IsNumber(end_window))
    {
    goto end; //Numeric
    }
    }

    // stop_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    sirqul_iot_platform_stop_response_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = stop_response_type_FromString(type->valuestring);
    }

    // stop_response->eta
    cJSON *eta = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "eta");
    if (cJSON_IsNull(eta)) {
        eta = NULL;
    }
    if (eta) { 
    if(!cJSON_IsNumber(eta))
    {
    goto end; //Numeric
    }
    }

    // stop_response->etd
    cJSON *etd = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "etd");
    if (cJSON_IsNull(etd)) {
        etd = NULL;
    }
    if (etd) { 
    if(!cJSON_IsNumber(etd))
    {
    goto end; //Numeric
    }
    }

    // stop_response->score
    cJSON *score = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "score");
    if (cJSON_IsNull(score)) {
        score = NULL;
    }
    if (score) { 
    if(!cJSON_IsNumber(score))
    {
    goto end; //Numeric
    }
    }

    // stop_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // stop_response->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "error");
    if (cJSON_IsNull(error)) {
        error = NULL;
    }
    if (error) { 
    if(!cJSON_IsString(error) && !cJSON_IsNull(error))
    {
    goto end; //String
    }
    }

    // stop_response->item_id
    cJSON *item_id = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "itemId");
    if (cJSON_IsNull(item_id)) {
        item_id = NULL;
    }
    if (item_id) { 
    if(!cJSON_IsString(item_id) && !cJSON_IsNull(item_id))
    {
    goto end; //String
    }
    }

    // stop_response->item_size
    cJSON *item_size = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "itemSize");
    if (cJSON_IsNull(item_size)) {
        item_size = NULL;
    }
    if (item_size) { 
    if(!cJSON_IsNumber(item_size))
    {
    goto end; //Numeric
    }
    }

    // stop_response->load
    cJSON *load = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "load");
    if (cJSON_IsNull(load)) {
        load = NULL;
    }
    if (load) { 
    load_local_nonprim = load_short_response_parseFromJSON(load); //nonprimitive
    }

    // stop_response->floor_plan_path
    cJSON *floor_plan_path = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "floorPlanPath");
    if (cJSON_IsNull(floor_plan_path)) {
        floor_plan_path = NULL;
    }
    if (floor_plan_path) { 
    cJSON *floor_plan_path_local_nonprimitive = NULL;
    if(!cJSON_IsArray(floor_plan_path)){
        goto end; //nonprimitive container
    }

    floor_plan_pathList = list_createList();

    cJSON_ArrayForEach(floor_plan_path_local_nonprimitive,floor_plan_path )
    {
        if(!cJSON_IsObject(floor_plan_path_local_nonprimitive)){
            goto end;
        }
        node_request_t *floor_plan_pathItem = node_request_parseFromJSON(floor_plan_path_local_nonprimitive);

        list_addElement(floor_plan_pathList, floor_plan_pathItem);
    }
    }

    // stop_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(stop_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }


    stop_response_local_var = stop_response_create_internal (
        geo_id && !cJSON_IsNull(geo_id) ? strdup(geo_id->valuestring) : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        start_window ? start_window->valuedouble : 0,
        end_window ? end_window->valuedouble : 0,
        type ? typeVariable : sirqul_iot_platform_stop_response_TYPE_NULL,
        eta ? eta->valuedouble : 0,
        etd ? etd->valuedouble : 0,
        score ? score->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        error && !cJSON_IsNull(error) ? strdup(error->valuestring) : NULL,
        item_id && !cJSON_IsNull(item_id) ? strdup(item_id->valuestring) : NULL,
        item_size ? item_size->valuedouble : 0,
        load ? load_local_nonprim : NULL,
        floor_plan_path ? floor_plan_pathList : NULL,
        valid ? valid->valueint : 0
        );

    return stop_response_local_var;
end:
    if (load_local_nonprim) {
        load_short_response_free(load_local_nonprim);
        load_local_nonprim = NULL;
    }
    if (floor_plan_pathList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, floor_plan_pathList) {
            node_request_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(floor_plan_pathList);
        floor_plan_pathList = NULL;
    }
    return NULL;

}
