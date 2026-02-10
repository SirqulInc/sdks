package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Retailer;
import org.openapitools.model.ServiceHub;

@Canonical
class CargoType {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Retailer business
    
    ServiceHub hub
    
    String name
    
    Double width
    
    Double height
    
    Double depth
    
    Double volume
    
    Double weight
    
    Long loadTime
    
    Boolean palletizable
    
    Integer palletRatio
    
    Boolean adminOnly
}
