package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;

@Canonical
class NotificationMessageResponse {
    
    AccountShortResponse sender
    
    String event
    
    String notificationMessage
    
    Long created
    
    Boolean hasRead
    
    Long contentId
    
    String contentType
    
    String contentName
    
    Long parentId
    
    String parentType
    
    String actionCategory
    
    String thumbnailURL
    
    String coverURL
}
