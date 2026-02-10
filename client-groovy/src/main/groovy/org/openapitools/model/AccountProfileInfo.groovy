package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;

@Canonical
class AccountProfileInfo {
    
    Long id
    
    Date created
    
    Date updated
    
    Boolean active
    
    Boolean valid
    
    Account account

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
    
    Date birthday

    enum AgeGroupEnum {
    
        AGE_0_13("AGE_0_13"),
        
        AGE_14_17("AGE_14_17"),
        
        AGE_18_22("AGE_18_22"),
        
        AGE_23_30("AGE_23_30"),
        
        AGE_31_54("AGE_31_54"),
        
        AGE_55_PLUS("AGE_55_PLUS")
    
        private final String value
    
        AgeGroupEnum(String value) {
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

    
    AgeGroupEnum ageGroup
    
    Integer preferredMinAge
    
    Integer preferredMaxAge
    
    Integer preferredMinHeight
    
    Integer preferredMaxHeight

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
    
    String preferredEducation
    
    Integer preferredEducationIndex
    
    String preferredBodyType
    
    String preferredEthnicity
    
    String preferredLocation
    
    Double preferredLocationRange
    
    String height
    
    Integer heightIndex
    
    String ethnicity
    
    String bodyType
    
    String maritalStatus
    
    String children
    
    String religion
    
    String education
    
    Integer educationIndex
    
    String smoke
    
    String drink
    
    String companionship
    
    Integer companionshipIndex

    enum DevelopmentPlatformsEnum {
    
        MAC("MAC"),
        
        WINDOWS("WINDOWS"),
        
        IOS("IOS"),
        
        ANDROID("ANDROID"),
        
        WINDOWSPHONE("WINDOWSPHONE"),
        
        KINDLE("KINDLE"),
        
        UNITY3_D("UNITY3D"),
        
        COCOS2_D("COCOS2D"),
        
        HTML5("HTML5"),
        
        FACEBOOK("FACEBOOK")
    
        private final String value
    
        DevelopmentPlatformsEnum(String value) {
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

    
    List<DevelopmentPlatformsEnum> developmentPlatforms = new ArrayList<>()
    
    Long matchToken
    
    String matchString
    
    Long noneZeroMatchToken
    
    Date preferredMaxBirthday
    
    Date preferredMinBirthday
}
