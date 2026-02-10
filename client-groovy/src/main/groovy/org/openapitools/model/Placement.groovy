package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;

@Canonical
class Placement {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Application application
    
    String name
    
    String description

    enum SizeEnum {
    
        CONFIG("CONFIG"),
        
        BANNER("BANNER"),
        
        LEADERBOARD("LEADERBOARD"),
        
        SKYSCRAPER("SKYSCRAPER"),
        
        VIDEO("VIDEO"),
        
        ZIP("ZIP"),
        
        INTERSTITIAL("INTERSTITIAL"),
        
        CUSTOM1("CUSTOM1"),
        
        CUSTOM2("CUSTOM2"),
        
        CUSTOM3("CUSTOM3"),
        
        CUSTOM4("CUSTOM4"),
        
        CUSTOM5("CUSTOM5"),
        
        CUSTOM6("CUSTOM6"),
        
        CUSTOM7("CUSTOM7"),
        
        CUSTOM8("CUSTOM8"),
        
        CUSTOM9("CUSTOM9"),
        
        CUSTOM10("CUSTOM10")
    
        private final String value
    
        SizeEnum(String value) {
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

    
    SizeEnum size

    enum ClickTypeEnum {
    
        CONFIG("CONFIG"),
        
        PURCHASE("PURCHASE"),
        
        BANNER("BANNER"),
        
        LEADERBOARD("LEADERBOARD"),
        
        SKYSCRAPER("SKYSCRAPER"),
        
        VIDEO("VIDEO"),
        
        ZIP("ZIP"),
        
        FULL("FULL"),
        
        CUSTOM1("CUSTOM1"),
        
        CUSTOM2("CUSTOM2"),
        
        CUSTOM3("CUSTOM3"),
        
        CUSTOM4("CUSTOM4"),
        
        CUSTOM5("CUSTOM5"),
        
        CUSTOM6("CUSTOM6"),
        
        CUSTOM7("CUSTOM7"),
        
        CUSTOM8("CUSTOM8"),
        
        CUSTOM9("CUSTOM9"),
        
        CUSTOM10("CUSTOM10")
    
        private final String value
    
        ClickTypeEnum(String value) {
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

    
    ClickTypeEnum clickType
    
    Integer height
    
    Integer width
    
    Integer refreshInterval
    
    Asset defaultImage
}
