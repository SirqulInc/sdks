#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/weather_response.h"


// Search Weather
//
// Search the weather forcast for the next 5 days
//
weather_response_t*
WeatherAPI_searchWeather(apiClient_t *apiClient, long regionId, double latitude, double longitude, long timezoneOffset);


