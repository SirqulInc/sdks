package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AudienceDevice {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    Long minimum
    
    Long maximum
}
