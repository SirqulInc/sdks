package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class CsvImportResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long batchId

    enum CsvImportBatchStatusEnum {
    
        NEW("NEW"),
        
        ERROR("ERROR"),
        
        COMPLETE("COMPLETE"),
        
        PARSE_ERROR("PARSE_ERROR"),
        
        PROCESSING("PROCESSING"),
        
        DUPLICATE("DUPLICATE")
    
        private final String value
    
        CsvImportBatchStatusEnum(String value) {
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

    
    CsvImportBatchStatusEnum csvImportBatchStatus
    
    String errorMessage

    enum ObjectTypeEnum {
    
        OFFERS("OFFERS"),
        
        RETAILERS("RETAILERS"),
        
        RETAILERLOCATIONS("RETAILERLOCATIONS"),
        
        CATEGORIES("CATEGORIES"),
        
        FILTERS("FILTERS")
    
        private final String value
    
        ObjectTypeEnum(String value) {
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

    
    ObjectTypeEnum objectType
    
    String returning
}
