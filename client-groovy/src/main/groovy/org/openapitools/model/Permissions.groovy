package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Permissions {
    
    Boolean read
    
    Boolean write
    
    Boolean delete
    
    Boolean add
}
