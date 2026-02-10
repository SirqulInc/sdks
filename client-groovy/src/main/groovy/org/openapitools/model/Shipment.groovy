package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.CargoType;
import org.openapitools.model.DateTimeRange;
import org.openapitools.model.Note;
import org.openapitools.model.PromoCode;
import org.openapitools.model.Route;
import org.openapitools.model.ServiceType;
import org.openapitools.model.Stop;

@Canonical
class Shipment {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    Account owner
    
    Account rider
    
    Stop pickupStop
    
    Stop dropOffStop
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    String batchId
    
    Date reserved
    
    Date canceled
    
    Date confirmed
    
    Route route
    
    String polyline
    
    Shipment replacePassenger
    
    Boolean refunded
    
    PromoCode promoCode
    
    Integer quantity
    
    DateTimeRange pickupTimeWindow
    
    DateTimeRange dropOffTimeWindow
    
    CargoType cargoType
    
    ServiceType serviceType
    
    Long routeId
    
    Double totalVolume
    
    Boolean complete
    
    String contentName
    
    String riderName
}
