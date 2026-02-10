#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "weather_response.h"



static weather_response_t *weather_response_create_internal(
    long id,
    int cloudcover,
    int humidity,
    long observation_time,
    double precip_mm,
    int pressure,
    int temp_c,
    int temp_f,
    int visibility,
    int weather_code,
    char *weather_desc,
    char *weather_icon_url,
    char *winddir16_point,
    int winddir_degree,
    int windspeed_kmph,
    int windspeed_miles,
    list_t *forecasts
    ) {
    weather_response_t *weather_response_local_var = malloc(sizeof(weather_response_t));
    if (!weather_response_local_var) {
        return NULL;
    }
    weather_response_local_var->id = id;
    weather_response_local_var->cloudcover = cloudcover;
    weather_response_local_var->humidity = humidity;
    weather_response_local_var->observation_time = observation_time;
    weather_response_local_var->precip_mm = precip_mm;
    weather_response_local_var->pressure = pressure;
    weather_response_local_var->temp_c = temp_c;
    weather_response_local_var->temp_f = temp_f;
    weather_response_local_var->visibility = visibility;
    weather_response_local_var->weather_code = weather_code;
    weather_response_local_var->weather_desc = weather_desc;
    weather_response_local_var->weather_icon_url = weather_icon_url;
    weather_response_local_var->winddir16_point = winddir16_point;
    weather_response_local_var->winddir_degree = winddir_degree;
    weather_response_local_var->windspeed_kmph = windspeed_kmph;
    weather_response_local_var->windspeed_miles = windspeed_miles;
    weather_response_local_var->forecasts = forecasts;

    weather_response_local_var->_library_owned = 1;
    return weather_response_local_var;
}

__attribute__((deprecated)) weather_response_t *weather_response_create(
    long id,
    int cloudcover,
    int humidity,
    long observation_time,
    double precip_mm,
    int pressure,
    int temp_c,
    int temp_f,
    int visibility,
    int weather_code,
    char *weather_desc,
    char *weather_icon_url,
    char *winddir16_point,
    int winddir_degree,
    int windspeed_kmph,
    int windspeed_miles,
    list_t *forecasts
    ) {
    return weather_response_create_internal (
        id,
        cloudcover,
        humidity,
        observation_time,
        precip_mm,
        pressure,
        temp_c,
        temp_f,
        visibility,
        weather_code,
        weather_desc,
        weather_icon_url,
        winddir16_point,
        winddir_degree,
        windspeed_kmph,
        windspeed_miles,
        forecasts
        );
}

void weather_response_free(weather_response_t *weather_response) {
    if(NULL == weather_response){
        return ;
    }
    if(weather_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "weather_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (weather_response->weather_desc) {
        free(weather_response->weather_desc);
        weather_response->weather_desc = NULL;
    }
    if (weather_response->weather_icon_url) {
        free(weather_response->weather_icon_url);
        weather_response->weather_icon_url = NULL;
    }
    if (weather_response->winddir16_point) {
        free(weather_response->winddir16_point);
        weather_response->winddir16_point = NULL;
    }
    if (weather_response->forecasts) {
        list_ForEach(listEntry, weather_response->forecasts) {
            weather_forecast_response_free(listEntry->data);
        }
        list_freeList(weather_response->forecasts);
        weather_response->forecasts = NULL;
    }
    free(weather_response);
}

