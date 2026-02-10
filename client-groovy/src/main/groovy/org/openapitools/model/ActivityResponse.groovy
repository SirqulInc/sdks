package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ActivityResponse {
    
    Long activityId
    
    Long created
    
    String appKey
    
    Long targetId
    
    String targetType
    
    String targetLegacyId
    
    String targetDescription
    
    Boolean targetActive
    
    String action
    
    Long slaveEntityId
}
