package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.ContactResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.PersonalProfileResponse;
import org.openapitools.model.PostalCodeResponse;
import org.openapitools.model.UserSettingsResponse;

@Canonical
class ProfileInfoResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long accountId
    
    String locationDisplay
    
    String display
    
    String username
    
    String profileImage
    
    AssetShortResponse profileAvatar
    
    String aboutUs
    
    String locale
    
    String summaryTitle

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
    
    String age

    enum GameExperienceEnum {
    
        ANY("ANY"),
        
        NEW("NEW"),
        
        BEGINNER("BEGINNER"),
        
        INTERMEDIATE("INTERMEDIATE"),
        
        EXPERT("EXPERT")
    
        private final String value
    
        GameExperienceEnum(String value) {
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

    
    GameExperienceEnum gameExperience
    
    ContactResponse contact
    
    List<CategoryResponse> categories = new ArrayList<>()
    
    PersonalProfileResponse personalProfile
    
    UserSettingsResponse userSettings
    
    Double latitude
    
    Double longitude
    
    PostalCodeResponse currentPostalCode
    
    String accountType
    
    Long premiumExpiration
    
    Integer matchIndex
    
    String tags
    
    String returning
}
