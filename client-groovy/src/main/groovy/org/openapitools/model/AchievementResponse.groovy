package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AchievementTierResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class AchievementResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long achievementId
    
    String title
    
    String description
    
    String analyticsTag
    
    String rankType
    
    Integer rankIncrement
    
    Boolean validate
    
    String appName
    
    Boolean active
    
    Long updated
    
    Long created
    
    Integer tierCount
    
    Integer minIncrement
    
    Integer maxIncrement
    
    List<AchievementTierResponse> tiers = new ArrayList<>()
    
    String returning
}
