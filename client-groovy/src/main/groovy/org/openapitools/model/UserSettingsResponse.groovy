package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.NotificationSettingsResponse;

@Canonical
class UserSettingsResponse {
    
    Boolean showAsZipcode
    
    Boolean showExactLocation
    
    Boolean showOthersExactLocation
    
    Integer suggestionCount
    
    Integer suggestionTimeFrame
    
    String suggestionMethod
    
    NotificationSettingsResponse notifications
    
    Boolean publicShowFriendInfo
    
    Boolean publicShowGameInfo
    
    Boolean publicShowProfileInfo

    enum FavoriteVisibilityEnum {
    
        PUBLIC("PUBLIC"),
        
        PRIVATE("PRIVATE"),
        
        FRIENDS("FRIENDS")
    
        private final String value
    
        FavoriteVisibilityEnum(String value) {
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

    
    FavoriteVisibilityEnum favoriteVisibility
}
