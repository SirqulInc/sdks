package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Asset;

@Canonical
class ConnectedFriend {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String display
    
    Asset avatar
    
    String avatarURL
    
    String platform
    
    String platformId
    
    Boolean invited
    
    String locationDescription
}