cJSON *weather_response_convertToJSON(weather_response_t *weather_response) {
    cJSON *item = cJSON_CreateObject();

    // weather_response->id
    if(weather_response->id) {
    if(cJSON_AddNumberToObject(item, "id", weather_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->cloudcover
    if(weather_response->cloudcover) {
    if(cJSON_AddNumberToObject(item, "cloudcover", weather_response->cloudcover) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->humidity
    if(weather_response->humidity) {
    if(cJSON_AddNumberToObject(item, "humidity", weather_response->humidity) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->observation_time
    if(weather_response->observation_time) {
    if(cJSON_AddNumberToObject(item, "observationTime", weather_response->observation_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->precip_mm
    if(weather_response->precip_mm) {
    if(cJSON_AddNumberToObject(item, "precipMM", weather_response->precip_mm) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->pressure
    if(weather_response->pressure) {
    if(cJSON_AddNumberToObject(item, "pressure", weather_response->pressure) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->temp_c
    if(weather_response->temp_c) {
    if(cJSON_AddNumberToObject(item, "temp_C", weather_response->temp_c) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->temp_f
    if(weather_response->temp_f) {
    if(cJSON_AddNumberToObject(item, "temp_F", weather_response->temp_f) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->visibility
    if(weather_response->visibility) {
    if(cJSON_AddNumberToObject(item, "visibility", weather_response->visibility) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->weather_code
    if(weather_response->weather_code) {
    if(cJSON_AddNumberToObject(item, "weatherCode", weather_response->weather_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->weather_desc
    if(weather_response->weather_desc) {
    if(cJSON_AddStringToObject(item, "weatherDesc", weather_response->weather_desc) == NULL) {
    goto fail; //String
    }
    }


    // weather_response->weather_icon_url
    if(weather_response->weather_icon_url) {
    if(cJSON_AddStringToObject(item, "weatherIconUrl", weather_response->weather_icon_url) == NULL) {
    goto fail; //String
    }
    }


    // weather_response->winddir16_point
    if(weather_response->winddir16_point) {
    if(cJSON_AddStringToObject(item, "winddir16Point", weather_response->winddir16_point) == NULL) {
    goto fail; //String
    }
    }


    // weather_response->winddir_degree
    if(weather_response->winddir_degree) {
    if(cJSON_AddNumberToObject(item, "winddirDegree", weather_response->winddir_degree) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->windspeed_kmph
    if(weather_response->windspeed_kmph) {
    if(cJSON_AddNumberToObject(item, "windspeedKmph", weather_response->windspeed_kmph) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->windspeed_miles
    if(weather_response->windspeed_miles) {
    if(cJSON_AddNumberToObject(item, "windspeedMiles", weather_response->windspeed_miles) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_response->forecasts
    if(weather_response->forecasts) {
    cJSON *forecasts = cJSON_AddArrayToObject(item, "forecasts");
    if(forecasts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *forecastsListEntry;
    if (weather_response->forecasts) {
    list_ForEach(forecastsListEntry, weather_response->forecasts) {
    cJSON *itemLocal = weather_forecast_response_convertToJSON(forecastsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(forecasts, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

weather_response_t *weather_response_parseFromJSON(cJSON *weather_responseJSON){

    weather_response_t *weather_response_local_var = NULL;

    // define the local list for weather_response->forecasts
    list_t *forecastsList = NULL;

    // weather_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // weather_response->cloudcover
    cJSON *cloudcover = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "cloudcover");
    if (cJSON_IsNull(cloudcover)) {
        cloudcover = NULL;
    }
    if (cloudcover) { 
    if(!cJSON_IsNumber(cloudcover))
    {
    goto end; //Numeric
    }
    }

    // weather_response->humidity
    cJSON *humidity = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "humidity");
    if (cJSON_IsNull(humidity)) {
        humidity = NULL;
    }
    if (humidity) { 
    if(!cJSON_IsNumber(humidity))
    {
    goto end; //Numeric
    }
    }

    // weather_response->observation_time
    cJSON *observation_time = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "observationTime");
    if (cJSON_IsNull(observation_time)) {
        observation_time = NULL;
    }
    if (observation_time) { 
    if(!cJSON_IsNumber(observation_time))
    {
    goto end; //Numeric
    }
    }

    // weather_response->precip_mm
    cJSON *precip_mm = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "precipMM");
    if (cJSON_IsNull(precip_mm)) {
        precip_mm = NULL;
    }
    if (precip_mm) { 
    if(!cJSON_IsNumber(precip_mm))
    {
    goto end; //Numeric
    }
    }

    // weather_response->pressure
    cJSON *pressure = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "pressure");
    if (cJSON_IsNull(pressure)) {
        pressure = NULL;
    }
    if (pressure) { 
    if(!cJSON_IsNumber(pressure))
    {
    goto end; //Numeric
    }
    }

    // weather_response->temp_c
    cJSON *temp_c = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "temp_C");
    if (cJSON_IsNull(temp_c)) {
        temp_c = NULL;
    }
    if (temp_c) { 
    if(!cJSON_IsNumber(temp_c))
    {
    goto end; //Numeric
    }
    }

    // weather_response->temp_f
    cJSON *temp_f = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "temp_F");
    if (cJSON_IsNull(temp_f)) {
        temp_f = NULL;
    }
    if (temp_f) { 
    if(!cJSON_IsNumber(temp_f))
    {
    goto end; //Numeric
    }
    }

    // weather_response->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    if (visibility) { 
    if(!cJSON_IsNumber(visibility))
    {
    goto end; //Numeric
    }
    }

    // weather_response->weather_code
    cJSON *weather_code = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "weatherCode");
    if (cJSON_IsNull(weather_code)) {
        weather_code = NULL;
    }
    if (weather_code) { 
    if(!cJSON_IsNumber(weather_code))
    {
    goto end; //Numeric
    }
    }

    // weather_response->weather_desc
    cJSON *weather_desc = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "weatherDesc");
    if (cJSON_IsNull(weather_desc)) {
        weather_desc = NULL;
    }
    if (weather_desc) { 
    if(!cJSON_IsString(weather_desc) && !cJSON_IsNull(weather_desc))
    {
    goto end; //String
    }
    }

    // weather_response->weather_icon_url
    cJSON *weather_icon_url = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "weatherIconUrl");
    if (cJSON_IsNull(weather_icon_url)) {
        weather_icon_url = NULL;
    }
    if (weather_icon_url) { 
    if(!cJSON_IsString(weather_icon_url) && !cJSON_IsNull(weather_icon_url))
    {
    goto end; //String
    }
    }

    // weather_response->winddir16_point
    cJSON *winddir16_point = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "winddir16Point");
    if (cJSON_IsNull(winddir16_point)) {
        winddir16_point = NULL;
    }
    if (winddir16_point) { 
    if(!cJSON_IsString(winddir16_point) && !cJSON_IsNull(winddir16_point))
    {
    goto end; //String
    }
    }

    // weather_response->winddir_degree
    cJSON *winddir_degree = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "winddirDegree");
    if (cJSON_IsNull(winddir_degree)) {
        winddir_degree = NULL;
    }
    if (winddir_degree) { 
    if(!cJSON_IsNumber(winddir_degree))
    {
    goto end; //Numeric
    }
    }

    // weather_response->windspeed_kmph
    cJSON *windspeed_kmph = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "windspeedKmph");
    if (cJSON_IsNull(windspeed_kmph)) {
        windspeed_kmph = NULL;
    }
    if (windspeed_kmph) { 
    if(!cJSON_IsNumber(windspeed_kmph))
    {
    goto end; //Numeric
    }
    }

    // weather_response->windspeed_miles
    cJSON *windspeed_miles = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "windspeedMiles");
    if (cJSON_IsNull(windspeed_miles)) {
        windspeed_miles = NULL;
    }
    if (windspeed_miles) { 
    if(!cJSON_IsNumber(windspeed_miles))
    {
    goto end; //Numeric
    }
    }

    // weather_response->forecasts
    cJSON *forecasts = cJSON_GetObjectItemCaseSensitive(weather_responseJSON, "forecasts");
    if (cJSON_IsNull(forecasts)) {
        forecasts = NULL;
    }
    if (forecasts) { 
    cJSON *forecasts_local_nonprimitive = NULL;
    if(!cJSON_IsArray(forecasts)){
        goto end; //nonprimitive container
    }

    forecastsList = list_createList();

    cJSON_ArrayForEach(forecasts_local_nonprimitive,forecasts )
    {
        if(!cJSON_IsObject(forecasts_local_nonprimitive)){
            goto end;
        }
        weather_forecast_response_t *forecastsItem = weather_forecast_response_parseFromJSON(forecasts_local_nonprimitive);

        list_addElement(forecastsList, forecastsItem);
    }
    }


    weather_response_local_var = weather_response_create_internal (
        id ? id->valuedouble : 0,
        cloudcover ? cloudcover->valuedouble : 0,
        humidity ? humidity->valuedouble : 0,
        observation_time ? observation_time->valuedouble : 0,
        precip_mm ? precip_mm->valuedouble : 0,
        pressure ? pressure->valuedouble : 0,
        temp_c ? temp_c->valuedouble : 0,
        temp_f ? temp_f->valuedouble : 0,
        visibility ? visibility->valuedouble : 0,
        weather_code ? weather_code->valuedouble : 0,
        weather_desc && !cJSON_IsNull(weather_desc) ? strdup(weather_desc->valuestring) : NULL,
        weather_icon_url && !cJSON_IsNull(weather_icon_url) ? strdup(weather_icon_url->valuestring) : NULL,
        winddir16_point && !cJSON_IsNull(winddir16_point) ? strdup(winddir16_point->valuestring) : NULL,
        winddir_degree ? winddir_degree->valuedouble : 0,
        windspeed_kmph ? windspeed_kmph->valuedouble : 0,
        windspeed_miles ? windspeed_miles->valuedouble : 0,
        forecasts ? forecastsList : NULL
        );

    return weather_response_local_var;
end:
    if (forecastsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, forecastsList) {
            weather_forecast_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(forecastsList);
        forecastsList = NULL;
    }
    return NULL;

}
