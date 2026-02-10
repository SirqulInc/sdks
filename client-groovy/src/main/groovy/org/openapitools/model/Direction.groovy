package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Direction {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String distance
    
    String duration
    
    Double endLatitude
    
    Double endLongitude
    
    Double startLatitude
    
    Double startLongitude
    
    String instruction
    
    String polyline

    enum ProgressStatusEnum {
    
        PENDING("PENDING"),
        
        COMPLETE("COMPLETE"),
        
        INVALID("INVALID")
    
        private final String value
    
        ProgressStatusEnum(String value) {
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

    
    ProgressStatusEnum progressStatus
    
    Boolean highlight
}
