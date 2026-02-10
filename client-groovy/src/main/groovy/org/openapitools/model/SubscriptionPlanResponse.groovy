package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.SubscriptionOptionResponse;

@Canonical
class SubscriptionPlanResponse {
    
    Long id
    
    String name
    
    String description
    
    List<SubscriptionOptionResponse> options = new ArrayList<>()
    
    Double price
    
    Double promo
    
    Double transactionFee
    
    String role
    
    Boolean defaultPlan
    
    Boolean visible
    
    AssetShortResponse image
}
