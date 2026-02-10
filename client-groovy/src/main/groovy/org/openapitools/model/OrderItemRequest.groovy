package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class OrderItemRequest {

    enum OrderItemTypeEnum {
    
        OFFER("OFFER"),
        
        CUSTOM("CUSTOM")
    
        private final String value
    
        OrderItemTypeEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    OrderItemTypeEnum orderItemType
    
    Long orderItemId
    
    String offerName
    
    String orderCustomType
    
    String orderCustomId
    
    Long retailerLocationId
    
    Integer quantity
    
    Double amount
    
    Double tax
    
    Long reserveStartDate
    
    Long reserveEndDate
    
    String message
}
