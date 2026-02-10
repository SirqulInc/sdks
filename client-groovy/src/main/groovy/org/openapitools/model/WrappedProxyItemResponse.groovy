package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ImageGenerationResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class WrappedProxyItemResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    String returning
    
    String type
    
    Integer responseCode
    
    String responseRaw
    
    Long requestDuration
    
    Long requestEndTime
    
    ImageGenerationResponse item
}
