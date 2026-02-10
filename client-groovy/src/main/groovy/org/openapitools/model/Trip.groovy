package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Connection;
import org.openapitools.model.Location;
import org.openapitools.model.Recurrence;
import org.openapitools.model.Route;
import org.openapitools.model.Shipment;

@Canonical
class Trip {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    Location pickupLocation
    
    Date pickupTime
    
    Location dropOffLocation
    
    Date dropOffTime
    
    List<Shipment> shipments = new ArrayList<>()
    
    Recurrence recurrence
    
    String timeZone
    
    Route route

    enum PreferenceEnum {
    
        DRIVE("DRIVE"),
        
        FLEXIBLE("FLEXIBLE"),
        
        RIDE("RIDE")
    
        private final String value
    
        PreferenceEnum(String value) {
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

    
    PreferenceEnum preference
    
    String notifications
    
    List<Trip> matches = new ArrayList<>()
    
    Connection ownerConnection
    
    Long originalId
}
