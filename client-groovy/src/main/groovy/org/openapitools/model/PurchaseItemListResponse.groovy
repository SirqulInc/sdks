package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.PurchaseItemResponse;

@Canonical
class PurchaseItemListResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<PurchaseItemResponse> items = new ArrayList<>()
    
    Integer count
    
    Boolean hasMoreResults
    
    Integer start
    
    Integer limit
    
    Long countTotal
    
    String returning
}
