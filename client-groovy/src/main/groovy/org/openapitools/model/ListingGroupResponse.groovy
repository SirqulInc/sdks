package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.ListingResponse;

@Canonical
class ListingGroupResponse {
    
    CategoryResponse category
    
    List<ListingResponse> listings = new ArrayList<>()
}
