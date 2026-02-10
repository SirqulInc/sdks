package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AvailabilityResponse {
    
    Long availabilityId
    
    Long startDate
    
    Long endDate
    
    Integer dayOfWeek
    
    Long startTime
    
    Long endTime
    
    String timeZone
    
    Boolean deleted
}
