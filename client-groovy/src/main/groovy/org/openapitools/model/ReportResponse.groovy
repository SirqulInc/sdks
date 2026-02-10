package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.ReportTypeResponse;

@Canonical
class ReportResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<ReportTypeResponse> columns = new ArrayList<>()
    
    List<Map<String, Object>> rows = new ArrayList<>()
    
    Map<String, BigDecimal> summations = new HashMap<>()
    
    Long count
    
    String queryName
    
    Boolean hasMore
    
    String returning
}
