package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.ParticipantResponse;

@Canonical
class ListingResponse {
    
    Long id
    
    String name
    
    String description
    
    Long start
    
    Long end
    
    String locationName
    
    String locationDescription
    
    Boolean privateListing
    
    Boolean active
    
    List<ParticipantResponse> participants = new ArrayList<>()
    
    AccountShortResponse owner
}
