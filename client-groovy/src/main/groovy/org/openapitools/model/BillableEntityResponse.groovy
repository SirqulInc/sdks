package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ContactInfoResponse;
import org.openapitools.model.PaymentTypesResponse;
import org.openapitools.model.ProfileShortResponse;
import org.openapitools.model.SubscriptionResponse;

@Canonical
class BillableEntityResponse {
    
    Long billableEntityId
    
    String name
    
    ProfileShortResponse responsible
    
    ContactInfoResponse contact
    
    SubscriptionResponse subscription
    
    PaymentTypesResponse payment
}
