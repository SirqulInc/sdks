package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.ApplicationMiniResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.PaymentTransactionResponse;

@Canonical
class OrderResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long orderId
    
    ApplicationMiniResponse application
    
    AccountShortResponse customer
    
    Double amount
    
    Double purchases
    
    Double credits
    
    List<PaymentTransactionResponse> payments = new ArrayList<>()
    
    String externalOrderId
    
    Long created
    
    Long updated
    
    Long externalDate
    
    String description
    
    String returning
}
