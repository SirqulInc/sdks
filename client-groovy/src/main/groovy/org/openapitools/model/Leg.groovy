package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Application;
import org.openapitools.model.Step;

@Canonical
class Leg {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    Account parentOwner
    
    Application application
    
    String deviceId
    
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
    
    String type
    
    Long retailerLocationId
    
    String floorId
    
    List<Step> steps = new ArrayList<>()
}
