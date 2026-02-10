package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class OrderPackage {
    
    Boolean valid
    
    String packageTypeName
    
    Integer packageCount
    
    Double cubicFeet
}
