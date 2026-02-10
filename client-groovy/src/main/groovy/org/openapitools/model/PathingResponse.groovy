package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.DirectionResponse;
import org.openapitools.model.NodeRequest;

@Canonical
class PathingResponse {
    
    NodeRequest start
    
    NodeRequest end
    
    List<NodeRequest> waypoints = new ArrayList<>()
    
    List<NodeRequest> exclusions = new ArrayList<>()
    
    Integer width
    
    Integer height
    
    NodeRequest southwest
    
    NodeRequest northeast
    
    Double metersPerX
    
    Double metersPerY
    
    List<NodeRequest> path = new ArrayList<>()
    
    Integer pathCount
    
    List<DirectionResponse> directions = new ArrayList<>()
    
    Integer directionCount
    
    NodeRequest swcalibration
    
    Double calibrationBearings
    
    NodeRequest necalibration
}
