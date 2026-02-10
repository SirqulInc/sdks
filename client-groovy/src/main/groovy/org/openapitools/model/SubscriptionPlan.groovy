package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Asset;
import org.openapitools.model.SubscriptionOption;

@Canonical
class SubscriptionPlan {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String description
    
    List<SubscriptionOption> options = new ArrayList<>()
    
    Double price
    
    Double promo
    
    Double transactionFee
    
    String role
    
    Boolean defaultPlan
    
    Boolean visible
    
    Asset image
}
