package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MissionTask {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String description
    
    String format
    
    String suffix

    enum TaskTypeEnum {
    
        PHOTO("PHOTO"),
        
        VOTE("VOTE"),
        
        ASK("ASK"),
        
        ANSWER("ANSWER"),
        
        GROUP("GROUP"),
        
        INVITE("INVITE"),
        
        OFFER("OFFER"),
        
        AD("AD"),
        
        CUSTOM("CUSTOM"),
        
        GAME("GAME")
    
        private final String value
    
        TaskTypeEnum(String value) {
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

    
    TaskTypeEnum taskType
}
