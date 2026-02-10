/*
 * config_routing_request.h
 *
 * 
 */

#ifndef _config_routing_request_H_
#define _config_routing_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct config_routing_request_t config_routing_request_t;


// Enum ORDERALGORITHM for config_routing_request

typedef enum  { sirqul_iot_platform_config_routing_request_ORDERALGORITHM_NULL = 0, sirqul_iot_platform_config_routing_request_ORDERALGORITHM_CLOSEST_FIRST, sirqul_iot_platform_config_routing_request_ORDERALGORITHM_FURTHEST_FIRST, sirqul_iot_platform_config_routing_request_ORDERALGORITHM_PICKUPS_FIRST } sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e;

char* config_routing_request_order_algorithm_ToString(sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e order_algorithm);

sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e config_routing_request_order_algorithm_FromString(char* order_algorithm);

// Enum SCOREALGORITHM for config_routing_request

typedef enum  { sirqul_iot_platform_config_routing_request_SCOREALGORITHM_NULL = 0, sirqul_iot_platform_config_routing_request_SCOREALGORITHM_FEWEST_VEHICLES, sirqul_iot_platform_config_routing_request_SCOREALGORITHM_SHORTEST_PASSENGER_TIME } sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e;

char* config_routing_request_score_algorithm_ToString(sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e score_algorithm);

sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e config_routing_request_score_algorithm_FromString(char* score_algorithm);



typedef struct config_routing_request_t {
    int debug_mode; //boolean
    int threaded; //boolean
    char *thread_type; // string
    long max_runtime; //numeric
    int number_of_matches; //numeric
    int max_itinerary_time; //numeric
    int max_stops_per_vehicle; //numeric
    int average_city_time_per_mile; //numeric
    int average_freeway_time_per_mile; //numeric
    float freeway_travel_distance; //numeric
    double same_stop_buffer; //numeric
    sirqul_iot_platform_config_routing_request_ORDERALGORITHM_e order_algorithm; //enum
    sirqul_iot_platform_config_routing_request_SCOREALGORITHM_e score_algorithm; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} config_routing_request_t;

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
);

void config_routing_request_free(config_routing_request_t *config_routing_request);

config_routing_request_t *config_routing_request_parseFromJSON(cJSON *config_routing_requestJSON);

cJSON *config_routing_request_convertToJSON(config_routing_request_t *config_routing_request);

#endif /* _config_routing_request_H_ */

