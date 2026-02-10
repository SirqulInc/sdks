package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Application;

@Canonical
class Filter {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Application application
    
    String name
    
    String description
    
    Filter parent
    
    List<Filter> children = new ArrayList<>()
    
    String display
    
    String externalId
    
    String externalType
    
    String tree
}
