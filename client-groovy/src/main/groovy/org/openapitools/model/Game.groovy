package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;
import org.openapitools.model.GameLevel;
import org.openapitools.model.Pack;

@Canonical
class Game {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    Application application
    
    String title
    
    String description
    
    Date startDate
    
    Date endDate
    
    List<Pack> packs = new ArrayList<>()

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
    
    String authorOverride
    
    Asset icon
    
    Asset image
    
    Long points
    
    String ticketType
    
    Long ticketCount
    
    Boolean allocateTickets
    
    List<GameLevel> allGameLevels = new ArrayList<>()
    
    String contentName
    
    String contentType
}
