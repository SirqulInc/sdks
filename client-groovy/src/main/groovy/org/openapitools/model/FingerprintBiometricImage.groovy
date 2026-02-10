package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class FingerprintBiometricImage {

    enum PositionEnum {
    
        UNKNOWN("UNKNOWN"),
        
        LEFT_INDEX("LEFT_INDEX"),
        
        LEFT_MIDDLE("LEFT_MIDDLE"),
        
        LEFT_RING("LEFT_RING"),
        
        LEFT_LITTLE("LEFT_LITTLE"),
        
        LEFT_THUMB("LEFT_THUMB"),
        
        RIGHT_INDEX("RIGHT_INDEX"),
        
        RIGHT_MIDDLE("RIGHT_MIDDLE"),
        
        RIGHT_RING("RIGHT_RING"),
        
        RIGHT_LITTLE("RIGHT_LITTLE"),
        
        RIGHT_THUMB("RIGHT_THUMB"),
        
        LEFT("LEFT"),
        
        RIGHT("RIGHT")
    
        private final String value
    
        PositionEnum(String value) {
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

    
    PositionEnum position
    
    String data
    
    String imageFormat
}
