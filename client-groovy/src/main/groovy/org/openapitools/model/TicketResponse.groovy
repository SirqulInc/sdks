package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.ApplicationShortResponse;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.PurchaseItemShortResponse;

@Canonical
class TicketResponse {

    enum ActionEnum {
    
        DATA("DATA"),
        
        SAVE("SAVE"),
        
        DELETE("DELETE"),
        
        GET("GET")
    
        private final String value
    
        ActionEnum(String value) {
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

    
    ActionEnum action
    
    Long id
    
    Long accountId
    
    Long objectId

    enum TypeEnum {
    
        GAME_OBJECT("GAME_OBJECT"),
        
        GAME_LEVEL("GAME_LEVEL"),
        
        PACK("PACK"),
        
        GAME("GAME"),
        
        MISSION("MISSION"),
        
        PROFILE("PROFILE"),
        
        APPLICATION("APPLICATION"),
        
        TICKETS("TICKETS"),
        
        ASSET("ASSET"),
        
        CUSTOM("CUSTOM")
    
        private final String value
    
        TypeEnum(String value) {
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

    
    TypeEnum type

    enum ActionTypeEnum {
    
        COMPLETED("COMPLETED"),
        
        REDEEMED("REDEEMED"),
        
        USERS_PLAYED("USERS_PLAYED"),
        
        TOURNAMENT_OWNER("TOURNAMENT_OWNER"),
        
        PURCHASED("PURCHASED"),
        
        SUMATION("SUMATION"),
        
        GIFTED("GIFTED"),
        
        REFUNDED("REFUNDED")
    
        private final String value
    
        ActionTypeEnum(String value) {
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

    
    ActionTypeEnum actionType
    
    Long used
    
    Long count
    
    PurchaseItemShortResponse purchaseItem
    
    String customMessage
    
    AccountShortResponse sender
    
    List<AccountShortResponse> receiver = new ArrayList<>()
    
    AssetShortResponse customAsset
    
    String receiptToken
    
    String ticketType
    
    ApplicationShortResponse application
}
