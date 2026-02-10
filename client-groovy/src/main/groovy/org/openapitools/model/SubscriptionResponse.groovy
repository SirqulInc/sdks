package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SubscriptionPlanResponse;

@Canonical
class SubscriptionResponse {
    
    Long id
    
    SubscriptionPlanResponse subscriptionPlan
    
    String promoCode
    
    Boolean active
}
