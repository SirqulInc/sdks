package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class AchievementTierResponse {
    
    Long achievementTierId
    
    String title
    
    String description
    
    Long goalCount
    
    AssetShortResponse icon
    
    Long missionId
    
    Long gameId
    
    Long packId
    
    Long gameLevelId
    
    Long gameObjectId
}
