package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ConfigRoutingRequest;
import org.openapitools.model.DriverResponse;
import org.openapitools.model.ItineraryResponse;
import org.openapitools.model.LoadResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.VehicleResponse;

@Canonical
class RoutingResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<LoadResponse> items = new ArrayList<>()
    
    List<VehicleResponse> vehicles = new ArrayList<>()
    
    List<DriverResponse> drivers = new ArrayList<>()
    
    ConfigRoutingRequest config
    
    String error
    
    List<String> debug = new ArrayList<>()
    
    Date startTime
    
    Date endTime
    
    List<RoutingResponse> responses = new ArrayList<>()
    
    String orignalRequest
    
    Boolean generated
    
    List<ItineraryResponse> itineraries = new ArrayList<>()
    
    Long score
    
    Integer loadSize
    
    Long runtime
    
    Long earliestPickupWindow
    
    Long latestPickupWindow
    
    String returning
}
