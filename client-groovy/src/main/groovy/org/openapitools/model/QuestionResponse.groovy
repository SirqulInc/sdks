package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AnswerResponse;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.ScoreListResponse;
import org.openapitools.model.TicketListResponse;

@Canonical
class QuestionResponse {
    
    Long id
    
    String question
    
    AssetShortResponse image
    
    String videoURL
    
    Boolean active
    
    List<AnswerResponse> answers = new ArrayList<>()
    
    ScoreListResponse scores
    
    TicketListResponse tickets
    
    AccountShortResponse owner
    
    AssetShortResponse icon
    
    String authorOverride
    
    Long updatedDate
    
    Long startDate
    
    Long endDate
    
    Long createdDate
    
    String tags
    
    Boolean allocateTickets
    
    String ticketType
    
    Long ticketCount
    
    Long points
}
