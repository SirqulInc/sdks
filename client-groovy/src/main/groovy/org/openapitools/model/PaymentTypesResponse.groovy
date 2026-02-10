package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class PaymentTypesResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Boolean creditCardOnFile
    
    String creditCardNumber
    
    String creditCardExpirationMonth
    
    String creditCardExpirationYear
    
    Boolean pointsOnFile
    
    Double pointsAmount
    
    AccountShortResponse account
    
    String firstName
    
    String lastName
    
    String address
    
    String city
    
    String state
    
    String postalCode
    
    String phone
    
    String provider
    
    Long paymentMethodId
    
    Boolean validated
    
    String accountNumber
    
    String bankName
    
    String routingNumber
    
    Boolean isDefaultPaymentMethod
    
    String accountName
    
    String paymentMethodNickname
    
    String taxId
    
    String returning
}
