package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ConnectionGroupResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class ConnectionInfoResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<ConnectionGroupResponse> groups = new ArrayList<>()
    
    Integer followerCount
    
    Integer followingCount
    
    Integer friendCount
    
    Integer privateGroupCount
    
    String returning
}
