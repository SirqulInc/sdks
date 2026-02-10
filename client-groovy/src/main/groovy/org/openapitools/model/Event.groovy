package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Listing;

@Canonical
class Event {
    
    Boolean sponsered
    
    Listing listing
}
