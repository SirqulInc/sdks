package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class FlagResponse {
    
    Long flagId
    
    Long flagableId
    
    String flagableType
    
    String flagDescription
    
    Long createdDate
    
    Long updatedDate
}
