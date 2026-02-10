package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SubscriptionOptionResponse {
    
    Long id
    
    String name
    
    Double price
    
    Integer quantity
    
    Integer threshold
    
    Boolean visible
    
    String optionType
}
