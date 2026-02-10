package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.UserLocationListResponse;

@Canonical
class UserLocationSearchResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Boolean hasMoreResults
    
    Integer count
    
    List<UserLocationListResponse> userLocations = new ArrayList<>()
    
    String returning
}
