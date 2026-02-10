package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.BidResponse;
import org.openapitools.model.JsonElement;

@Canonical
class CreativeResponse {
    
    Long creativeId
    
    Boolean active
    
    String name
    
    String description
    
    AssetShortResponse image
    
    String action
    
    JsonElement content
    
    String suffix
    
    String type
    
    String appVersion
    
    Boolean preview
    
    AccountShortResponse owner
    
    BidResponse currentBid
}
