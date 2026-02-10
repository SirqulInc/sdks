package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ConnectionResponse;
import org.openapitools.model.GroupPermissions;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class ConnectionGroupResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long connectionGroupId
    
    String name

    enum GroupTypeEnum {
    
        PRIVATE("PRIVATE"),
        
        FRIENDS("FRIENDS"),
        
        TRUSTED("TRUSTED"),
        
        BLOCKED("BLOCKED"),
        
        FOLLOWERS("FOLLOWERS"),
        
        FOLLOWING("FOLLOWING"),
        
        PENDING("PENDING"),
        
        REQUEST("REQUEST")
    
        private final String value
    
        GroupTypeEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    GroupTypeEnum groupType
    
    String thumbnailURL
    
    List<ConnectionGroupResponse> subGroups = new ArrayList<>()
    
    String description
    
    Boolean active
    
    Integer connectionCount
    
    List<ConnectionResponse> connections = new ArrayList<>()
    
    GroupPermissions groupPermissions
    
    Long ownerId
    
    String returning
}
