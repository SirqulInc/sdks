package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AlbumContestResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class AlbumContestListResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    List<AlbumContestResponse> items = new ArrayList<>()
    
    Boolean hasMoreResults
    
    Integer count
    
    Long countTotal
    
    String returning
}
