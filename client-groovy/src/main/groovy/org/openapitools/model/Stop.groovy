package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Location;
import org.openapitools.model.Note;
import org.openapitools.model.Route;
import org.openapitools.model.Shipment;

@Canonical
class Stop {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    String name
    
    Account owner
    
    Location location
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount

    enum StopTypeEnum {
    
        PICKUP("PICKUP"),
        
        DROPOFF("DROPOFF"),
        
        START("START"),
        
        END("END"),
        
        ROUTING("ROUTING")
    
        private final String value
    
        StopTypeEnum(String value) {
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

    
    StopTypeEnum stopType
    
    Long orderIndex
    
    Date startTime
    
    Date endTime
    
    Date estimatedTime
    
    Date estimatedArrivalTime
    
    Date estimatedDepartureTime
    
    Date actualTime
    
    Date desiredTime
    
    Integer timePadding
    
    Route route
    
    Shipment shipment

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
    
    Date compareEstimatedTime
    
    Date compareEstimatedArrivalTime
    
    Date compareEstimiatedDepartureTime
    
    String polyline
    
    Stop parent
    
    String locationDisplay
    
    Boolean complete
    
    String contentName
    
    String locationAddress
}
