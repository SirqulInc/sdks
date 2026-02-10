package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.UserLocationResponse;

@Canonical
class UserLocationListResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<UserLocationResponse> items = new ArrayList<>()

    enum UserLocationTypeEnum {
    
        POSTALCODE("POSTALCODE"),
        
        EXACT("EXACT")
    
        private final String value
    
        UserLocationTypeEnum(String value) {
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

    
    UserLocationTypeEnum userLocationType
    
    Double latitude
    
    Double longitude
    
    String postalCode
    
    Integer count
    
    String returning
}
