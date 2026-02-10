package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.LegResponse;

@Canonical
class StepResponse {
    
    LegResponse leg
    
    Double distance
    
    Long duration
    
    Double startLat
    
    Double startLng
    
    Double startAlt
    
    Long startDate
    
    Double endLat
    
    Double endLng
    
    Double endAlt
    
    Long endDate
    
    Integer accuracy
}
