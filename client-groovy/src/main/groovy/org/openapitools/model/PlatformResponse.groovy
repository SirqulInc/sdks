package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PlatformResponse {
    
    Long deviceId
    
    Boolean active
    
    String name
    
    String display
    
    Long minimum
    
    Long maximum
    
    String downloadUrl
    
    String description
}
