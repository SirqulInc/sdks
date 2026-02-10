package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BlockedNotificationResponse {
    
    Long blockedNotificationId
    
    Long created
    
    String event
    
    String conduit
    
    String customType
    
    String contentType
    
    Long contentId
    
    String searchTags
    
    Boolean blocked
    
    Boolean deleted
}
