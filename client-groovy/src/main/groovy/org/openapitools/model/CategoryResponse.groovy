package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class CategoryResponse {
    
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
}
