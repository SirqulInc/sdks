package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountMiniResponse;

@Canonical
class ParticipantResponse {
    
    Long id
    
    AccountMiniResponse account
    
    Long availableStart
    
    Long availableEnd
    
    String color1
    
    String color2
    
    String type
}
