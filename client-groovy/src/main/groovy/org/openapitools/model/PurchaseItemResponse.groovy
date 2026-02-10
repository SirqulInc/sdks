package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class PurchaseItemResponse {
    
    Long id
    
    String name
    
    String description
    
    Integer tickets
    
    AssetShortResponse coverAsset
    
    AssetShortResponse promoAsset
    
    Boolean giftable
    
    Boolean assetable
    
    String gameType
    
    Float price
    
    String purchaseType
    
    String purchaseCode
    
    Integer purchaseLimit
    
    Integer quantity

    enum ServiceActionEnum {
    
        DAY_PREMIUM("DAY_PREMIUM"),
        
        WEEK_PREMIUM("WEEK_PREMIUM"),
        
        MONTH_PREMIUM("MONTH_PREMIUM"),
        
        YEAR_PREMIUM("YEAR_PREMIUM"),
        
        LIFETIME_PREMIUM("LIFETIME_PREMIUM"),
        
        ADD_TICKET("ADD_TICKET"),
        
        ADD_GIFT("ADD_GIFT"),
        
        ADD_POINTS("ADD_POINTS")
    
        private final String value
    
        ServiceActionEnum(String value) {
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

    
    ServiceActionEnum serviceAction
    
    String appName
}
