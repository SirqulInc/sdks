package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.LineItem;

@Canonical
class Invoice {
    
    String location
    
    Integer tax
    
    Integer total
    
    List<LineItem> lineItems = new ArrayList<>()
}
