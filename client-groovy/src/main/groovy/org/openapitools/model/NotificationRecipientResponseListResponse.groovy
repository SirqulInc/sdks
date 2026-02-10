package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class NotificationRecipientResponseListResponse {
    
    List<Object> items = new ArrayList<>()
    
    Integer count
    
    Integer startIndexAudiences
    
    Integer startIndexGroups
    
    Long total
    
    Long countAudiences
    
    Long countGroups
    
    Boolean hasMoreResults
}
