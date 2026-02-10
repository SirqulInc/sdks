package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.CategoryResponse;

@Canonical
class RatingResponse {
    
    Long ratingId
    
    Integer ratingValue
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    CategoryResponse category
    
    AccountShortResponse owner
}
