package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountMiniResponse;
import org.openapitools.model.ContactResponse;
import org.openapitools.model.RetailerLocationShortResponse;

@Canonical
class EmployeeResponse {
    
    Long accountId
    
    String locationDisplay
    
    String display
    
    String username
    
    String accountType
    
    String profileImage

    enum GenderEnum {
    
        MALE("MALE"),
        
        FEMALE("FEMALE"),
        
        ANY("ANY")
    
        private final String value
    
        GenderEnum(String value) {
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

    
    GenderEnum gender
    
    String contactEmail
    
    ContactResponse contact
    
    AccountMiniResponse manager
    
    Boolean active
    
    List<RetailerLocationShortResponse> locations = new ArrayList<>()
    
    Boolean hasDelegateAccess
    
    Double latitude
    
    Double longitude
    
    Long locationLastUpdated
    
    Integer locationCount
}
