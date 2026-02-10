package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ConnectionGroupResponse;
import org.openapitools.model.ConnectionResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.PermissionResponse;

@Canonical
class UserPermissionsResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    PermissionResponse permissions
    
    ConnectionResponse connection
    
    ConnectionGroupResponse connectionGroup
    
    Boolean exclude
    
    Boolean blocked
    
    Boolean friendGroup
    
    Long permissionableId
    
    String permissionableType
    
    String returning
}
