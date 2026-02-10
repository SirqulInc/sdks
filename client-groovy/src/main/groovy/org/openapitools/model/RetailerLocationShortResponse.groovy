package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ContactInfoResponse;

@Canonical
class RetailerLocationShortResponse {
    
    Long retailerLocationId
    
    String name
    
    ContactInfoResponse contact
    
    Double latitude
    
    Double longitude
    
    Boolean active
    
    Long favoriteId
    
    Boolean favorite
}
