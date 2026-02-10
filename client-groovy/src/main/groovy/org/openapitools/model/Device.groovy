package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Device {
    
    Integer rebootTimeHour
    
    Integer rebootTimeMinute
    
    Integer idleTimeoutInSecond
    
    String serialNumber
    
    String udid
    
    String deviceType
    
    Double devicePower
    
    Double deviceInterference
    
    Date lastHeartbeatSent
    
    Date lastDown
    
    Date lastUp
    
    Date lastNotificationSent

    enum HealthEnum {
    
        RUNNING("RUNNING"),
        
        WARNING("WARNING"),
        
        DOWN("DOWN")
    
        private final String value
    
        HealthEnum(String value) {
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

    
    HealthEnum health
}
