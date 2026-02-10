package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Application;

@Canonical
class FlagThreshold {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Long threshold
    
    String flagableObjectType
    
    Application application
}
