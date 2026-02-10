#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "config_routing_request.h"


char* config_routing_request_order_algorithm_ToString(sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e order_algorithm) {
    char* order_algorithmArray[] =  { "NULL", "CLOSEST_FIRST", "FURTHEST_FIRST", "PICKUPS_FIRST" };
    return order_algorithmArray[order_algorithm];
}

sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e config_routing_request_order_algorithm_FromString(char* order_algorithm){
    int stringToReturn = 0;
    char *order_algorithmArray[] =  { "NULL", "CLOSEST_FIRST", "FURTHEST_FIRST", "PICKUPS_FIRST" };
    size_t sizeofArray = sizeof(order_algorithmArray) / sizeof(order_algorithmArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(order_algorithm, order_algorithmArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* config_routing_request_score_algorithm_ToString(sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e score_algorithm) {
    char* score_algorithmArray[] =  { "NULL", "FEWEST_VEHICLES", "SHORTEST_PASSENGER_TIME" };
    return score_algorithmArray[score_algorithm];
}

sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e config_routing_request_score_algorithm_FromString(char* score_algorithm){
    int stringToReturn = 0;
    char *score_algorithmArray[] =  { "NULL", "FEWEST_VEHICLES", "SHORTEST_PASSENGER_TIME" };
    size_t sizeofArray = sizeof(score_algorithmArray) / sizeof(score_algorithmArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(score_algorithm, score_algorithmArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static config_routing_request_t *config_routing_request_create_internal(
    int debug_mode,
    int threaded,
    char *thread_type,
    long max_runtime,
    int number_of_matches,
    int max_itinerary_time,
    int max_stops_per_vehicle,
    int average_city_time_per_mile,
    int average_freeway_time_per_mile,
    float freeway_travel_distance,
    double same_stop_buffer,
    sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e order_algorithm,
    sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e score_algorithm
    ) {
    config_routing_request_t *config_routing_request_local_var = malloc(sizeof(config_routing_request_t));
    if (!config_routing_request_local_var) {
        return NULL;
    }
    config_routing_request_local_var->debug_mode = debug_mode;
    config_routing_request_local_var->threaded = threaded;
    config_routing_request_local_var->thread_type = thread_type;
    config_routing_request_local_var->max_runtime = max_runtime;
    config_routing_request_local_var->number_of_matches = number_of_matches;
    config_routing_request_local_var->max_itinerary_time = max_itinerary_time;
    config_routing_request_local_var->max_stops_per_vehicle = max_stops_per_vehicle;
    config_routing_request_local_var->average_city_time_per_mile = average_city_time_per_mile;
    config_routing_request_local_var->average_freeway_time_per_mile = average_freeway_time_per_mile;
    config_routing_request_local_var->freeway_travel_distance = freeway_travel_distance;
    config_routing_request_local_var->same_stop_buffer = same_stop_buffer;
    config_routing_request_local_var->order_algorithm = order_algorithm;
    config_routing_request_local_var->score_algorithm = score_algorithm;

    config_routing_request_local_var->_library_owned = 1;
    return config_routing_request_local_var;
}

__attribute__((deprecated)) config_routing_request_t *config_routing_request_create(
    int debug_mode,
    int threaded,
    char *thread_type,
    long max_runtime,
    int number_of_matches,
    int max_itinerary_time,
    int max_stops_per_vehicle,
    int average_city_time_per_mile,
    int average_freeway_time_per_mile,
    float freeway_travel_distance,
    double same_stop_buffer,
    sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e order_algorithm,
    sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e score_algorithm
    ) {
    return config_routing_request_create_internal (
        debug_mode,
        threaded,
        thread_type,
        max_runtime,
        number_of_matches,
        max_itinerary_time,
        max_stops_per_vehicle,
        average_city_time_per_mile,
        average_freeway_time_per_mile,
        freeway_travel_distance,
        same_stop_buffer,
        order_algorithm,
        score_algorithm
        );
}

void config_routing_request_free(config_routing_request_t *config_routing_request) {
    if(NULL == config_routing_request){
        return ;
    }
    if(config_routing_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "config_routing_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (config_routing_request->thread_type) {
        free(config_routing_request->thread_type);
        config_routing_request->thread_type = NULL;
    }
    free(config_routing_request);
}

cJSON *config_routing_request_convertToJSON(config_routing_request_t *config_routing_request) {
    cJSON *item = cJSON_CreateObject();

    // config_routing_request->debug_mode
    if(config_routing_request->debug_mode) {
    if(cJSON_AddBoolToObject(item, "debugMode", config_routing_request->debug_mode) == NULL) {
    goto fail; //Bool
    }
    }


    // config_routing_request->threaded
    if(config_routing_request->threaded) {
    if(cJSON_AddBoolToObject(item, "threaded", config_routing_request->threaded) == NULL) {
    goto fail; //Bool
    }
    }


    // config_routing_request->thread_type
    if(config_routing_request->thread_type) {
    if(cJSON_AddStringToObject(item, "threadType", config_routing_request->thread_type) == NULL) {
    goto fail; //String
    }
    }


    // config_routing_request->max_runtime
    if(config_routing_request->max_runtime) {
    if(cJSON_AddNumberToObject(item, "maxRuntime", config_routing_request->max_runtime) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->number_of_matches
    if(config_routing_request->number_of_matches) {
    if(cJSON_AddNumberToObject(item, "numberOfMatches", config_routing_request->number_of_matches) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->max_itinerary_time
    if(config_routing_request->max_itinerary_time) {
    if(cJSON_AddNumberToObject(item, "maxItineraryTime", config_routing_request->max_itinerary_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->max_stops_per_vehicle
    if(config_routing_request->max_stops_per_vehicle) {
    if(cJSON_AddNumberToObject(item, "maxStopsPerVehicle", config_routing_request->max_stops_per_vehicle) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->average_city_time_per_mile
    if(config_routing_request->average_city_time_per_mile) {
    if(cJSON_AddNumberToObject(item, "averageCityTimePerMile", config_routing_request->average_city_time_per_mile) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->average_freeway_time_per_mile
    if(config_routing_request->average_freeway_time_per_mile) {
    if(cJSON_AddNumberToObject(item, "averageFreewayTimePerMile", config_routing_request->average_freeway_time_per_mile) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->freeway_travel_distance
    if(config_routing_request->freeway_travel_distance) {
    if(cJSON_AddNumberToObject(item, "freewayTravelDistance", config_routing_request->freeway_travel_distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->same_stop_buffer
    if(config_routing_request->same_stop_buffer) {
    if(cJSON_AddNumberToObject(item, "sameStopBuffer", config_routing_request->same_stop_buffer) == NULL) {
    goto fail; //Numeric
    }
    }


    // config_routing_request->order_algorithm
    if(config_routing_request->order_algorithm != sirqul_iot_platform_config_routing_request_ORDERALGORITHM_NULL) {
    if(cJSON_AddStringToObject(item, "orderAlgorithm", config_routing_request_order_algorithm_ToString(config_routing_request->order_algorithm)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // config_routing_request->score_algorithm
    if(config_routing_request->score_algorithm != sirqul_iot_platform_config_routing_request_SCOREALGORITHM_NULL) {
    if(cJSON_AddStringToObject(item, "scoreAlgorithm", config_routing_request_score_algorithm_ToString(config_routing_request->score_algorithm)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

config_routing_request_t *config_routing_request_parseFromJSON(cJSON *config_routing_requestJSON){

    config_routing_request_t *config_routing_request_local_var = NULL;

    // config_routing_request->debug_mode
    cJSON *debug_mode = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "debugMode");
    if (cJSON_IsNull(debug_mode)) {
        debug_mode = NULL;
    }
    if (debug_mode) { 
    if(!cJSON_IsBool(debug_mode))
    {
    goto end; //Bool
    }
    }

    // config_routing_request->threaded
    cJSON *threaded = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "threaded");
    if (cJSON_IsNull(threaded)) {
        threaded = NULL;
    }
    if (threaded) { 
    if(!cJSON_IsBool(threaded))
    {
    goto end; //Bool
    }
    }

    // config_routing_request->thread_type
    cJSON *thread_type = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "threadType");
    if (cJSON_IsNull(thread_type)) {
        thread_type = NULL;
    }
    if (thread_type) { 
    if(!cJSON_IsString(thread_type) && !cJSON_IsNull(thread_type))
    {
    goto end; //String
    }
    }

    // config_routing_request->max_runtime
    cJSON *max_runtime = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "maxRuntime");
    if (cJSON_IsNull(max_runtime)) {
        max_runtime = NULL;
    }
    if (max_runtime) { 
    if(!cJSON_IsNumber(max_runtime))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->number_of_matches
    cJSON *number_of_matches = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "numberOfMatches");
    if (cJSON_IsNull(number_of_matches)) {
        number_of_matches = NULL;
    }
    if (number_of_matches) { 
    if(!cJSON_IsNumber(number_of_matches))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->max_itinerary_time
    cJSON *max_itinerary_time = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "maxItineraryTime");
    if (cJSON_IsNull(max_itinerary_time)) {
        max_itinerary_time = NULL;
    }
    if (max_itinerary_time) { 
    if(!cJSON_IsNumber(max_itinerary_time))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->max_stops_per_vehicle
    cJSON *max_stops_per_vehicle = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "maxStopsPerVehicle");
    if (cJSON_IsNull(max_stops_per_vehicle)) {
        max_stops_per_vehicle = NULL;
    }
    if (max_stops_per_vehicle) { 
    if(!cJSON_IsNumber(max_stops_per_vehicle))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->average_city_time_per_mile
    cJSON *average_city_time_per_mile = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "averageCityTimePerMile");
    if (cJSON_IsNull(average_city_time_per_mile)) {
        average_city_time_per_mile = NULL;
    }
    if (average_city_time_per_mile) { 
    if(!cJSON_IsNumber(average_city_time_per_mile))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->average_freeway_time_per_mile
    cJSON *average_freeway_time_per_mile = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "averageFreewayTimePerMile");
    if (cJSON_IsNull(average_freeway_time_per_mile)) {
        average_freeway_time_per_mile = NULL;
    }
    if (average_freeway_time_per_mile) { 
    if(!cJSON_IsNumber(average_freeway_time_per_mile))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->freeway_travel_distance
    cJSON *freeway_travel_distance = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "freewayTravelDistance");
    if (cJSON_IsNull(freeway_travel_distance)) {
        freeway_travel_distance = NULL;
    }
    if (freeway_travel_distance) { 
    if(!cJSON_IsNumber(freeway_travel_distance))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->same_stop_buffer
    cJSON *same_stop_buffer = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "sameStopBuffer");
    if (cJSON_IsNull(same_stop_buffer)) {
        same_stop_buffer = NULL;
    }
    if (same_stop_buffer) { 
    if(!cJSON_IsNumber(same_stop_buffer))
    {
    goto end; //Numeric
    }
    }

    // config_routing_request->order_algorithm
    cJSON *order_algorithm = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "orderAlgorithm");
    if (cJSON_IsNull(order_algorithm)) {
        order_algorithm = NULL;
    }
    sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e order_algorithmVariable;
    if (order_algorithm) { 
    if(!cJSON_IsString(order_algorithm))
    {
    goto end; //Enum
    }
    order_algorithmVariable = config_routing_request_order_algorithm_FromString(order_algorithm->valuestring);
    }

    // config_routing_request->score_algorithm
    cJSON *score_algorithm = cJSON_GetObjectItemCaseSensitive(config_routing_requestJSON, "scoreAlgorithm");
    if (cJSON_IsNull(score_algorithm)) {
        score_algorithm = NULL;
    }
    sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e score_algorithmVariable;
    if (score_algorithm) { 
    if(!cJSON_IsString(score_algorithm))
    {
    goto end; //Enum
    }
    score_algorithmVariable = config_routing_request_score_algorithm_FromString(score_algorithm->valuestring);
    }


    config_routing_request_local_var = config_routing_request_create_internal (
        debug_mode ? debug_mode->valueint : 0,
        threaded ? threaded->valueint : 0,
        thread_type && !cJSON_IsNull(thread_type) ? strdup(thread_type->valuestring) : NULL,
        max_runtime ? max_runtime->valuedouble : 0,
        number_of_matches ? number_of_matches->valuedouble : 0,
        max_itinerary_time ? max_itinerary_time->valuedouble : 0,
        max_stops_per_vehicle ? max_stops_per_vehicle->valuedouble : 0,
        average_city_time_per_mile ? average_city_time_per_mile->valuedouble : 0,
        average_freeway_time_per_mile ? average_freeway_time_per_mile->valuedouble : 0,
        freeway_travel_distance ? freeway_travel_distance->valuedouble : 0,
        same_stop_buffer ? same_stop_buffer->valuedouble : 0,
        order_algorithm ? order_algorithmVariable : sirqul_iot_platform_config_routing_request_ORDERALGORITHM_NULL,
        score_algorithm ? score_algorithmVariable : sirqul_iot_platform_config_routing_request_SCOREALGORITHM_NULL
        );

    return config_routing_request_local_var;
end:
    return NULL;

}
