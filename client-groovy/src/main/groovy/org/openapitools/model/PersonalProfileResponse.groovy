package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class PersonalProfileResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()

    enum PreferredGenderEnum {
    
        MALE("MALE"),
        
        FEMALE("FEMALE"),
        
        ANY("ANY")
    
        private final String value
    
        PreferredGenderEnum(String value) {
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

    
    PreferredGenderEnum preferredGender
    
    String preferredEthnicity
    
    String preferredEducation
    
    Integer preferredEducationIndex
    
    String preferredBodyType
    
    Integer preferredMinAge
    
    Integer preferredMaxAge
    
    Integer preferredMinHeight
    
    Integer preferredMaxHeight
    
    Double preferredLocationRange

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
    
    String hometown
    
    String height
    
    Integer heightIndex
    
    String ethnicity
    
    String bodyType
    
    String children
    
    String companionship
    
    Integer companionshipIndex
    
    String drink
    
    String education
    
    Integer educationIndex
    
    String maritalStatus
    
    String smoke
    
    String religion
    
    Long birthday
    
    String returning
}
