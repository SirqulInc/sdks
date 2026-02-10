package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import org.openapitools.model.Verb;

@Canonical
class TwiMLResponse {
    
    String tag
    
    String body
    
    Map<String, String> attributes = new HashMap<>()
    
    List<Verb> children = new ArrayList<>()
}
