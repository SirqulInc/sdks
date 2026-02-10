package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.ScoreListResponse;

@Canonical
class WordzWordResponse {
    
    Long id
    
    String word
    
    String definition
    
    ScoreListResponse scores
    
    AssetShortResponse icon
    
    AssetShortResponse image
    
    String authorOverride
    
    Long updatedDate
    
    Long startDate
    
    Long endDate
    
    Long createdDate
    
    Boolean active
    
    Boolean allocateTickets
    
    String ticketType
    
    Long ticketCount
    
    Long points
}
