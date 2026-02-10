package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class TrilatCacheSample {
    
    String avatarId
    
    String deviceId
    
    List<Integer> rssi = new ArrayList<>()
    
    Double filteredRssi
    
    Long time
    
    String networkName
    
    Boolean randomizedId
    
    String deviceSignature
    
    String alternateId
    
    String type

    enum ProbeTypeEnum {
    
        WIFI_PROBE_REQUEST("WIFI_PROBE_REQUEST"),
        
        IBEACON("IBEACON"),
        
        BLE("BLE"),
        
        UNKNOWN("UNKNOWN")
    
        private final String value
    
        ProbeTypeEnum(String value) {
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

    
    ProbeTypeEnum probeType
    
    Double avgRssi
}
