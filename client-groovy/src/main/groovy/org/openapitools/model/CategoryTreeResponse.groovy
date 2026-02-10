package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;

@Canonical
class CategoryTreeResponse {
    
    Long categoryId
    
    String name
    
    String display
    
    Long subCategoryCount
    
    Long parentId
    
    String parentName
    
    String description
    
    Boolean active
    
    AssetShortResponse asset
    
    Long favoriteId
    
    Boolean favorite
    
    Long applicationId
    
    String type
    
    String externalId
    
    String externalType
    
    List<CategoryTreeResponse> children = new ArrayList<>()
}
