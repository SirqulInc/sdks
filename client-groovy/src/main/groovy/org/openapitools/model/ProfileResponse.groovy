package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AppInfoResponse;
import org.openapitools.model.ConnectionInfoResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.ProfileInfoResponse;

@Canonical
class ProfileResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long loginAccountId
    
    Boolean validated
    
    AppInfoResponse appInfo
    
    Boolean canViewAppInfo
    
    Boolean canViewFriendInfo
    
    Boolean canViewProfileInfo
    
    Long flagCount
    
    ConnectionInfoResponse friendInfo
    
    Boolean isBlocked
    
    Boolean isProfileOwner
    
    Boolean metFlagThreshold
    
    ProfileInfoResponse profileInfo
    
    Boolean trusted
    
    Boolean following
    
    Boolean friendRequested
    
    Boolean friendRequestPending
    
    Boolean blocked
    
    Boolean flagged
    
    Boolean profileOwner
    
    Boolean friend
    
    String returning
}
