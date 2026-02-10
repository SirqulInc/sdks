package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ApplicationMiniResponse;
import org.openapitools.model.AssetResponse;

@Canonical
class LeaderboardResponse {
    
    Long leaderboardId
    
    String rankType
    
    String rankMode
    
    String sortType
    
    Integer limitation
    
    String title
    
    String description
    
    String metaData
    
    AssetResponse iconAsset
    
    AssetResponse bannerAsset
    
    Boolean active
    
    ApplicationMiniResponse application
}
