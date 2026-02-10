package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.GameResponse;

@Canonical
class GameListResponse {
    
    Integer start
    
    Integer limit
    
    Long countTotal
    
    List<GameResponse> items = new ArrayList<>()
    
    Boolean hasMoreResults
    
    Integer count
}
