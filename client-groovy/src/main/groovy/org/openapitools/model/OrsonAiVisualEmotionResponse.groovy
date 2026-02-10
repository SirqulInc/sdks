package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class OrsonAiVisualEmotionResponse {
    
    String requestId
    
    Integer responseCode
    
    String responseRaw
    
    Long userIndex
    
    String emotion
    
    Double probability
}
