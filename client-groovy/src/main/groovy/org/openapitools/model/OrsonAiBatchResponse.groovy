package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.OrsonAiBatchEmotionsResponse;
import org.openapitools.model.OrsonAiBatchTopicsResponse;
import org.openapitools.model.OrsonAiBatchTranscriptResponse;

@Canonical
class OrsonAiBatchResponse {
    
    String requestId
    
    Integer responseCode
    
    String responseRaw
    
    OrsonAiBatchTranscriptResponse transcript
    
    OrsonAiBatchTopicsResponse topics
    
    OrsonAiBatchEmotionsResponse emotions
}
