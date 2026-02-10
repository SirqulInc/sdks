package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class OrsonAiSTTResponse {
    
    String requestId
    
    Integer responseCode
    
    String responseRaw
    
    String text
}
