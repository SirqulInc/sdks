package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class OrsonAiTechTuneResponse {
    
    String requestId
    
    Integer responseCode
    
    String responseRaw
    
    Integer people
    
    Boolean wasCutoff
    
    Integer frames
    
    Integer framesWithoutAFace
    
    Integer framesWithFaceOffscreen
    
    Integer framesWithWrongNumberOfPeople
    
    Integer height
    
    Integer width
    
    Integer fps
}
