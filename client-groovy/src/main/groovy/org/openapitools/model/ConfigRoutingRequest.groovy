package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ConfigRoutingRequest {
    
    Boolean debugMode
    
    Boolean threaded
    
    String threadType
    
    Long maxRuntime
    
    Integer numberOfMatches
    
    Integer maxItineraryTime
    
    Integer maxStopsPerVehicle
    
    Integer averageCityTimePerMile
    
    Integer averageFreewayTimePerMile
    
    Float freewayTravelDistance
    
    Double sameStopBuffer

    enum OrderAlgorithmEnum {
    
        CLOSEST_FIRST("CLOSEST_FIRST"),
        
        FURTHEST_FIRST("FURTHEST_FIRST"),
        
        PICKUPS_FIRST("PICKUPS_FIRST")
    
        private final String value
    
        OrderAlgorithmEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    OrderAlgorithmEnum orderAlgorithm

    enum ScoreAlgorithmEnum {
    
        FEWEST_VEHICLES("FEWEST_VEHICLES"),
        
        SHORTEST_PASSENGER_TIME("SHORTEST_PASSENGER_TIME")
    
        private final String value
    
        ScoreAlgorithmEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    ScoreAlgorithmEnum scoreAlgorithm
}
