package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AlbumFullResponse;
import org.openapitools.model.ConnectionGroupShortResponse;
import org.openapitools.model.ConnectionResponse;
import org.openapitools.model.LikeResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.NoteFullResponse;
import org.openapitools.model.Permissions;

@Canonical
class AlbumContestResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long albumContestId
    
    String contestType
    
    AccountShortResponse owner
    
    String title
    
    String description

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
    
    Long likeCount
    
    Long dislikeCount
    
    Integer commentsCount
    
    Integer userCount
    
    List<NoteFullResponse> comments = new ArrayList<>()
    
    List<LikeResponse> likes = new ArrayList<>()
    
    List<ConnectionGroupShortResponse> connectionGroups = new ArrayList<>()
    
    List<ConnectionResponse> connections = new ArrayList<>()
    
    Boolean hasLiked
    
    Permissions userPermissions
    
    Permissions publicPermissions
    
    AlbumFullResponse album1
    
    AlbumFullResponse album2
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Double distance
    
    Long dateCreated
    
    Long dateUpdated

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
    
    Long voteCount
    
    String returning
}
