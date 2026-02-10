package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.OrsonAiVisualEmotionResponse;

@Canonical
class OrsonAiEmotionsResponse {
    
    String requestId
    
    Integer responseCode
    
    String responseRaw
    
    String status
    
    String error
    
    List<String> audioEmotions = new ArrayList<>()
    
    List<OrsonAiVisualEmotionResponse> visualEmotions = new ArrayList<>()
}
