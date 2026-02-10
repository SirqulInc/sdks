package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Account;
import org.openapitools.model.Connection;
import org.openapitools.model.ConnectionGroup;
import org.openapitools.model.Permissions;

@Canonical
class UserPermissions {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String permissionableType
    
    Long permissionableId
    
    ConnectionGroup connectionGroup
    
    Boolean friendGroup
    
    Connection connection
    
    Permissions permissions
    
    Boolean exclude
    
    Boolean blocked
    
    Account owner
}
