package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Album;
import org.openapitools.model.Application;
import org.openapitools.model.Assignment;
import org.openapitools.model.Flag;
import org.openapitools.model.FlagThreshold;
import org.openapitools.model.Note;
import org.openapitools.model.YayOrNay;

@Canonical
class Asset {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    Long premigrationId
    
    Long newOwnerId
    
    String folderUri
    
    String fileName
    
    String mediaType
    
    String mimeType
    
    String metaData
    
    String caption
    
    Integer versionCode
    
    String versionName
    
    Long likeCount
    
    Long dislikeCount
    
    Long noteCount
    
    Account owner
    
    List<Note> notes = new ArrayList<>()
    
    List<YayOrNay> likes = new ArrayList<>()
    
    Long attachedAssetId
    
    List<Flag> flags = new ArrayList<>()
    
    Long flagCount
    
    FlagThreshold flagThreshold

    enum DefaultAlbumTypeEnum {
    
        PROFILE("PROFILE"),
        
        DEFAULT_PROFILE_AVATAR("DEFAULT_PROFILE_AVATAR"),
        
        DEFAULT_APP_ICON("DEFAULT_APP_ICON"),
        
        DEFAULT_APP_LOGO("DEFAULT_APP_LOGO")
    
        private final String value
    
        DefaultAlbumTypeEnum(String value) {
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

    
    DefaultAlbumTypeEnum defaultAlbumType
    
    Album album
    
    Assignment assignment
    
    Application application
    
    String display
    
    String appKey
    
    Long billableId
    
    String subType
    
    String contentName
    
    URI urifolder
    
    Long defaultThreshold
}
