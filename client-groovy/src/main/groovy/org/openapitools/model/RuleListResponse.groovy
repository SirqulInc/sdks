package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RuleResponse;

@Canonical
class RuleListResponse {
    
    Integer start
    
    Integer limit
    
    Long countTotal
    
    List<RuleResponse> items = new ArrayList<>()
    
    Integer count
    
    Boolean hasMoreResults
}
