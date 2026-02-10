package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.GameObjectResponse;

@Canonical
class GameObjectListResponse {
    
    Integer start
    
    Integer limit
    
    Long countTotal
    
    List<GameObjectResponse> items = new ArrayList<>()
    
    Integer count
    
    Boolean hasMoreResults
}
