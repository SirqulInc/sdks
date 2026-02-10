package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class FilterResponse {
    
    Long filterId
    
    String name
    
    String display
    
    Integer subFilterCount
    
    Long parentId
    
    String description
    
    Boolean active
    
    String externalId
    
    String externalType
}
