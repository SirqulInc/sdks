package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.OrsonAiTopicResponse;

@Canonical
class OrsonAiTopicsResponse {
    
    String requestId
    
    Integer responseCode
    
    String responseRaw
    
    List<OrsonAiTopicResponse> topics = new ArrayList<>()
}
