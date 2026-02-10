package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.MissionResponse;

@Canonical
class MissionListResponse {
    
    Integer start
    
    Integer limit
    
    Long countTotal
    
    List<MissionResponse> items = new ArrayList<>()
    
    Boolean hasMoreResults
    
    Integer count
}
