#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "direction.h"


char* direction_progress_status_ToString(sirqul_iot_platform_direction_PROGRESSSTATUS_e progress_status) {
    char* progress_statusArray[] =  { "NULL", "PENDING", "COMPLETE", "INVALID" };
    return progress_statusArray[progress_status];
}

sirqul_iot_platform_direction_PROGRESSSTATUS_e direction_progress_status_FromString(char* progress_status){
    int stringToReturn = 0;
    char *progress_statusArray[] =  { "NULL", "PENDING", "COMPLETE", "INVALID" };
    size_t sizeofArray = sizeof(progress_statusArray) / sizeof(progress_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(progress_status, progress_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static direction_t *direction_create_internal(
    long id,
    int active,
    int valid,
    char *distance,
    char *duration,
    double end_latitude,
    double end_longitude,
    double start_latitude,
    double start_longitude,
    char *instruction,
    char *polyline,
    sirqul_iot_platform_direction_PROGRESSSTATUS_e progress_status,
    int highlight
    ) {
    direction_t *direction_local_var = malloc(sizeof(direction_t));
    if (!direction_local_var) {
        return NULL;
    }
    direction_local_var->id = id;
    direction_local_var->active = active;
    direction_local_var->valid = valid;
    direction_local_var->distance = distance;
    direction_local_var->duration = duration;
    direction_local_var->end_latitude = end_latitude;
    direction_local_var->end_longitude = end_longitude;
    direction_local_var->start_latitude = start_latitude;
    direction_local_var->start_longitude = start_longitude;
    direction_local_var->instruction = instruction;
    direction_local_var->polyline = polyline;
    direction_local_var->progress_status = progress_status;
    direction_local_var->highlight = highlight;

    direction_local_var->_library_owned = 1;
    return direction_local_var;
}

__attribute__((deprecated)) direction_t *direction_create(
    long id,
    int active,
    int valid,
    char *distance,
    char *duration,
    double end_latitude,
    double end_longitude,
    double start_latitude,
    double start_longitude,
    char *instruction,
    char *polyline,
    sirqul_iot_platform_direction_PROGRESSSTATUS_e progress_status,
    int highlight
    ) {
    return direction_create_internal (
        id,
        active,
        valid,
        distance,
        duration,
        end_latitude,
        end_longitude,
        start_latitude,
        start_longitude,
        instruction,
        polyline,
        progress_status,
        highlight
        );
}

void direction_free(direction_t *direction) {
    if(NULL == direction){
        return ;
    }
    if(direction->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "direction_free");
        return ;
    }
    listEntry_t *listEntry;
    if (direction->distance) {
        free(direction->distance);
        direction->distance = NULL;
    }
    if (direction->duration) {
        free(direction->duration);
        direction->duration = NULL;
    }
    if (direction->instruction) {
        free(direction->instruction);
        direction->instruction = NULL;
    }
    if (direction->polyline) {
        free(direction->polyline);
        direction->polyline = NULL;
    }
    free(direction);
}

cJSON *direction_convertToJSON(direction_t *direction) {
    cJSON *item = cJSON_CreateObject();

    // direction->id
    if(direction->id) {
    if(cJSON_AddNumberToObject(item, "id", direction->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction->active
    if(direction->active) {
    if(cJSON_AddBoolToObject(item, "active", direction->active) == NULL) {
    goto fail; //Bool
    }
    }


    // direction->valid
    if(direction->valid) {
    if(cJSON_AddBoolToObject(item, "valid", direction->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // direction->distance
    if(direction->distance) {
    if(cJSON_AddStringToObject(item, "distance", direction->distance) == NULL) {
    goto fail; //String
    }
    }


    // direction->duration
    if(direction->duration) {
    if(cJSON_AddStringToObject(item, "duration", direction->duration) == NULL) {
    goto fail; //String
    }
    }


    // direction->end_latitude
    if(direction->end_latitude) {
    if(cJSON_AddNumberToObject(item, "endLatitude", direction->end_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction->end_longitude
    if(direction->end_longitude) {
    if(cJSON_AddNumberToObject(item, "endLongitude", direction->end_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction->start_latitude
    if(direction->start_latitude) {
    if(cJSON_AddNumberToObject(item, "startLatitude", direction->start_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction->start_longitude
    if(direction->start_longitude) {
    if(cJSON_AddNumberToObject(item, "startLongitude", direction->start_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // direction->instruction
    if(direction->instruction) {
    if(cJSON_AddStringToObject(item, "instruction", direction->instruction) == NULL) {
    goto fail; //String
    }
    }


    // direction->polyline
    if(direction->polyline) {
    if(cJSON_AddStringToObject(item, "polyline", direction->polyline) == NULL) {
    goto fail; //String
    }
    }


    // direction->progress_status
    if(direction->progress_status != sirqul_iot_platform_direction_PROGRESSSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "progressStatus", direction_progress_status_ToString(direction->progress_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // direction->highlight
    if(direction->highlight) {
    if(cJSON_AddBoolToObject(item, "highlight", direction->highlight) == NULL) {
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

direction_t *direction_parseFromJSON(cJSON *directionJSON){

    direction_t *direction_local_var = NULL;

    // direction->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(directionJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // direction->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(directionJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // direction->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(directionJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // direction->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(directionJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsString(distance) && !cJSON_IsNull(distance))
    {
    goto end; //String
    }
    }

    // direction->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(directionJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsString(duration) && !cJSON_IsNull(duration))
    {
    goto end; //String
    }
    }

    // direction->end_latitude
    cJSON *end_latitude = cJSON_GetObjectItemCaseSensitive(directionJSON, "endLatitude");
    if (cJSON_IsNull(end_latitude)) {
        end_latitude = NULL;
    }
    if (end_latitude) { 
    if(!cJSON_IsNumber(end_latitude))
    {
    goto end; //Numeric
    }
    }

    // direction->end_longitude
    cJSON *end_longitude = cJSON_GetObjectItemCaseSensitive(directionJSON, "endLongitude");
    if (cJSON_IsNull(end_longitude)) {
        end_longitude = NULL;
    }
    if (end_longitude) { 
    if(!cJSON_IsNumber(end_longitude))
    {
    goto end; //Numeric
    }
    }

    // direction->start_latitude
    cJSON *start_latitude = cJSON_GetObjectItemCaseSensitive(directionJSON, "startLatitude");
    if (cJSON_IsNull(start_latitude)) {
        start_latitude = NULL;
    }
    if (start_latitude) { 
    if(!cJSON_IsNumber(start_latitude))
    {
    goto end; //Numeric
    }
    }

    // direction->start_longitude
    cJSON *start_longitude = cJSON_GetObjectItemCaseSensitive(directionJSON, "startLongitude");
    if (cJSON_IsNull(start_longitude)) {
        start_longitude = NULL;
    }
    if (start_longitude) { 
    if(!cJSON_IsNumber(start_longitude))
    {
    goto end; //Numeric
    }
    }

    // direction->instruction
    cJSON *instruction = cJSON_GetObjectItemCaseSensitive(directionJSON, "instruction");
    if (cJSON_IsNull(instruction)) {
        instruction = NULL;
    }
    if (instruction) { 
    if(!cJSON_IsString(instruction) && !cJSON_IsNull(instruction))
    {
    goto end; //String
    }
    }

    // direction->polyline
    cJSON *polyline = cJSON_GetObjectItemCaseSensitive(directionJSON, "polyline");
    if (cJSON_IsNull(polyline)) {
        polyline = NULL;
    }
    if (polyline) { 
    if(!cJSON_IsString(polyline) && !cJSON_IsNull(polyline))
    {
    goto end; //String
    }
    }

    // direction->progress_status
    cJSON *progress_status = cJSON_GetObjectItemCaseSensitive(directionJSON, "progressStatus");
    if (cJSON_IsNull(progress_status)) {
        progress_status = NULL;
    }
    sirqul_iot_platform_direction_PROGRESSSTATUS_e progress_statusVariable;
    if (progress_status) { 
    if(!cJSON_IsString(progress_status))
    {
    goto end; //Enum
    }
    progress_statusVariable = direction_progress_status_FromString(progress_status->valuestring);
    }

    // direction->highlight
    cJSON *highlight = cJSON_GetObjectItemCaseSensitive(directionJSON, "highlight");
    if (cJSON_IsNull(highlight)) {
        highlight = NULL;
    }
    if (highlight) { 
    if(!cJSON_IsBool(highlight))
    {
    goto end; //Bool
    }
    }


    direction_local_var = direction_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        distance && !cJSON_IsNull(distance) ? strdup(distance->valuestring) : NULL,
        duration && !cJSON_IsNull(duration) ? strdup(duration->valuestring) : NULL,
        end_latitude ? end_latitude->valuedouble : 0,
        end_longitude ? end_longitude->valuedouble : 0,
        start_latitude ? start_latitude->valuedouble : 0,
        start_longitude ? start_longitude->valuedouble : 0,
        instruction && !cJSON_IsNull(instruction) ? strdup(instruction->valuestring) : NULL,
        polyline && !cJSON_IsNull(polyline) ? strdup(polyline->valuestring) : NULL,
        progress_status ? progress_statusVariable : sirqul_iot_platform_direction_PROGRESSSTATUS_NULL,
        highlight ? highlight->valueint : 0
        );

    return direction_local_var;
end:
    return NULL;

}
