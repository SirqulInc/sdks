package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class PurchaseOrderItemResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long purchaseOrderItemId
    
    Long created
    
    Long updated
    
    AccountShortResponse customer
    
    String orderItemType
    
    Long orderItemId
    
    String orderCustomType
    
    String orderCustomId
    
    Long retailerLocationId
    
    Double amount
    
    Double tax
    
    String comment
    
    String returning
}
