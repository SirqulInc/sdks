package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DirectionResponse {
    
    String action
    
    Double bearing
    
    Double bearingDifference
    
    String heading
    
    Double distance
    
    String distanceUnits
    
    String distanceString
    
    Double startLatitude
    
    Double startLongitude
    
    Double endLatitude
    
    Double endLongitude
    
    String instruction
    
    String progressStatus
}
