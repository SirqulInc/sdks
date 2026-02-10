package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PreferredLocationResponse {
    
    Long ownerId
    
    String onDate
    
    Long onDateMilli
    
    Integer hour
    
    Double latitude
    
    Double longitude
    
    Double distance
    
    Long duration
    
    Long startStepId
    
    Long endStepId
}
