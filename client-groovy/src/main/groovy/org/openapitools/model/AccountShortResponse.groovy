package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountShortResponse {
    
    Long accountId
    
    String locationDisplay
    
    String display
    
    String username
    
    String accountType
    
    String profileImage

    enum GenderEnum {
    
        MALE("MALE"),
        
        FEMALE("FEMALE"),
        
        ANY("ANY")
    
        private final String value
    
        GenderEnum(String value) {
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

    
    GenderEnum gender
    
    String contactEmail
}
