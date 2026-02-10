/*
 * weather_response.h
 *
 * 
 */

#ifndef _weather_response_H_
#define _weather_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct weather_response_t weather_response_t;

#include "weather_forecast_response.h"



typedef struct weather_response_t {
    long id; //numeric
    int cloudcover; //numeric
    int humidity; //numeric
    long observation_time; //numeric
    double precip_mm; //numeric
    int pressure; //numeric
    int temp_c; //numeric
    int temp_f; //numeric
    int visibility; //numeric
    int weather_code; //numeric
    char *weather_desc; // string
    char *weather_icon_url; // string
    char *winddir16_point; // string
    int winddir_degree; //numeric
    int windspeed_kmph; //numeric
    int windspeed_miles; //numeric
    list_t *forecasts; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} weather_response_t;

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
);

void weather_response_free(weather_response_t *weather_response);

weather_response_t *weather_response_parseFromJSON(cJSON *weather_responseJSON);

cJSON *weather_response_convertToJSON(weather_response_t *weather_response);

#endif /* _weather_response_H_ */

