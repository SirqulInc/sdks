package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.BillableEntityResponse;

@Canonical
class ApplicationUsageResponse {
    
    BillableEntityResponse billableEntity
    
    Long applicationId
    
    Date invoiceDate
    
    Double balance
    
    Long totalRequests
    
    Long totalDataStorage
    
    Long totalMediaStorage
    
    Long totalNotifications
    
    Long maxMissions
    
    Long maxVouchers
    
    Long maxCoupons
    
    Long maxProducts
    
    Long maxEvents
    
    Long maxMedia
    
    Long maxLocations
}
