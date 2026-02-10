package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class FilterTreeResponse {
    
    Long filterId
    
    String name
    
    String display
    
    Integer subFilterCount
    
    Long parentId
    
    String description
    
    Boolean active
    
    String externalId
    
    String externalType
    
    List<FilterTreeResponse> children = new ArrayList<>()
}
