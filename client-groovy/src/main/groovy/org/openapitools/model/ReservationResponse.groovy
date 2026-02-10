package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.OfferShortResponse;

@Canonical
class ReservationResponse {
    
    Long reservationId
    
    Long reservableId
    
    String reservableType
    
    AccountShortResponse account
    
    Long createdDate
    
    Long updatedDate
    
    Long startDate
    
    Long endDate
    
    OfferShortResponse transaction
}
