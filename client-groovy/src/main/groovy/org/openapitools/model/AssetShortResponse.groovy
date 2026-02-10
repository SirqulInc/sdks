package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class AssetShortResponse {
    
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
    
    String returning
}
