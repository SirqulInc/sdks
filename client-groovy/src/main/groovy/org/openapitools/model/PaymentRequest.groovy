package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.BiometricRequest;
import org.openapitools.model.Invoice;
import org.openapitools.model.OrderItemRequest;

@Canonical
class PaymentRequest {
    
    String appKey
    
    String clientPaymentId
    
    Integer minAgeYears
    
    Invoice invoice
    
    BiometricRequest biometrics
    
    List<OrderItemRequest> orderItems = new ArrayList<>()
    
    Boolean acceptedBilling
}
