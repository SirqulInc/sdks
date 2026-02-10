package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.LikeResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.NoteFullResponse;

@Canonical
class AssetFullResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long assetId
    
    String fileName
    
    String caption
    
    String mediaType
    
    String thumbnailURL
    
    String coverURL
    
    String fullURL
    
    String assetVersion
    
    String versionName
    
    Integer versionCode
    
    String display
    
    String locationDescription
    
    AccountShortResponse uploader
    
    Long likesCount
    
    Integer commentsCount
    
    Double latitude
    
    Double longitude
    
    String attachedMediaType
    
    String attachedAssetURL
    
    Long created
    
    Long updated
    
    String searchTags
    
    String metaData
    
    List<NoteFullResponse> comments = new ArrayList<>()
    
    List<LikeResponse> likes = new ArrayList<>()
    
    Boolean hasLiked
    
    Boolean hasDisliked
    
    Boolean metFlagThreshold
    
    String returning
}
