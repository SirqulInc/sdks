package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.OrsonRenderResponse;

@Canonical
class OrsonEpisodeResponse {
    
    String id
    
    String status
    
    String statusDescription
    
    Integer responseCode
    
    String responseRaw
    
    List<OrsonRenderResponse> renders = new ArrayList<>()
}
