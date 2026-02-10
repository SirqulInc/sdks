package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class NoteResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long noteId
    
    String comment
    
    String tags
    
    Long likesCount
    
    Long dislikesCount
    
    Long dateCreated
    
    Long createdDate
    
    Long updatedDate
    
    AccountShortResponse owner
    
    Double latitude
    
    Double longitude
    
    String locationDescription
    
    String returning
}
