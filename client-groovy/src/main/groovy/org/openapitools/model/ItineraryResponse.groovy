package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.StopResponse;
import org.openapitools.model.VehicleResponse;

@Canonical
class ItineraryResponse {
    
    String itineraryId
    
    Long waypointCount
    
    Long score
    
    String errorCode
    
    String error
    
    Integer itemCount
    
    VehicleResponse vehicle
    
    List<StopResponse> stops = new ArrayList<>()
    
    Long estimatedStartTime
    
    Long estimatedEndTime
    
    Long estimatedDuration
    
    Double estimatedDistance
    
    Long waitTime
    
    Boolean generated
    
    Boolean valid
}
