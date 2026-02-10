package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;

@Canonical
class Category {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String shortName
    
    String description
    
    String type
    
    Application application
    
    Category parent
    
    List<Category> children = new ArrayList<>()
    
    Long childrenCount
    
    String display
    
    String sqootSlug
    
    Asset asset
    
    String externalId
    
    String externalType
    
    Long favoriteCount
    
    Category root
    
    String tree
    
    String parentName
    
    Long parentId
    
    Long applicationId
    
    String secondaryType
}
