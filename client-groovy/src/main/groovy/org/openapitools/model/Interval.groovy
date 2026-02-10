package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Chronology;

@Canonical
class Interval {
    
    Date end
    
    Date start
    
    Chronology chronology
    
    Long startMillis
    
    Long endMillis
    
    Boolean beforeNow
    
    Boolean afterNow
}
