package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.OrsonVideoResponse;

@Canonical
class OrsonRenderResponse {
    
    String id
    
    String thirdPartyAccountId
    
    String status
    
    String statusDescription
    
    String completedOn
    
    Integer responseCode
    
    String responseRaw
    
    OrsonVideoResponse video
}
