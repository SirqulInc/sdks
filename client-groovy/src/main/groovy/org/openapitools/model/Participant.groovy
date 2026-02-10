package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Account;

@Canonical
class Participant {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account account
    
    Date availableStart
    
    Date availableEnd
    
    String color1
    
    String color2

    enum TypeEnum {
    
        TEAM("TEAM"),
        
        LEAGUE("LEAGUE"),
        
        SPORT("SPORT")
    
        private final String value
    
        TypeEnum(String value) {
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

    
    TypeEnum type
}
