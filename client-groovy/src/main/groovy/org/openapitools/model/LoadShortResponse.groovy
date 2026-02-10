package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.StopResponse;

@Canonical
class LoadShortResponse {
    
    String id
    
    String name
    
    Long size
    
    Long loadingTime
    
    Boolean separatePayloads
    
    StopResponse pickup
    
    StopResponse dropoff
}
