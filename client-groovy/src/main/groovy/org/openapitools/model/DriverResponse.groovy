package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AvailabilityResponse;
import org.openapitools.model.LocationResponse;

@Canonical
class DriverResponse {
    
    String id
    
    String name
    
    LocationResponse depot
    
    List<AvailabilityResponse> availability = new ArrayList<>()
}
