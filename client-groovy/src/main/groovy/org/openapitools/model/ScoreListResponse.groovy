package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ScoreResponse;

@Canonical
class ScoreListResponse {
    
    Integer start
    
    Integer limit
    
    Long countTotal
    
    List<ScoreResponse> items = new ArrayList<>()
    
    Integer count
    
    Boolean hasMoreResults
}
