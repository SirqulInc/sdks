package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Location;
import org.openapitools.model.Retailer;

@Canonical
class ServiceHub {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    String name
    
    String externalId
    
    Retailer business
    
    Location location
    
    String timeZone
}
