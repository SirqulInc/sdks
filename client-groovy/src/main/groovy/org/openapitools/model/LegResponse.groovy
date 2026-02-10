package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.StepResponse;

@Canonical
class LegResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    String appKey
    
    Double distance
    
    Long duration
    
    Double startLatitude
    
    Double startLongitude
    
    Double startAltitude
    
    Long startDate
    
    Double endLatitude
    
    Double endLongitude
    
    Double endAltitude
    
    Long endDate
    
    Long created
    
    String tags
    
    String deviceId
    
    Long accountId
    
    String deviceSignature
    
    Long parentAccountId
    
    List<StepResponse> steps = new ArrayList<>()
    
    String type
    
    String returning
}
