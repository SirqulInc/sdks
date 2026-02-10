package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class ReportBatchResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long batchId

    enum ReportBatchStatusEnum {
    
        NEW("NEW"),
        
        ERROR("ERROR"),
        
        COMPLETE("COMPLETE"),
        
        PARSE_ERROR("PARSE_ERROR"),
        
        PROCESSING("PROCESSING"),
        
        DUPLICATE("DUPLICATE"),
        
        SAVEONLY("SAVEONLY")
    
        private final String value
    
        ReportBatchStatusEnum(String value) {
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

    
    ReportBatchStatusEnum reportBatchStatus
    
    String errorMessage
    
    String endpoint
    
    String pageUrl
    
    String name
    
    String description
    
    Long created
    
    Long updated
    
    String returning
}
