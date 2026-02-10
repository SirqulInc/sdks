package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.RoutingResponse;

@Canonical
class RoutingListResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<RoutingResponse> items = new ArrayList<>()
    
    Integer count
    
    List<String> debug = new ArrayList<>()
    
    String returning
}
