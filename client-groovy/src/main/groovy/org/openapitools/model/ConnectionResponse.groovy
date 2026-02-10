package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ConnectionResponse {
    
    Long connectionId
    
    String connectionAccountId
    
    String connectionPendingId
    
    String display
    
    String locationDisplay
    
    Long connectionViewedDate
    
    String profileImage
    
    String title
    
    String connectionAccountType
    
    Boolean trusted
    
    Boolean following
    
    Boolean friendRequested
    
    Boolean friendRequestPending
    
    Boolean blocked
    
    Boolean friend
}
