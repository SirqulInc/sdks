package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class UserActivityResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Date created
    
    Double latitude
    
    Double longitude
    
    String tag
    
    Long customId
    
    String customType
    
    Long userId
    
    String username
    
    String appTitle
    
    Long appId
    
    String appUrl
    
    String appDescription
    
    String imageURL
    
    String profileImage
    
    String fields
    
    Long id
    
    String customText
    
    Double customValue
    
    String customMessage
    
    String returning
}
