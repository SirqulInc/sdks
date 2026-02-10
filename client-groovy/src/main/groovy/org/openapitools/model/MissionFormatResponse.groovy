package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MissionFormatResponse {
    
    Long missionFormatId
    
    String formatType
    
    Boolean active
    
    String name
    
    String description
    
    String format
    
    String suffix
}
