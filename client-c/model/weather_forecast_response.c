#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "weather_forecast_response.h"



static weather_forecast_response_t *weather_forecast_response_create_internal(
    long id,
    long forecast_date,
    double precip_mm,
    int temp_max_c,
    int temp_max_f,
    int temp_min_c,
    int temp_min_f,
    int weather_code,
    char *weather_desc,
    char *weather_icon_url,
    char *winddir16_point,
    int winddir_degree,
    char *winddirection,
    int windspeed_kmph,
    int windspeed_miles
    ) {
    weather_forecast_response_t *weather_forecast_response_local_var = malloc(sizeof(weather_forecast_response_t));
    if (!weather_forecast_response_local_var) {
        return NULL;
    }
    weather_forecast_response_local_var->id = id;
    weather_forecast_response_local_var->forecast_date = forecast_date;
    weather_forecast_response_local_var->precip_mm = precip_mm;
    weather_forecast_response_local_var->temp_max_c = temp_max_c;
    weather_forecast_response_local_var->temp_max_f = temp_max_f;
    weather_forecast_response_local_var->temp_min_c = temp_min_c;
    weather_forecast_response_local_var->temp_min_f = temp_min_f;
    weather_forecast_response_local_var->weather_code = weather_code;
    weather_forecast_response_local_var->weather_desc = weather_desc;
    weather_forecast_response_local_var->weather_icon_url = weather_icon_url;
    weather_forecast_response_local_var->winddir16_point = winddir16_point;
    weather_forecast_response_local_var->winddir_degree = winddir_degree;
    weather_forecast_response_local_var->winddirection = winddirection;
    weather_forecast_response_local_var->windspeed_kmph = windspeed_kmph;
    weather_forecast_response_local_var->windspeed_miles = windspeed_miles;

    weather_forecast_response_local_var->_library_owned = 1;
    return weather_forecast_response_local_var;
}

__attribute__((deprecated)) weather_forecast_response_t *weather_forecast_response_create(
    long id,
    long forecast_date,
    double precip_mm,
    int temp_max_c,
    int temp_max_f,
    int temp_min_c,
    int temp_min_f,
    int weather_code,
    char *weather_desc,
    char *weather_icon_url,
    char *winddir16_point,
    int winddir_degree,
    char *winddirection,
    int windspeed_kmph,
    int windspeed_miles
    ) {
    return weather_forecast_response_create_internal (
        id,
        forecast_date,
        precip_mm,
        temp_max_c,
        temp_max_f,
        temp_min_c,
        temp_min_f,
        weather_code,
        weather_desc,
        weather_icon_url,
        winddir16_point,
        winddir_degree,
        winddirection,
        windspeed_kmph,
        windspeed_miles
        );
}

void weather_forecast_response_free(weather_forecast_response_t *weather_forecast_response) {
    if(NULL == weather_forecast_response){
        return ;
    }
    if(weather_forecast_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "weather_forecast_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (weather_forecast_response->weather_desc) {
        free(weather_forecast_response->weather_desc);
        weather_forecast_response->weather_desc = NULL;
    }
    if (weather_forecast_response->weather_icon_url) {
        free(weather_forecast_response->weather_icon_url);
        weather_forecast_response->weather_icon_url = NULL;
    }
    if (weather_forecast_response->winddir16_point) {
        free(weather_forecast_response->winddir16_point);
        weather_forecast_response->winddir16_point = NULL;
    }
    if (weather_forecast_response->winddirection) {
        free(weather_forecast_response->winddirection);
        weather_forecast_response->winddirection = NULL;
    }
    free(weather_forecast_response);
}

