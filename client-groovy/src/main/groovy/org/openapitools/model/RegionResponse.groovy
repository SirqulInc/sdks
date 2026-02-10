package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.PostalCodeResponse;

@Canonical
class RegionResponse {
    
    Long id
    
    String shortName
    
    String fullName
    
    RegionResponse parent
    
    List<RegionResponse> children = new ArrayList<>()
    
    List<PostalCodeResponse> postalCodes = new ArrayList<>()
    
    Double latitude
    
    Double longitude
    
    Boolean active
    
    Boolean root
    
    String regionClass
    
    Long start
    
    Long end
    
    String polygon
    
    String metaData
    
    Double distance
    
    Integer versionCode
}
