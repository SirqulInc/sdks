package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CategoryResponse;

@Canonical
class RatingIndexResponse {
    
    Long ratingIndexId
    
    Long ratingCount
    
    Float ratingAverage
    
    Float value
    
    String display

    enum RatableTypeEnum {
    
        LOCATABLE("LOCATABLE"),
        
        RESERVABLE("RESERVABLE"),
        
        PERMISSIONABLE("PERMISSIONABLE"),
        
        NOTABLE("NOTABLE"),
        
        ASSETABLE("ASSETABLE"),
        
        LIKABLE("LIKABLE"),
        
        FLAGABLE("FLAGABLE"),
        
        FAVORITABLE("FAVORITABLE"),
        
        RATABLE("RATABLE"),
        
        ALBUM("ALBUM"),
        
        COLLECTION("COLLECTION"),
        
        APPLICATION("APPLICATION"),
        
        APPLICATION_SETTING("APPLICATION_SETTING"),
        
        APPLICATION_CERT("APPLICATION_CERT"),
        
        APPLICATION_PLACEMENT("APPLICATION_PLACEMENT"),
        
        ACCOUNT("ACCOUNT"),
        
        ACCOUNT_SETTING("ACCOUNT_SETTING"),
        
        GAME_LEVEL("GAME_LEVEL"),
        
        PACK("PACK"),
        
        MISSION("MISSION"),
        
        TOURNAMENT("TOURNAMENT"),
        
        ASSET("ASSET"),
        
        ALBUM_CONTEST("ALBUM_CONTEST"),
        
        THEME_DESCRIPTOR("THEME_DESCRIPTOR"),
        
        OFFER("OFFER"),
        
        OFFER_LOCATION("OFFER_LOCATION"),
        
        EVENT("EVENT"),
        
        RETAILER("RETAILER"),
        
        RETAILER_LOCATION("RETAILER_LOCATION"),
        
        NOTE("NOTE"),
        
        CREATIVE("CREATIVE"),
        
        FAVORITE("FAVORITE"),
        
        LIKE("LIKE"),
        
        RATING("RATING"),
        
        ANALYTIC("ANALYTIC"),
        
        THIRD_PARTY_CREDENTIAL("THIRD_PARTY_CREDENTIAL"),
        
        THIRD_PARTY_NETWORK("THIRD_PARTY_NETWORK"),
        
        REGION("REGION")
    
        private final String value
    
        RatableTypeEnum(String value) {
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

    
    RatableTypeEnum ratableType
    
    Long ratableId
    
    CategoryResponse category
    
    Object ratable
    
    String secondaryType
}
