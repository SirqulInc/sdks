package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Application;
import org.openapitools.model.AudienceDeviceVersionRange;
import org.openapitools.model.AudienceLocation;
import org.openapitools.model.AudienceTargetType;
import org.openapitools.model.Category;

@Canonical
class Audience {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    String name
    
    Boolean display
    
    String description
    
    Account owner

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

    enum AgeGroupsEnum {
    
        AGE_0_13("AGE_0_13"),
        
        AGE_14_17("AGE_14_17"),
        
        AGE_18_22("AGE_18_22"),
        
        AGE_23_30("AGE_23_30"),
        
        AGE_31_54("AGE_31_54"),
        
        AGE_55_PLUS("AGE_55_PLUS")
    
        private final String value
    
        AgeGroupsEnum(String value) {
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

    
    List<AgeGroupsEnum> ageGroups = new ArrayList<>()

    enum GameExperienceLevelEnum {
    
        ANY("ANY"),
        
        NEW("NEW"),
        
        BEGINNER("BEGINNER"),
        
        INTERMEDIATE("INTERMEDIATE"),
        
        EXPERT("EXPERT")
    
        private final String value
    
        GameExperienceLevelEnum(String value) {
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

    
    GameExperienceLevelEnum gameExperienceLevel
    
    List<AudienceDeviceVersionRange> deviceVersionRanges = new ArrayList<>()
    
    List<Category> categories = new ArrayList<>()
    
    List<Application> applications = new ArrayList<>()
    
    Double radius
    
    List<AudienceLocation> locations = new ArrayList<>()
    
    Boolean sendSuggestion
    
    Integer startTimeOffset
    
    Integer endTimeOffset
    
    AudienceTargetType target
    
    String associateContentName
    
    String polygon
    
    String associateType
    
    Long associateId
}
