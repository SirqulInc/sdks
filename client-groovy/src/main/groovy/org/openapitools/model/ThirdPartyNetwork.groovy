package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.BillableEntity;

@Canonical
class ThirdPartyNetwork {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String networkUID
    
    String name
    
    String description

    enum IntrospectionMethodEnum {
    
        GET("GET"),
        
        HEAD("HEAD"),
        
        POST("POST"),
        
        PUT("PUT"),
        
        PATCH("PATCH"),
        
        DELETE("DELETE"),
        
        OPTIONS("OPTIONS"),
        
        TRACE("TRACE")
    
        private final String value
    
        IntrospectionMethodEnum(String value) {
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

    
    IntrospectionMethodEnum introspectionMethod
    
    String introspectionURL
    
    String introspectionParams
    
    String requiredRootField
    
    BillableEntity billableEntity

    enum SupportedNetworkEnum {
    
        FACEBOOK("FACEBOOK"),
        
        TWITTER("TWITTER"),
        
        CLEAR("CLEAR"),
        
        USERNAME("USERNAME"),
        
        PHONE("PHONE"),
        
        UNKNOWN("UNKNOWN"),
        
        CUSTOM("CUSTOM")
    
        private final String value
    
        SupportedNetworkEnum(String value) {
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

    
    SupportedNetworkEnum supportedNetwork
    
    Boolean enableIntrospection
}
