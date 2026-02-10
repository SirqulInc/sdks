package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetResponse;
import org.openapitools.model.BaseOfferResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.FilterResponse;

@Canonical
class MediaOfferResponse {
    
    String title
    
    String details
    
    String subTitle
    
    Long activated
    
    Long expiration
    
    Long redeemableStart
    
    Long redeemableEnd
    
    String offerType
    
    String offerVisibility
    
    Boolean favorite
    
    Long deleted
    
    Double fullPrice
    
    Double discountPrice
    
    String image
    
    String image1
    
    String image2
    
    String image3
    
    String image4
    
    String image5
    
    List<AssetResponse> images = new ArrayList<>()
    
    String barcode
    
    String externalUrl
    
    Boolean active
    
    String subDetails
    
    String externalRedeemOptions
    
    String publisher
    
    Integer viewedCount
    
    Integer clickedCount
    
    Integer addedLimit
    
    Integer addedCount
    
    Integer usedCount
    
    Integer removedCount
    
    Long ticketsReward
    
    String ticketsRewardType

    enum SpecialOfferTypeEnum {
    
        ALL("ALL"),
        
        RESERVABLE("RESERVABLE"),
        
        REGULAR_OFFER("REGULAR_OFFER"),
        
        ACT_NOW("ACT_NOW"),
        
        GET_THERE_NOW("GET_THERE_NOW"),
        
        SQOOT("SQOOT"),
        
        TICKETS("TICKETS"),
        
        YIPIT("YIPIT")
    
        private final String value
    
        SpecialOfferTypeEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    SpecialOfferTypeEnum specialOfferType
    
    Long likeCount
    
    Long dislikeCount
    
    Long favoriteCount
    
    Long noteCount
    
    Long billableEntityId
    
    Long responsibleAccountId
    
    String availabilitySummary
    
    Long flagCount
    
    Long flagThreshold
    
    String externalId
    
    BaseOfferResponse parentOffer
    
    List<CategoryResponse> categories = new ArrayList<>()
    
    List<FilterResponse> filters = new ArrayList<>()
}
