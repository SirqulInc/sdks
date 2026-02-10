package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PromoCode {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String code
    
    String name
    
    Integer days
}
