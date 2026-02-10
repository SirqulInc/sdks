package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ThirdPartyNetworkResponse {
    
    Long updated
    
    Long created
    
    Boolean active
    
    String name
    
    String description
    
    String networkUID

    enum NetworkEnum {
    
        FACEBOOK("FACEBOOK"),
        
        TWITTER("TWITTER"),
        
        CLEAR("CLEAR"),
        
        USERNAME("USERNAME"),
        
        PHONE("PHONE"),
        
        UNKNOWN("UNKNOWN"),
        
        CUSTOM("CUSTOM")
    
        private final String value
    
        NetworkEnum(String value) {
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

    
    NetworkEnum network

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
    
    Boolean enableIntrospection
    
    String introspectionURL
    
    String introspectionParams
    
    String requiredRootField
}
