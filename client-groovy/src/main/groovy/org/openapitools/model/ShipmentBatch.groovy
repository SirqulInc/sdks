package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Program;
import org.openapitools.model.Retailer;
import org.openapitools.model.ServiceHub;
import org.openapitools.model.Shipment;
import org.openapitools.model.ShipmentImportStatus;

@Canonical
class ShipmentBatch {
    
    Long id
    
    Date created
    
    Date updated
    
    Boolean active
    
    Boolean valid
    
    Retailer retailer
    
    ServiceHub hub
    
    Program program
    
    List<ShipmentImportStatus> shipmentImportStatuses = new ArrayList<>()
    
    List<Shipment> shipments = new ArrayList<>()
    
    Date uploaded
    
    Date started
    
    Date optimizationStarted
    
    Date completed
    
    Date optimizationCompleted
    
    String source
    
    String externalId
    
    Integer total
    
    Integer processedCount
    
    Integer successCount
    
    Integer failedCount
    
    Integer validCount
    
    Integer invalidCount
    
    Double averageTravelSpeed
    
    Long maxSeconds

    enum ImportStatusEnum {
    
        NEW("NEW"),
        
        STARTED("STARTED"),
        
        FETCHING_DISTANCE_DATA("FETCHING_DISTANCE_DATA"),
        
        OPTIMIZING("OPTIMIZING"),
        
        CREATING_ROUTES("CREATING_ROUTES"),
        
        COMPLETED("COMPLETED"),
        
        INCOMPLETE("INCOMPLETE")
    
        private final String value
    
        ImportStatusEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    ImportStatusEnum importStatus
    
    Integer totalRoutes
    
    Integer routesCreated
    
    Integer totalLegsRequests
    
    Integer legsRequested
    
    Integer initScore
    
    Long hardScore
    
    Long mediumScore
    
    Long softScore
}
