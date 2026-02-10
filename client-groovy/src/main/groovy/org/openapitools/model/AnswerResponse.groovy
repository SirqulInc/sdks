package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class AnswerResponse {
    
    Long answerId
    
    String answer
    
    Boolean correct
    
    AssetShortResponse image
    
    String videoURL
}
