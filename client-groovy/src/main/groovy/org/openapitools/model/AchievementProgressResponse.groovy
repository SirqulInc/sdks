package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class AchievementProgressResponse {
    
    Long achievementId
    
    Long achievementTierId
    
    String title
    
    String description
    
    AssetShortResponse icon
    
    Boolean completed
    
    Long progressCount
    
    Long goalCount
    
    Long dateUpdated
}
