package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class CellCarrier {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String uid
    
    String display
    
    String emailFormat
    
    String apiUrl
    
    String authUrl
    
    String shortCode
    
    String clientId
    
    String clientSecret
}
