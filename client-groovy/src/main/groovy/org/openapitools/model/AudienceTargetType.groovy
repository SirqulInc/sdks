package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Account;
import org.openapitools.model.OfferLocation;
import org.openapitools.model.Region;
import org.openapitools.model.RetailerLocation;

@Canonical
class AudienceTargetType {

    enum TargetTypeEnum {
    
        RETAILER_LOCATION("RETAILER_LOCATION"),
        
        OFFER_LOCATION("OFFER_LOCATION"),
        
        ACCOUNT("ACCOUNT"),
        
        REGION("REGION")
    
        private final String value
    
        TargetTypeEnum(String value) {
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

    
    TargetTypeEnum targetType
    
    String targetDescription
    
    RetailerLocation retailerLocation
    
    OfferLocation offerLocation
    
    Account account
    
    Region region
}
