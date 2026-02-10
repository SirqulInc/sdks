package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GroupPermissions {
    
    Boolean canViewProfileInfo
    
    Boolean canViewGameInfo
    
    Boolean canViewFriendInfo
}
