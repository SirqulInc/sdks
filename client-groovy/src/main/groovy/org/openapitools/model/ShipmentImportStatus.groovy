package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Shipment;

@Canonical
class ShipmentImportStatus {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String batchId
    
    String message
    
    Shipment shipment
    
    Date started
    
    Date completed
}
