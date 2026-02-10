/*
 * weather_forecast_response.h
 *
 * 
 */

#ifndef _weather_forecast_response_H_
#define _weather_forecast_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct weather_forecast_response_t weather_forecast_response_t;




typedef struct weather_forecast_response_t {
    long id; //numeric
    long forecast_date; //numeric
    double precip_mm; //numeric
    int temp_max_c; //numeric
    int temp_max_f; //numeric
    int temp_min_c; //numeric
    int temp_min_f; //numeric
    int weather_code; //numeric
    char *weather_desc; // string
    char *weather_icon_url; // string
    char *winddir16_point; // string
    int winddir_degree; //numeric
    char *winddirection; // string
    int windspeed_kmph; //numeric
    int windspeed_miles; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} weather_forecast_response_t;

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
);

void weather_forecast_response_free(weather_forecast_response_t *weather_forecast_response);

weather_forecast_response_t *weather_forecast_response_parseFromJSON(cJSON *weather_forecast_responseJSON);

cJSON *weather_forecast_response_convertToJSON(weather_forecast_response_t *weather_forecast_response);

#endif /* _weather_forecast_response_H_ */

