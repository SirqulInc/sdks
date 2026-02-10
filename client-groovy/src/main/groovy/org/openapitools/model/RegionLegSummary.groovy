package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class RegionLegSummary {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Long regionId
    
    String floorId
    
    Long retailerLocationId
    
    Long legId
}
