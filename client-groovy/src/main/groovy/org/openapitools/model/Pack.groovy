package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import org.openapitools.model.Account;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;
import org.openapitools.model.GameLevel;

@Canonical
class Pack {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Long newOwnerId
    
    Account owner
    
    Application application

    enum SequenceTypeEnum {
    
        FIRST_AVAILABLE("FIRST_AVAILABLE"),
        
        ALL_AVAILABLE("ALL_AVAILABLE")
    
        private final String value
    
        SequenceTypeEnum(String value) {
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

    
    SequenceTypeEnum sequenceType
    
    String title
    
    String description
    
    Date startDate
    
    Date endDate

    enum PackTypeEnum {
    
        TUTORIAL("TUTORIAL"),
        
        BUILTIN("BUILTIN"),
        
        DOWNLOAD("DOWNLOAD"),
        
        THRESHOLD("THRESHOLD"),
        
        THEME("THEME"),
        
        TOURNAMENT("TOURNAMENT")
    
        private final String value
    
        PackTypeEnum(String value) {
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

    
    PackTypeEnum packType
    
    Asset image
    
    Asset background
    
    String imageURL
    
    List<GameLevel> gameLevels = new ArrayList<>()
    
    Boolean hasMoreItems
    
    Long totalCount
    
    Boolean downloaded
    
    String authorOverride
    
    Long packOrder
    
    Boolean inGame
    
    Boolean highest
    
    Integer notificationCount
    
    Long points
    
    String ticketType
    
    Long ticketCount
    
    String priceType
    
    Integer price
    
    Boolean allocateTickets
    
    String applicationTitle
    
    Map<String, GameLevel> levelNumberMap = new HashMap<>()
}
