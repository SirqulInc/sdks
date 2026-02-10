package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Program {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String description
    
    Integer costPerRide
}
