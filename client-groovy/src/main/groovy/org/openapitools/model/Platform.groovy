package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AudienceDevice;

@Canonical
class Platform {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    AudienceDevice device
    
    Long minimum
    
    Long maximum
    
    String downloadUrl
    
    String description
}
