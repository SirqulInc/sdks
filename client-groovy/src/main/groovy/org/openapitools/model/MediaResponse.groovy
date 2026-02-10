package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MediaResponse {
    
    String mediaType
    
    Integer duration
    
    String author
    
    Long releaseDate
}
