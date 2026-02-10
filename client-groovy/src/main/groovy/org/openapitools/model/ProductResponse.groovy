package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SizeGroupResponse;

@Canonical
class ProductResponse {
    
    String brand
    
    String productType
    
    String condition
    
    String isbn
    
    String asin
    
    List<String> catalogNumbers = new ArrayList<>()
    
    String department
    
    List<String> features = new ArrayList<>()
    
    Double minimumPrice
    
    Double width
    
    Double height
    
    Double depth
    
    Double weight
    
    String unit
    
    String studio
    
    String parentalRating
    
    Long publishDate
    
    Long availabilityDate
    
    SizeGroupResponse size
}
