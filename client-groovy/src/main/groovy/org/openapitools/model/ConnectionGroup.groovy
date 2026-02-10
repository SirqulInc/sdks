package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.Connection;
import org.openapitools.model.GroupPermissions;

@Canonical
class ConnectionGroup {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    String name
    
    String description
    
    List<Connection> connections = new ArrayList<>()
    
    GroupPermissions permissions
    
    Asset image
    
    List<ConnectionGroup> subGroups = new ArrayList<>()
}
