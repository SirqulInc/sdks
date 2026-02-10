package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.JsonObject;
import org.openapitools.model.NameStringValueResponse;

@Canonical
class ObjectStoreResponse {
    
    JsonObject jsonObject
    
    List<NameStringValueResponse> request = new ArrayList<>()
}
