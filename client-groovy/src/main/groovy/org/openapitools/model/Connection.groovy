package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Account;
import org.openapitools.model.ConnectedFriend;

@Canonical
class Connection {
    
    Long id
    
    Date created
    
    Date updated
    
    Date deleted
    
    String objectType
    
    String legacyId
    
    String searchTags
    
    Boolean active
    
    Boolean valid
    
    Account account
    
    Account connection
    
    ConnectedFriend pendingConnection
    
    Boolean friend
    
    Boolean friendRequested
    
    Boolean friendRequestPending
    
    Boolean following
    
    Boolean follower
    
    Boolean trusted
    
    Boolean blocked
    
    Date friendRequestDate
    
    Date friendResponseDate
    
    String display
    
    Date connectionViewedDate

    enum ConnectionTypeEnum {
    
        PRIMARY("PRIMARY"),
        
        SECONDARY("SECONDARY"),
        
        DEPENDENT("DEPENDENT"),
        
        ACQUAINTANCE("ACQUAINTANCE")
    
        private final String value
    
        ConnectionTypeEnum(String value) {
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

    
    ConnectionTypeEnum connectionType
    
    String title
    
    Long pendingConnectionId
    
    Double latitude
    
    Double longitude
}
