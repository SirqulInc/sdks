package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Account;
import org.openapitools.model.Leg;

@Canonical
class Step {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    String deviceId
    
    Leg leg
    
    Double distance
    
    Long duration
    
    Double startLatitude
    
    Double startLongitude
    
    Double startAltitude
    
    Date startDate
    
    Double endLatitude
    
    Double endLongitude
    
    Double endAltitude
    
    Date endDate
}
