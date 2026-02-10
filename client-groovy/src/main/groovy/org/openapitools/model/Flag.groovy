package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Account;

@Canonical
class Flag {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    String flagableObjectType
    
    Long flagableObjectId
    
    String flagDescription
    
    String app
}
