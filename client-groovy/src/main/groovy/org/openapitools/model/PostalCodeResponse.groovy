package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PostalCodeResponse {
    
    String city
    
    String stateCode
    
    String code
    
    Double latitude
    
    Double longitude
    
    String timezone
    
    Integer utcOffset
}
