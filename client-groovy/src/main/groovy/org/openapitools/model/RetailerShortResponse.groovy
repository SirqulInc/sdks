package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.ContactInfoResponse;

@Canonical
class RetailerShortResponse {
    
    Long retailerId
    
    String name
    
    String facebookUrl
    
    String twitterUrl
    
    Boolean active
    
    ContactInfoResponse contact
    
    AssetShortResponse logo
    
    AssetShortResponse picture1
    
    AssetShortResponse picture2
    
    Double latitude
    
    Double longitude
    
    String visibility
}
