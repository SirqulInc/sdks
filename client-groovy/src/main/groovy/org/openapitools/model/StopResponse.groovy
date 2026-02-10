package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.LoadShortResponse;
import org.openapitools.model.NodeRequest;

@Canonical
class StopResponse {
    
    String geoId
    
    Double latitude
    
    Double longitude
    
    Long startWindow
    
    Long endWindow

    enum TypeEnum {
    
        PICKUP("PICKUP"),
        
        DROPOFF("DROPOFF"),
        
        START("START"),
        
        END("END"),
        
        ROUTING("ROUTING")
    
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
    
    Long eta
    
    Long etd
    
    Long score
    
    String errorCode
    
    String error
    
    String itemId
    
    Long itemSize
    
    LoadShortResponse load
    
    List<NodeRequest> floorPlanPath = new ArrayList<>()
    
    Boolean valid
}
