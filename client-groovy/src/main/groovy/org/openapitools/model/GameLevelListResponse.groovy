package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.GameLevelResponse;

@Canonical
class GameLevelListResponse {
    
    Integer start
    
    Integer limit
    
    Long countTotal
    
    List<GameLevelResponse> items = new ArrayList<>()
    
    Integer count
    
    Boolean hasMoreResults
}
