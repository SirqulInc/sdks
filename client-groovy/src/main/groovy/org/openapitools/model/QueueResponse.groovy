package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QueueResponse {
    
    Long queueId
    
    String name
    
    String host
    
    Integer port
    
    String username
    
    String password
    
    String virtualHost
    
    Integer workers
    
    String exchanger
    
    String exchangerType
    
    Boolean handleDelivery
    
    String dataMapping
    
    String analyticTags
}
