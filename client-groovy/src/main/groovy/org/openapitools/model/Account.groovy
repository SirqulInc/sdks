package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountProfileInfo;
import org.openapitools.model.Address;
import org.openapitools.model.Asset;
import org.openapitools.model.CellCarrier;
import org.openapitools.model.Region;
import org.openapitools.model.RetailerLocation;
import org.openapitools.model.ThirdPartyCredentials;

@Canonical
class Account {
    
    Long id
    
    Date created
    
    Date updated
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Region currentRegion
    
    Date locationLastUpdated
    
    String currentPostalCode
    
    Double currentPostalCodeLatitude
    
    Double currentPostalCodeLongitude
    
    Boolean locationUpdated
    
    Long premigrationId
    
    String username
    
    String locale
    
    String inviteCode
    
    String retailerInviteCode
    
    String aboutUs
    
    String businessName
    
    Long likeCount
    
    Long dislikeCount
    
    List<ThirdPartyCredentials> thirdPartyCredentials = new ArrayList<>()
    
    Boolean partnerActive
    
    String resetToken
    
    String profileImage
    
    String accountType
    
    List<Asset> media = new ArrayList<>()
    
    Asset picture
    
    String firstName
    
    String middleName
    
    String lastName
    
    String prefix
    
    String suffix
    
    String title
    
    String homePhone
    
    String cellPhone
    
    CellCarrier cellCarrier
    
    String businessPhone
    
    String businessPhoneExt
    
    String faxNumber
    
    String timeZone
    
    String utcOffset
    
    String code501c3
    
    String emailAddress
    
    Address address
    
    String web
    
    String display
    
    String website
    
    String consumersNotes
    
    String consumersAboutUs
    
    AccountProfileInfo accountProfile
    
    List<RetailerLocation> retailerLocations = new ArrayList<>()
    
    Boolean executive
    
    String contentName
    
    Long defaultThreshold

    enum AudienceInfoGenderEnum {
    
        MALE("MALE"),
        
        FEMALE("FEMALE"),
        
        ANY("ANY")
    
        private final String value
    
        AudienceInfoGenderEnum(String value) {
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

    
    AudienceInfoGenderEnum audienceInfoGender
    
    Long flagThresholdId
    
    String contentType
}
