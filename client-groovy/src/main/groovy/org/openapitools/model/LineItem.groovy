package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LineItem {
    
    String description
    
    String item
    
    Integer pricePerItem
    
    Integer total
    
    Integer tax
    
    Integer quantity
}
