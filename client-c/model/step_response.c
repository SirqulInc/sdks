#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "step_response.h"



static step_response_t *step_response_create_internal(
    leg_response_t *leg,
    double distance,
    long duration,
    double start_lat,
    double start_lng,
    double start_alt,
    long start_date,
    double end_lat,
    double end_lng,
    double end_alt,
    long end_date,
    int accuracy
    ) {
    step_response_t *step_response_local_var = malloc(sizeof(step_response_t));
    if (!step_response_local_var) {
        return NULL;
    }
    step_response_local_var->leg = leg;
    step_response_local_var->distance = distance;
    step_response_local_var->duration = duration;
    step_response_local_var->start_lat = start_lat;
    step_response_local_var->start_lng = start_lng;
    step_response_local_var->start_alt = start_alt;
    step_response_local_var->start_date = start_date;
    step_response_local_var->end_lat = end_lat;
    step_response_local_var->end_lng = end_lng;
    step_response_local_var->end_alt = end_alt;
    step_response_local_var->end_date = end_date;
    step_response_local_var->accuracy = accuracy;

    step_response_local_var->_library_owned = 1;
    return step_response_local_var;
}

__attribute__((deprecated)) step_response_t *step_response_create(
    leg_response_t *leg,
    double distance,
    long duration,
    double start_lat,
    double start_lng,
    double start_alt,
    long start_date,
    double end_lat,
    double end_lng,
    double end_alt,
    long end_date,
    int accuracy
    ) {
    return step_response_create_internal (
        leg,
        distance,
        duration,
        start_lat,
        start_lng,
        start_alt,
        start_date,
        end_lat,
        end_lng,
        end_alt,
        end_date,
        accuracy
        );
}

void step_response_free(step_response_t *step_response) {
    if(NULL == step_response){
        return ;
    }
    if(step_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "step_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (step_response->leg) {
        leg_response_free(step_response->leg);
        step_response->leg = NULL;
    }
    free(step_response);
}

cJSON *step_response_convertToJSON(step_response_t *step_response) {
    cJSON *item = cJSON_CreateObject();

    // step_response->leg
    if(step_response->leg) {
    cJSON *leg_local_JSON = leg_response_convertToJSON(step_response->leg);
    if(leg_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "leg", leg_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // step_response->distance
    if(step_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", step_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->duration
    if(step_response->duration) {
    if(cJSON_AddNumberToObject(item, "duration", step_response->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->start_lat
    if(step_response->start_lat) {
    if(cJSON_AddNumberToObject(item, "startLat", step_response->start_lat) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->start_lng
    if(step_response->start_lng) {
    if(cJSON_AddNumberToObject(item, "startLng", step_response->start_lng) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->start_alt
    if(step_response->start_alt) {
    if(cJSON_AddNumberToObject(item, "startAlt", step_response->start_alt) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->start_date
    if(step_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", step_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->end_lat
    if(step_response->end_lat) {
    if(cJSON_AddNumberToObject(item, "endLat", step_response->end_lat) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->end_lng
    if(step_response->end_lng) {
    if(cJSON_AddNumberToObject(item, "endLng", step_response->end_lng) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->end_alt
    if(step_response->end_alt) {
    if(cJSON_AddNumberToObject(item, "endAlt", step_response->end_alt) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->end_date
    if(step_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", step_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // step_response->accuracy
    if(step_response->accuracy) {
    if(cJSON_AddNumberToObject(item, "accuracy", step_response->accuracy) == NULL) {
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

step_response_t *step_response_parseFromJSON(cJSON *step_responseJSON){

    step_response_t *step_response_local_var = NULL;

    // define the local variable for step_response->leg
    leg_response_t *leg_local_nonprim = NULL;

    // step_response->leg
    cJSON *leg = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "leg");
    if (cJSON_IsNull(leg)) {
        leg = NULL;
    }
    if (leg) { 
    leg_local_nonprim = leg_response_parseFromJSON(leg); //nonprimitive
    }

    // step_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // step_response->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // step_response->start_lat
    cJSON *start_lat = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "startLat");
    if (cJSON_IsNull(start_lat)) {
        start_lat = NULL;
    }
    if (start_lat) { 
    if(!cJSON_IsNumber(start_lat))
    {
    goto end; //Numeric
    }
    }

    // step_response->start_lng
    cJSON *start_lng = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "startLng");
    if (cJSON_IsNull(start_lng)) {
        start_lng = NULL;
    }
    if (start_lng) { 
    if(!cJSON_IsNumber(start_lng))
    {
    goto end; //Numeric
    }
    }

    // step_response->start_alt
    cJSON *start_alt = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "startAlt");
    if (cJSON_IsNull(start_alt)) {
        start_alt = NULL;
    }
    if (start_alt) { 
    if(!cJSON_IsNumber(start_alt))
    {
    goto end; //Numeric
    }
    }

    // step_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // step_response->end_lat
    cJSON *end_lat = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "endLat");
    if (cJSON_IsNull(end_lat)) {
        end_lat = NULL;
    }
    if (end_lat) { 
    if(!cJSON_IsNumber(end_lat))
    {
    goto end; //Numeric
    }
    }

    // step_response->end_lng
    cJSON *end_lng = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "endLng");
    if (cJSON_IsNull(end_lng)) {
        end_lng = NULL;
    }
    if (end_lng) { 
    if(!cJSON_IsNumber(end_lng))
    {
    goto end; //Numeric
    }
    }

    // step_response->end_alt
    cJSON *end_alt = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "endAlt");
    if (cJSON_IsNull(end_alt)) {
        end_alt = NULL;
    }
    if (end_alt) { 
    if(!cJSON_IsNumber(end_alt))
    {
    goto end; //Numeric
    }
    }

    // step_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // step_response->accuracy
    cJSON *accuracy = cJSON_GetObjectItemCaseSensitive(step_responseJSON, "accuracy");
    if (cJSON_IsNull(accuracy)) {
        accuracy = NULL;
    }
    if (accuracy) { 
    if(!cJSON_IsNumber(accuracy))
    {
    goto end; //Numeric
    }
    }


    step_response_local_var = step_response_create_internal (
        leg ? leg_local_nonprim : NULL,
        distance ? distance->valuedouble : 0,
        duration ? duration->valuedouble : 0,
        start_lat ? start_lat->valuedouble : 0,
        start_lng ? start_lng->valuedouble : 0,
        start_alt ? start_alt->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_lat ? end_lat->valuedouble : 0,
        end_lng ? end_lng->valuedouble : 0,
        end_alt ? end_alt->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        accuracy ? accuracy->valuedouble : 0
        );

    return step_response_local_var;
end:
    if (leg_local_nonprim) {
        leg_response_free(leg_local_nonprim);
        leg_local_nonprim = NULL;
    }
    return NULL;

}
