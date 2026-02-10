package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ApplicationShortResponse;

@Canonical
class OfferTransactionStatusResponse {
    
    Long id
    
    Boolean active
    
    String name
    
    String description
    
    Integer code
    
    String role
    
    List<ApplicationShortResponse> applications = new ArrayList<>()
}
