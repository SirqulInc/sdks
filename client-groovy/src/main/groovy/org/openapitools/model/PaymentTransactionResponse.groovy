package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.OfferTransactionResponse;
import org.openapitools.model.PurchaseOrderItemResponse;

@Canonical
class PaymentTransactionResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long paymentTransactionId
    
    AccountShortResponse customer
    
    String promoCode
    
    String remoteRefId
    
    String currencyType
    
    Double amount
    
    Double tax
    
    List<OfferTransactionResponse> offerTransactions = new ArrayList<>()
    
    List<PurchaseOrderItemResponse> orderItems = new ArrayList<>()
    
    String externalPaymentId
    
    String metadata
    
    Long created
    
    Long updated
    
    String returning
}
