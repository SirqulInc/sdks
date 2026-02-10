package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.Note;
import org.openapitools.model.Program;
import org.openapitools.model.Region;
import org.openapitools.model.ServiceHub;
import org.openapitools.model.VehicleType;

@Canonical
class Vehicle {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String description
    
    VehicleType vehicleType
    
    String vin
    
    String licensePlateNumber
    
    String externalId
    
    ServiceHub hub
    
    List<Program> programs = new ArrayList<>()
    
    Long seatQuantity
    
    Asset picture
    
    Asset markerIcon
    
    String trackingColor
    
    Account belongsTo
    
    Region zone
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    Boolean inUse
    
    String contentName
}
