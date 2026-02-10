package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Address;
import org.openapitools.model.ModelLocalTime;
import org.openapitools.model.Retailer;
import org.openapitools.model.ServiceHub;

@Canonical
class ServiceType {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Retailer business
    
    ServiceHub hub
    
    String name
    
    Long additionalLoadTime
    
    Address pickupAddressOverride
    
    Address dropoffAddressOverride
    
    ModelLocalTime pickupStartTimeOverride
    
    ModelLocalTime pickupEndTimeOverride
    
    ModelLocalTime dropoffStartTimeOverride
    
    ModelLocalTime dropoffEndTimeOverride

    enum DateOverrideEnum {
    
        NONE("NONE"),
        
        PICKUP_START("PICKUP_START"),
        
        PICKUP_END("PICKUP_END"),
        
        DROPOFF_START("DROPOFF_START"),
        
        DROPOFF_END("DROPOFF_END")
    
        private final String value
    
        DateOverrideEnum(String value) {
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

    
    DateOverrideEnum dateOverride
}
