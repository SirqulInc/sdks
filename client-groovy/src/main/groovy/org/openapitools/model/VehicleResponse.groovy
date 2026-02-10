package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GeoResponse;
import org.openapitools.model.StopResponse;

@Canonical
class VehicleResponse {
    
    String id
    
    String name
    
    Long capacity
    
    GeoResponse depot
    
    Long startWindow
    
    Long endWindow
    
    GeoResponse current
    
    StopResponse depotAsStop
}
