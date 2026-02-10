package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ScoreResponse {

    enum ActionEnum {
    
        DATA("DATA"),
        
        SAVE("SAVE"),
        
        DELETE("DELETE"),
        
        GET("GET")
    
        private final String value
    
        ActionEnum(String value) {
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

    
    ActionEnum action
    
    Long scoreId

    enum StatusEnum {
    
        COMPLETED("COMPLETED"),
        
        OWNER_CREDIT("OWNER_CREDIT"),
        
        SUMMATION("SUMMATION"),
        
        TOURNAMENT("TOURNAMENT")
    
        private final String value
    
        StatusEnum(String value) {
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

    
    StatusEnum status
    
    Integer points
    
    Integer timeTaken
    
    Long ticketsEarned
    
    String gameType
    
    Long accountId
    
    String accountDisplay
}
