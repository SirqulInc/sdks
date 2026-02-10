package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.OrsonAiEmotionsResponse;

@Canonical
class OrsonAiBatchEmotionsResponse {
    
    String requestId
    
    Integer responseCode
    
    String responseRaw
    
    String status
    
    String error
    
    OrsonAiEmotionsResponse result
}
