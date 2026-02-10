package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CargoType;

@Canonical
class VehicleCargoSetting {
    
    Boolean valid
    
    CargoType cargoType
    
    Integer maxUnit
}
