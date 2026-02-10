package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TrilatAppSettings {

    enum ProcessingTypeEnum {
    
        DEFAULT("DEFAULT"),
        
        FINGERPRINT("FINGERPRINT"),
        
        FINGERPRINT_V2("FINGERPRINT_V2")
    
        private final String value
    
        ProcessingTypeEnum(String value) {
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

    
    ProcessingTypeEnum processingType
    
    Integer maxSampleSize
    
    Double minRSSI
}
