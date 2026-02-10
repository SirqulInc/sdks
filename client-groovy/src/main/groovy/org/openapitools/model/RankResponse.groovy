package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;

@Canonical
class RankResponse {
    
    AccountShortResponse owner
    
    String rank
    
    Long scoreValue
    
    Long timeValue
    
    Long countValue
    
    Long updated
}
