package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Node;

@Canonical
class NodeRequest {
    
    Integer x
    
    Integer y
    
    Integer z
    
    Double latitude
    
    Double longitude
    
    Double altitude
    
    Long date
    
    Boolean isWaypoint
    
    Long accountId
    
    Node node
}
