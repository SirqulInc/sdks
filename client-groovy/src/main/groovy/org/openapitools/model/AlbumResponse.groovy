package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AssetResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class AlbumResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long albumId
    
    String albumType
    
    Long ownerId
    
    AccountShortResponse owner
    
    String title
    
    String description
    
    AssetResponse coverAsset
    
    String tags

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
    
    Long startDate
    
    Long endDate
    
    Integer assetCount
    
    Long likeCount
    
    Long dislikeCount
    
    Long commentsCount
    
    Integer userCount
    
    Boolean notifications
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Double distance
    
    Long dateCreated
    
    Long dateUpdated
    
    String cellPhone
    
    String fullAddress

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
    
    Long favoriteCount
    
    Boolean liked
    
    Boolean favorite
    
    Long favoriteId
    
    Boolean anonymous
    
    Long flagCount
    
    Long viewedCount
    
    Long clickedCount
    
    Long sharedCount
    
    String returning
}