cJSON *weather_forecast_response_convertToJSON(weather_forecast_response_t *weather_forecast_response) {
    cJSON *item = cJSON_CreateObject();

    // weather_forecast_response->id
    if(weather_forecast_response->id) {
    if(cJSON_AddNumberToObject(item, "id", weather_forecast_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->forecast_date
    if(weather_forecast_response->forecast_date) {
    if(cJSON_AddNumberToObject(item, "forecastDate", weather_forecast_response->forecast_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->precip_mm
    if(weather_forecast_response->precip_mm) {
    if(cJSON_AddNumberToObject(item, "precipMM", weather_forecast_response->precip_mm) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->temp_max_c
    if(weather_forecast_response->temp_max_c) {
    if(cJSON_AddNumberToObject(item, "tempMaxC", weather_forecast_response->temp_max_c) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->temp_max_f
    if(weather_forecast_response->temp_max_f) {
    if(cJSON_AddNumberToObject(item, "tempMaxF", weather_forecast_response->temp_max_f) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->temp_min_c
    if(weather_forecast_response->temp_min_c) {
    if(cJSON_AddNumberToObject(item, "tempMinC", weather_forecast_response->temp_min_c) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->temp_min_f
    if(weather_forecast_response->temp_min_f) {
    if(cJSON_AddNumberToObject(item, "tempMinF", weather_forecast_response->temp_min_f) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->weather_code
    if(weather_forecast_response->weather_code) {
    if(cJSON_AddNumberToObject(item, "weatherCode", weather_forecast_response->weather_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->weather_desc
    if(weather_forecast_response->weather_desc) {
    if(cJSON_AddStringToObject(item, "weatherDesc", weather_forecast_response->weather_desc) == NULL) {
    goto fail; //String
    }
    }


    // weather_forecast_response->weather_icon_url
    if(weather_forecast_response->weather_icon_url) {
    if(cJSON_AddStringToObject(item, "weatherIconUrl", weather_forecast_response->weather_icon_url) == NULL) {
    goto fail; //String
    }
    }


    // weather_forecast_response->winddir16_point
    if(weather_forecast_response->winddir16_point) {
    if(cJSON_AddStringToObject(item, "winddir16Point", weather_forecast_response->winddir16_point) == NULL) {
    goto fail; //String
    }
    }


    // weather_forecast_response->winddir_degree
    if(weather_forecast_response->winddir_degree) {
    if(cJSON_AddNumberToObject(item, "winddirDegree", weather_forecast_response->winddir_degree) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->winddirection
    if(weather_forecast_response->winddirection) {
    if(cJSON_AddStringToObject(item, "winddirection", weather_forecast_response->winddirection) == NULL) {
    goto fail; //String
    }
    }


    // weather_forecast_response->windspeed_kmph
    if(weather_forecast_response->windspeed_kmph) {
    if(cJSON_AddNumberToObject(item, "windspeedKmph", weather_forecast_response->windspeed_kmph) == NULL) {
    goto fail; //Numeric
    }
    }


    // weather_forecast_response->windspeed_miles
    if(weather_forecast_response->windspeed_miles) {
    if(cJSON_AddNumberToObject(item, "windspeedMiles", weather_forecast_response->windspeed_miles) == NULL) {
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

weather_forecast_response_t *weather_forecast_response_parseFromJSON(cJSON *weather_forecast_responseJSON){

    weather_forecast_response_t *weather_forecast_response_local_var = NULL;

    // weather_forecast_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->forecast_date
    cJSON *forecast_date = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "forecastDate");
    if (cJSON_IsNull(forecast_date)) {
        forecast_date = NULL;
    }
    if (forecast_date) { 
    if(!cJSON_IsNumber(forecast_date))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->precip_mm
    cJSON *precip_mm = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "precipMM");
    if (cJSON_IsNull(precip_mm)) {
        precip_mm = NULL;
    }
    if (precip_mm) { 
    if(!cJSON_IsNumber(precip_mm))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->temp_max_c
    cJSON *temp_max_c = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "tempMaxC");
    if (cJSON_IsNull(temp_max_c)) {
        temp_max_c = NULL;
    }
    if (temp_max_c) { 
    if(!cJSON_IsNumber(temp_max_c))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->temp_max_f
    cJSON *temp_max_f = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "tempMaxF");
    if (cJSON_IsNull(temp_max_f)) {
        temp_max_f = NULL;
    }
    if (temp_max_f) { 
    if(!cJSON_IsNumber(temp_max_f))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->temp_min_c
    cJSON *temp_min_c = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "tempMinC");
    if (cJSON_IsNull(temp_min_c)) {
        temp_min_c = NULL;
    }
    if (temp_min_c) { 
    if(!cJSON_IsNumber(temp_min_c))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->temp_min_f
    cJSON *temp_min_f = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "tempMinF");
    if (cJSON_IsNull(temp_min_f)) {
        temp_min_f = NULL;
    }
    if (temp_min_f) { 
    if(!cJSON_IsNumber(temp_min_f))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->weather_code
    cJSON *weather_code = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "weatherCode");
    if (cJSON_IsNull(weather_code)) {
        weather_code = NULL;
    }
    if (weather_code) { 
    if(!cJSON_IsNumber(weather_code))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->weather_desc
    cJSON *weather_desc = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "weatherDesc");
    if (cJSON_IsNull(weather_desc)) {
        weather_desc = NULL;
    }
    if (weather_desc) { 
    if(!cJSON_IsString(weather_desc) && !cJSON_IsNull(weather_desc))
    {
    goto end; //String
    }
    }

    // weather_forecast_response->weather_icon_url
    cJSON *weather_icon_url = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "weatherIconUrl");
    if (cJSON_IsNull(weather_icon_url)) {
        weather_icon_url = NULL;
    }
    if (weather_icon_url) { 
    if(!cJSON_IsString(weather_icon_url) && !cJSON_IsNull(weather_icon_url))
    {
    goto end; //String
    }
    }

    // weather_forecast_response->winddir16_point
    cJSON *winddir16_point = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "winddir16Point");
    if (cJSON_IsNull(winddir16_point)) {
        winddir16_point = NULL;
    }
    if (winddir16_point) { 
    if(!cJSON_IsString(winddir16_point) && !cJSON_IsNull(winddir16_point))
    {
    goto end; //String
    }
    }

    // weather_forecast_response->winddir_degree
    cJSON *winddir_degree = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "winddirDegree");
    if (cJSON_IsNull(winddir_degree)) {
        winddir_degree = NULL;
    }
    if (winddir_degree) { 
    if(!cJSON_IsNumber(winddir_degree))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->winddirection
    cJSON *winddirection = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "winddirection");
    if (cJSON_IsNull(winddirection)) {
        winddirection = NULL;
    }
    if (winddirection) { 
    if(!cJSON_IsString(winddirection) && !cJSON_IsNull(winddirection))
    {
    goto end; //String
    }
    }

    // weather_forecast_response->windspeed_kmph
    cJSON *windspeed_kmph = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "windspeedKmph");
    if (cJSON_IsNull(windspeed_kmph)) {
        windspeed_kmph = NULL;
    }
    if (windspeed_kmph) { 
    if(!cJSON_IsNumber(windspeed_kmph))
    {
    goto end; //Numeric
    }
    }

    // weather_forecast_response->windspeed_miles
    cJSON *windspeed_miles = cJSON_GetObjectItemCaseSensitive(weather_forecast_responseJSON, "windspeedMiles");
    if (cJSON_IsNull(windspeed_miles)) {
        windspeed_miles = NULL;
    }
    if (windspeed_miles) { 
    if(!cJSON_IsNumber(windspeed_miles))
    {
    goto end; //Numeric
    }
    }


    weather_forecast_response_local_var = weather_forecast_response_create_internal (
        id ? id->valuedouble : 0,
        forecast_date ? forecast_date->valuedouble : 0,
        precip_mm ? precip_mm->valuedouble : 0,
        temp_max_c ? temp_max_c->valuedouble : 0,
        temp_max_f ? temp_max_f->valuedouble : 0,
        temp_min_c ? temp_min_c->valuedouble : 0,
        temp_min_f ? temp_min_f->valuedouble : 0,
        weather_code ? weather_code->valuedouble : 0,
        weather_desc && !cJSON_IsNull(weather_desc) ? strdup(weather_desc->valuestring) : NULL,
        weather_icon_url && !cJSON_IsNull(weather_icon_url) ? strdup(weather_icon_url->valuestring) : NULL,
        winddir16_point && !cJSON_IsNull(winddir16_point) ? strdup(winddir16_point->valuestring) : NULL,
        winddir_degree ? winddir_degree->valuedouble : 0,
        winddirection && !cJSON_IsNull(winddirection) ? strdup(winddirection->valuestring) : NULL,
        windspeed_kmph ? windspeed_kmph->valuedouble : 0,
        windspeed_miles ? windspeed_miles->valuedouble : 0
        );

    return weather_forecast_response_local_var;
end:
    return NULL;

}
