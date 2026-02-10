package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SubscriptionOption {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    Double price
    
    Integer quantity
    
    Integer threshold
    
    Boolean visible

    enum OptionTypeEnum {
    
        MISSION("MISSION"),
        
        LOCATION("LOCATION"),
        
        OFFER("OFFER"),
        
        NOTIFICATION("NOTIFICATION"),
        
        REQUEST("REQUEST"),
        
        STORAGE_S3("STORAGE_S3"),
        
        STORAGE_DB("STORAGE_DB")
    
        private final String value
    
        OptionTypeEnum(String value) {
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

    
    OptionTypeEnum optionType

    enum OfferTypeEnum {
    
        VOUCHER("VOUCHER"),
        
        COUPON("COUPON"),
        
        PRODUCT("PRODUCT"),
        
        MEDIA("MEDIA"),
        
        EVENT("EVENT"),
        
        DEVICE("DEVICE")
    
        private final String value
    
        OfferTypeEnum(String value) {
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

    
    OfferTypeEnum offerType
}
