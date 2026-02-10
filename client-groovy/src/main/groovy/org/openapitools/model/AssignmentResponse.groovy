package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AssignmentStatusResponse;
import org.openapitools.model.RetailerLocationShortResponse;

@Canonical
class AssignmentResponse {
    
    Long assignmentId
    
    String name
    
    String description
    
    Boolean active
    
    Long created
    
    Long updated
    
    AccountShortResponse assignee
    
    AccountShortResponse creator
    
    AccountShortResponse lastReportedBy
    
    RetailerLocationShortResponse location
    
    AssignmentStatusResponse currentStatus

    enum CurrentStatusTypeEnum {
    
        NEW("NEW"),
        
        IN_PROGRESS("IN_PROGRESS"),
        
        SUBSCRIBED("SUBSCRIBED"),
        
        ARCHIVED("ARCHIVED")
    
        private final String value
    
        CurrentStatusTypeEnum(String value) {
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

    
    CurrentStatusTypeEnum currentStatusType
}
