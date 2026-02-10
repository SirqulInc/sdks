package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class RewardResponse {
    
    Long offerId
    
    String title
    
    String subTitle
    
    String details
    
    AssetShortResponse artwork
    
    String finePrint
    
    String redemptionCode
    
    Integer redemptionStatus
    
    Long transactionId
    
    Double estimatedValue
}
