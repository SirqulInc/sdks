package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class GeoPointResponse {
    
    String objectId
    
    Double latitude
    
    Double longitude
    
    Double altitude
    
    String locationDescription
    
    Long locatableId
    
    String locatableObjectId
    
    String locatableObjectName
    
    String locatableDisplay
    
    AssetShortResponse asset
    
    Double distance
}
