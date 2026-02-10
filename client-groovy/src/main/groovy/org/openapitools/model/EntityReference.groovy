package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class EntityReference {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String entityType
    
    Long masterEntityId
    
    String slaveUID
    
    Long slaveEntityId
}
