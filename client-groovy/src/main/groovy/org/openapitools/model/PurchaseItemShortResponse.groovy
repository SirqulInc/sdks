package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AssetShortResponse;

@Canonical
class PurchaseItemShortResponse {
    
    Long id
    
    String name
    
    String description
    
    Integer tickets
    
    AssetShortResponse coverAsset
    
    AssetShortResponse promoAsset
    
    Boolean giftable
    
    Boolean assetable
}
