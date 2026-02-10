package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Retailer;
import org.openapitools.model.ServiceHub;
import org.openapitools.model.VehicleCargoSetting;

@Canonical
class VehicleType {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Retailer business
    
    ServiceHub hub
    
    String name
    
    Double width
    
    Double height
    
    Double depth
    
    Double volume
    
    Double maxWeight
    
    List<VehicleCargoSetting> vehicleCargoSettings = new ArrayList<>()
}
