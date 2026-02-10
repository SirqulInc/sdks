package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;
import org.openapitools.model.ContactInfo;
import org.openapitools.model.Flag;
import org.openapitools.model.FlagThreshold;
import org.openapitools.model.Note;
import org.openapitools.model.Permissions;
import org.openapitools.model.UserPermissions;
import org.openapitools.model.YayOrNay;

@Canonical
class Album {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Account owner
    
    String title
    
    Application application

    enum ApprovalStatusEnum {
    
        PENDING("PENDING"),
        
        REJECTED("REJECTED"),
        
        APPROVED("APPROVED"),
        
        FEATURED("FEATURED")
    
        private final String value
    
        ApprovalStatusEnum(String value) {
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

    
    ApprovalStatusEnum approvalStatus
    
    Permissions publicPermissions
    
    List<UserPermissions> userPermissions = new ArrayList<>()

    enum VisibilityEnum {
    
        PUBLIC("PUBLIC"),
        
        PRIVATE("PRIVATE"),
        
        FRIENDS("FRIENDS")
    
        private final String value
    
        VisibilityEnum(String value) {
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

    
    VisibilityEnum visibility
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    List<YayOrNay> likes = new ArrayList<>()
    
    Long likeCount
    
    Long dislikeCount
    
    List<Flag> flags = new ArrayList<>()
    
    Long flagCount
    
    FlagThreshold flagThreshold
    
    String description
    
    String albumType
    
    List<Asset> assets = new ArrayList<>()
    
    Asset coverAsset
    
    String tags
    
    Date startDate
    
    Date endDate
    
    ContactInfo contactInfo
    
    Long assetCount
    
    Long favoriteCount
    
    Long viewedCount
    
    Long clickedCount
    
    Long sharedCount
    
    Boolean anonymous
    
    String ownerUsername
    
    String display
    
    String appKey
    
    Long billableId
    
    String subType
    
    Asset contentAsset
    
    String secondaryType
    
    String contentName
    
    String applicationTitle
    
    String shortTitle
    
    Long defaultThreshold
}
