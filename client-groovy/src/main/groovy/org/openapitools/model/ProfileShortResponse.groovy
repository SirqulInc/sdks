package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class ProfileShortResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long accountId
    
    String locationDisplay
    
    String display
    
    String username
    
    String profileImage
    
    AssetShortResponse profileAvatar
    
    String returning
}
