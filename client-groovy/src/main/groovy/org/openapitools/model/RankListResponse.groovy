package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RankResponse;

@Canonical
class RankListResponse {
    
    List<RankResponse> items = new ArrayList<>()
    
    RankResponse userRank
    
    Boolean hasMoreResults
    
    Integer count
    
    String rankType
    
    String app
    
    String sortField

    enum LeaderboardModeEnum {
    
        GLOBAL("GLOBAL"),
        
        FRIENDS("FRIENDS"),
        
        LOCAL("LOCAL"),
        
        SEARCH("SEARCH"),
        
        CUSTOM("CUSTOM")
    
        private final String value
    
        LeaderboardModeEnum(String value) {
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

    
    LeaderboardModeEnum leaderboardMode
    
    Long start
    
    Long limit
}
