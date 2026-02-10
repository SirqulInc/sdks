package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.Note;
import org.openapitools.model.Program;
import org.openapitools.model.Region;
import org.openapitools.model.ServiceHub;
import org.openapitools.model.Shipment;
import org.openapitools.model.Stop;
import org.openapitools.model.Vehicle;

@Canonical
class Route {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String externalId
    
    ServiceHub hub
    
    Program program
    
    Region zone
    
    Vehicle vehicle
    
    Account driver
    
    Account concierge
    
    Date scheduled
    
    Date approved
    
    Date started
    
    Date completed
    
    Float totalDistance
    
    Long totalTime
    
    Double estimatedDistance
    
    Long estimatedTime
    
    Stop startStop
    
    Stop endStop
    
    List<Stop> stops = new ArrayList<>()
    
    List<Shipment> shipments = new ArrayList<>()
    
    Boolean allShipmentsConfirmed
    
    Integer shipmentOrderCount
    
    String polyline
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    String glympseToken
    
    Boolean enableOptimization
    
    Date optimizedDate
    
    Date optimizationStarted
    
    Date optimizationCompleted
    
    Boolean featured
    
    Asset image
    
    Route parent
    
    String contentName
}
