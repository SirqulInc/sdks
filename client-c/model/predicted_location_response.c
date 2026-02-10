#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "predicted_location_response.h"



static predicted_location_response_t *predicted_location_response_create_internal(
    long owner_id,
    char *on_date,
    long on_date_milli,
    int hour,
    double latitude,
    double longitude,
    double distance,
    long matches,
    double average_duration,
    double weighted_score
    ) {
    predicted_location_response_t *predicted_location_response_local_var = malloc(sizeof(predicted_location_response_t));
    if (!predicted_location_response_local_var) {
        return NULL;
    }
    predicted_location_response_local_var->owner_id = owner_id;
    predicted_location_response_local_var->on_date = on_date;
    predicted_location_response_local_var->on_date_milli = on_date_milli;
    predicted_location_response_local_var->hour = hour;
    predicted_location_response_local_var->latitude = latitude;
    predicted_location_response_local_var->longitude = longitude;
    predicted_location_response_local_var->distance = distance;
    predicted_location_response_local_var->matches = matches;
    predicted_location_response_local_var->average_duration = average_duration;
    predicted_location_response_local_var->weighted_score = weighted_score;

    predicted_location_response_local_var->_library_owned = 1;
    return predicted_location_response_local_var;
}

__attribute__((deprecated)) predicted_location_response_t *predicted_location_response_create(
    long owner_id,
    char *on_date,
    long on_date_milli,
    int hour,
    double latitude,
    double longitude,
    double distance,
    long matches,
    double average_duration,
    double weighted_score
    ) {
    return predicted_location_response_create_internal (
        owner_id,
        on_date,
        on_date_milli,
        hour,
        latitude,
        longitude,
        distance,
        matches,
        average_duration,
        weighted_score
        );
}

void predicted_location_response_free(predicted_location_response_t *predicted_location_response) {
    if(NULL == predicted_location_response){
        return ;
    }
    if(predicted_location_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "predicted_location_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (predicted_location_response->on_date) {
        free(predicted_location_response->on_date);
        predicted_location_response->on_date = NULL;
    }
    free(predicted_location_response);
}

cJSON *predicted_location_response_convertToJSON(predicted_location_response_t *predicted_location_response) {
    cJSON *item = cJSON_CreateObject();

    // predicted_location_response->owner_id
    if(predicted_location_response->owner_id) {
    if(cJSON_AddNumberToObject(item, "ownerId", predicted_location_response->owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->on_date
    if(predicted_location_response->on_date) {
    if(cJSON_AddStringToObject(item, "onDate", predicted_location_response->on_date) == NULL) {
    goto fail; //String
    }
    }


    // predicted_location_response->on_date_milli
    if(predicted_location_response->on_date_milli) {
    if(cJSON_AddNumberToObject(item, "onDateMilli", predicted_location_response->on_date_milli) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->hour
    if(predicted_location_response->hour) {
    if(cJSON_AddNumberToObject(item, "hour", predicted_location_response->hour) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->latitude
    if(predicted_location_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", predicted_location_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->longitude
    if(predicted_location_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", predicted_location_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->distance
    if(predicted_location_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", predicted_location_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->matches
    if(predicted_location_response->matches) {
    if(cJSON_AddNumberToObject(item, "matches", predicted_location_response->matches) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->average_duration
    if(predicted_location_response->average_duration) {
    if(cJSON_AddNumberToObject(item, "averageDuration", predicted_location_response->average_duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // predicted_location_response->weighted_score
    if(predicted_location_response->weighted_score) {
    if(cJSON_AddNumberToObject(item, "weightedScore", predicted_location_response->weighted_score) == NULL) {
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

predicted_location_response_t *predicted_location_response_parseFromJSON(cJSON *predicted_location_responseJSON){

    predicted_location_response_t *predicted_location_response_local_var = NULL;

    // predicted_location_response->owner_id
    cJSON *owner_id = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "ownerId");
    if (cJSON_IsNull(owner_id)) {
        owner_id = NULL;
    }
    if (owner_id) { 
    if(!cJSON_IsNumber(owner_id))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->on_date
    cJSON *on_date = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "onDate");
    if (cJSON_IsNull(on_date)) {
        on_date = NULL;
    }
    if (on_date) { 
    if(!cJSON_IsString(on_date) && !cJSON_IsNull(on_date))
    {
    goto end; //String
    }
    }

    // predicted_location_response->on_date_milli
    cJSON *on_date_milli = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "onDateMilli");
    if (cJSON_IsNull(on_date_milli)) {
        on_date_milli = NULL;
    }
    if (on_date_milli) { 
    if(!cJSON_IsNumber(on_date_milli))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->hour
    cJSON *hour = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "hour");
    if (cJSON_IsNull(hour)) {
        hour = NULL;
    }
    if (hour) { 
    if(!cJSON_IsNumber(hour))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->matches
    cJSON *matches = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "matches");
    if (cJSON_IsNull(matches)) {
        matches = NULL;
    }
    if (matches) { 
    if(!cJSON_IsNumber(matches))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->average_duration
    cJSON *average_duration = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "averageDuration");
    if (cJSON_IsNull(average_duration)) {
        average_duration = NULL;
    }
    if (average_duration) { 
    if(!cJSON_IsNumber(average_duration))
    {
    goto end; //Numeric
    }
    }

    // predicted_location_response->weighted_score
    cJSON *weighted_score = cJSON_GetObjectItemCaseSensitive(predicted_location_responseJSON, "weightedScore");
    if (cJSON_IsNull(weighted_score)) {
        weighted_score = NULL;
    }
    if (weighted_score) { 
    if(!cJSON_IsNumber(weighted_score))
    {
    goto end; //Numeric
    }
    }


    predicted_location_response_local_var = predicted_location_response_create_internal (
        owner_id ? owner_id->valuedouble : 0,
        on_date && !cJSON_IsNull(on_date) ? strdup(on_date->valuestring) : NULL,
        on_date_milli ? on_date_milli->valuedouble : 0,
        hour ? hour->valuedouble : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        distance ? distance->valuedouble : 0,
        matches ? matches->valuedouble : 0,
        average_duration ? average_duration->valuedouble : 0,
        weighted_score ? weighted_score->valuedouble : 0
        );

    return predicted_location_response_local_var;
end:
    return NULL;

}
