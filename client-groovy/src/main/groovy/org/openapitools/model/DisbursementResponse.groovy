package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.BillableEntityShortResponse;

@Canonical
class DisbursementResponse {
    
    Long disbursementId
    
    String title
    
    String comment
    
    String externalId
    
    String introspectionParams
    
    BigDecimal amount
    
    Long scheduledDate
    
    Long captureDate
    
    Long estimatedDate
    
    Long settledDate

    enum StatusEnum {
    
        NEW("NEW"),
        
        APPROVED("APPROVED"),
        
        VALIDATING("VALIDATING"),
        
        ERROR("ERROR"),
        
        AUTHORIZED("AUTHORIZED"),
        
        CAPTURED("CAPTURED"),
        
        SETTLED("SETTLED")
    
        private final String value
    
        StatusEnum(String value) {
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

    
    StatusEnum status

    enum ProviderEnum {
    
        AUTHORIZE_NET("AUTHORIZE_NET"),
        
        AMAZON_FPS("AMAZON_FPS"),
        
        BILL_COM("BILL_COM")
    
        private final String value
    
        ProviderEnum(String value) {
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

    
    ProviderEnum provider
    
    BillableEntityShortResponse senderBillable
    
    BillableEntityShortResponse receiverBillable
    
    String errorCode
    
    String errorMessage
}
