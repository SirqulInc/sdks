package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PredictedLocationResponse {
    
    Long ownerId
    
    String onDate
    
    Long onDateMilli
    
    Integer hour
    
    Double latitude
    
    Double longitude
    
    Double distance
    
    Long matches
    
    Double averageDuration
    
    Double weightedScore
}
