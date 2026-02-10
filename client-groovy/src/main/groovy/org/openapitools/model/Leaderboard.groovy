package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ApplicationMiniResponse;
import org.openapitools.model.AssetResponse;

@Canonical
class Leaderboard {
    
    Long id
    
    String rankType
    /* One of GLOBAL, FRIENDS, LOCAL, SEARCH, CUSTOM */
    String rankMode
    
    String sortType
    
    Integer limitation
    
    String title
    
    String description
    
    AssetResponse iconAsset
    
    AssetResponse bannerAsset
    
    ApplicationMiniResponse application
    
    String metaData
    
    Boolean active
}
