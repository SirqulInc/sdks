package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ConnectionResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class ConnectionListResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<ConnectionResponse> connections = new ArrayList<>()
    
    Integer friendCount
    
    Integer followingCount
    
    Integer itemCount
    
    Boolean hasMoreResults
    
    String returning
}
