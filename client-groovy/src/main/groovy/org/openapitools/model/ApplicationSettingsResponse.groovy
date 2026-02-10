package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ApplicationMiniResponse;

@Canonical
class ApplicationSettingsResponse {
    
    ApplicationMiniResponse application
    
    Long termsAcceptedDate
    
    Long updated
    
    Long created
}
