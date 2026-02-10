package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.TrilatCacheSample;

@Canonical
class TrilatCacheRequest {
    
    String udid
    
    Long sourceTime
    
    Integer minimumSampleSize
    
    List<TrilatCacheSample> samples = new ArrayList<>()
}
